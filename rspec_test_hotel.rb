# class
class Hotel
  attr_accessor :guests

  def initialize
    @guests = []
  end

  def check_in_guest(guest_name)
    guests << guest_name
  end

  def check_out_guest(guest_name)
    guests.delete(guest_name)
  end
end

describe Hotel do
  it 'can check a guest in' do
    hotel = Hotel.new
    hotel.check_in_guest('George Harrison')
    expect(hotel.guests).to include 'George Harrison'
  end

  it 'can check a guest out' do
    hotel = Hotel.new
    hotel.check_in_guest('Buddy Holly')
    hotel.check_out_guest('Buddy Holly')
    expect(hotel.guests).not_to include 'Buddy Holly'
  end
end

# test change
