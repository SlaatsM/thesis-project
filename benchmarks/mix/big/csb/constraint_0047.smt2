(set-logic QF_BV)

; Bit width chosen: 18 (covers range [-72408, 72495] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const a3_0 (_ BitVec 18))
(declare-const i1 (_ BitVec 18))
(declare-const i2 (_ BitVec 18))

; Domain constraints
(assert (and (bvsge a3_0 #b111111110010100010) (bvsle a3_0 #b000000001001101000)))
(assert (and (bvsge i1 #b111111110110010010) (bvsle i1 #b111111111111101101)))
(assert (and (bvsge i2 #b111111111100010001) (bvsle i2 #b000000000000011110)))

; Formula constraint
(assert (or (and (and (bvsle i1 i2) (= i2 i2)) (and (bvslt (bvmul #b111111111110011110 i2) (bvsub a3_0 (bvadd #b111111111110101100 i2))) (bvsle (bvsub (bvmul #b000000000001100010 i2) a3_0) i2))) (not (and (bvsle (bvsub #b000000000000011001 i2) (bvsub #b000000000001010111 (bvmul #b000000000001010100 a3_0))) (bvsle (bvmul #b111111111111110101 i2) (bvadd (bvmul #b111111111111000001 i1) (bvmul #b111111111111101001 i2)))))))

(check-sat)