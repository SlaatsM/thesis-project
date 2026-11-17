(set-logic QF_BV)

; Bit width chosen: 11 (covers range [-599, 703] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 11))

; Domain constraints
(assert (or (= i1 #b00001101000) (= i1 #b00001110101) (= i1 #b01010111111)))

; Formula constraint
(assert (not (and (bvsge (bvsub i1 i1) i1) (bvsgt #b00001000001 i1))))

(check-sat)