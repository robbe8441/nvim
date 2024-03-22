vim.g.mapleader = " "

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup("plugins")
require("config")


-- Windows-spezifische Pfade für die Undo-Dateien
local undodir = vim.fn.expand("$HOME") .. "/AppData/Local/nvim/undo"

-- Stelle sicher, dass das Verzeichnis für die Undo-Dateien existiert
if vim.fn.isdirectory(undodir) == 0 then
    vim.fn.mkdir(undodir, "p")
end

-- Setze die Einstellungen für die persistente Rückgängig-Funktion
vim.opt.undofile = true                -- Speichert Rückgängig-Informationen in Dateien
vim.opt.undodir = undodir              -- Verzeichnis zum Speichern der Rückgängig-Dateien
vim.opt.undolevels = 1000              -- Anzahl der Rückgängig-Ebenen
vim.opt.undoreload = 10000             -- Anzahl der Zeilen, die für die Rückgängig-Funktion gespeichert werden

