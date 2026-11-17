from generate_structures import Domain, simplify_domain


# Test simplify_domain function with various cases
def test_simplify_domain():
    d1 = Domain([8, (6, 10)])
    result = simplify_domain(d1)
    print(f"Test 1: {d1} -> {result}")
    assert str(result) == "6..10", f"Expected 6..10, got {result}"

    d2 = Domain([(2, 7), (4, 9)])
    result = simplify_domain(d2)
    print(f"Test 2: {d2} -> {result}")
    assert str(result) == "2..9", f"Expected 2..9, got {result}"

    d3 = Domain([1, 3, (5, 7), (6, 10)])
    result = simplify_domain(d3)
    print(f"Test 3: {d3} -> {result}")
    assert str(result) == "1,3,5..10", f"Expected 1,3,5..10, got {result}"

    d4 = Domain([(2, 4), 7, 8, 10])
    result = simplify_domain(d4)
    print(f"Test 4: {d4} -> {result}")
    assert str(result) == "2..4,7..8,10", f"Expected 2..4,7..8,10, got {result}"

    d5 = Domain([(1, 3), (3, 5)])
    result = simplify_domain(d5)
    print(f"Test 5: {d5} -> {result}")
    assert str(result) == "1..5", f"Expected 1..5, got {result}"

    d6 = Domain([(1, 2), (4, 5)])
    result = simplify_domain(d6)
    print(f"Test 6: {d6} -> {result}")
    assert str(result) == "1..2,4..5", f"Expected 1..2,4..5, got {result}"

    d7 = Domain([(1, 2), (3, 4)])
    result = simplify_domain(d7)
    print(f"Test 7: {d7} -> {result}")
    assert str(result) == "1..4", f"Expected 1..4, got {result}"

    d8 = Domain([(2, 14), 3])
    result = simplify_domain(d8)
    print(f"Test 8: {d8} -> {result}")
    assert str(result) == "2..14", f"Expected 2..14, got {result}"

    d9 = Domain([(5,10), (3, 4), 2])
    result = simplify_domain(d9)
    print(f"Test 9: {d9} -> {result}")
    assert str(result) == "2..10", f"Expected 2..10, got {result}"

    print("All tests passed!")


if __name__ == "__main__":
    test_simplify_domain()
