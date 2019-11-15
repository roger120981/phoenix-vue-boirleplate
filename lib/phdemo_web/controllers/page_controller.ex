defmodule PhdemoWeb.PageController do
  use PhdemoWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
