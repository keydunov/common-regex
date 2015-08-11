require 'test/unit'
require File.join( File.dirname(__FILE__), '../lib/common-regex' )

class CommonRegexTest < Test::Unit::TestCase
  def test_valid_emails
    check_valid_regex CommonRegex::EMAIL, ["john.smith@gmail.com", "john_smith@gmail.com", "john@example.net"]
  end

  def test_invalid_emails
    check_invalid_regex CommonRegex::EMAIL, ["john.smith@gmail..com"]
  end

  def test_valid_dates
    check_valid_regex CommonRegex::ISO8601DATETIME, ["2012-01-01T00:00:00Z", "2012-01-01T00:00:00+00:00", "2012-01-01T00:00:00.00Z", "2010-02-18T16:23:48.541-06:00"]
  end

  def test_invalid_dates
    check_invalid_regex CommonRegex::ISO8601DATETIME, ["200905", "2009367", "2009-05-19 14:39:22+06a00"]
  end

  def test_valid_phones
    check_valid_regex CommonRegex::E164PHONE, ["+12345678900", "+442071838750", "79261433451"]
  end

  def test_invalid_phones
    check_invalid_regex CommonRegex::E164PHONE, ["+1-"]
  end

  def test_valid_usernames
    check_valid_regex CommonRegex::USERNAME, ["test_dude", "test.dude", "111___lolol..."]
  end

  def test_invalid_phones
    check_invalid_regex CommonRegex::USERNAME, ["sss s s s кри"]
  end

  private

  def check_valid_regex(regexp, strings)
    strings.each do |str|
      assert(str =~ regexp, "#{str} should be valid but it is not")
    end
  end

  def check_invalid_regex(regexp, strings)
    strings.each do |str|
      assert(str !~ regexp, "#{str} should be invalid but it is not")
    end
  end
end
