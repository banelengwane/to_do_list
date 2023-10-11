# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
kalo = User.create(username: 'kalo', password: 'kalo123')
mahle = User.create(username: 'mahle', password: 'mahl123')
kalo.tasks.create(title: "Drop it like its hot", details: "Whatever")
mahle.tasks.create([
    {title: "Get to the store",
     details: "so much pasta"
    },
    {title: "Eat a good breakfast",
    details: "protein, vegetables, etc."
    },
    {title: "Make a Rails App",
    details: "AirBnB, but with tents?"
    }
])