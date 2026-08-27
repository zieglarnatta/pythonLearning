def test_a1():
    assert 5 + 5 == 10

def test_a2():
    assert 9//5 == 2, "purposely failing this test" # floor division 

def test_a3():
    assert True * False == False, "multiplying True and False should yield False"

def test_a4():
    print("This is my first test")
    assert 5 + 5 == 10
    assert 5 - 5 == 0
    assert 5 * 5 == 25
    assert 5 / 5 == 1