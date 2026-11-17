(set-logic QF_BV)

; Bit width chosen: 15 (covers range [-9129, 14314] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 15))

; Domain constraints
(assert (or (= i1 #b111110010110110) (= i1 #b111110110111111) (= i1 #b111111010100000) (= i1 #b000001000011001)))

; Formula constraint
(assert (bvsgt #b000000000001100 (bvmul #b111111111101111 i1)))

(check-sat)