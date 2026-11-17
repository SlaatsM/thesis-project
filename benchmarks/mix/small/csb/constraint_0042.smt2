(set-logic QF_BV)

; Bit width chosen: 17 (covers range [-892, 56196] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 17))

; Domain constraints
(assert (or (= i1 #b11111110010000100) (= i1 #b11111111011100011)))

; Formula constraint
(assert (or (or (bvsgt (bvadd (bvmul #b11111111111101110 i1) i1) #b11111111111010010) (= i1 i1)) (=> (and (bvsge #b11111111111100101 #b11111111110110001) (not (= #b11111111111001101 i1))) (and (bvslt #b11111111110111000 i1) (= (bvmul #b11111111111000001 i1) i1)))))

(check-sat)