require 'csv'
class Link < ActiveRecord::Base
  include PgSearch
  multisearchable against: [:title, :description]

  pg_search_scope :search, against: [:title, :description],
                  associated_against: { link_type: :name, category: :name },
                  using: { tsearch: { prefix: true } }

  self.per_page = 20
  acts_as_taggable
  validates :title, presence: true
  validates :url, format: { with: URI::regexp(%w(http https)) }
  has_many :favourites
  belongs_to :user
  has_many :learn_time
  belongs_to :category
  belongs_to :learning_status
  belongs_to :link_type

  def self.learn_time(user)
    LearnTime.create!(user_id: user.id, link_id: self.id)
  end

  def create_favourite(user_id, link_id)
    favourites.create!(user_id: user_id, link_id: link_id)
  end

  def destroy_favourite(favourite)
    favourite.destroy_all
  end

  def self.import(file, current_user)
    CSV.foreach(file.path, headers: true) do |row|
      params_without_taglist = row.to_hash.except('user_id').merge!(user_id: current_user.id).except('tag_list')
      @link = self.find_or_create_by(params_without_taglist)
      current_user.tag(@link, :with => row.to_hash['tag_list'], :on => :tags)
    end
  end
end
