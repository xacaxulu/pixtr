

FactoryGirl.define do
  factory :gallery do 
    title {FactoryGirl.generate(:gallery_title)}
  end
  
  sequence :gallery_title do |n|
    "Vacation #{n}"
  end
end

