require "rails_helper"
RSpec.describe Image, type: :model do
  it { is_expected.to belong_to(:user) }
  it { is_expected.to belong_to(:lr_image) }
end
