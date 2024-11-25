puts "Deleting old data"

Result.destroy_all
Round.destroy_all
Workout.destroy_all
Participant.destroy_all
Exercise.destroy_all

puts "Seeding Data...."

puts "Seeding Exercises"

exercise_names = [ "Clean & Jerk", "Shoulder Press", "Double Under", "Pull Up" ]

exercise_names.each do |name|
  Exercise.create!(name: name)
end

puts "Seeding Participants"

participant_names = [ "Mike", "など", "John", "Fred" ]

participant_names.each do |name|
  Participant.create!(
    name: name,
    drop_in: [ true, false ].sample
  )
end

puts "Seeding Workouts"

dates = (Date.today.prev_month..Date.today).to_a

dates.each do |date|
  Workout.create!(
    date: DateTime.parse(date.to_s),
    variety: Workout.varieties.keys.sample,
    time_cap: rand(8..25)
  )
end

puts "Seeding Rounds"

Workout.all.each do |workout|
  Round.create!(
    workout: workout,
    exercise: Exercise.all.sample,
    number: 0,
    notes: '8-8-8 Tempo'
  )

  Round.create!(
    workout: workout,
    exercise: Exercise.all.sample,
    number: 1,
    reps: rand(1..20)
  )

  Round.create!(
    workout: workout,
    exercise: Exercise.all.sample,
    number: 2,
    reps: rand(1..20)
  )
end

puts "Seeding Results"

Workout.all.each do |workout|
  Participant.all.each do |participant|
    Result.create!(
      workout: workout,
      participant: participant,
      result: (120..12000),
      completed: [ true, false ].sample,
      rx: [ true, false ].sample
    )
  end
end

