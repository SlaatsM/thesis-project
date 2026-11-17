(set-logic QF_BV)

; Bit width chosen: 17 (covers range [-241, 54936] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 17))

; Domain constraints
(assert (or (= i1 #b00000001011001100) (= i1 #b00000001101101000)))

; Formula constraint
(assert (bvsle (bvsub (bvadd #b11111111110101011 i1) i1) (bvmul #b00000000000111111 i1)))

(check-sat)