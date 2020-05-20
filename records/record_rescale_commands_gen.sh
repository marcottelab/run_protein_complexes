
for f in elutions/processed_elutions/*euclidean*feat.ordered; do 
     echo "python /project/cmcwhite/github/protein_complex_maps/protein_complex_maps/features/normalize_features.py --input_feature_matrix $f --output_filename ${f%.ordered}.rescale.ordered --features euclidean --min 0 --sep , --inverse" 
     done > records/record_rescale_COMMANDS.sh

for f in elutions/processed_elutions/*braycurtis*feat.ordered; do 
     echo "python /project/cmcwhite/github/protein_complex_maps/protein_complex_maps/features/normalize_features.py --input_feature_matrix $f --output_filename ${f%.ordered}.rescale.ordered --features braycurtis --min 0 --sep , --inverse"; done >> records/record_rescale_COMMANDS.sh


