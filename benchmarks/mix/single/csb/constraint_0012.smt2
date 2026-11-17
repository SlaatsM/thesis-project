(set-logic QF_BV)

; Bit width chosen: 12 (covers range [-1890, 424] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 12))

; Domain constraints
(assert (and (bvsge i1 #b110001110000) (bvsle i1 #b000011110101)))

; Formula constraint
(assert (= i1 (bvadd i1 (bvadd i1 #b111110111110))))

(check-sat)