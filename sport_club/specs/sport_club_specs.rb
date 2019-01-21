require('minitest/autorun')
require('minitest/rg')
require_relative('../sport_club')

class TestTeam < MiniTest::Test

  def setup
    @team = Team.new('Barcelona', ['Messi', 'Iniesta'], 'Klopp')
  end

  def test_team_name
    assert_equal('Barcelona', @team.get_team_name())
  end

  def test_get_players
    assert_equal(['Messi', 'Iniesta'], @team.get_players)
  end

  def test_get_coach
    assert_equal('Klopp', @team.get_coach)
  end

  def test_set_coach_name
    assert_equal('Guardiola', @team.set_coach_name('Guardiola'))
  end

  def test_add_new_player
    @team.players = ['Messi', 'Iniesta', 'Ronaldo']
    assert_equal(['Messi', 'Iniesta', 'Ronaldo'], @team.players)
  end

  def test_check_for_players__true
    assert_equal(true, @team.check_for_players('Iniesta'))
  end

  def test_check_for_players__false
    assert_equal(false, @team.check_for_players('Lewandowski'))
  end

  def test_win_or_lose
    assert_equal(1, @team.win_or_lose('win'))
  end
end
