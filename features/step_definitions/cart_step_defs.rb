Given("I am on the home page") do
  visit('https://letcode.in/home')
  expect(page).to have_content('Products')
end

When("I click on a product") do
   find(:xpath, '/html/body/app-root/app-home/section/div/div[2]/div[1]/div/footer/button').click
   expect(page).to have_content('Fjallraven')
end

And("I click add to cart") do
    find(:xpath, '/html/body/app-root/app-productlist/section/div[2]/div[1]/div/div/div[1]/button/span[2]').click
end

Then("I should see the value of the cart increase") do
    cart = find(:xpath, '/html/body/app-root/app-productlist/section/div[1]/div/div[2]/app-cartvalue/button[1]/span[2]').text
    expect(cart).to eq("1")
end


Given("I have an item in my cart") do
  visit('https://letcode.in/home')
  find(:xpath, '/html/body/app-root/app-home/section/div/div[2]/div[1]/div/footer/button').click
  find(:xpath, '/html/body/app-root/app-productlist/section/div[2]/div[1]/div/div/div[1]/button/span[2]').click
  cart = find(:xpath, '/html/body/app-root/app-productlist/section/div[1]/div/div[2]/app-cartvalue/button[1]/span[2]').text
    expect(cart).to eq("1")
end

And("I am on the cart page") do
    find(:xpath, '/html/body/app-root/app-productlist/section/div[1]/div/div[2]/app-cartvalue/button[1]').click
end

When("I click delete") do
   find(:xpath, '/html/body/app-root/app-cart/section/div/div[1]/div[2]/table/tbody/tr/td[5]/button/span/i').click
end

Then("I should see no items in the cart") do
    expect(page).to have_content('Your cart is empty')
end