require 'rails_helper'

describe UsersController do
  describe "GET #new" do
    it "returns signup page" do
      expect(get 'new').to render_template :new
    end
  end

#  describe "GET #show" do
#    it "assigns the requested contact to @contact" do
#      contact = Factory(:contact)
#      get :show, id: contact
#      assigns(:contact).should eq(contact)
#    end

#    it "renders the #show view" do
#      get :show, id: Factory(:contact)
#      response.should render_template :show
#    end
end
