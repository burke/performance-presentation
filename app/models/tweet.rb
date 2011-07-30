class Tweet < ActiveRecord::Base

  belongs_to :user

  def fancy_thing
    blackbox_input = (created_at.to_i + rand(10)) % 4
    BlackBox.analysis_result(blackbox_input)
  end 

  def some_iteration
    i = 0
    100_000.times {
      x = {:omg => [1,2,3] , :bar => [:a, 4, Set.new], :baz => Class.new()}
      i += x[:omg][0]
    }
    i
  end
  
end 

class BlackBox

  def self.analysis_result(n)
    sleep 0.1
    result = ["garbage", "mediocre", "kinda cool", "FREAKIN' AWESOME"][n]
    "This tweet is #{result}"
  end 
  
end 
