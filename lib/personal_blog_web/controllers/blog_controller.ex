defmodule PersonalBlogWeb.BlogController do
  use PersonalBlogWeb, :controller

  alias PersonalBlog.Blog

  def index(conn, _params) do
    render(conn, "index.html", posts: Blog.all_posts())
  end

  def show(conn, %{"id" => id}) do
    conn
    |> put_layout(html: :blank)
    |> render("show.html", post: Blog.get_post_by_id!(id))
  end
end
