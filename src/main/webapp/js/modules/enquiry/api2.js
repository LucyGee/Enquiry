$(document).ready(function () {
saveStudent();
selectStudent();
studentImage(-2000)
    $(".datepicker-input").each(function() {
        $(this).datetimepicker({
            format: 'MM/DD/YYYY'
        });

    });//datepicker
})
function selectStudent() {
    $('#std-div').attr('select2-url',ctx+'/api/pageStudent');


    if($("#std-div").filter("div").html() != undefined)
    {
        Select2Builder.initAjaxSelect2({
            containerId : "std-div",
            sort : 'regNo',
            change: function(e, a, v){
                $('#stud-id').val(e.added.stId)
                $('#stud-fname').val(e.added.regNo)
                $('#certRegNo').val(e.added.regNo)
                editStudent(e.added.stId)
            },
            formatResult : function(a)
            {
                return a.regNo
            },
            formatSelection : function(a)
            {
                return a.regNo
            },
            initSelection: function (element, callback) {
                var code = $('#stud-id').val();
                var fname = $('#stud-fname').val();
                var data = {regNo:fname,stId:code};
                callback(data);
            },
            id: "stId",
            placeholder:"Student",
        });
    }
}
function editStudent(stdCode) {
    if(typeof stdCode!='undefined' || stdCode!==-2000) {
        $.ajax({
            type: 'GET',
            url: 'studentDetails/'+stdCode,
        }).done(function (s) {

            $('#fname').val(s.fname);
            $('#mname').val(s.mname);
            $('#lname').val(s.lname);
            $('#regno').val(s.regNo);
            $('#faculty').val(s.faculty);
            $('#department').val(s.department);
            $('#course').val(s.course);
            $('#points').val(s.points);
            $('#graduationDate').val(moment(s.graduationDate).format('MM/DD/YYYY'));
            $('#level').val(s.level);
            studentImage(s.stId);
            
                
        }).fail(function (xhr, error) {
            new PNotify({
                title: 'Error',
                text: xhr.responseText,
                type: 'error',
                styling: 'bootstrap3'
            });
        })

    }
}
function saveStudent() {
    var $form= $("#student-form");

    $('#student-form')
        .submit( function( e ) {
            e.preventDefault();




            var data = new FormData( this );
            data.append( 'file', $( '#stud-avatar' )[0].files[0] );
            console.log(data);
            $.ajax({
                type: 'POST',
                url: 'postStudent',
                data: data,
                processData: false,
                contentType: false,
            }).done(function (s) {
                alert("Student Added Successfully")

            }).fail(function (xhr, error) {
                bootbox.alert(xhr.responseText)

            });
        });
}
function studentImage(id){
if($.isNumeric(id)) {
    $("#stud-avatar").fileinput('refresh', {
        overwriteInitial: true,
        maxFileSize: 1500,
        showClose: false,
        showCaption: false,
        browseLabel: '',
        removeLabel: '',
        browseIcon: '<i class="fa fa-folder-open"></i>',
        removeIcon: '<i class="fa fa-times"></i>',
        removeTitle: 'Cancel or reset changes',
        elErrorContainer: '#kv-avatar-errors',
        msgErrorClass: 'alert alert-block alert-danger',
        defaultPreviewContent: '<img src="' + ctx + '/api/studentPhoto/' + id + '"  style="height:15em;width:200px">',
        layoutTemplates: {main2: '{preview} ' + ' {remove} {browse}'},
        allowedFileExtensions: ["jpg", "png", "gif"]
    });
}
}
