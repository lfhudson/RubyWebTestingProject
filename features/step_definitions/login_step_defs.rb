

Given("I am on the login page") do
  visit('https://automationexercise.com/login')
  click_button('Consent')
  expect(page).to have_content('Login to your account')
end

When("I input valid credentials") do
   find(:xpath, '/html/body/section/div/div/div[1]/div/form/input[2]').fill_in(:with => 'jane@jane.com')
   fill_in('password', :with => '1234')
end

And("Click login") do
    find(:xpath, '/html/body/section/div/div/div[1]/div/form/button').click
end

Then("I should be taken to the homepage") do
    expect(page).to have_current_path('https://automationexercise.com')
end

When("I input invalid credentials") do
   find(:xpath, '/html/body/section/div/div/div[1]/div/form/input[2]').fill_in(:with => 'lying@nottrue.com')
   fill_in('password', :with => '1234')
end

Then("I should see an error message") do
    expect(page).to have_content('Your email or password is incorrect!')
end
