include check_mandatory_parameter from './params_utilities'


def default_params(){
    /***************** Setup inputs and channels ************************/
    def params = [:]
    params.help = false
    params.version = false
    params.input_dir = '/project/cmcwhite/pipelines/cfmsinfer/elutions/processed_elutions'
    params.elution_pattern = '*.wide'


    params.feature_matrix = '/project/cmcwhite/pipelines/cfmsinfer/feature_matrix/testrun.featmat'
    params.positive_labels = '/project/cmcwhite/pipelines/cfmsinfer/gold_standards/pos_train.txt'
    params.negative_labels =  '/project/cmcwhite/pipelines/cfmsinfer/gold_standards/neg_train.txt'


    params.output_dir = 'output_dir'
    return params
}

def check_params(Map params, String version) { 
    // set up input directory
    def final_params = [:]


    def input_dir = check_mandatory_parameter(params, 'input_dir') - ~/\/$/

    //  check a pattern has been specified
    def elution_pattern = check_mandatory_parameter(params, 'elution_pattern')

    // set up output directory
    final_params.output_dir = check_mandatory_parameter(params, 'output_dir') - ~/\/$/


    final_params.elutions_path = input_dir + "/" + elution_pattern

    final_params.feature_matrix = file(params.feature_matrix)
    // final_params.pos_train = file(params.pos_train)
    // final_params.neg_train = file(params.neg_train)


    return final_params
}


