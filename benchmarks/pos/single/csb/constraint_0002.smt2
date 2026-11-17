(set-logic QF_BV)

; Bit width chosen: 17 (covers range [-51800, 979] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 17))

; Domain constraints
(assert (or (= i1 #b00000000000100001) (= i1 #b00000000011010110) (= i1 #b00000000101001110) (= i1 #b00000001000101110) (= i1 #b00000001110011101)))

; Formula constraint
(assert (and (bvsge (bvsub #b00000000001001011 i1) i1) (=> (and (bvsge #b00000000001011011 #b00000000000010000) (= i1 (bvadd (bvmul #b11111111111001000 i1) (bvadd #b00000000000110110 i1)))) (not (bvsge i1 (bvadd i1 #b11111111110100100))))))

(check-sat)