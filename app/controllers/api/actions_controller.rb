class Api::ActionsController < ApplicationController
  # before_action :authenticate_user

  def create
    @action = Action.new(
                        name: params[:name],
                        session_id: params[:session_id],
                        resource: params[:resource],
                        resource_url: params[:resource_url],
                        start_tempo: params[:start_tempo],
                        stop_tempo: params[:stop_tempo],
                        keys: params[:keys],
                        time_spent: params[:time_spent],
                        notes: params[:notes],
        )

    if @action.save
      render "show.json.jbuilder"
    else
      render json: {errors: @action.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def show
    @action = Action.find(params[:id])
    render "show.json.jbuilder"
  end


  def update
    @action = Action.find(params[:id])

    @action.name = params[:name] || @action.name

    if @action.save
      render "show.json.jbuilder"
    else
      render json: {errors: @action.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    action = Action.find(params[:id])
    action.destroy
    render json: {message: "Action deleted."}
  end

end
