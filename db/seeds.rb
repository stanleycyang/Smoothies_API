Fruit.create([
  { name: "banana" },
  { name: "orange" },
  { name: "mango" },
  { name: "strawberry" },
  { name: "blueberry" },
  { name: "papaya" },
  { name: "wheatgrass"},
  { name: "pineapple"}
])

  Smoothie.create({
    name: "Aloha Pineapple Smoothie",
    calories: 410,
    total_fat: 1.5,
    carbs: 96,
    sugar: 90,
    fiber: 3
  }).fruits = [Fruit.find_by_name("banana"), Fruit.find_by_name("pineapple")]
  Smoothie.create({
    name: "Banana Berry Smoothie",
    calories: 390,
    total_fat: 1.5,
    carbs:92,
    sugar:81,
    fiber:4
  }).fruits = [Fruit.find_by_name("banana"), Fruit.find_by_name("strawberry")]

  Smoothie.create({
    name: "Caribbean Passion Smoothie ",
    calories:  350,
    total_fat:1.5,
    carbs:82,
    sugar:77,
    fiber:3
  }).fruits = [Fruit.find_by_name("banana"), Fruit.find_by_name("strawberry"), Fruit.find_by_name("mango")]
  Smoothie.create({
    name: "Strawberries Wild Smoothie",
    calories: 370,
    total_fat:0,
    carbs:86,
    sugar:75,
    fiber:3
  }).fruits = [ Fruit.find_by_name("strawberry")]
Smoothie.create(
  {
    name: "Tropical Harvest",
    calories: 340,
    total_fat:1,
    carbs: 81,
    sugar:67,
    fiber:4
  }
).fruits = [Fruit.find_by_name("banana"), Fruit.find_by_name("mango"), Fruit.find_by_name("papaya")]
