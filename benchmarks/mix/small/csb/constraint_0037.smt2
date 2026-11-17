(set-logic QF_BV)

; Bit width chosen: 13 (covers range [-1719, 2265] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 13))

; Domain constraints
(assert (or (= i1 #b1110111000011) (= i1 #b0001011011111)))

; Formula constraint
(assert (=> (and (bvslt i1 i1) (and (bvsle (bvsub (bvadd #b0000000100010 i1) i1) (bvadd #b0000000111100 (bvmul #b0000000000011 i1))) (bvsgt i1 i1))) (bvslt i1 #b0000001000001)))

(check-sat)