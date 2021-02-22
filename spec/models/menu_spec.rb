require 'rails_helper'

RSpec.describe Menu, type: :model do
  describe 'メニュー登録' do
    before do
      @menu = FactoryBot.build(:menu)
    end

    it 'mainとside_1、side_2が存在すれば登録できること' do
      expect(@menu).to be_valid
    end

    it 'mainが空では登録できないこと' do
      @menu.main = ""
      @menu.valid?
      expect(@menu.errors.full_messages).to include("Main can't be blank")
    end

    it 'side_1が空でも登録できること' do
      @menu.side_1 = ""
      expect(@menu).to be_valid
    end

    it 'side_2が空でも登録できること' do
      @menu.side_2 = ""
      expect(@menu).to be_valid
    end
  end
end
