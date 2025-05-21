-- XML language server
return {
  cmd = {
    'lemminx-win32',
  },
  filetypes = {
    'xml',
    'xsd',
    'xsl',
    'xslt',
    'svg',
    'mdl',
  },
  root_markers = {
    '.git/',
  },
  single_file_support = true,
}
