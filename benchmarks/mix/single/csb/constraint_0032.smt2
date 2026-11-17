(set-logic QF_BV)

; Bit width chosen: 18 (covers range [-57040, 78929] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 18))
(declare-const i2 (_ BitVec 18))

; Domain constraints
(assert (or (= i1 #b111111110110100011) (= i1 #b000000001100111110)))
(assert (and (bvsge i2 #b111111111001001000) (bvsle i2 #b000000001110001010)))

; Formula constraint
(assert (and (or (and (bvsle i1 (bvsub (bvadd (bvmul #b000000000000000100 i2) (bvmul #b000000000001011010 i1)) i1)) (bvsgt #b000000000001010111 (bvsub i1 i2))) (or (bvslt i1 i2) (bvslt (bvsub i2 #b000000000001011100) #b111111111110111110))) (and (bvsle #b111111111111101001 i2) (not (not (= i2 i1))))))

(check-sat)