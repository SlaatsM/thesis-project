(set-logic QF_BV)

; Bit width chosen: 11 (covers range [29, 647] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 11))

; Domain constraints
(assert (or (= i1 #b00000011101) (= i1 #b00000110011) (= i1 #b00101100011) (= i1 #b00110101001) (= i1 #b01010000111)))

; Formula constraint
(assert (not (bvsge i1 #b00000101011)))

(check-sat)