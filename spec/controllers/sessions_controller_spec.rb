require 'rails_helper'

describe SessionsController do

  describe "GET #new" do
    it "returns signup page" do
      expect(get 'new').to render_template :new
    end
  end
end

