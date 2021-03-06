class Product
  include Mongoid::Document
  include Mongoid::Attributes::Dynamic
  include Mongoid::Paperclip
  include Mongoid::Search

  has_mongoid_attached_file :image, styles: {small: "70x70!", medium: "195x243!"},
                      :default_url => "/images/:style/missing.png"

  field :name
  field :description
  field :stock, type: Integer
  field :price, type: Float
  field :sale_price, type: Float
  field :view, type: Integer
  field :rate, type: Float
  field :created_at, type: DateTime, default: Time.now

  belongs_to :brand
  belongs_to :order_detail
  
  search_in :name
  
  
 # def to_param
# "#{id} #{name}".parameterize
# end
end
