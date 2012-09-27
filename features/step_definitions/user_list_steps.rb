Given /the following players exist/ do |players_table|
  players_table.hashes.each do |player|
    # each returned element will be a hash whose key is the table header.
    # you should arrange to add that movie to the database here.
    Player.create!(player)
  end
end

Then /^I should see the following players:$/ do |table|
  player_list = []
  page.all("table#players tbody#playerlist tr td[2]").each do |x|
    player_list << x.text
  end
  player_list2 = []
  table.hashes.each do |t|
    player_list2 << t[:name]
  end
  player_list.should be == player_list2
end

When(/^I click the "([^\"]*)" link for "([^\"]*)"$/) do |link, cell_value|

  page.all('table#players tbody#playerlist tr').each do |node|
    if node[2] == cell_value
      click_link node[3].content
    end
  end
end

Then /^I should see the following table:$/ do |expected_table|
  actual_table = []
  page.all("table#players tbody#playerlist tr").each do |tr_node|
    td_part =[]
    tr_node.all("td").each do |td_node|
      td_part << td_node.text
    end
    actual_table << td_part
  end
  expected_table.transpose.diff!(actual_table.transpose)
end

When /^I follow the "([^"]*)" link for "([^"]*)"$/ do |link_name, user|
  page.all("table#players tbody#playerlist tr").each do |tr_node|
    if tr_node.all("td")[1].text == user
      within(tr_node) do
        click_link link_name
      end
    end
  end
end

Then /^the "([^"]*)" field should be empty$/ do |field|
  field = find_field(field)
  field_value = (field.tag_name == 'textarea') ? field.text : field.value
  if field_value.respond_to? :should
    field_value.should == ""
  else
    assert_match(nil, field_value)
  end
end