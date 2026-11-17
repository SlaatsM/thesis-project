(set-logic QF_BV)

; Bit width chosen: 15 (covers range [-5985, 14364] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 15))

; Domain constraints
(assert (or (= i1 #b000000000011110) (= i1 #b000000010101011)))

; Formula constraint
(assert (and (=> (and (bvsge i1 #b000000001000011) (bvsle i1 (bvmul #b000000000000011 i1))) (and (bvsgt i1 (bvadd (bvadd (bvmul #b111111111011101 i1) i1) #b000000001010110)) (bvslt (bvmul #b000000001010100 i1) i1))) (=> (or (bvsle (bvmul #b000000001001101 i1) (bvsub (bvsub i1 #b111111110011100) (bvadd i1 i1))) (bvsle (bvmul #b000000001000011 i1) i1)) (or (bvslt i1 i1) (bvsle i1 i1)))))

(check-sat)