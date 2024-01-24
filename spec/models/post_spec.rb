require 'rails_helper'

RSpec.describe Post, type: :model do
  describe 'Post' do
    it 'is invalid without a title and content' do
      post = FactoryBot.build(:post, title: nil, content: nil)
      expect(post).to be_invalid
      expect(post.errors[:title]).to include("can't be blank")
      expect(post.errors[:content]).to include("can't be blank")
    end

    it 'has valid attributes' do
      post = FactoryBot.create(:post, title: "This is Test Title", content: "This is Test content" )
      expect(post).to be_valid
    end

    it "is invalid without a title" do
      post = FactoryBot.build(:post, content: "Test Content")
      expect(post).to be_invalid
      expect(post.errors[:title]).to include("can't be blank")
    end

    it "is invalid without content" do
      post = FactoryBot.build(:post, title: "Test Title")
      expect(post).to be_invalid
      expect(post.errors[:content]).to include("can't be blank")
    end
  end
    # pending "add some examples to (or delete) #{__FILE__}"
end
