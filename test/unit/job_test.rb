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

  test "job fixture :one is valid" do
    job = jobs(:one)
    assert job.valid?
  end

  test "startdate must not be today" do
    job = jobs(:one)
    job.startdate=Date.today;
    assert job.invalid?
  end

  test "enddate must not be today" do
    job = jobs(:one)
    job.enddate=Date.today;
    assert job.invalid?
  end

  test "startdate must not be yesterday" do
    job = jobs(:one)
    job.startdate=Date.yesterday;
    assert job.invalid?
  end

  test "enddate must not be yesterday" do
    job = jobs(:one)
    job.enddate=Date.yesterday;
    assert job.invalid?
  end

  test "enddate must not be before startdate" do
    job = jobs(:one)
    job.startdate=Date.today + 5.day
    job.enddate=Date.today + 4.day
    assert job.invalid?
  end

  test "enddate may be on startdate" do
    job = jobs(:one)
    job.startdate=Date.today + 5.day
    job.enddate=Date.today + 5.day
    assert job.valid?
  end

end
