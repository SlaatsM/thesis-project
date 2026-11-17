(set-logic QF_BV)

; Bit width chosen: 15 (covers range [-14155, 10952] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 15))
(declare-const i2 (_ BitVec 15))

; Domain constraints
(assert (and (bvsge i1 #b000000010001101) (bvsle i1 #b000000010010101)))
(assert (and (bvsge i2 #b111110111100000) (bvsle i2 #b000001010011111)))

; Formula constraint
(assert (and (bvsgt #b111111111111001 i2) (=> (bvsgt #b111111110100000 (bvmul #b111111110100001 i1)) (and (bvsgt (bvadd (bvmul #b000000001000100 i1) (bvadd i2 i1)) #b000000001010001) (= #b111111110100101 i2)))))

(check-sat)