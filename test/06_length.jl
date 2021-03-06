module TestLength
    using Base.Test
    using CategoricalArrays

    pool = CategoricalPool([1, 2, 3])
    @test length(pool) == 3

    pool = CategoricalPool([1, 2, 3], [3, 2, 1])
    @test length(pool) == 3
end
