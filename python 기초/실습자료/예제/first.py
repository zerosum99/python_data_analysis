""" 처음으로 만드는 모듈입니다.
    내부에는 변수와 함수가 하나씩 있습니다. 
"""

first_value = 100

def first_func(x,y) :
    return x * y


if __name__ == '__main__' :
    print(__doc__)
    print('first_value', first_value)
    print('first_func', first_func(10,10))
