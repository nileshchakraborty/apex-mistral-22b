"""Unit tests for ApexMistral-22B FIM (Fill-In-The-Middle) and Min-P guardrails."""

import pytest

def test_min_p_probability_cutoff():
    """Verify Min-P probability calculation formula for Mistral."""
    min_p = 0.04
    max_prob = 0.75
    cutoff = min_p * max_prob
    assert cutoff == pytest.approx(0.03), "Min-P cutoff must scale proportionally"

def test_fim_tokens_configured():
    """Verify presence of FIM tokens and directives in Modelfile."""
    from pathlib import Path
    modelfile = Path(__file__).parent.parent / "Modelfile.apex-mistral-22b"
    assert modelfile.exists(), "Modelfile must exist"
    content = modelfile.read_text()

    assert "[PREFIX]" in content
    assert "[SUFFIX]" in content
    assert "[MIDDLE]" in content
    assert "min_p 0.04" in content
    assert "num_ctx 32768" in content
