class CelestialBody
  attr_accessor :type, :name
end

default_body = CelestialBody.new
default_body.type = 'planet'
bodies = Hash.new(default_body)

bodies['Venus'].name = 'Venus'
#bodies['Mars'].name = 'Mars'
bodies['Europa'].name = 'Europa'
bodies['Europa'].type = 'moon'

p bodies.default

bodies['Mars'].name = 'Mars'

p bodies.default

p bodies['Mars']
p bodies['Europa']
p bodies['Venus']

altair = CelestialBody.new
altair.name = 'Altair'
altair.type = 'star'
polaris = CelestialBody.new
polaris.name = 'Polaris'
polaris.type = 'star'
vega = CelestialBody.new
vega.name = 'vega'
vega.type = 'star'

puts altair.object_id
puts polaris.object_id
puts vega.object_id

puts altair.name, polaris.name, vega.name
puts altair.inspect, polaris.inspect

vega = CelestialObject.new
puts vega.inspect

class LoveInterest

  def request_date
    if @busy
      puts "Sorry, I'm busy."
    else
      puts "Sure, lets's go!"
      @busy = true
    end
  end
end

getty = LoveInterest.new
rolance = LoveInterest.new

getty.request_date
rolance.request_date

p getty.object_id
p rolance.object_id




