module.exports = function(eleventyConfig) {
    eleventyConfig.setUseGitIgnore(true);

    eleventyConfig.addPassthroughCopy("images");
    eleventyConfig.addPassthroughCopy("css");
};