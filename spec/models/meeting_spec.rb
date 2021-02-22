require 'rails_helper'

RSpec.describe Meeting, type: :model do
  describe '予定登録' do
    before do
      @meeting = FactoryBot.build(:meeting)
    end

    it 'nameとstart_timeが存在すれば登録できる' do
      expect(@meeting).to be_valid
    end

    it 'nameが空では登録できないこと' do
      @meeting.name = ""
      @meeting.valid?
      expect(@meeting.errors.full_messages).to include("Name can't be blank")
    end

    it 'start_timeが空では登録できないこと' do
      @meeting.start_time = ""
      @meeting.valid?
      expect(@meeting.errors.full_messages).to include("Start time can't be blank")
    end 
  end
end
