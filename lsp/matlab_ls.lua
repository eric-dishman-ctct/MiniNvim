return {
  cmd = {
    'matlab-language-server',
    '--stdio',
  },
  filetypes = { 'matlab' },
  root_markers = { '.git/', '.prj' },
  single_file_support = false,
  settings = {
    MATLAB = {
      indexWorkSpace = true,
      installPath = 'C:\\MATLAB\\R2024b',
      matlabConnectionTiming = 'onStart',
      telemetry = false,
    },
  },
}
