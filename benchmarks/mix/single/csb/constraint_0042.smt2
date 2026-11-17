(set-logic QF_BV)

; Bit width chosen: 11 (covers range [-912, 139] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const a1_0_0 (_ BitVec 11))

; Domain constraints
(assert (or (= a1_0_0 #b10010011010) (= a1_0_0 #b10110001011) (= a1_0_0 #b00000101100) (= a1_0_0 #b00001101100)))

; Formula constraint
(assert (bvsgt (bvadd #b11110110111 (bvadd #b00000011111 a1_0_0)) #b00000000100))

(check-sat)