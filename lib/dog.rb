# Add your code here
require 'pry'
class Dog 

  @@all = [ ]
  
  attr_accessor :name 
  
  def initialize(name)
    @name = name 
    save 
  end 
  
  def save 
    @@all << self 
  end
  
  def self.all 
    @@all
    binding.pry 
  end 
  
  def self.print_all 
    @@all.each do |x|
      puts "#{x}"
    end 
  end 
  
  def self.clear_all 
    @@all.clear 
   end 

end