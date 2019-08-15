using DataFrames, CSV, Statistics

iris = CSV.read(joinpath(dirname(pathof(DataFrames)), "../docs/src/assets/iris.csv"))

by_mean_petal_length = by(iris, :Species, mean_petal_length = :PetalLength => mean)
println(by_mean_petal_length)

by_num_species = by(iris, :Species, N = :Species => length)
println(by_num_species)

using_join = join(by_num_species, by_mean_petal_length, on = :Species)
println(using_join)

using_by = by(iris, :Species, N = :Species => length, mean_petal_length = :PetalLength => mean)
println(using_by)

using_aggregate = aggregate(iris, :Species, length)
println(using_aggregate)

aggregate_sum_and_mean = aggregate(iris, :Species, [sum, mean])
println(aggregate_sum_and_mean)