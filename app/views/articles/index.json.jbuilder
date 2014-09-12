json.array!(@articles) do |article|
  json.extract! article, :id, :name, :contact_person, :contact_email, :description, :display_rank, :ta1, :ta2, :ta3, :ta4, :ta5, :advert_main_page, :title, :slug
  json.url article_url(article, format: :json)
end
