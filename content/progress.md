# Progress {
data-background-image='img/bg/jason-leung_3.jpg'
data-background-opacity=0.35
}

- Focus so far has been link prediction $\implies$ _jet clustering_
    - particles connected by an edge are part of the same jet
- Link embedding learned from data on node pairs
    - so far emulating previous work, only using particle momenta
- Scores for each link obtained in classification layer
    - if score passes threshold, linked particles $\implies$ _jet constituents_

This implementation of the Interaction Network has some limitations.

- Input graph is fully connected
    - high memory and computational overhead
    - topologically homogeneous
- No benefit from particle properties, _eg._ charge, mass, spin, _etc._

:::notes
- might ask about why I'm using simulation data

- precision is defined as the ratio of true positive predictions against
  the sum of true positive and false positive predictions.

:::

## Results {
data-background-image='img/bg/jason-leung_3.jpg'
data-background-opacity=0.25
}


:::::::::::::: {.columns}
::: {.column width="45%"}

![
Precision and recall for our network.
](img/fig/prec_rec.svg){#fig:my_prec_rec}

:::
::: {.column width="52%"}

|              | Threshold | 0.1     | 0.5     | 0.8     |
| ------------ | --------- | ------: | ------: | ------: |
| This work    | Precision | 0.239   | 0.598   | 0.837   |
|              | Recall    | 0.969   | 0.845   | 0.664   |
| Ju _et al._  | Precision | 0.715   | 0.908   | 0.960   |
|              | Recall    | 0.965   | 0.896   | 0.824   |

: Comparing precision and recall scores {#tbl:prec_rec}

:::
::::::::::::::
