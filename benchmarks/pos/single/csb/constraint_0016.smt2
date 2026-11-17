(set-logic QF_BV)

; Bit width chosen: 18 (covers range [-69826, 974] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 18))
(declare-const i2 (_ BitVec 18))

; Domain constraints
(assert (or (= i1 #b000000001000000010) (= i1 #b000000001010011111) (= i1 #b000000001110001111)))
(assert (and (bvsge i2 #b000000001000110010) (bvsle i2 #b000000001101111111)))

; Formula constraint
(assert (and (and (or (= (bvsub (bvmul #b111111111110110011 i2) i1) #b111111111111110001) (= i2 i1)) (bvslt #b000000000000010110 i2)) (and (and (bvslt (bvsub i1 i1) i1) (bvsle (bvmul #b111111111111011011 i2) i2)) (not (= (bvmul #b000000000000000000 i2) (bvsub i2 #b111111111110110001))))))

(check-sat)