(set-logic QF_LIA)
(set-option :produce-models true)

; Variable name mapping (original -> sanitized)
;   i1
;   i2

; Variable declarations
(declare-fun i1 () Int)
(declare-fun i2 () Int)

; Domain constraints
(assert (or (= i1 -929) (= i1 -530) (= i1 -322) (= i1 -67) (= i1 -22)))
(assert (or (= i2 -914) (= i2 -610)))

; Formula constraint
(assert (<= (- (- i2 -44) 33) -85))

(check-sat)
(get-model)