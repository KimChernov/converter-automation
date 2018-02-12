When(/^I click on menu$/) do
  find_element(id: "toolbar").find_element(xpath: "//android.widget.ImageButton").click
end

Given(/^I land on Energy screen$/) do
  find_element(id: "toolbar").find_element(xpath: "//android.widget.TextView[@text='Energy']")
end

When(/^I select "([^"]*)" from right column$/) do |value|
  find_element(id: "radio_group_to").find_element(xpath: "//android.widget.RadioButton[@text='#{value}']").click
end

Then(/^I see it "([^"]*)" in To Header$/) do |value|
  actual_value = find_element(id: "header_text_unit_to").text
  if actual_value != value
    fail("Expected value is #{value}, but actual value was #{actual_value}")
  end
end