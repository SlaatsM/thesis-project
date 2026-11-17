(set-logic QF_BV)

; Bit width chosen: 17 (covers range [-34606, 29562] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 17))

; Domain constraints
(assert (or (= i1 #b11111110100001010) (= i1 #b00000001101110101)))

; Formula constraint
(assert (bvsge (bvadd #b11111111110100101 (bvmul #b11111111111011001 i1)) i1))

(check-sat)