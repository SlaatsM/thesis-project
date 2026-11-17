(set-logic QF_BV)

; Bit width chosen: 11 (covers range [11, 876] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 11))

; Domain constraints
(assert (or (= i1 #b01000001111) (= i1 #b01010001001) (= i1 #b01101101100)))

; Formula constraint
(assert (bvsgt i1 #b00000001011))

(check-sat)