(set-logic QF_BV)

; Bit width chosen: 11 (covers range [-916, 173] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 11))

; Domain constraints
(assert (or (= i1 #b10001101100) (= i1 #b00010101101)))

; Formula constraint
(assert (=> (not (bvsge #b11111001101 #b11111010100)) (and (bvsgt #b11111100110 #b11110100010) (bvsge #b00000001100 i1))))

(check-sat)