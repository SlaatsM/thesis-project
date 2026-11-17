(set-logic QF_BV)

; Bit width chosen: 11 (covers range [42, 884] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const h2_a3_0 (_ BitVec 11))
(declare-const i1 (_ BitVec 11))
(declare-const i7 (_ BitVec 11))

; Domain constraints
(assert (and (bvsge h2_a3_0 #b00011001110) (bvsle h2_a3_0 #b00011010101)))
(assert (or (= i1 #b00010100010) (= i1 #b00010111001) (and (bvsge i1 #b01010110011) (bvsle i1 #b01101110100))))
(assert (and (bvsge i7 #b00000101010) (bvsle i7 #b01011010010)))

; Formula constraint
(assert (bvsgt i7 h2_a3_0))

(check-sat)