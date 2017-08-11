class CommentsController < ApplicationController
    def create
      @order = Order.find(params[:order_id])
      comment_params = params.require(:comment).permit(:content)
      @comment = @order.comments.build(comment_params)
      @comment.user = current_user
      
      if @comment.save
        flash[:success] = "留言成功！"
        redirect_to order_path(@order)
      else
        flash[:danger] = "留言失敗！"
        render 'orders/show'
      end
    end
end