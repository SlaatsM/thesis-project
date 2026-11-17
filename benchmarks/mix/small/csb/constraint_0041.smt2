(set-logic QF_BV)

; Bit width chosen: 16 (covers range [-1764, 17676] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const i1 (_ BitVec 16))

; Domain constraints
(assert (or (= i1 #b1111111010110011) (= i1 #b1111111011100011) (= i1 #b0000000000011011)))

; Formula constraint
(assert (=> (not (or (bvsgt (bvadd #b0000000000010000 #b0000000001010101) (bvmul #b0000000000000001 i1)) (bvslt #b1111111111011000 (bvadd i1 (bvmul #b1111111111001011 i1))))) (bvslt i1 #b1111111111000111)))

(check-sat)