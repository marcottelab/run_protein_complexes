PCM_DIR=$1
REPS=$2

# 5 reps for test, 
# 100 reps for final iteration
for exp in elutions/processed_elutions/*.wide
        do for corr in pearsonR spearmanR euclidean braycurtis #xcorr
            do echo "python $PCM_DIR/protein_complex_maps/features/ExtractFeatures/canned_scripts/extract_features.py --format csv -f $corr -r poisson_noise -i $REPS $exp"
            done
        done >  records/record_corr_COMMANDS.sh



