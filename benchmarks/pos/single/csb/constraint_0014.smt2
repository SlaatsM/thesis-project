(set-logic QF_BV)

; Bit width chosen: 17 (covers range [-60, 37050] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const a2_0 (_ BitVec 17))
(declare-const i1 (_ BitVec 17))

; Domain constraints
(assert (and (bvsge a2_0 #b00000000010100111) (bvsle a2_0 #b00000001000110101)))
(assert (or (= i1 #b00000000100111011) (= i1 #b00000001010001010)))

; Formula constraint
(assert (=> (bvsge a2_0 #b11111111111000100) (= (bvmul #b00000000000111001 i1) (bvadd (bvmul #b00000000000110001 a2_0) i1))))

(check-sat)