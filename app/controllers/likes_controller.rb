class LikesController < ApplicationController

  def like
    doc = Doc.friendly.find(params[:doc])
    Like.create(user: current_user, doc: doc )

    redirect_to doc_path(doc), notice: t('thanks for the like')
  end

  def dislike
    doc = Doc.friendly.find(params[:doc])
    Like.where(user: current_user, doc: doc).destroy_all

    redirect_to doc_path(doc), notice: t('like removed')
  end
end
