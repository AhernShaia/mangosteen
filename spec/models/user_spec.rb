require 'rails_helper'

RSpec.describe User, type: :model do
  context 'before publication' do  
    it 'user have email' do 
       user = User.new(email: '123213@32434')
      expect(user.email).to eq '123213@32434'
    end
  end
end
