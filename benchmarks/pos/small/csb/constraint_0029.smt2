(set-logic QF_BV)

; Bit width chosen: 16 (covers range [80, 28500] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 16))

; Domain constraints
(assert (or (= i1 #b0000000010011100) (= i1 #b0000000101110111)))

; Formula constraint
(assert (or (not (not (bvsge i1 (bvadd i1 i1)))) (=> (not (= (bvmul #b0000000001001100 i1) i1)) (=> (bvsge i1 i1) (bvsge i1 #b0000000001010000)))))

(check-sat)