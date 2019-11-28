feature 'Viewing bookmarks' do

  scenario 'visiting the index page' do
    visit '/'
    expect(page).to have_content "Bookmark Manager"
  end

  scenario 'A user can see bookmarks' do
    visit '/bookmarks'
    # expect(page).to have_content "https://makers.tech/"
    # expect(page).to have_content "http://google.com"
    expect(page).to have_content "https://askjeeves.net/"
    expect(page).to have_content "https://snake.googlemaps.com/"
    expect(page).to have_content "https://beeroclock.in/"
  end

end
