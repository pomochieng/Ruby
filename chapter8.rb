class CelestialBody
  attr_accessor :type, :name
end

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




