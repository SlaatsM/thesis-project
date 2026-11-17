(set-logic QF_BV)

; Bit width chosen: 18 (covers range [-91928, 44091] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 18))

; Domain constraints
(assert (or (= i1 #b111111111101011111) (= i1 #b000000000100011110) (= i1 #b000000001001101101)))

; Formula constraint
(assert (not (=> (=> (bvsge #b111111111111110100 i1) (bvsle i1 i1)) (or (bvsge (bvmul #b000000000001000100 i1) #b111111111110111101) (bvsgt (bvadd i1 (bvmul #b000000000000100110 i1)) (bvadd (bvsub (bvmul #b111111111110110011 i1) (bvmul #b000000000001000111 i1)) #b111111111111101100))))))

(check-sat)