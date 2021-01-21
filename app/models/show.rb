class Show < ActiveRecord::Base
  belongs_to :network
  has_many :characters

  def actors_list
    characters.collect do |character|
      character.actor.full_name
    end
  end
end
