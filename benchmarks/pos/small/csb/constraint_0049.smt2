(set-logic QF_BV)

; Bit width chosen: 18 (covers range [-89, 70000] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 18))
(declare-const i2 (_ BitVec 18))
(declare-const i3 (_ BitVec 18))

; Domain constraints
(assert (or (= i1 #b000000000000100010) (= i1 #b000000000010000010) (= i1 #b000000000111100011) (= i1 #b000000001000110100) (= i1 #b000000001001110011)))
(assert (and (bvsge i2 #b000000001000000110) (bvsle i2 #b000000001111101000)))
(assert (and (bvsge i3 #b000000000000100111) (bvsle i3 #b000000001011011011)))

; Formula constraint
(assert (or (and (not (not (= i2 i1))) (and (= i3 #b000000000000111011) (= i1 i1))) (and (and (not (= i2 #b000000000000110100)) (= i1 #b111111111110100111)) (and (bvslt #b111111111111111101 (bvmul #b000000000001000110 i2)) (bvsgt #b111111111111011011 #b000000000000110000)))))

(check-sat)