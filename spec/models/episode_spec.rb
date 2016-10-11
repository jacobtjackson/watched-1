RSpec.describe Episode, type: :model do
  let(:season) { create(:season) }
  let(:user) { create(:user) }
  let(:episode) { create(:episode) }
  it { should have_many(:watched_episodes) }
  it { should have_many(:watched_by).through(:watched_episodes) }
  it { should belong_to(:season) }

  describe "attributes" do
    it "should respond to title" do
      expect(episode).to respond_to(:title)
    end

    it "should respond to season_id" do
      expect(episode).to respond_to(:season_id)
    end

    it "should respond to number" do
      expect(episode).to respond_to(:number)
    end

    it "should respond to plot" do
      expect(episode).to respond_to(:plot)
    end
  end
end
