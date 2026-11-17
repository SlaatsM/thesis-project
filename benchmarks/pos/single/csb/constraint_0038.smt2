(set-logic QF_BV)

; Bit width chosen: 18 (covers range [-68284, 127796] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 18))

; Domain constraints
(assert (or (= i1 #b000000000000010010) (= i1 #b000000001000100011) (= i1 #b000000001100011010)))

; Formula constraint
(assert (=> (and (bvsge i1 (bvsub #b000000000000101111 i1)) (bvslt i1 (bvsub (bvadd #b111111111111011010 (bvmul #b000000000001001011 i1)) (bvmul #b111111111110101010 i1)))) (or (and (bvslt #b000000000000001001 (bvmul #b111111111111000001 i1)) (bvslt i1 (bvsub i1 i1))) (not (bvsge i1 i1)))))

(check-sat)