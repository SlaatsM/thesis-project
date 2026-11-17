(set-logic QF_BV)

; Bit width chosen: 17 (covers range [-58616, 862] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 17))

; Domain constraints
(assert (or (= i1 #b00000001100100111) (= i1 #b00000001101011110)))

; Formula constraint
(assert (=> (bvsgt #b11111111111100001 i1) (and (and (bvsle #b11111111111100000 #b11111111111101000) (bvsgt i1 #b11111111111100010)) (=> (bvsle (bvmul #b00000000000000001 i1) #b00000000000001001) (bvsge i1 (bvmul #b11111111110111100 i1))))))

(check-sat)