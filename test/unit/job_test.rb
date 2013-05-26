require 'test_helper'

class JobTest < ActiveSupport::TestCase

  test "job attributes must not be empty" do
    job = Job.new
    assert job.invalid?
    assert job.errors[:title].any?
    assert job.errors[:description].any?
    assert job.errors[:price].any?
    assert job.errors[:image_url].any?
  end

end
