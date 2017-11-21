require "rails_helper"

feature 'User inputs product URL' do

  let(:user) { FactoryGirl.create(:user) }
  let(:product) { FactoryGirl.create(:product) }

  before do
    visit login_path
    fill_in 'email', with: user.email
    fill_in 'password', with: user.password
    click_button 'Submit'
  end

  scenario 'adds product successfully to db and redirects to root' do
    click_link 'New URL'
    fill_in 'product[product_url]', with: product.product_url
    click_button 'Submit'
    expect(current_path).to eq root_path
  end
end
