(set-logic QF_BV)

; Bit width chosen: 11 (covers range [-19, 823] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 11))

; Domain constraints
(assert (or (= i1 #b00101000010) (= i1 #b00110001110) (= i1 #b01001101101) (= i1 #b01100110111)))

; Formula constraint
(assert (not (= #b11111101101 i1)))

(check-sat)