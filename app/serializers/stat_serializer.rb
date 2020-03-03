class StatSerializer
  def initialize
    @total_competing_olympians = Olympian.count
    @average_weight = {
      'unit' => 'kg',
      'male_olympians' => Olympian.average_weight('M'),
      'female_olympians' => Olympian.average_weight('F')
    }
    @average_age = Olympian.average_age
  end
end
