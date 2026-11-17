(set-logic QF_BV)

; Bit width chosen: 18 (covers range [-80714, 80724] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 18))

; Domain constraints
(assert (or (= i1 #b000000000000000100) (= i1 #b000000001000011010) (= i1 #b000000001011010110) (= i1 #b000000001011110001) (= i1 #b000000001101100100)))

; Formula constraint
(assert (or (not (bvslt (bvsub #b000000000000001010 (bvmul #b000000000001011101 i1)) i1)) (=> (and (bvsle (bvadd (bvadd #b000000000000011010 i1) (bvmul #b111111111111111101 i1)) #b111111111110101001) (bvsgt i1 #b111111111111011010)) (=> (bvsle #b111111111111100001 #b000000000001001110) (bvsge #b000000000001011100 i1)))))

(check-sat)