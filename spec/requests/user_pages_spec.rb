require 'rails_helper'

describe "User pages" do

  subject { page }

  describe "Singup page" do
    before { visit singup_path }

    it { should have_content('Sing Up') }
    it { should have_title('Sing Up') }
  end

end