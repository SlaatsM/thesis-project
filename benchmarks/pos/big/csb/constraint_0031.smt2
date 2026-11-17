(set-logic QF_BV)

; Bit width chosen: 12 (covers range [-769, 1220] found in domains and all intermediate sub-expressions, so prevents wraparound)

; Variable declarations
(declare-const a10_0 (_ BitVec 12))
(declare-const a10_1 (_ BitVec 12))
(declare-const a10_2 (_ BitVec 12))
(declare-const a12_0 (_ BitVec 12))
(declare-const a12_1 (_ BitVec 12))
(declare-const a12_2 (_ BitVec 12))
(declare-const a12_3 (_ BitVec 12))
(declare-const a12_4 (_ BitVec 12))
(declare-const h1_i2 (_ BitVec 12))
(declare-const h1_i3 (_ BitVec 12))
(declare-const h1_i4 (_ BitVec 12))
(declare-const h5_i8 (_ BitVec 12))
(declare-const h5_i9 (_ BitVec 12))

; Domain constraints
(assert (and (bvsge a10_0 #b000101100000) (bvsle a10_0 #b001101000010)))
(assert (and (bvsge a10_1 #b000101100000) (bvsle a10_1 #b001101000010)))
(assert (and (bvsge a10_2 #b000101100000) (bvsle a10_2 #b001101000010)))
(assert (and (bvsge a12_0 #b000111000011) (bvsle a12_0 #b001000101000)))
(assert (and (bvsge a12_1 #b000111000011) (bvsle a12_1 #b001000101000)))
(assert (and (bvsge a12_2 #b000111000011) (bvsle a12_2 #b001000101000)))
(assert (and (bvsge a12_3 #b000111000011) (bvsle a12_3 #b001000101000)))
(assert (and (bvsge a12_4 #b000111000011) (bvsle a12_4 #b001000101000)))
(assert (and (bvsge h1_i2 #b000001100000) (bvsle h1_i2 #b001101011100)))
(assert (or (= h1_i3 #b000010001100) (and (bvsge h1_i3 #b000100100100) (bvsle h1_i3 #b000110011001)) (and (bvsge h1_i3 #b001010011010) (bvsle h1_i3 #b001010100001)) (and (bvsge h1_i3 #b001101011110) (bvsle h1_i3 #b001101110100))))
(assert (and (bvsge h1_i4 #b000011100001) (bvsle h1_i4 #b001001101101)))
(assert (and (bvsge h5_i8 #b000010011111) (bvsle h5_i8 #b001001010111)))
(assert (or (= h5_i9 #b001000111001) (= h5_i9 #b001111001011)))

; Formula constraint
(assert (and (bvslt a10_0 a12_3) (bvsle (bvsub a12_0 (bvadd h5_i8 h1_i4)) #b000000100100)))

(check-sat)