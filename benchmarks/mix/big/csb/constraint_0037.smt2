(set-logic QF_BV)

; Bit width chosen: 12 (covers range [-1515, 1475] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 12))
(declare-const i5 (_ BitVec 12))
(declare-const i6 (_ BitVec 12))

; Domain constraints
(assert (and (bvsge i1 #b110001100000) (bvsle i1 #b001011000001)))
(assert (and (bvsge i5 #b111100101011) (bvsle i5 #b000000010001)))
(assert (and (bvsge i6 #b110111011010) (bvsle i6 #b001100100111)))

; Formula constraint
(assert (bvslt (bvadd (bvsub i6 #b000000100101) i1) i6))

(check-sat)