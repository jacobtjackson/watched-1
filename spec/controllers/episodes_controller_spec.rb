require 'rails_helper'
require 'factory_girl_rails'

RSpec.describe EpisodesController, type: :controller do
  let (:my_season) { create(:season) }
  let (:my_episode) { create(:episode) }
  let (:my_user) { create(:user) }
  context 'guest' do
    describe "GET index" do
      it "redirects to sign-in page" do
        get :index
        expect(response).to redirect_to(new_user_session_path)
      end
    end
  end
  context 'member user' do
    before do
      my_user = create(:user)
      sign_in my_user
    end

    describe 'GET index' do
      it "returns http success" do
        get :index
        expect(response).to have_http_status(:success)
      end
    end

    describe "PUT watched" do
      it "marks unwatched episodes as watched." do
        put :watched, season_id: my_season.id, :id => my_episode.id, episode: my_episode
        expect(my_user.watches).to include(:my_episode)
      end
    end

    describe "PUT unwatched" do
      it "marks watched episodes as unwatched." do
        put :unwatched, season_id: my_season.id, :id => my_episode.id, episode: my_episode
        expect(my_user.watches).not_to include(:my_episode)
      end
    end
  end
end
