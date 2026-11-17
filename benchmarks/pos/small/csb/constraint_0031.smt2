(set-logic QF_BV)

; Bit width chosen: 17 (covers range [747, 54528] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const a1_0 (_ BitVec 17))

; Domain constraints
(assert (or (= a1_0 #b00000001011101011) (= a1_0 #b00000001101010100)))

; Formula constraint
(assert (not (= a1_0 (bvmul #b00000000001000000 a1_0))))

(check-sat)