Then /^I should see a link to the "([^"]*)" gallery$/ do |title|
  page.should have_link(title)
end

Then /^I should see the image for "([^"]*)" on the page$/ do |photo|
  photo = Photo.find_by_name!(photo)
  page.should have_css("img[src='#{photo.image.url}']")
end