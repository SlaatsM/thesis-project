(set-logic QF_BV)

; Bit width chosen: 17 (covers range [20, 40545] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 17))

; Domain constraints
(assert (and (bvsge i1 #b00000000000010100) (bvsle i1 #b00000001110000101)))

; Formula constraint
(assert (=> (=> (bvsgt (bvmul #b00000000000101101 i1) i1) (bvsge (bvmul #b00000000000101000 i1) i1)) (= i1 #b00000000000101000)))

(check-sat)