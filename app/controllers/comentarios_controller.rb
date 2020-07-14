class ComentariosController < ApplicationController
    def create
        @article = Article.find(params[:article_id])
        @comment = @article.comentarios.create(comment_params)
        redirect_to article_path(@article)
    end

    def destroy
        @article = Article.find(params[:article_id])
        @comentario = @article.comentarios.find(params[:id])
        @comentario.destroy
        redirect_to article_path(@article)
    end
     
    private
        def comment_params
          params.require(:comentario).permit(:commenter, :body)
        end
end
