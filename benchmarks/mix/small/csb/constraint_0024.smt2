(set-logic QF_BV)

; Bit width chosen: 18 (covers range [-89240, 63050] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 18))

; Domain constraints
(assert (or (= i1 #b000000001010000110) (= i1 #b000000001111001010)))

; Formula constraint
(assert (=> (not (and (bvsgt i1 (bvmul #b111111111110100100 i1)) (not (= i1 i1)))) (or (=> (bvsle i1 i1) (= #b000000000000000111 (bvmul #b111111111111010001 i1))) (=> (bvslt i1 (bvsub (bvmul #b000000000000110111 i1) (bvmul #b000000000001000001 i1))) (bvsle i1 (bvsub #b000000000001000110 (bvsub #b111111111110101011 (bvmul #b111111111111111010 i1))))))))

(check-sat)