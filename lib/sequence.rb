class Sequence
  def initialize(init_value)
    @init_value = init_value
  end

  def digits_with_count
    @init_value
      .to_s
      .split('')
      .chunk_while { |i, j| i == j }
      .to_a
      .map { |x| [x.size, x.first] }
      .flatten
      .join('')
  end

  def next
    Sequence.new(digits_with_count)
  end

  def to_s
    @init_value.to_s
  end
end
