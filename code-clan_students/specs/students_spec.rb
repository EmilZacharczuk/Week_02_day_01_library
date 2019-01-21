require('minitest/autorun')
require('minitest/rg')
require_relative('../students.rb')

class TestCodeclanStudents < MiniTest::Test

  def setup
    @account = CodeclanStudents.new('John', 'E28')
  end

  def test_name
    assert_equal('John', @account.name)
  end

  def test_cohort
    assert_equal('E28', @account.cohort)
  end

  def test_set_name
    @account.name = "Anna"
    assert_equal('Anna', @account.name)
  end

  def test_get_talk
    assert_equal('I can talk!', @account.get_talk())
  end

  def test_favourite_language
    assert_equal('I love Ruby', @account.favourite_language('Ruby'))
  end
end
