using DataFrames, CSV, Statistics

iris = CSV.read(joinpath(dirname(pathof(DataFrames)), "../docs/src/assets/iris.csv"))

by_mean_petal_length = by(iris, :Species, :PetalLength => mean)
println(by_mean_petal_length)

by_num_species = by(iris, :Species, N = :Species => length)
println(by_num_species)

joined = join(by_mean_petal_length, by_num_species, on = :Species)
println(joined)

