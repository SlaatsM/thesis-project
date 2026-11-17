(set-logic QF_BV)

; Bit width chosen: 17 (covers range [-43420, 1336] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 17))

; Domain constraints
(assert (or (= i1 #b00000000000010011) (= i1 #b00000001001010101) (= i1 #b00000001010011100)))

; Formula constraint
(assert (or (=> (bvsge i1 #b00000000000110011) (and (bvslt i1 i1) (bvsgt i1 #b00000000000100100))) (and (or (not (= (bvadd i1 i1) #b00000000000000010)) (bvsge #b00000000001011100 i1)) (or (bvsgt i1 i1) (bvsgt (bvmul #b11111111110111111 i1) #b11111111110100100)))))

(check-sat)