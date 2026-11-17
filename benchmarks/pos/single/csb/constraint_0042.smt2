(set-logic QF_BV)

; Bit width chosen: 18 (covers range [-85690, 86521] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 18))
(declare-const i2 (_ BitVec 18))

; Domain constraints
(assert (or (= i1 #b000000000000100000) (= i1 #b000000001101001000)))
(assert (and (bvsge i2 #b000000001100001100) (bvsle i2 #b000000001110000110)))

; Formula constraint
(assert (and (=> (and (bvslt (bvadd i1 (bvsub #b111111111111110111 (bvmul #b111111111110100001 i2))) i2) (bvsgt #b111111111111010000 (bvmul #b111111111110110010 i2))) (or (bvsgt i2 (bvmul #b111111111111101001 i1)) (bvsgt (bvmul #b000000000000000101 i1) (bvsub (bvmul #b111111111111011010 i1) (bvsub i2 i1))))) (and (and (bvslt #b111111111110100111 #b000000000001001010) (not (= i2 #b000000000000001011))) (= (bvmul #b000000000000000001 i2) i1))))

(check-sat)