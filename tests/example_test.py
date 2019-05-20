import pytest


def test_method():
    x = 5
    y = x
    assert x + y == 2*x, "test failed"


def test_branch():
    values = [0, 2, 44, 1100]
    for x in values:
        if x != 0:
            if x > 5:
                if x > 100:
                    if x > 1100:
                        print("not possible")
                    print("hej")
            else:
                print("nej")
        else:
            print("reeeeeeee")

