json.smoothie do
  json.id @smoothie.id
  json.name @smoothie.name
  json.calories @smoothie.calories
  json.total_fat @smoothie.total_fat
  json.sugar @smoothie.sugar
  json.fiber @smoothie.fiber
  json.fruits @smoothie.fruits do |fruit|
    json.name fruit.name
  end
end
