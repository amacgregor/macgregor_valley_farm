defmodule MacgregorValleyFarmWeb.PageController do
  use MacgregorValleyFarmWeb, :controller

  def home(conn, _params) do
    render(conn, :home)
  end

  def about(conn, _params) do
    render(conn, :about)
  end

  def contact(conn, _params) do
    render(conn, :contact)
  end

  def for_sale(conn, _params) do
    render(conn, :for_sale)
  end

  def our_breeds(conn, _params) do

    breeds = [
      %{name: "Silver Gray Dorking", description: "", image: "silver-gray-dorking.jpg"},
      %{name: "Silver Laced Wyandotte", description: "", image: "silver-laced-wyandotte.jpg"},
      %{name: "Gold Laced Wyandotte", description: "", image: "gold-laced-wyandotte.jpg"},
      %{name: "Lavender Orpington", description: "", image: "lavender-orpington.jpg"},
      %{name: "Jersey Giants", description: "", image: "jersey-giants.jpg"},
      %{name: "Cochins", description: "", image: "Cochins.jpg"},
    ]

    render(conn, :our_breeds, breeds: breeds)
  end
end
