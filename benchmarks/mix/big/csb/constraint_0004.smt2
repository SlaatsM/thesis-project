(set-logic QF_BV)

; Bit width chosen: 15 (covers range [-11362, 10051] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const a1_0 (_ BitVec 15))
(declare-const a1_1 (_ BitVec 15))
(declare-const i3 (_ BitVec 15))

; Domain constraints
(assert (and (bvsge a1_0 #b111111001001011) (bvsle a1_0 #b000000111101110)))
(assert (and (bvsge a1_1 #b111111001001011) (bvsle a1_1 #b000000111101110)))
(assert (and (bvsge i3 #b111110011010110) (bvsle i3 #b111111101101001)))

; Formula constraint
(assert (bvsgt (bvmul #b111111111101001 a1_1) i3))

(check-sat)