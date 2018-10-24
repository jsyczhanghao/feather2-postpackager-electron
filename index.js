var offlinePackager = require('feather2-postpackager-offline');

module.exports = function(ret){
    offlinePackager(ret);

    var fjs = ret.pkg['/static/feather.js'];
    var content = fjs.getContent();
    var tpl = feather.util.read(__dirname + '/js.tpl');
    content = tpl.replace('{{#featherjs#}}', content);
    fjs.setContent(content);
};