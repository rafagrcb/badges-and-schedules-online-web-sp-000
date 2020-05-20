def badge_maker(name)
  return "Hello, my name is #{name}."
end

def batch_badge_creator(names)
  badges = []
  names.each {|name| badges.push(badge_maker(name))}
  return badges
end

def assigner(name, value)
  value = value + 1
  return "Hello, #{name}! You'll be assigned to room #{value}!"
end 


def assign_rooms(speakers)
  room_assignments = []
  speakers.each_with_index do |speaker, index|
    room_assignments.push(assigner(speaker, index))
  end
  return room_assignments
end

def printer(attendees)
  attendees.each_with_index do |attendee, index|
    puts badge_maker(attendee)
    puts assigner(attendee, index)
  end
end