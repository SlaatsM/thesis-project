(set-logic QF_BV)

; Bit width chosen: 17 (covers range [-52088, 60588] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 17))

; Domain constraints
(assert (or (= i1 #b11111110010000101) (= i1 #b00000000001001111) (= i1 #b00000001000001001) (= i1 #b00000001011111110)))

; Formula constraint
(assert (=> (and (=> (= #b00000000000011100 i1) (= #b00000000000010100 #b11111111110110011)) (or (bvsge i1 i1) (bvslt #b00000000000111011 (bvmul #b11111111110111100 i1)))) (not (=> (bvsgt (bvadd i1 i1) i1) (bvslt (bvmul #b00000000000011101 i1) i1)))))

(check-sat)