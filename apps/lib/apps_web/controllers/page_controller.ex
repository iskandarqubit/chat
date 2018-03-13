defmodule AppsWeb.PageController do
  use AppsWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
