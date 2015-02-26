Given(/^I'm skier with map$/) do
  @cut = Webukovel::PathFinder.new([[]])
end

When(/^looking for the shortest route from "(.*?)" to conference hall$/) do |mountain_peak|
  @route = @cut.get_route(mountain_peak)
  @time = @cut.get_route_time(mountain_peak)
end

Then(/^my route should take (\d+)$/) do |expected_time|
   expect(@time).equal?(expected_time)
end

Then(/^visit "(.*?)"$/) do |expected_route|
  expect(@route).equal?(expected_route)
end