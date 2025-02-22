local function create_paths(raw_path)
  local path = vim.o.path
  local suffixesadd = vim.o.suffixesadd

  local paths = {}

  for s in vim.gsplit(path, ",", { plain = true }) do
    local joined_path = vim.fs.joinpath(s, raw_path)
    table.insert(paths, joined_path)
    for suffix in vim.gsplit(suffixesadd, ",", { plain = true }) do
      table.insert(paths, joined_path .. suffix)
    end

    for suffix in vim.gsplit(suffixesadd, ",", { plain = true }) do
      table.insert(paths, vim.fs.joinpath(joined_path, "index" .. suffix))
    end
  end

  return paths
end

local function file_exists(name)
  local f = io.open(string.gsub(name, "~", "/Users/richard"), "r")
  if f ~= nil then
    io.close(f)
    return true
  else
    return false
  end
end

local function is_dir(path)
  local f = io.open(string.gsub(path, "~", "/Users/richard"), "r")
  if f ~= nil then
    local ok, err, code = f:read(1)
    f:close()
    return code == 21
  else
    return false
  end
end

local function gf()
  -- temporarily switch to this file's directory
  vim.cmd({ cmd = "lcd", args = { "%:p:h" } })

  local raw_path = vim.fn.expand("<cfile>")
  local existing_file

  local paths = create_paths(raw_path)

  for i, v in ipairs(paths) do
    if file_exists(v) and not is_dir(v) then
      -- is file a file or a folder?
      existing_file = v
      break
    end
  end

  if existing_file then
    vim.cmd({ cmd = "edit", args = { existing_file } })
  else
    print("Could not find file")
  end
  -- change back to previous directory
  vim.cmd({ cmd = "lcd", args = { "-" } })
end

vim.keymap.set("n", "<leader>gf", function()
  gf()
end, { desc = "override vim <leader>gf" })

