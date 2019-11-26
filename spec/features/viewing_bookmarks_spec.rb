feature 'Viewing bookmarks' do
  scenario 'A user can see bookmarks' do
    visit '/bookmarks'
    expect(page).to have_content "https://makers.tech/"
    expect(page).to have_content "http://google.com"
    expect(page).to have_content "https://snake.googlemaps.com/"
  end
end
