(set-logic QF_BV)

; Bit width chosen: 17 (covers range [-45850, 38700] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 17))
(declare-const i2 (_ BitVec 17))

; Domain constraints
(assert (and (bvsge i1 #b11111110101100111) (bvsle i1 #b00000000000001111)))
(assert (or (and (bvsge i2 #b11111110001101011) (bvsle i2 #b00000000111011100)) (and (bvsge i2 #b00000001000011111) (bvsle i2 #b00000001100000110))))

; Formula constraint
(assert (and (and (and (bvsge i1 (bvmul #b00000000000101000 i1)) (not (= i1 #b00000000000101011))) (and (not (= i2 #b00000000000011011)) (bvsle #b11111111111000110 i2))) (not (=> (bvsle i1 (bvmul #b00000000000110010 i2)) (bvslt (bvmul #b00000000000011011 i1) i2)))))

(check-sat)