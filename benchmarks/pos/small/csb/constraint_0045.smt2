(set-logic QF_BV)

; Bit width chosen: 12 (covers range [-1289, 1332] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 12))

; Domain constraints
(assert (or (= i1 #b000000011010) (= i1 #b001010011010)))

; Formula constraint
(assert (bvsle (bvsub #b000000101011 (bvadd i1 i1)) i1))

(check-sat)