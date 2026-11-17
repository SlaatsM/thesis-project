(set-logic QF_BV)

; Bit width chosen: 17 (covers range [-34099, 31390] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 17))

; Domain constraints
(assert (or (= i1 #b11111110011100111) (= i1 #b11111110011101100) (= i1 #b11111111100010110) (= i1 #b00000000111001101) (= i1 #b00000001011011010)))

; Formula constraint
(assert (bvsge i1 (bvmul #b00000000000101011 i1)))

(check-sat)