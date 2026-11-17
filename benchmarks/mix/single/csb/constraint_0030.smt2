(set-logic QF_BV)

; Bit width chosen: 18 (covers range [-82566, 902] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 18))
(declare-const i2 (_ BitVec 18))

; Domain constraints
(assert (and (bvsge i1 #b111111110010111110) (bvsle i1 #b111111110111001110)))
(assert (or (= i2 #b111111110010101011) (= i2 #b111111110101110011) (= i2 #b000000000001010111) (= i2 #b000000001110000110)))

; Formula constraint
(assert (and (bvsle #b000000000000110111 #b000000000001010101) (=> (=> (bvsgt #b111111111110111011 i2) (not (= i1 i2))) (not (bvsge (bvmul #b000000000000010000 i1) (bvmul #b000000000001100011 i1))))))

(check-sat)