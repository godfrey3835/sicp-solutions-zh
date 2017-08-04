## 執行scheme檔案
```
$ scheme < test.scm
```

## 函式定義方式
```
(define (cube x) (* x x x))

(define (sum-integers a b)
    (if (> a b)
        0
        (+ a (sum-integers (+ a 1) b))))
```

## 邏輯判斷
```
(if (< a b)
    1
    2)
    
(cond ((= y 0) 0)
    ((= y 1) (* 2 y))
    ((= y 2) 2))
    
(cond ((= y 0) 0)
    ((= y 1) (* 2 y))
    ((= y 2) 2)
    (else 3))
```
