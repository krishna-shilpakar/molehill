Then /^I should see a list of posts$/ do
  response.should have_tag "ul#posts"
  response.should have_tag "ul#posts > li.post"
end

Then /^I should see the ([0-9]*) most recent posts$/ do |count|
  count.to_i.times do |n|
    response.should have_tag "li.post:nth-child(#{n+1})"
  end
end
