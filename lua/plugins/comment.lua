-- used for adding comment with gcc, gco etc 
return {
  'numToStr/Comment.nvim',
  config = function ()
   require("Comment").setup()
  end
}
