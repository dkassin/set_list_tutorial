require 'rails_helper'

RSpec.describe 'Artist songs index' do
  before :each do
    @prince = Artist.create!(name: 'Prince')
    @purple = @prince.songs.create!(title: "Purple Rain", length: 1645, play_count: 8199)
    @beret = @prince.songs.create!(title: "Raspberry Beret", length: 845, play_count: 6599)
  end

  it 'shows all of the titles of the songs for the artist' do
    visit "/artists/#{@prince.id}/songs"

    expect(page).to have_content(@purple.title)
    expect(page).to have_content(@beret.title)
  end

  it 'links to each songs show page' do
    visit "/artists/#{@prince.id}/songs"

    click_on @purple.title

    expect(current_path).to eq("/songs/#{@purple.id}")
  end

  it 'shows the average song legnth for the artist' do
    visit "/artists/#{@prince.id}/songs"

    expect(page).to have_content("Average Song Length for Prince: 1245")
  end
end
