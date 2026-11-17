(set-logic QF_BV)

; Bit width chosen: 17 (covers range [-812, 52722] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 17))

; Domain constraints
(assert (or (= i1 #b00000000101011100) (= i1 #b00000001010000101) (= i1 #b00000001101010101) (= i1 #b00000001110001101)))

; Formula constraint
(assert (or (and (bvsge i1 #b11111111111000100) (=> (bvslt i1 i1) (bvsge (bvsub i1 i1) i1))) (=> (bvslt i1 i1) (or (bvslt (bvmul #b00000000000111010 i1) (bvsub #b00000000001100001 i1)) (bvsle #b00000000001011011 #b11111111111101101)))))

(check-sat)