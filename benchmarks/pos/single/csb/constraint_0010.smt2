(set-logic QF_BV)

; Bit width chosen: 11 (covers range [86, 797] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const a1_0 (_ BitVec 11))

; Domain constraints
(assert (or (= a1_0 #b00001010110) (= a1_0 #b00100010111) (= a1_0 #b00111111100) (= a1_0 #b01000100010) (= a1_0 #b01100011101)))

; Formula constraint
(assert (bvsgt #b00001011011 a1_0))

(check-sat)