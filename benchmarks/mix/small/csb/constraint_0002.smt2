(set-logic QF_BV)

; Bit width chosen: 15 (covers range [-80, 16320] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 15))

; Domain constraints
(assert (and (bvsge i1 #b000000000111001) (bvsle i1 #b000000011110000)))

; Formula constraint
(assert (not (=> (not (bvsgt i1 (bvmul #b000000001000100 i1))) (and (bvsgt i1 #b111111110110000) (bvsge i1 #b000000001010000)))))

(check-sat)