class Hamming
  def self.compute(strand_a, strand_b)
    raise ArgumentError if strand_a.length != strand_b.length
    diff = 0
    strand_a.split('').each_with_index do |letter, index|
      next unless letter != strand_b.split('')[index]
      diff += 1
    end
    diff
  end
end
