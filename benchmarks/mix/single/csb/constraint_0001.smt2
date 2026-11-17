(set-logic QF_BV)

; Bit width chosen: 11 (covers range [-588, 274] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 11))

; Domain constraints
(assert (or (= i1 #b10110110100) (and (bvsge i1 #b11011100001) (bvsle i1 #b00100010010))))

; Formula constraint
(assert (not (not (and (= i1 #b00000111111) (bvsle i1 i1)))))

(check-sat)