(set-logic QF_BV)

; Bit width chosen: 15 (covers range [-8694, 1512] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 15))

; Domain constraints
(assert (or (= i1 #b111111101011111) (= i1 #b000000000011100)))

; Formula constraint
(assert (and (or (=> (bvsgt i1 #b000000001001000) (= (bvsub #b000000001000011 i1) (bvadd #b000000000110000 (bvadd #b000000000011001 i1)))) (or (bvslt (bvmul #b000000000001101 i1) (bvmul #b000000000110110 i1)) (not (= (bvadd i1 #b000000000011111) i1)))) (bvslt (bvadd i1 (bvsub i1 i1)) #b111111111110101)))

(check-sat)