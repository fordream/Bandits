require 'rails_helper'

RSpec.describe User, :type => :model do

  it "名前とトークンがあれば有効" do
    expect(build(:user)).to be_valid
  end

  it "名前がなければ無効" do
    expect(build(:user, name: nil)).not_to be_valid
  end

  it "トークンがなければ無効" do
    expect(build(:user, remember_token: nil)).not_to be_valid
  end

  it "保持するトークンは40文字" do
    expect(build(:user).remember_token.length).to eq 40
    expect(build(:user, remember_token: 'hoge')).not_to be_valid
  end

end
