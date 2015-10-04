class LikesController < ApplicationController

  def like
    doc = Doc.friendly.find(params[:doc])
    Like.create(user: current_user, doc: doc )

    redirect_to doc_path(doc), notice: "Thanks for the feedback!"
  end
end
