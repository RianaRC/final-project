class HomeController < ApplicationController
  def index
    @categories = Category.all
    @events = Evenement.page(params[:page]).per(5)
  end

  def show
    @evenement = Evenement.find(params[:id])
    @comments = Commentaire.where(evenement_id: @evenement.id)
  end

  def newcomment
    # @evenement = Evenement.find(params[:id])
    @new = Commentaire.new
    @new.comment = params['comment']
    @new.evenement = Evenement.find(params[:id_en_cours])
    @new.save
    redirect_to event_show_path(params[:id_en_cours])
  end

  def delcomment
    @comment = Commentaire.find(params[:id_comment])
    @comment.destroy
    redirect_to event_show_path(params[:id_event])
  end

end
