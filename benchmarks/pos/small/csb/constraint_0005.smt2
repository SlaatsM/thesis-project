(set-logic QF_BV)

; Bit width chosen: 11 (covers range [29, 949] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 11))

; Domain constraints
(assert (or (= i1 #b01010010000) (= i1 #b01011111111) (= i1 #b01110010001) (= i1 #b01110110101)))

; Formula constraint
(assert (bvsgt i1 #b00000011101))

(check-sat)