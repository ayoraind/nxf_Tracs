process TRACS_ALIGN {
    tag "$meta"
    publishDir "${params.output_dir}", mode:'copy'

    errorStrategy { task.attempt <= 5 ? "retry" : "finish" }
    maxRetries 5
    
    conda "${projectDir}/conda_environments/tracs.yml"
    
    input:
    tuple val(meta), path(reads)
    path db

    output:
    tuple val(meta), path("*")                , emit: output_ch
    path("${meta}/${meta}.log")
    path  "versions.yml"                      , emit: versions_ch

    when:
    task.ext.when == null || task.ext.when

    script:
    def args = task.ext.args ?: ''
    """
    mkdir ${meta}
    
    tracs align -i $reads -o ${meta} --prefix ${meta} --minimap_preset 'map-ont' --keep-all -t 20 --database $db > ${meta}/${meta}.log


    cat <<-END_VERSIONS > versions.yml
    "${task.process}":
        tracs: \$(echo \$(tracs --version 2>&1) | sed 's/^.*tracs //; s/ .*\$//')
    END_VERSIONS
    """
}
