require 'rails_helper'

RSpec.describe Room, :type => :model do

  it "名前があれば有効" do
    expect(build(:room)).to be_valid
  end

  it "名前があれば有効" do
    expect(build(:room, name: nil)).not_to be_valid
  end

end
