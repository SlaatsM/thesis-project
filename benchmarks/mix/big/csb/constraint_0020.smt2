(set-logic QF_BV)

; Bit width chosen: 11 (covers range [-478, 816] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 11))
(declare-const i2 (_ BitVec 11))

; Domain constraints
(assert (and (bvsge i1 #b11011111111) (bvsle i1 #b11100100000)))
(assert (or (= i2 #b11000100010) (= i2 #b01100110000)))

; Formula constraint
(assert (bvsle i1 i1))

(check-sat)