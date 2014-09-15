class Video < ActiveRecord::Base
  extend FriendlyId
  friendly_id :slug_candidates, use: :slugged 
  
  attr_accessible :_email, :advert_main_page, :contact, :contact_person, :description, :display_rank, :name, :ta1, :ta2, :ta3, :ta4, :ta5, :title, :url


  after_validation :move_friendly_id_error_to_name

    def move_friendly_id_error_to_name
      errors.add :name, *errors.delete(:friendly_id) if errors[:friendly_id].present?
    end
   
    def slug_candidates
      [
        :name#,
      #  [:name, :history]#,
       # [:name, :street, :city],
       # [:name, :street_number, :street, :city]
      ]
    end
end
