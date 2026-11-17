(set-logic QF_BV)

; Bit width chosen: 14 (covers range [-3, 6589] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 14))
(declare-const i2 (_ BitVec 14))

; Domain constraints
(assert (or (= i1 #b00000010000111) (= i1 #b00000101001101) (= i1 #b00001001010111)))
(assert (or (and (bvsge i2 #b00000100111010) (bvsle i2 #b00000111000111)) (= i2 #b00000111100001)))

; Formula constraint
(assert (and (and (bvsle #b00000000010011 #b00000001001000) (not (not (= i1 i2)))) (not (and (bvsgt i1 i2) (bvsle (bvmul #b00000000001011 i1) (bvsub (bvmul #b00000000000001 i1) #b11111111111101))))))

(check-sat)