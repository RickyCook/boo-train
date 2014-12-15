# rubocop:disable Lint/AmbiguousRegexpLiteral
Given /^I visit "([^"]*)"$/ do |uri|
  visit uri
end

Then /^I should( not)? see "([^"]*)"$/ do |negative, text|
  if negative == ' not'
    page.should_not have_content text
  else
    page.should have_content text
  end
end
