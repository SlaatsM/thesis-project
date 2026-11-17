(set-logic QF_BV)

; Bit width chosen: 15 (covers range [-63, 15453] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 15))
(declare-const i2 (_ BitVec 15))

; Domain constraints
(assert (or (= i1 #b000000000100001) (= i1 #b000000011000000) (= i1 #b000001100101001) (= i1 #b000001110001101)))
(assert (and (bvsge i2 #b000000101110100) (bvsle i2 #b000001101010010)))

; Formula constraint
(assert (and (or (and (bvslt #b111111111010011 #b111111111101011) (not (= #b111111111101010 i2))) (=> (bvslt #b000000000101010 #b111111111000001) (= (bvmul #b000000000010001 i1) i2))) (= i2 i1)))

(check-sat)