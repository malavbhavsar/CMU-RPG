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