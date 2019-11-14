require 'rails_helper'

RSpec.describe Todo, type: :model do
  # TodoモデルがItemモデルと1:nの関係である
  it { should have_many(:item).dependent(:destroy) }

  # バリデーション：保存前にtitleカラムが存在する
  it { should validate_presense_of(:title) }
  # バリデーション:保存前にcreated_byカラムが存在する
  it { should validate_presense_of(:created_by) }
end
