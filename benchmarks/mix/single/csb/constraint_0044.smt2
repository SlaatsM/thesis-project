(set-logic QF_BV)

; Bit width chosen: 17 (covers range [-10545, 33516] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 17))

; Domain constraints
(assert (or (= i1 #b11111111101000111) (= i1 #b00000000100111101) (= i1 #b00000000101001001) (= i1 #b00000000101011000) (= i1 #b00000001001001100)))

; Formula constraint
(assert (or (and (bvsgt i1 i1) (and (not (= i1 (bvadd i1 i1))) (bvsgt (bvmul #b00000000000111001 i1) i1))) (bvsgt #b00000000001001111 (bvadd i1 #b11111111111110001))))

(check-sat)