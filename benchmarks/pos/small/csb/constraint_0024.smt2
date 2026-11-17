(set-logic QF_BV)

; Bit width chosen: 18 (covers range [-66284, 25424] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 18))

; Domain constraints
(assert (or (= i1 #b000000001001000001) (= i1 #b000000001110001100)))

; Formula constraint
(assert (=> (bvsgt i1 i1) (and (bvslt i1 i1) (or (bvsle (bvmul #b111111111110110111 i1) i1) (bvsle #b111111111111001101 (bvsub (bvmul #b000000000000011100 i1) #b000000000000010000))))))

(check-sat)