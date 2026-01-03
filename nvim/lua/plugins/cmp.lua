return {
  'saghen/blink.cmp',
  dependencies = {
    'rafamadriz/friendly-snippets'
  },
  version = '1.*',
  opts = {
    keymap = {
      preset = 'none',
      ['<C-k>'] = { 'select_prev', 'fallback' },
      ['<C-j>'] = { 'select_next', 'fallback' },

      ['<C-p>'] = { 'scroll_documentation_up', 'scroll_signature_up' },
      ['<C-n>'] = { 'scroll_documentation_down', 'scroll_signature_down' },

      ['<C-x>'] = { 'show', 'fallback' },
      ['<C-d>'] = { 'show_documentation', 'fallback' },
      ['<C-s>'] = { 'show_signature', 'fallback' },

      ['<Tab>'] = { 'select_and_accept', 'fallback' },
      ['<C-c>'] = { 'cancel', 'fallback' },
    },

    appearance = {
      nerd_font_variant = 'normal'
    },

    completion = {
      documentation = {
        auto_show = true
      }
    },

    sources = {
      default = { 'lsp', 'path', 'snippets', 'buffer' },
    },

    fuzzy = { implementation = "prefer_rust_with_warning" }
  },
  opts_extend = { "sources.default" }
}
