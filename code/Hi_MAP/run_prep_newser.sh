truncated=/home/mila/h/hejingyi/Documents/Dataset/multi-news/truncated/temp
python preprocess.py -train_src $truncated/train.txt.src.tokenized.fixed.cleaned.final.truncated \
                     -train_tgt $truncated/train.txt.tgt.tokenized.fixed.cleaned.final.truncated \
                     -valid_src $truncated/val.txt.src.tokenized.fixed.cleaned.final.truncated \
                     -valid_tgt $truncated/val.txt.tgt.tokenized.fixed.cleaned.final.truncated \
                     -save_data newser_sent_500/newser_sents \
                     -src_seq_length 10000 \
                     -tgt_seq_length 10000 \
                     -src_seq_length_trunc 500 \
                     -tgt_seq_length_trunc 300 \
                     -dynamic_dict \
                     -share_vocab \
                     -max_shard_size 10000000
