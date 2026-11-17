(set-logic QF_BV)

; Bit width chosen: 9 (covers range [66, 142] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 9))
(declare-const i2 (_ BitVec 9))

; Domain constraints
(assert (and (bvsge i1 #b010000001) (bvsle i1 #b010001110)))
(assert (and (bvsge i2 #b001000010) (bvsle i2 #b010001010)))

; Formula constraint
(assert (not (= i2 i1)))

(check-sat)