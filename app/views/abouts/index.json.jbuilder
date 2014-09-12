json.array!(@abouts) do |about|
  json.extract! about, :id, :service_day_1, :service_time_1, :service_day_2, :service_time_2, :service_day_3, :service_time_3, :address, :city, :postal_code, :phone_number, :toll_free_phone_number, :fax_number, :latitude, :longitude, :gmaps, :youtube, :facebook, :video_stream, :twitter, :country, :province, :life_pulse, :leaders_blog, :store, :video, :articles, :name, :slug
  json.url about_url(about, format: :json)
end
