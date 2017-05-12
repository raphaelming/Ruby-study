class PostsController < ApplicationController
    def new
    # 사용자가 데이터를 입력할 화면
    # 자동으로 액션 이름과 같은 화면을 불러서 사용자에게 보여줘라.
    end
    
    def create
    #입력받은 데이터를 실제 DB 저장할 액션.
        @post = Post.new
        @post.title = params[:input_title]
        @post.content = params[:input_content]
        @post.save
        redirect_to '/posts/new'
    end
end