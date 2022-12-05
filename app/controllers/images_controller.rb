class ImagesController < ApplicationController
    def create
        @article = Article.find(params[:article_id])
        @article.image.attach(params[:image])
        redirect_to(article_path(@article))
    end

    def destroy
        @article = Article.find(params[:article_id])
        @article.image.purge
        redirect_to(article_path(@article))
    end
  end
  