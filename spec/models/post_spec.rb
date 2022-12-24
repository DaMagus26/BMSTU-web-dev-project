require 'rails_helper'

RSpec.describe Post, type: :model do
  describe 'when created' do
    it 'is valid with valid parameters' do
      new_post = Post.new(header: 'Header', content: 'Content text', author: '1')
      expect(new_post).to be_valid
    end

    it 'is invalid without author' do
      new_post = Post.new(header: 'Header', content: 'Content text')
      expect(new_post).to_not be_valid
    end

    it 'is invalid without content' do
      new_post = Post.new(header: 'Header', author: '1')
      expect(new_post).to_not be_valid
    end

    it 'is valid without header' do
      new_post = Post.new(content: 'Content text', author: '1')
      expect(new_post).to_not be_valid
    end
  end
end
