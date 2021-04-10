puts "resetting database"

User.destroy_all
Workout.destroy_all
Exercise.destroy_all

###### users ######

puts "Creating Users 👤 👤 👤"
sleep(1)

simon = User.create(
    username: "sjacobs",
    password: "1234",
    first_name: "Simon",
    last_name: "Jacobs",
    email: "simonadlerjacobs@gmail.com",
    age: 31,
    height: 69,
    weight: 195,
    bodyfat: 22
)

###### workouts ######

puts "Creating Workouts 💪 💪 💪"
sleep(1)

workout1 = Workout.create(
    user_id: simon.id
)

###### exercises ######

puts "Creating Exercises 🏋️‍♀️ 🏋️‍♀️ 🏋️‍♀️"
sleep(1)

simon_bench = Exercise.create(
    workout_id: workout1.id,
    name: "Bench Press",
    load: 205,
    reps: 12
)

puts "Seeded 🌱 🌱 🌱 🌱 🌱 🌱"
sleep(3)



