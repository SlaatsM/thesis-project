(set-logic QF_BV)

; Bit width chosen: 18 (covers range [-64766, 87984] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 18))

; Domain constraints
(assert (or (= i1 #b111111110101001111) (= i1 #b111111111111111100) (= i1 #b000000001110101000)))

; Formula constraint
(assert (and (bvsge i1 #b000000000001000000) (and (and (bvsge i1 i1) (bvsge #b111111111111101101 #b111111111110101000)) (not (= (bvmul #b000000000001011110 i1) (bvsub (bvadd #b000000000000011100 (bvmul #b000000000000101010 i1)) i1))))))

(check-sat)