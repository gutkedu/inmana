defmodule InmanaWeb.RestaurantsControllerTest do
  use InmanaWeb.ConnCase

  describe("create/2") do
    test "when all params are valid, create an user", %{conn: conn} do
      params = %{name: "Siri Cascudo", email: "siri@cascudo.com"}

      response =
        conn
        |> post(Routes.restaurants_path(conn, :create, params))
        |> json_response(:created)

      assert %{
               "message" => "Restaurant created",
               "restaurant" => %{
                 "email" => "siri@cascudo.com",
                 "id" => _id,
                 "name" => "Siri Cascudo"
               }
             } = response
    end

    test "when there are invalid params, returns an error", %{conn: conn} do
      params = %{email: "siri@cascudo.com"}
      expected_response = %{"name" => ["can't be blank"]}

      _response =
        conn
        |> post(Routes.restaurants_path(conn, :create, params))
        |> json_response(:bad_request)

      assert _response = expected_response
    end
  end
end
