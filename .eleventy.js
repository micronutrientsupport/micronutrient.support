module.exports = function(eleventyConfig) {
    eleventyConfig.setUseGitIgnore(true);

    eleventyConfig.addPassthroughCopy("admin");
    eleventyConfig.addPassthroughCopy("images");
    eleventyConfig.addPassthroughCopy("css");
};