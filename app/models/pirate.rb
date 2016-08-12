class Pirate
  attr_accessor :name, :weight, :height

  def self.all
    @@pirates
  end

  @@pirates = []

  def self.clear
    @@pirates = []
  end

  def initialize(options)
    @name = options[:name]
    @weight = options[:weight]
    @height = options[:height]
    @@pirates << self
  end
end
