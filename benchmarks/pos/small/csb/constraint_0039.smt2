(set-logic QF_BV)

; Bit width chosen: 17 (covers range [376, 42000] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 17))

; Domain constraints
(assert (or (= i1 #b00000000101111000) (= i1 #b00000001000001101)))

; Formula constraint
(assert (bvsle i1 (bvmul #b00000000001010000 i1)))

(check-sat)