$(document).ready(function () {

    Dropzone.autoDiscover = false;
    $("#upload-dropzone").dropzone({
        maxFilesize: 5000,
        uploadMultiple: false,
        addRemoveLinks: true,
        paramName: 'upload[file]'
    });

});
