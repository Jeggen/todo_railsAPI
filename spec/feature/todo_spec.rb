require 'rails_helper'

feature 'Manage tasks', js: true do
  scenario 'We can add a new task' do
    todo
    fill_in 'todo_title', with: 'Be Batman'
    execute
    expect(page).to have_content('Be Batman')
  sleep(1)
  end

    scenario 'todo count change' do
    todo
    fill_in 'todo_title', with: 'i can has cheeseburger'
    execute
    expect( page.find(:css, 'span#todo-count').text ).to eq "1"
  end
  sleep(1)
end
