(set-logic QF_BV)

; Bit width chosen: 15 (covers range [-9618, 1162] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 15))

; Domain constraints
(assert (or (= i1 #b000000011010100) (= i1 #b000001001110110) (= i1 #b000001010101111)))

; Formula constraint
(assert (or (=> (and (not (= i1 i1)) (= (bvmul #b111111111110010 i1) i1)) (bvsge i1 (bvsub #b111111110111111 #b111111111001111))) (not (bvslt (bvsub i1 (bvsub i1 i1)) (bvsub (bvadd #b000000001010111 i1) i1)))))

(check-sat)