require 'test_helper'

class JobTest < ActiveSupport::TestCase

  test "job attributes must not be empty" do
    job = Job.new
    assert job.invalid?
    assert job.errors[:provider].any?
    assert job.errors[:startdate].any?
    assert job.errors[:enddate].any?
    assert job.errors[:comment].any?
  end

end
