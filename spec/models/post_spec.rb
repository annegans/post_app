require 'rails_helper'

describe Post do 

let(:my_lunch) { Post.new(name: 'My lunch',
                      content: 'was shit') }

  it 'must have a name' do
    post = Post.new
    expect(post.valid?).to eq false
  end



  it 'must have content' do 
    post = Post.new(name: 'My lunch')
    expect(post.valid?).to eq false 
  end

  context 'no comments' do
    it 'it should return a message no comments' do 
      expect(my_lunch.amount).to eq "no comments yet"
    end
  end

 
  context 'one comment' do 
    it 'should return the comment' do 
      my_lunch.comments << Comment.new(name: 'anne', description: 'great')
    end
  end

context 'commens count amount' do
    it 'it should return the amount of comments in the database' do
      my_lunch.comments << Comment.new(name: 'anne', description: 'great') 
      my_lunch.comments << Comment.new(name: 'berra', description: 'lovely')
      my_lunch.comments << Comment.new(name: 'gijs', description: 'shit')
      my_lunch.comments << Comment.new(name: 'evert', description: 'oke')

      expect(my_lunch.amount).to eq 4
    end
  end


end