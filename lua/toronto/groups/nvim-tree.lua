local M = {}

function M.get(colors, opts)
  return {
    -- NvimTree
    NvimTreeNormal           = { fg = colors.fg, bg = colors.bg_sidebar },
    NvimTreeNormalNC         = { fg = colors.fg, bg = colors.bg_sidebar },
    NvimTreeEndOfBuffer      = { fg = colors.border, bg = colors.bg_sidebar },
    NvimTreeWinSeparator     = { fg = colors.border, bg = colors.bg_sidebar },
    
    -- Folders
    NvimTreeFolderName       = { fg = colors.method },
    NvimTreeOpenedFolderName = { fg = colors.method, bold = true },
    NvimTreeEmptyFolderName  = { fg = colors.dim },
    NvimTreeRootFolder       = { fg = colors.keyword, bold = true },
    NvimTreeFolderIcon       = { fg = colors.method },
    
    -- Files
    NvimTreeFileNew          = { fg = colors.string },
    NvimTreeFileDeleted      = { fg = colors.red },
    NvimTreeFileDirty        = { fg = colors.yellow },
    NvimTreeFileMerge        = { fg = colors.decorator },
    NvimTreeFileRenamed      = { fg = colors.cyan },
    NvimTreeFileStaged       = { fg = colors.class },
    NvimTreeOpenedFile       = { fg = colors.fg, bold = true },
    
    -- Git
    NvimTreeGitDirty         = { fg = colors.yellow },
    NvimTreeGitStaged        = { fg = colors.class },
    NvimTreeGitMerge         = { fg = colors.decorator },
    NvimTreeGitRenamed       = { fg = colors.cyan },
    NvimTreeGitNew           = { fg = colors.string },
    NvimTreeGitDeleted       = { fg = colors.red },
    
    -- Misc
    NvimTreeIndentMarker     = { fg = colors.border },
    NvimTreeImageFile        = { fg = colors.string },
    NvimTreeSpecialFile      = { fg = colors.decorator, bold = true },
    NvimTreeSymlink          = { fg = colors.cyan },
    NvimTreeExecFile         = { fg = colors.class, bold = true },
  }
end

return M