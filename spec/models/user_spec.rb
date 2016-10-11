RSpec.describe User, type: :model do
  let(:season) { create(:season) }
  let(:episode) { create(:episode) }
  let(:user) { create(:user) }
  it { should have_many(:watched_episodes) }
  it { should have_many(:watches).through(:watched_episodes) }

  describe "attributes" do
    it "should respond to username" do
      expect(user).to respond_to(:username)
    end

    it "should respond to email" do
      expect(user).to respond_to(:email)
    end
  end
end
