(set-logic QF_BV)

; Bit width chosen: 17 (covers range [-35640, 110] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 17))

; Domain constraints
(assert (or (= i1 #b11111111001101011) (= i1 #b11111111111011111)))

; Formula constraint
(assert (bvsle (bvmul #b00000000001011000 i1) (bvsub #b00000000000111011 #b11111111111001101)))

(check-sat)