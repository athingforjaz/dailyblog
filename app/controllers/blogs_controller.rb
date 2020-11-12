class BlogsController < ApplicationController
  def index
    @blogs = Blog.all
  end

  def new
  end
  
  def create
    my_blog = Blog.new
    my_blog.title = params["title"] # these come from the name="" in the HTML form
    my_blog.text = params["text"]
    my_blog.wordcount = params["wordcount"]
    my_blog.save
    redirect_to blogs_path
  end

  def edit
  end

  def kitten
    render "jasmine"
  end

  def show
    #should pull the blog from the id
    @blogs = Blog.find(params[:id])
  end
  private
  def blogs_params
    params.require(:blogs).permit(:title,:text,:wordcount)
  end
end
