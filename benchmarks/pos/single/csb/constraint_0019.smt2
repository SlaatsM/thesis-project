(set-logic QF_BV)

; Bit width chosen: 11 (covers range [228, 784] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const a2_0 (_ BitVec 11))
(declare-const i1 (_ BitVec 11))

; Domain constraints
(assert (or (= a2_0 #b00101111100) (= a2_0 #b01100010000)))
(assert (or (= i1 #b00011100100) (= i1 #b00100000011) (= i1 #b00110111110)))

; Formula constraint
(assert (bvsle a2_0 i1))

(check-sat)