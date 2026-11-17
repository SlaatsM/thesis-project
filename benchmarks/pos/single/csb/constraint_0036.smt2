(set-logic QF_BV)

; Bit width chosen: 11 (covers range [3, 990] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 11))

; Domain constraints
(assert (or (= i1 #b00000000011) (= i1 #b00100000111) (= i1 #b01011010111) (and (bvsge i1 #b01011111111) (bvsle i1 #b01111011110))))

; Formula constraint
(assert (bvsle i1 #b00001010001))

(check-sat)