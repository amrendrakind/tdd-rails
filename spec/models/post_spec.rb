require 'rails_helper'

RSpec.describe Post, type: :model do
  describe 'Post' do
    it 'is has valid attributes' do
      post = FactoryBot.create(:post)
      expect(post).to be_valid
    end

    it 'is has valid attributes' do
      post = FactoryBot.create(:post)
      expect(post).to be_valid
    end
  end
    # pending "add some examples to (or delete) #{__FILE__}"
end
