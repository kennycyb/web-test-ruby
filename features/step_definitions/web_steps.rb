Given /^I visit "([^"]*)"$/ do |path|
  locale = I18n.t('locale', :default => I18n.locale)
  visit "/#{locale}/#{path}"
end
