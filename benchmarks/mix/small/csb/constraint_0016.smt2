(set-logic QF_BV)

; Bit width chosen: 18 (covers range [-72150, 40404] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 18))

; Domain constraints
(assert (or (= i1 #b111111111101100011) (= i1 #b000000001111000010)))

; Formula constraint
(assert (=> (and (not (bvsge (bvadd (bvsub (bvmul #b111111111111001011 i1) (bvmul #b000000000000010110 i1)) #b000000000001001010) (bvmul #b000000000000000110 i1))) (and (bvsge i1 #b000000000000100111) (bvsle i1 (bvmul #b111111111110111110 i1)))) (and (and (bvsgt i1 (bvmul #b111111111111001111 i1)) (bvslt (bvmul #b000000000000101010 i1) #b000000000000110010)) (bvsle #b111111111110110110 (bvadd #b111111111111000111 (bvadd i1 i1))))))

(check-sat)