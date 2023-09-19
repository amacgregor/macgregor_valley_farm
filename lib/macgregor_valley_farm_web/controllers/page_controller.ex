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
      %{name: "Silver Gray Dorking", description: " The Silver Gray Dorking is a unique chicken breed known for its friendly personality and beautiful plumage. Originating from the town of Dorking in England, it is considered one of the oldest, if not the oldest, chicken breeds in the country. Historically, they were primarily a white-skinned meat breed, prized for their tasty white meat. They also lay a fair number of round white eggs and are often recognized for their gourmet meat quality", image: "silver_gray_dorking.jpg"},
      %{name: "Silver Laced Wyandotte", description: "The Silver Laced Wyandotte is one of the most visually striking chicken breeds, boasting beautiful silver and white feathers delicately laced with black. Originating from the United States, they are dual-purpose birds, known for both their meat and egg production. These chickens are hardy and are more than just eye candy; they are also known for their docile personalities and are a favorite among backyard flock owners.", image: "silver_laced_wyandotte.jpg"},
      %{name: "Gold Laced Wyandotte", description: "A glamorous and curvy hen, the Gold Laced Wyandotte showcases a broad back with a perky tail. Its feathers are a rich gold color with delicate black lacing, making it an eye-catching addition to any flock. This dual-purpose heritage chicken is one of the first American breeds, appreciated both for its beauty and its utility.", image: "gold_laced_wyandotte.jpg"},
      %{name: "Lavender Orpington", description: "The Lavender Orpington, also known as the Self-Blue Orpington, is a regal breed with a unique pale lavender or violet hue. Originating in the 1880s, the Orpington breed is known for its friendly and docile nature, and the Lavender variety is no exception. This 'designer' chicken breed has a loyal following, especially for its unique coloration. They are large, broad-bodied birds with an easy-going temperament and are known to lay approximately 200 eggs per year.", image: "lavender_orpington.jpg"},
      %{name: "Jersey Giants", description: "The Jersey Giant is the largest breed of chicken, developed in the United States in the late 19th century. They were originally bred for their meat but have since become popular as pets due to their gentle disposition. Despite their size, they are known to be friendly and good layers, producing extra-large brown eggs. Their plumage can be black, white, or blue, and they have a single comb.", image: "jersey_giants.jpg"},
    ]

    render(conn, :our_breeds, breeds: breeds)
  end
end
