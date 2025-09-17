use context dcic2024

include csv
include data-source


x= 47
workouts = table: date :: String,
  activity :: String,
  duration :: Number
  row: "jan 01", "running", 60
  row: "feb 02", "running", 60
  row: "feb 02", "running", 60
end

check:
  workouts is-not table: date :: String,
    activity :: String,
    duration :: Number
    row: "jan 01", "running", 60
    row: "feb 02", "running", 60
    row: "feb 02", "running", 60
  end 
end

recipes = load-table:
  title :: String,
  servings :: Number,
  prep-time :: number
  source: csv-table-url("https://pdi.run/f25-              2000-recipes.cvs", default-options)
  sanitize servings using num-sanitizer
end

# "foo, fun", 17, ""