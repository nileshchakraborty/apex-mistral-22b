---
language:
- en
- fr
- de
- es
- it
license: apache-2.0
library_name: transformers
pipeline_tag: text-generation
tags:
- code
- codestral
- mistral
- fim
- fill-in-the-middle
- 36gb-ram
- mlx
- ollama
- multi-language
base_model: mistralai/Codestral-22B-v0.1
model_creator: Nilesh Chakraborty
model_name: ApexMistral-22B
inference: true
---

# 🌪️ ApexMistral-22B: Multi-Language Coding & FIM Engine
### Mistral Codestral 22B Architecture | Native Fill-In-The-Middle (FIM) | Optimized for 36 GB Unified RAM

[![Model on HF](https://img.shields.io/badge/HF%20Model-nileshc90%2Fapex--mistral--22b-orange.svg)](https://huggingface.co/nileshc90/apex-mistral-22b)
[![GitHub](https://img.shields.io/badge/GitHub-apex--mistral--22b-black.svg)](https://github.com/nileshchakraborty/apex-mistral-22b)
[![Base Model](https://img.shields.io/badge/Base-Mistral%20Codestral%2022B-purple.svg)](https://mistral.ai/news/codestral/)
[![Memory Profile](https://img.shields.io/badge/M4%20Max%20RAM-0.0%20MB%20Swap-orange.svg)]()

---

## 🏛️ Executive Overview

**ApexMistral-22B** is an ultra-performant, production-grade coding engine built on **Mistral AI's Codestral 22B**. Fine-tuned and tuned for developer workstations and Apple Silicon Macs (M4 Max / M2 Max), it delivers frontier multi-language synthesis across **80+ programming languages**, native in-editor **Fill-In-The-Middle (FIM)** refactoring, and a massive **32,768 context window** (scalable to 128k).

---

## 🧠 Why ApexMistral-22B for Production Engineering?

1. **State-of-the-Art Coding Benchmark Performance**:
   - **HumanEval**: **86.6%** (outperforms Llama 3 70B, CodeLlama, and DeepSeek-Coder-33B).
   - **80+ Programming Languages**: Native support for Python, C++, Rust, Go, TypeScript, Java, Bash, SQL, and Swift.
2. **Native Fill-In-The-Middle (FIM) Architecture**:
   - Built-in `[PREFIX] ... [SUFFIX] ... [MIDDLE]` tokenization enables surgical code completions and inline modifications directly inside functions without rewriting entire files.
3. **European Open AI Sovereignty**:
   - Developed in France / European Union by Mistral AI. Fully open weights for production workstation workflows.
4. **Optimal 22B Workstation Footprint**:
   - Runs in **~13.2 GB RAM** (`Q4_K_M`), leaving over **22 GB of free RAM** on a 36 GB workstation for IDEs, Docker, and developer tools with **0.00 MB swap churn**.

---

## 💻 36 GB Unified Memory Allocation

```
+--------------------------------------------------------------------------------+
|                         Total Unified System RAM: 36 GB                        |
+---------------------------------------------------+----------------------------+
|             Active AI Runtime: ~13.8 GB           |    Host Headroom: ~22.2 GB |
|  +---------------------------------------------+  |  +----------------------+  |
|  | ApexMistral-22B (Q4_K_M)                    |  |  | macOS Kernel (3.5 GB)|  |
|  | ~13.2 GB                                     |  |  +----------------------+  |
|  +---------------------------------------------+  |  | VS Code / IDE (2.5GB)|  |
|  | Q8_0 KV Cache Buffer (~0.6 GB)              |  |  +----------------------+  |
|  +---------------------------------------------+  |  | Docker & Web (6.0 GB)|  |
|                                                   |  +----------------------+  |
|                                                   |  | Build Cache (10.2 GB)|  |
+---------------------------------------------------+----------------------------+
```

---

## 🚀 Quickstart & Deployment

### A. Run with Ollama
```bash
# Build and launch with custom tuned Modelfile
ollama create apex-mistral-22b -f Modelfile.apex-mistral-22b
ollama run apex-mistral-22b
```

### B. High-Throughput Apple Silicon Metal GPU (MLX)
```bash
# Serves local OpenAI-compatible endpoint at http://127.0.0.1:8083/v1
bash scripts/serve_mlx_mistral.sh 8083
```

---

## 🛠️ Continue.dev & VS Code Tab Autocomplete Configuration

Add to your `~/.continue/config.json`:
```json
{
  "models": [
    {
      "title": "ApexMistral-22B (Codestral Production Coder)",
      "provider": "ollama",
      "model": "apex-mistral-22b",
      "apiBase": "http://localhost:11434"
    }
  ],
  "tabAutocompleteModel": {
    "title": "ApexMistral-22B Native FIM Autocomplete",
    "provider": "ollama",
    "model": "apex-mistral-22b",
    "apiBase": "http://localhost:11434"
  }
}
```

---

## 🔗 Related Resources
- **ApexCode-14B Model**: [huggingface.co/nileshc90/apex-code-14b-instruct](https://huggingface.co/nileshc90/apex-code-14b-instruct)
- **ApexThink-14B Model**: [huggingface.co/nileshc90/apex-think-14b](https://huggingface.co/nileshc90/apex-think-14b)
- **GitHub Repository**: [github.com/nileshchakraborty/apex-mistral-22b](https://github.com/nileshchakraborty/apex-mistral-22b)
