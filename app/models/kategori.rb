class Kategori < ActiveRecord::Base
  belongs_to :barang
  has_many :barang

  validates :nama, presence: true, uniqueness: { case_sensitive: false }
end
