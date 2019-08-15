using DataFrames

people = DataFrame(ID = [20, 40], Name = ["John Doe", "Jane Doe"])
jobs = DataFrame(ID = [20, 40], Job = ["Lawyer", "Doctor"])

joined_df = join(people, jobs, on = :ID)
println(joined_df)

jobs = DataFrame(ID = [20, 60], Job = ["Lawyer", "Astronaut"])
joined_df = join(people, jobs, on = :ID, kind = :inner)
println(joined_df)
