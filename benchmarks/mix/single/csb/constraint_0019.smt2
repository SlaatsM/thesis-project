(set-logic QF_BV)

; Bit width chosen: 16 (covers range [-24365, 17820] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 16))

; Domain constraints
(assert (or (= i1 #b1111111001000101) (= i1 #b0000000101000100)))

; Formula constraint
(assert (bvslt (bvmul #b0000000000110111 i1) #b1111111110101110))

(check-sat)