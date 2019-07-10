class Api::SessionsController < ApplicationController
  before_action :authenticate_user

  def index
    @sessions = Session.all
    render "index.json.jbuilder"
  end

  def create
    @session = Session.new(
                            user_id: params[:user_id],
                            date: params[:date],
                            start_notes: params[:start_notes],
                            start_time: params[:start_time],
                            stop_time: params[:stop_time],
                            stop_notes: params[:stop_notes]
                          )
    if @session.save

      params[:actions].each do |action|
        new_action = Action.new(
                            name: action.name, 
                            session_id: @session.id, 
                            resource: action.resource, 
                            resource_url: action.resource_url, 
                            start_tempo: action.start_tempo, 
                            stop_tempo: action.stop_tempo, 
                            keys: action.keys, 
                            time_spent: action.time_spent, 
                            notes: action.notes
                                )
        if new_action.save 
          action.tag_ids.each do |tag_id|
            ActionTag.create(
                            action_id: new_action.id, 
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
