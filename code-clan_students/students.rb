class CodeclanStudents

  attr_accessor :name, :cohort

  def initialize(name, cohort)
    @name = name
    @cohort = cohort
  end

  def get_name
    return @name
  end

  def get_cohort
    return @cohort
  end

  def set_name(new_name)
    return @name = new_name
  end

  def get_talk
    return "I can talk!"
  end

  def favourite_language(language)
    return "I love #{language}"
  end
end
