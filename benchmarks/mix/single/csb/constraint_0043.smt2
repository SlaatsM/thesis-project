(set-logic QF_BV)

; Bit width chosen: 11 (covers range [-484, 667] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 11))

; Domain constraints
(assert (or (= i1 #b11000011100) (= i1 #b11010000000) (= i1 #b01010011011)))

; Formula constraint
(assert (bvsle (bvsub #b00000111001 #b11111111100) i1))

(check-sat)