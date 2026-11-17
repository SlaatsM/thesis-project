(set-logic QF_BV)

; Bit width chosen: 17 (covers range [-21762, 36549] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 17))

; Domain constraints
(assert (and (bvsge i1 #b11111111100010110) (bvsle i1 #b00000000110001001)))

; Formula constraint
(assert (not (not (= i1 (bvadd (bvmul #b00000000001011011 i1) (bvadd i1 i1))))))

(check-sat)