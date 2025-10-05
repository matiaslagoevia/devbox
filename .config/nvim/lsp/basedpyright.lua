return {
  cmd = { "basedpyright-langserver", "--stdio" },
  filetypes = { "python" },
  root_markers = { "pyproject.toml", "setup.py", "setup.cfg", "requirements.txt", ".git" },
  settings = {
    basedpyright = {
      typeCheckingMode = "basic",
      analysis = {
        autoImportCompletions = true,
        diagnosticMode = "workspace",
      },
    },
  },
}
