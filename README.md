## Unveiling the regulatory role of GRP7 in ABA signal-mediated mRNA translation efficiency regulation
---

Abscisic acid (ABA) is a vital phytohormone for plant growth and stress adaptation. While its transcriptional effects are well-studied, its role in translational regulation is less understood. Using Ribo-seq and RNA-seq, we found that ABA impacts mRNA translation efficiency (TrE), inhibiting global mRNA translation via its core signaling pathway, including PYR/PYL/RCARs, PP2Cs, and SnRK2s. Glycine-rich RNA-binding proteins GRP7 and GRP8 associate with ribosomes and are crucial for maintaining TrE in genes related to photosynthesis and chloroplast function. ABA treatment reduces GRP7&8 levels through lower transcription and TrE, decreasing their polysome association and resulting in a global drop in TrE. GRP7 directly binds target mRNAs to modulate translation, linking ABA signaling to translation regulation, especially under drought stress. This study reveals GRP7’s role downstream of SnRK2, providing a model for ABA-driven translation regulation in environmental adaptation.

This repository contains the data processing scripts and source data used in this paper.

```
.
├── data
│   ├── aba.xtail.g7g8_vs_col0.txt
│   ├── CLIP_ABA.txt
│   ├── CLIP_mock.txt
│   ├── col0.xtail.aba_vs_mock.txt
│   ├── Col_Mock_ABA_TE_only_gene_up_down_GO_1.txt
│   ├── Col_Mock_ABA_TE_only_gene_up_down_GO.txt
│   ├── fig1_Col0_ABA_vs_Mock_DEGs_TE_GO_1.txt
│   ├── fig1_Col0_ABA_vs_Mock_DEGs_TE_GO.txt
│   ├── fig6_Mock_ABA_clip_GO_1.txt
│   ├── fig6_Mock_ABA_clip_GO.txt
│   ├── fpkm_mean.txt
│   ├── g7g8.xtail.aba_vs_mock.txt
│   ├── gene_length.txt
│   ├── GRP7_iCLIP.txt
│   ├── mock.xtail.g7g8_vs_col0.txt
│   ├── Riboseq_3UTR.featurecount1.txt
│   ├── Riboseq_5UTR.featurecount1.txt
│   ├── Riboseq_CDS.featurecount1.txt
│   ├── RNA.rawcount.txt
│   ├── RNA.rawcount.txt.ABA-Col0_vs_Mock-Col0.DESeq2.txt
│   ├── RNA.rawcount.txt.ABA-g7g8_vs_ABA-Col0.DESeq2.txt
│   ├── RNA.rawcount.txt.ABA-g7g8_vs_Mock-g7g8.DESeq2.txt
│   ├── RNA.rawcount.txt.Mock-g7g8_vs_Mock-Col0.DESeq2.txt
│   ├── rna.ribo.fpkm_rpkm.mean.txt
│   ├── RNAseq_3UTR.featurecount1.txt
│   ├── RNAseq_5UTR.featurecount1.txt
│   ├── RNAseq_CDS.featurecount1.txt
│   ├── RNAseq_CDS.featurecount1.txt.ABA_Col_vs_Mock_Col.DESeq2.DE_results.txt
│   ├── RNAseq_CDS.featurecount1.txt.ABA_g7g8_vs_ABA_Col.DESeq2.DE_results.txt
│   ├── RNAseq_CDS.featurecount1.txt.ABA_g7g8_vs_Mock_g7g8.DESeq2.DE_results.txt
│   ├── RNAseq_CDS.featurecount1.txt.Mock_g7g8_vs_Mock_Col.DESeq2.DE_results.txt
│   ├── RNAseq_exon.rawcount.txt
│   ├── t2g-zj.txt
│   ├── t2n-zj.txt
│   ├── xtail_ABA_Col_vs_Mock_Col.txt
│   ├── xtail_ABA_g7g8_vs_ABA_Col.txt
│   ├── xtail_ABA_g7g8_vs_Mock_g7g8.txt
│   └── xtail_Mock_g7g8_vs_Mock_Col.txt
├── README.md
└── script
    ├── CLiPseq_data_process.txt
    ├── figure_1.ipynb
    ├── figure_5.ipynb
    ├── figure_6.ipynb
    ├── rawcount_to_FPKM.R
    ├── Riboseq_data_process.txt
    ├── RNAseq_data_process.txt
    ├── RNAseq_DESeq2_calculate_DEGs.ipynb
    ├── supplementary_figure_1.ipynb
    ├── supplementary_figure_5.ipynb
    ├── supplementary_figure_6.ipynb
    ├── supplementary_figure_7.ipynb
    └── xtail_calculate_TE.ipynb


```



