class EventTemplatesController < ApplicationController

  def index

  end

  def new
    @template = EventTemplate.new
  end

  def create
    @article = EventTemplate.new(event_template_params)

    if @article.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @template = EventTemplate.find(params[:id])
  end

  def update
    @template = EventTemplate.find(params[:id])
    if @template.update(event_template_params)
      redirect_to root_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def show

  end

  def destroy
    @template.destroy

    redirect_to root_path, status: :see_other
  end

  private

  def event_template_params
    params.require(:event_template).permit(:name, :youngest, :oldest)
  end
end
