"""Check that every installable formula has a README list entry."""

from pathlib import Path
import re
import unittest


class ReadmeFormulaeTest(unittest.TestCase):
    def test_all_formulae_have_readme_entries(self):
        root = Path(__file__).resolve().parents[1]
        files = list(root.glob("*.rb"))
        files.extend((root / "Formula").rglob("*.rb"))
        formulae = {file.stem for file in files}
        self.assertTrue(formulae, "No formulae found")

        readme = (root / "README.md").read_text(encoding="utf-8")
        documented = set(
            re.findall(r"^- \[([^\]]+)\]\([^)]+\):[ \t]+\S", readme, re.MULTILINE)
        )
        missing = sorted(formulae - documented)
        self.assertFalse(
            missing, f"Formulae missing from README: {', '.join(missing)}"
        )


if __name__ == "__main__":
    unittest.main()
