(set-logic QF_BV)

; Bit width chosen: 18 (covers range [-85, 88506] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 18))

; Domain constraints
(assert (or (= i1 #b000000000000011011) (= i1 #b000000001001111100) (= i1 #b000000001011001101) (= i1 #b000000001101111110)))

; Formula constraint
(assert (not (or (and (bvsge #b111111111110101111 i1) (bvsgt (bvmul #b000000000001100011 i1) #b000000000000100011)) (=> (bvsle #b111111111110101011 i1) (bvsle #b000000000001100100 i1)))))

(check-sat)