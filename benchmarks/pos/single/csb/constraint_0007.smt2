(set-logic QF_BV)

; Bit width chosen: 11 (covers range [-710, 760] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 11))

; Domain constraints
(assert (or (= i1 #b00000110010) (and (bvsge i1 #b00111001011) (bvsle i1 #b01010010101)) (= i1 #b01011001110) (= i1 #b01011111000)))

; Formula constraint
(assert (bvsgt (bvadd #b00000101111 (bvsub i1 i1)) (bvsub i1 #b00000100111)))

(check-sat)