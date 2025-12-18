

Given("I am on the login page") do
  visit('https://letcode.in/login')
  #click_button('Consent')
  expect(page).to have_content('Login')
end

When("I input valid credentials") do
   find(:xpath, '/html/body/app-root/app-login/section/div/div[1]/div[2]/div/div[1]/div/input').fill_in(:with => 'mor_2314')
   find(:xpath, '/html/body/app-root/app-login/section/div/div[1]/div[2]/div/div[2]/div/input').fill_in( :with => '83r5^_')
end

And("Click login") do
    find(:xpath, '/html/body/app-root/app-login/section/div/div[1]/div[2]/div/button').click
end

Then("I should be taken to the homepage") do
    expect(page).to have_current_path('https://letcode.in/home')
end

When("I input invalid credentials") do
   find(:xpath, '/html/body/app-root/app-login/section/div/div[1]/div[2]/div/div[1]/div/input').fill_in(:with => 'lying@nottrue.com')
   find(:xpath, '/html/body/app-root/app-login/section/div/div[1]/div[2]/div/div[2]/div/input').fill_in(:with => '1234')
end

Then("I should see an error message") do
    expect(page).to have_content('Your email or password is incorrect!')
end
