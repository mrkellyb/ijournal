class Api::TagsController < ApplicationController
  def index
    @tags = Tag.all.order(:id)
    render 'index.json.jbuilder'
  end
end
