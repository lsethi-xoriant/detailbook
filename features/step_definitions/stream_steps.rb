When /^I (?:like|unlike) the post "([^"]*)" in the stream$/ do |post_text|
  like_stream_post(post_text)
end

Then /^"([^"]*)" should be post (\d+)$/ do |post_text, position|
  stream_element_numbers_content(position).should have_content(post_text)
end

When /^I toggle nsfw posts$/ do
  find(".toggle_nsfw_state", match: :first).click
end

Then /^I should have (\d+) nsfw posts$/ do |num_posts|
  page.should have_css(".nsfw-shield", count: num_posts.to_i)
end
