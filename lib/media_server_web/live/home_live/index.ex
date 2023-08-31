defmodule MediaServerWeb.HomeLive.Index do
  use MediaServerWeb, :live_view

  @impl true
  def mount(_params, session, socket) do
    {
      :ok,
      socket
      |> assign(:current_user, MediaServer.Accounts.get_user_by_session_token(session["user_token"]))
      |> assign(page_title: "Home")
    }
  end

  @impl true
  def handle_params(_params, _url, socket) do
    {
      :noreply,
      socket
      |> assign(:movies, MediaServer.MoviesIndex.all() |> MediaServer.MoviesIndex.available() |> MediaServer.MoviesIndex.latest() |> MediaServer.MoviesIndex.take(10))
      |> assign(:series, MediaServer.SeriesIndex.all() |> MediaServer.SeriesIndex.available() |> MediaServer.SeriesIndex.latest() |> MediaServer.SeriesIndex.take(10))
    }
  end
end
