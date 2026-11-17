(set-logic QF_BV)

; Bit width chosen: 18 (covers range [-43, 76717] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 18))

; Domain constraints
(assert (or (= i1 #b000000001011001111) (= i1 #b000000001011011000) (= i1 #b000000001110111100)))

; Formula constraint
(assert (or (not (= i1 (bvadd (bvsub (bvmul #b000000000001010000 i1) i1) i1))) (and (not (bvslt #b000000000000010000 (bvmul #b000000000000110001 i1))) (bvslt #b111111111111010101 (bvsub i1 #b000000000001011010)))))

(check-sat)