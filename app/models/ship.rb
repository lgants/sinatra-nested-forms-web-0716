class Ship
  attr_accessor :name, :type, :booty

  def self.all
    @@ships
  end

  @@ships = []

  def self.clear
    @@ships = []
  end

  def initialize(options)
    @name = options[:name]
    @type = options[:type]
    @booty = options[:booty]
    @@ships << self
  end
end
