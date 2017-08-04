## 執行scheme檔案
```
$ scheme < test.scm
```

## 幾個簡單的運算式
```
(+ 2 2)
(sum 5 2) 
```

## 函式定義方式
```
(define (cube x) (* x x x))

(define (sum-integers a b)
    (if (> a b)
        0
        (+ a (sum-integers (+ a 1) b))))
```

## if判斷
```
(if (< a b)
    1
    2)
```
