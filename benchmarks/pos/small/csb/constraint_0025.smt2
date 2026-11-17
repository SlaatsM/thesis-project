(set-logic QF_BV)

; Bit width chosen: 11 (covers range [119, 995] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 11))

; Domain constraints
(assert (or (= i1 #b00001110111) (= i1 #b01001100000) (= i1 #b01001110101) (= i1 #b01111100011)))

; Formula constraint
(assert (bvsge i1 i1))

(check-sat)