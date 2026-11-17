(set-logic QF_BV)

; Bit width chosen: 17 (covers range [-708, 55426] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 17))

; Domain constraints
(assert (and (bvsge i1 #b00000001011011010) (bvsle i1 #b00000001011101101)))

; Formula constraint
(assert (not (= (bvmul #b00000000001001010 i1) (bvsub #b00000000000101001 i1))))

(check-sat)