FactoryGirl.define do
  factory :user do
    email "Hi"
    password "hello"
    password_confirmation "hello"
  end

  factory :product do
    product_url "http://www.topman.com/en/tmuk/product/clothing-140502/mens-trousers-joggers-6608240/black-skinny-joggers-5375215?bi=0&ps=20"
    association :user, factory: :user
  end
end
