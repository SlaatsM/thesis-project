(set-logic QF_BV)

; Bit width chosen: 13 (covers range [-823, 2469] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 13))

; Domain constraints
(assert (or (= i1 #b1110011001001) (= i1 #b0000010111010)))

; Formula constraint
(assert (bvsge (bvsub (bvmul #b1111111111110 i1) i1) i1))

(check-sat)