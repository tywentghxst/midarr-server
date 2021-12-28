defmodule MediaServerWeb.MoviesLiveTest do
  use MediaServerWeb.ConnCase

  import MediaServer.AccountsFixtures
  import MediaServer.ProvidersFixtures

  test "GET /movies", %{conn: conn} do
    fixture = %{
      user: user_fixture(),
      radarr: real_radarr_fixture()
    }

    conn =
      post(conn, Routes.user_session_path(conn, :create), %{
        "user" => %{"email" => fixture.user.email, "password" => valid_user_password()}
      })

    conn = get(conn, "/movies")
    assert html_response(conn, 200)
  end

  test "GET /movies show", %{conn: conn} do
    fixture = %{
      user: user_fixture(),
      radarr: real_radarr_fixture()
    }

    conn =
      post(conn, Routes.user_session_path(conn, :create), %{
        "user" => %{"email" => fixture.user.email, "password" => valid_user_password()}
      })

    conn = get(conn, "/movies/1")
    assert html_response(conn, 200)
  end
end