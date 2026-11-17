(set-logic QF_BV)

; Bit width chosen: 11 (covers range [4, 967] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 11))

; Domain constraints
(assert (or (= i1 #b00101000011) (= i1 #b01111000111)))

; Formula constraint
(assert (bvslt #b00000000100 i1))

(check-sat)