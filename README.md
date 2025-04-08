# SALT
[ICASSP2025] Semantic Attention and LLM-based Layout Guidance for Text-to-Image Generation
### Introduction  

Recent advancements in diffusion-based Text-to-Image (T2I) generation models, such as DALL-E, Imagen, and Stable Diffusion, have revolutionized Artificial Intelligence Generated Content (AIGC) by enabling the synthesis of diverse and high-quality images from textual prompts. However, these models often struggle with accurately depicting spatial relationships described in the prompts, primarily due to limitations in the CLIP text encoder's ability to interpret complex spatial descriptions.  

To address this challenge, recent research has focused on enhancing the controllability of pre-trained diffusion models, particularly in Layout-to-Image (L2I) generation. Methods like LayoutDiffusion and GLIGEN introduce additional training or fine-tuning steps to incorporate spatial constraints, such as bounding boxes or regional tags. While effective, these approaches are computationally expensive and require retraining for each new base model.  

Training-free alternatives have emerged, manipulating cross-attention layers to guide generation without additional training. These methods, however, often overlook the role of self-attention layers, which are crucial for intra-image coherence. Additionally, they rely on manual design of conditions, limiting their scalability. Recent work leveraging Large Language Models (LLMs) for layout generation shows promise, but existing methods either require extensive training or lack a holistic approach to attention guidance. In this paper, we propose **SALT** (Semantic Attention and LLM-based Layout Guidance), a **training-free** method that integrates LLM-generated bounding boxes with attention-guided optimization during the denoising process. 

### Results  
**Key Metrics**:  
- **Accuracy**: Percentage of generated images where objects satisfy the specified spatial relationships.  

#### Quantitative Evaluation  
We evaluated SALT on two benchmarks:  
1. **DrawBench**: 20 prompts with explicit spatial relationships (e.g., "a red cube *above* a blue sphere").  
2. **HRS**: 898 cleaned prompts with labeled object positions.  

#### Qualitative Analysis   
- **Without Layout Guidance**: Stable Diffusion (baseline)、Attend-and-Excite (cross-attention manipulation only)、MultiDiffusion (multi-region blending)
- **With Layout Guidance**: GLIGEN (strict bounding box enforcement)、LayoutDiffusion (region-confined generation)

### Code 

Our implementation is inspired by [Attend-and-Excite](https://github.com/yuval-alaluf/Attend-and-Excite).  

The evaluation of our work is adapted from [HRS](https://github.com/eslambakr/HRS_benchmark).

### Citation
If you find this project useful in your research, please consider citing:
```bibtex
@INPROCEEDINGS{10890155,
  author={Song, Yuxiang and Long, Zhaoguang and Lan, Man and Sun, Changzhi and Zhou, Aimin and Chen, Yuefeng and Yuan, Hao and Cao, Fei},
  booktitle={ICASSP 2025 - 2025 IEEE International Conference on Acoustics, Speech and Signal Processing (ICASSP)}, 
  title={Semantic Attention and LLM-based Layout Guidance for Text-to-Image Generation}, 
  year={2025},
  volume={},
  number={},
  pages={1-5},
  keywords={Training;Salt;Statistical analysis;Layout;Semantics;Text to image;Benchmark testing;Signal processing;Diffusion models;Speech processing;diffusion models;text-to-image generation;attention mechanism;training-free method},
  doi={10.1109/ICASSP49660.2025.10890155}
}

