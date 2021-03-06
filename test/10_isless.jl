module TestIsLess
    using Base.Test
    using CategoricalArrays

    pool = CategoricalPool([1, 2, 3])

    v1 = CategoricalValue(1, pool)
    v2 = CategoricalValue(2, pool)
    v3 = CategoricalValue(3, pool)

    @test_throws Exception v1 < v1
    @test_throws Exception v1 < v2
    @test_throws Exception v1 < v3
    @test_throws Exception v2 < v1
    @test_throws Exception v2 < v2
    @test_throws Exception v2 < v3
    @test_throws Exception v3 < v1
    @test_throws Exception v3 < v2
    @test_throws Exception v3 < v3

    @test_throws Exception v1 <= v1
    @test_throws Exception v1 <= v2
    @test_throws Exception v1 <= v3
    @test_throws Exception v2 <= v1
    @test_throws Exception v2 <= v2
    @test_throws Exception v2 <= v3
    @test_throws Exception v3 <= v1
    @test_throws Exception v3 <= v2
    @test_throws Exception v3 <= v3

    @test_throws Exception v1 > v1
    @test_throws Exception v1 > v2
    @test_throws Exception v1 > v3
    @test_throws Exception v2 > v1
    @test_throws Exception v2 > v2
    @test_throws Exception v2 > v3
    @test_throws Exception v3 > v1
    @test_throws Exception v3 > v2
    @test_throws Exception v3 > v3

    @test_throws Exception v1 >= v1
    @test_throws Exception v1 >= v2
    @test_throws Exception v1 >= v3
    @test_throws Exception v2 >= v1
    @test_throws Exception v2 >= v2
    @test_throws Exception v2 >= v3
    @test_throws Exception v3 >= v1
    @test_throws Exception v3 >= v2
    @test_throws Exception v3 >= v3

    @test ordered!(pool, true) === true
    @test ordered(pool) === true

    @test (v1 < v1) === false
    @test (v1 < v2) === true
    @test (v1 < v3) === true
    @test (v2 < v1) === false
    @test (v2 < v2) === false
    @test (v2 < v3) === true
    @test (v3 < v1) === false
    @test (v3 < v2) === false
    @test (v3 < v3) === false

    @test (v1 <= v1) === true
    @test (v1 <= v2) === true
    @test (v1 <= v3) === true
    @test (v2 <= v1) === false
    @test (v2 <= v2) === true
    @test (v2 <= v3) === true
    @test (v3 <= v1) === false
    @test (v3 <= v2) === false
    @test (v3 <= v3) === true

    @test (v1 > v1) === false
    @test (v1 > v2) === false
    @test (v1 > v3) === false
    @test (v2 > v1) === true
    @test (v2 > v2) === false
    @test (v2 > v3) === false
    @test (v3 > v1) === true
    @test (v3 > v2) === true
    @test (v3 > v3) === false

    @test (v1 >= v1) === true
    @test (v1 >= v2) === false
    @test (v1 >= v3) === false
    @test (v2 >= v1) === true
    @test (v2 >= v2) === true
    @test (v2 >= v3) === false
    @test (v3 >= v1) === true
    @test (v3 >= v2) === true
    @test (v3 >= v3) === true

    levels!(pool, [2, 3, 1])

    @test (v1 < v1) === false
    @test (v1 < v2) === false
    @test (v1 < v3) === false
    @test (v2 < v1) === true
    @test (v2 < v2) === false
    @test (v2 < v3) === true
    @test (v3 < v1) === true
    @test (v3 < v2) === false
    @test (v3 < v3) === false

    @test (v1 <= v1) === true
    @test (v1 <= v2) === false
    @test (v1 <= v3) === false
    @test (v2 <= v1) === true
    @test (v2 <= v2) === true
    @test (v2 <= v3) === true
    @test (v3 <= v1) === true
    @test (v3 <= v2) === false
    @test (v3 <= v3) === true

    @test (v1 > v1) === false
    @test (v1 > v2) === true
    @test (v1 > v3) === true
    @test (v2 > v1) === false
    @test (v2 > v2) === false
    @test (v2 > v3) === false
    @test (v3 > v1) === false
    @test (v3 > v2) === true
    @test (v3 > v3) === false

    @test (v1 >= v1) === true
    @test (v1 >= v2) === true
    @test (v1 >= v3) === true
    @test (v2 >= v1) === false
    @test (v2 >= v2) === true
    @test (v2 >= v3) === false
    @test (v3 >= v1) === false
    @test (v3 >= v2) === true
    @test (v3 >= v3) === true

    @test ordered!(pool, false) === false
    @test ordered(pool) === false

    @test_throws Exception v1 < v1
    @test_throws Exception v1 < v2
    @test_throws Exception v1 < v3
    @test_throws Exception v2 < v1
    @test_throws Exception v2 < v2
    @test_throws Exception v2 < v3
    @test_throws Exception v3 < v1
    @test_throws Exception v3 < v2
    @test_throws Exception v3 < v3

    @test_throws Exception v1 <= v1
    @test_throws Exception v1 <= v2
    @test_throws Exception v1 <= v3
    @test_throws Exception v2 <= v1
    @test_throws Exception v2 <= v2
    @test_throws Exception v2 <= v3
    @test_throws Exception v3 <= v1
    @test_throws Exception v3 <= v2
    @test_throws Exception v3 <= v3

    @test_throws Exception v1 > v1
    @test_throws Exception v1 > v2
    @test_throws Exception v1 > v3
    @test_throws Exception v2 > v1
    @test_throws Exception v2 > v2
    @test_throws Exception v2 > v3
    @test_throws Exception v3 > v1
    @test_throws Exception v3 > v2
    @test_throws Exception v3 > v3

    @test_throws Exception v1 >= v1
    @test_throws Exception v1 >= v2
    @test_throws Exception v1 >= v3
    @test_throws Exception v2 >= v1
    @test_throws Exception v2 >= v2
    @test_throws Exception v2 >= v3
    @test_throws Exception v3 >= v1
    @test_throws Exception v3 >= v2
    @test_throws Exception v3 >= v3
end
