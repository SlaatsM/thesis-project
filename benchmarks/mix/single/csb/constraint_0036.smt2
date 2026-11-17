(set-logic QF_BV)

; Bit width chosen: 17 (covers range [-43648, 23804] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 17))

; Domain constraints
(assert (or (= i1 #b11111110111100011) (= i1 #b00000001111100000)))

; Formula constraint
(assert (bvsge (bvmul #b11111111111010100 i1) i1))

(check-sat)