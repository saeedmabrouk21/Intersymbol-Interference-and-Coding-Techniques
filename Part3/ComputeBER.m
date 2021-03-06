function BER = ComputeBER(bit_seq,rec_bit_seq)

    % This function takes the input and output bit sequences and computes the
    % BER

    BERVector = rec_bit_seq-bit_seq;
    BERVectorABS = abs(BERVector);
    NumWrongBits = sum(BERVectorABS);
    BER = NumWrongBits/length(bit_seq);

end