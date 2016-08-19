class Barang < ActiveRecord::Base
  belongs_to :merk
  belongs_to :kategori
  validates :nama, presence: true, uniqueness: { case_sensitive: false }

  mount_uploader :gambar, GambarUploader
end
