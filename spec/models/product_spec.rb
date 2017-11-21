require 'rails_helper'

RSpec.describe Product, type: :model do
  before do
    @product = FactoryGirl.create(:product)
  end

  describe "creating a user" do
    it "can be created if valid" do
      expect(@product).to be_valid
    end

#    it "will not be created if email is not valid" do
#      @product.product_url = nil
#      expect(@product).to_not be_valid
#    end

#    it "will not be created if password and password confirmation are not the same" do
#      @product.product_url = "hel"
#      expect(@product).to_not be_valid
#    end
  end
end
