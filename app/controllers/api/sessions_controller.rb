class Api::SessionsController < ApplicationController
  before_action :authenticate_user

  def index
    # @sessions = Session.all
    @sessions = Session.where(user_id: current_user.id).order(:date)
    render "index.json.jbuilder"
  end

  def create
    @session = Session.new(
      user_id: current_user.id,
      date: params[:date],
      start_notes: params[:start_notes],
      start_time: params[:start_time],
      stop_time: params[:stop_time],
      stop_notes: params[:stop_notes]
    )
    if @session.save
      if params[:actions]
        params[:actions].each do |action|
          new_action = Action.new(
            name: action["name"], 
            session_id: @session.id, 
            resource: action["resource"], 
            resource_url: action["resource_url"], 
            start_tempo: action["start_tempo"], 
            stop_tempo: action["stop_tempo"], 
            keys: action["keys"], 
            time_spent: action["time_spent"], 
            notes: action["notes"],
                )
          if new_action.save 
            if action["tag_ids"]
              action["tag_ids"].each do |tag_id|
                ActionTag.create(
                  action_id: new_action.id, 
                  tag_id: tag_id
                  )
              end
            end
          end
        end
      end
      render "show.json.jbuilder"
    else
      render json: {errors: @session.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def show
    @session = Session.find(params[:id])
    render "show.json.jbuilder"
  end

  def update
    @session = Session.find(params[:id])

    @session.date = params[:date] || @session.date
    @session.start_notes = params[:start_notes] || @session.start_notes
    @session.start_time = params[:start_time] || @session.start_time
    @session.stop_time = params[:stop_time] || @session.stop_time
    @session.stop_notes = params[:stop_notes] || @session.stop_notes

    if @session.save
      params[:actions].each do |action|
        db_action = Action.find(action["id"])
        db_action.name =  action["name"] || db_action.name
        db_action.resource = action["resource"] || db_action.resource
        db_action.resource_url = action["resource_url"] || db_action.resource_url
        db_action.start_tempo = action["start_tempo"] || db_action.start_tempo
        db_action.stop_tempo = action["stop_tempo"] || db_action.stop_tempo
        db_action.keys = action["keys"] || db_action.keys
        db_action.time_spent = action["time_spent"] || db_action.time_spent
        db_action.notes = action["notes"] || db_action.notes
        if db_action.save
          db_action.action_tags.destroy_all
          action["tag_ids"].each do |tag_id|
            ActionTag.create(
              action_id: db_action.id, 
              tag_id: tag_id
              )
          end
        end
      end

      render "show.json.jbuilder"
    else
      render json: {errors: @session.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    session = Session.find(params[:id])
    session.destroy
    render json: {message: "Session deleted."}
  end

end
