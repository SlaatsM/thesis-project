(set-logic QF_BV)

; Bit width chosen: 17 (covers range [-53900, 28000] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 17))

; Domain constraints
(assert (or (= i1 #b00000000100011100) (= i1 #b00000000110100101) (= i1 #b00000001001111000) (= i1 #b00000001010001011) (= i1 #b00000001010111100)))

; Formula constraint
(assert (=> (not (bvsge i1 (bvadd #b00000000001010101 i1))) (and (bvslt #b00000000001001001 (bvmul #b00000000000101000 i1)) (and (not (= (bvadd (bvmul #b11111111110110011 i1) i1) #b00000000000001010)) (not (= #b11111111110110101 (bvsub i1 #b00000000000011111)))))))

(check-sat)