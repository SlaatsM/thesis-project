(set-logic QF_BV)

; Bit width chosen: 18 (covers range [-99106, 98414] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 18))

; Domain constraints
(assert (and (bvsge i1 #b111111110011001111) (bvsle i1 #b000000001100111101)))

; Formula constraint
(assert (and (=> (not (bvsgt #b111111111111100101 (bvsub (bvmul #b000000000000100000 i1) (bvsub (bvmul #b000000000001011000 i1) #b111111111111110110)))) (and (= #b111111111111001010 i1) (bvsge (bvmul #b111111111110100101 i1) (bvmul #b111111111111001111 i1)))) (=> (not (bvslt (bvsub (bvadd i1 #b000000000000001010) (bvmul #b111111111111000101 i1)) (bvadd i1 #b000000000000010100))) (or (bvslt (bvmul #b000000000001100010 i1) i1) (bvsgt #b000000000000010001 (bvmul #b000000000000011010 i1))))))

(check-sat)