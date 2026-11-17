(set-logic QF_BV)

; Bit width chosen: 17 (covers range [-45920, 3416] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 17))
(declare-const i2 (_ BitVec 17))

; Domain constraints
(assert (and (bvsge i1 #b11111111111000011) (bvsle i1 #b00000001100110100)))
(assert (and (bvsge i2 #b11111110011101000) (bvsle i2 #b00000000111101110)))

; Formula constraint
(assert (= (bvmul #b11111111111001000 i1) i2))

(check-sat)