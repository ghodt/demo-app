import pytest


def test_method():
    x = 5
    y = x
    assert x + y == 2*x, "test failed"


