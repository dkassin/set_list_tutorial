require 'rails_helper'

RSpec.describe Artist do
  it {should have_many :songs}

  describe 'instance methods' do
    describe '#average_song_length' do
      before :each do
        @prince = Artist.create!(name: 'Prince')
        @purple = @prince.songs.create!(title: "Purple Rain", length: 1645, play_count: 8199)
        @beret = @prince.songs.create!(title: "Raspberry Beret", length: 845, play_count: 6599)

      end

      it 'returns the average song length' do
        expect(@prince.average_song_length).to eq(1245)
      end

    end
  end
end
