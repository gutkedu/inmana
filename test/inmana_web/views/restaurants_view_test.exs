defmodule InmanaWeb.RestaurantsViewTest do
  use InmanaWeb.ConnCase, async: true

  import Phoenix.View

  alias Inmana.Restaurant
  alias InmanaWeb.RestaurantsView

  describe "render/2" do
    test "renders create.json" do
      params = %{name: "Siri Cascudo", email: "siri@cascudo.com"}
      {:ok, restaurant} = Inmana.create_restaurant(params)

      response = render(RestaurantsView, "create.json", restaurant: restaurant)

      assert %{
               message: "Restaurant created",
               restaurant: %Restaurant{
                 email: "siri@cascudo.com",
                 id: _id,
                 name: "Siri Cascudo"
               }
             } = response
    end
  end
end
