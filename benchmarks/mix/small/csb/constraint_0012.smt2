(set-logic QF_BV)

; Bit width chosen: 18 (covers range [-87644, 87032] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 18))
(declare-const i2 (_ BitVec 18))

; Domain constraints
(assert (or (= i1 #b111111110110000110) (= i1 #b111111110110001101) (= i1 #b111111111111111101) (= i1 #b000000000001100011) (= i1 #b000000001010000100)))
(assert (or (= i2 #b111111111100111001) (= i2 #b111111111101110000) (= i2 #b000000000100101101) (= i2 #b000000001110110010)))

; Formula constraint
(assert (and (and (or (bvsle i1 i1) (bvsle i2 #b111111111110100001)) (and (not (= #b000000000000111001 (bvsub i2 i1))) (bvsgt #b000000000000110101 i1))) (=> (and (bvsle #b000000000000100000 #b111111111110111101) (bvsge (bvsub (bvsub #b000000000000100000 i1) (bvmul #b000000000001011100 i2)) i1)) (and (= (bvmul #b111111111111100101 i2) i2) (bvsgt i1 (bvmul #b111111111111111010 i2))))))

(check-sat)