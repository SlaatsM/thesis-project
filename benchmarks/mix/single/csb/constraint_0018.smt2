(set-logic QF_BV)

; Bit width chosen: 17 (covers range [-37980, 37152] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 17))

; Domain constraints
(assert (or (= i1 #b11111110101001110) (= i1 #b11111111000101100) (= i1 #b00000001101001100)))

; Formula constraint
(assert (bvslt (bvmul #b11111111111010011 i1) (bvsub i1 (bvadd #b11111111111110000 (bvmul #b11111111111010101 i1)))))

(check-sat)