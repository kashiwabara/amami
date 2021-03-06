class Picture < ActiveRecord::Base
  # photoをattachファイルとする。stylesで画像サイズを定義できる
  has_attached_file :photo, styles: { large: "700x300", medium: "300x300>", thumb: "100x100>" }

  # ファイルの拡張子を指定（これがないとエラーが発生する）
  validates_attachment :photo, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }
  validates :name, presence: true
  validates :title, presence: true
  validates :description, presence: true
  validates :photo, presence: true
 
end
