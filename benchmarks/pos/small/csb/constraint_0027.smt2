(set-logic QF_BV)

; Bit width chosen: 11 (covers range [89, 707] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 11))

; Domain constraints
(assert (or (= i1 #b00101111000) (= i1 #b00110110110) (= i1 #b01011000011)))

; Formula constraint
(assert (bvsge i1 #b00001011001))

(check-sat)