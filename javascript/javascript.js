//Verifica se CPF é válido
$("body").attr("contextmenu", 'myFirstContextMenu');
$("body").attr("contextmenu", 'myFirstContextMenu');
function TestarCPF(cpf, el) {
    var $me = $(el);
    cpf = cpf.replace(/[^\d]+/g, '');
    if (cpf == '') return false;
    // Elimina CPFs invalidos conhecidos    
    if (cpf.length != 11 ||
        cpf == "00000000000" ||
        cpf == "11111111111" ||
        cpf == "22222222222" ||
        cpf == "33333333333" ||
        cpf == "44444444444" ||
        cpf == "55555555555" ||
        cpf == "66666666666" ||
        cpf == "77777777777" ||
        cpf == "88888888888" ||
        cpf == "99999999999") {
        alert("CPF Inválido!");
        $me.val("");
        $me.focus();
        return false;
    }
    // Valida 1o digito 
    add = 0;
    for (i = 0; i < 9; i++)
        add += parseInt(cpf.charAt(i)) * (10 - i);
    rev = 11 - (add % 11);
    if (rev == 10 || rev == 11)
        rev = 0;
    if (rev != parseInt(cpf.charAt(9))) {
        alert("CPF Inválido!");

        $me.val("");
        $me.focus();
        return false;
    }
    // Valida 2o digito 
    add = 0;
    for (i = 0; i < 10; i++)
        add += parseInt(cpf.charAt(i)) * (11 - i);
    rev = 11 - (add % 11);
    if (rev == 10 || rev == 11)
        rev = 0;
    if (rev != parseInt(cpf.charAt(10))) {
        alert("CPF Inválido!");
        $me.val("");
        $me.focus();
        return false;
    }
    return true;
}

jQuery.validator.setDefaults({
    success: "valid"
});
function myFunction() {
    alert("Opção de impressão escolhida.");

}
function ValidatePage() {




    if ($("#form1").valid() == true) {

        window.print();
        $("#txbMem").val(""); $("#txbNome").val(""); $("#txbCac").val(""); $("#txbRF").val(""); $("#txbCargo").val(""); $("#txbLotacao").val(""); $("#txbObserv").val("");
        $("#txbRedCorp").val(""); $("#txbNumCodUnid").val(""); $("#txbCPF").val(""); $("#txbRG").val(""); $("#txbDtAdmissao").val(""); $("#txbNumUnid").val("");
        $("#txbCentroCustoAntigo").val(""); $("#txbOSCentroCustoAntigo").val(""); $("#txbCompras").val(""); $("#txbCentroCusto").val(""); $("#txbOSCentroCusto").val(""); $("#txbUnidade").val(""); $("#txbUnidade2").val(""); $("#txbUnidade3").val(""); $("#txbUnidade4").val(""); $("#txbContato").val(""); $("#datepicker").val("");
        $("input:radio").each(function (i) {
            this.checked = false;
        });
        $("input:checkbox").each(function (i) {
            this.checked = false;
        });

        location.href = location.href;




    }



}


$(document).ready(function () {


    $("#txbCac").mask("HSPMCAC999");
    $("#txbContato").mask("9999");
    $("#txbCPFMat").mask("999.999.999-99");
    $("#txbCPF").mask("999.999.999-99");
    $("#txbCPFOS").mask("999.999.999-99");
    $("#txbCPFCompras").mask("999.999.999-99");

    $("#form1").validate({
        errorClass: 'errors',


        rules: {
            txbRedeCorp: { required: "#cbPastaRede:checked" },
            txbSGHInt: { required: "#cbSGHInt:checked" },
            txbEmergencia: { required: "#cbEmergencia:checked" },
            txbSGHCentCir: { required: "#cbSGHCentCir:checked" },
            txbSGHAmb: { required: "#cbSGHAmb:checked" },
            txbCPFCompras: { required: "#cbCompras:checked" },
            txbNumCodUnid: { required: "#cbSimproc:checked" },
            txbCPF: { required: "#cbSimproc:checked" },
            txbRG: { required: "#cbSimproc:checked" },
            txbDtAdmissao1: { required: "#cbSimproc:checked" },
            txbDtAdmissao: { required: "#cbSimproc:checked" },
            txbUnidade: { required: "#cbSei:checked" },
            txbCentroCusto: { required: "#cbMateriais:checked" },
            txbOSCentroCusto: { required: "#cbOS:checked" },
            txbCPFMat: { required: "#cbMateriais:checked" },
            txbCPFOS: { required: "#cbOS:checked" },
            txbCentroCustoAntigo: { required: "#rdMatAt:checked" },
            txbOSCentroCustoAntigo: { required: "#rdOSAt:checked" },
            'CardPainelBordo': { required: true },
            'CardSistemaIsolamento': { required: true },
            'CardRede': { required: true },
            'CardSGH': { required: true },
            'CardEmergencia': { required: true },
            'Solicitacao': { required: true }



        },
        messages: {

            txbRedeCorp: "* Este campo é obrigatório se você escolheu a opção Pasta de Rede.",
            'CardRede': "* Você precisa escolher pelo menos uma opção. ", // <- add this
            'CardSistemaIsolamento': "* Você precisa escolher pelo menos uma opção. ", // <- add this
            'CardPainelBordo': "* Você precisa escolher pelo menos uma opção. ", // <- add this
            'CardSGH': "* Você precisa escolher pelo menos uma opção. ", // <- add this
            'Solicitacao': "* Você precisa escolher pelo menos uma opção. " ,// <- add this
            'CardEmergencia': "* Você precisa escolher pelo menos uma opção. "// <- add this



        }


    });



    jQuery(function ($) {
        $("#datepicker1").mask("99/99/9999");
        $("#txbDtAdmissao1").mask("99/99/9999");


    });

    $(".datepicker").datepicker({
        dateFormat: 'dd/mm/yy',
        dayNames: ['Domingo', 'Segunda', 'Terça', 'Quarta', 'Quinta', 'Sexta', 'Sábado'],
        dayNamesMin: ['D', 'S', 'T', 'Q', 'Q', 'S', 'S', 'D'],
        dayNamesShort: ['Dom', 'Seg', 'Ter', 'Qua', 'Qui', 'Sex', 'Sáb', 'Dom'],
        monthNames: ['Janeiro', 'Fevereiro', 'Março', 'Abril', 'Maio', 'Junho', 'Julho', 'Agosto', 'Setembro', 'Outubro', 'Novembro', 'Dezembro'],
        monthNamesShort: ['Jan', 'Fev', 'Mar', 'Abr', 'Mai', 'Jun', 'Jul', 'Ago', 'Set', 'Out', 'Nov', 'Dez'],
        nextText: 'Proximo',
        prevText: 'Anterior'
    });
    $(".txbDtAdmissao").datepicker({
        dateFormat: 'dd/mm/yy',
        dayNames: ['Domingo', 'Segunda', 'Terça', 'Quarta', 'Quinta', 'Sexta', 'Sábado'],
        dayNamesMin: ['D', 'S', 'T', 'Q', 'Q', 'S', 'S', 'D'],
        dayNamesShort: ['Dom', 'Seg', 'Ter', 'Qua', 'Qui', 'Sex', 'Sáb', 'Dom'],
        monthNames: ['Janeiro', 'Fevereiro', 'Março', 'Abril', 'Maio', 'Junho', 'Julho', 'Agosto', 'Setembro', 'Outubro', 'Novembro', 'Dezembro'],
        monthNamesShort: ['Jan', 'Fev', 'Mar', 'Abr', 'Mai', 'Jun', 'Jul', 'Ago', 'Set', 'Out', 'Nov', 'Dez'],
        nextText: 'Proximo',
        prevText: 'Anterior'
    });
    $(function () {
        $("#datepicker1").datepicker();
    });
    $(function () {
        $("#txbDtAdmissao1").datepicker();
    });
    $("#txbRedeCorp").prop("disabled", true);
    $("#txbSGHAmb").prop("disabled", true);
    $("#txbSGHCentCir").prop("disabled", true);
    $("#txbSGHInt").prop("disabled", true);
    $("#txbEmergencia").prop("disabled", true);
    $("#lbCentroCustoAntigo").hide();
    $("#txbCentroCustoAntigo").hide();
    $("#lbOSCentroCustoAntigo").hide();
    $("#txbOSCentroCustoAntigo").hide();
    $("#Servicos").hide();
    $("#SGH").hide();
    $("#Simproc").hide();
    $("#Materiais").hide();
    $("#PainelBordo").hide();
    $("#SistemaIsolamento").hide();
    $("#Compras").hide();
    $("#Sei").hide();
    $("#OS").hide();
    $("input:radio[name$='SGH']").attr('disabled', true);
    $("input:radio[name$='Compras']").attr('disabled', true);
    $("input:radio[name$='RedeCorporativa']").attr('disabled', true);
    $("input:radio[name$='SEI']").attr('disabled', true);
    $("input:radio[name$='Materiais']").attr('disabled', true);
    $("input:radio[name$='PainelBordo']").attr('disabled', true);
    $("input:radio[name$='SistemaIsolamento']").attr('disabled', true);
    $("input:radio[name$='Simproc']").attr('disabled', true);
    $("input:radio[name$='OS']").attr('disabled', true);

    $("#cbPastaRede").click(function () {
        if ($(this).prop("checked") == false) {
            $("#txbRedeCorp").val("");
            $("#txbRedeCorp").prop("disabled", true);

        }
        else {

            $("#txbRedeCorp").prop("disabled", false);


        }
    });
    $("#cbSGHAmb").click(function() {
        if ($(this).prop("checked") == false) {
            $("#txbSGHAmb").val("");
            $("#txbSGHAmb").prop("disabled", true);

        }
        else {

            $("#txbSGHAmb").prop("disabled", false);


        }
    });
    $("#cbSGHCentCir").click(function() {
        if ($(this).prop("checked") == false) {
            $("#txbSGHCentCir").val("");
            $("#txbSGHCentCir").prop("disabled", true);

        }
        else {

            $("#txbSGHCentCir").prop("disabled", false);


        }
    });
    $("#cbSGHInt").click(function() {
        if ($(this).prop("checked") == false) {
            $("#txbSGHInt").val("");
            $("#txbSGHInt").prop("disabled", true);

        }
        else {

            $("#txbSGHInt").prop("disabled", false);


        }
    });
    $("#cbEmergencia").click(function() {
        if ($(this).prop("checked") == false) {
            $("#txbEmergencia").val("");
            $("#txbEmergencia").prop("disabled", true);

        }
        else {

            $("#txbEmergencia").prop("disabled", false);


        }
    });

    $("#cbSei").click(function () {
        if ($(this).prop("checked") == true) {


            $("#Sei").before('<br id="brSei"/>');
            $("#Sei").show();
            $("input:radio[name$='SEI']").removeAttr('disabled');
            $("#rdSeiAc").prop('checked', true);




        }

        else if ($(this).prop("checked") == false) {
            $("#Sei").hide();
            $('#brSei').remove();
            $("input:radio[name$='SEI']").attr('disabled', true)
            $("input:radio[name='SEI']").each(function (i) {
                this.checked = false;
            });


        }


    });

    $("#cbRedeCorporativa").click(function () {
        if ($(this).prop("checked") == true) {
            $("#Servicos").before('<br id="brServ"/>');
            $("#Servicos").show();
            $("#rbRdAc").prop("checked", true)
            $("input:radio[name$='RedeCorporativa']").removeAttr('disabled');


        }

        else if ($(this).prop("checked") == false) {

            $("#Servicos").hide();
            $("#brServ").remove();
            $("input:radio[name='RedeCorporativa']").each(function (i) {
                this.checked = false;
            });
            $("input:radio[name$='RedeCorporativa']").attr('disabled', true);

            $(".CardRede input").each(function (i) {

                $(this).prop('checked', false);


            });
            $("#txbRedeCorp").val("");


        }


    });

    $("#cbCompras").click(function () {
        if ($(this).prop("checked") == true) {
            $("#Compras").before('<br id="brComp"/>');
            $("#Compras").show();
            $("#rdCompAc").prop("checked", true);
            $("input:radio[name$='Compras']").removeAttr('disabled');


        }

        else if ($(this).prop("checked") == false) {

            $("#Compras").hide();
            $("#brComp").remove();
            $("input:radio[name='Compras']").each(function (i) {
                this.checked = false;
            });
            $("input:radio[name$='Compras']").attr('disabled', true);

            $(".Compras input").each(function (i) {

                $(this).prop('checked', false);


            });
            $("#txbCPFComp").val("");


        }


    });

    $("#cbOS").click(function () {
        if ($(this).prop("checked") == true) {

            $("#OS").show();
            $("#lbOSCentroCustoAntigo").hide();
            $("#txbOSCentroCustoAntigo").hide();
            $("#OS").before('<br id="brOS"/>');
            $("input:radio[name$='OS']").removeAttr('disabled');
            $("#rdOSAc").prop('checked', true);


        }

        else if ($(this).prop("checked") == false) {

            $("#OS").hide();
            $("#brOS").last().remove();
            $("input:radio[name$='OS']").attr('disabled', true)
            $("input:radio[name='OS']").each(function (i) {
                this.checked = false;
            });

            $("#txbOSCentroCusto").val("");

        }


    });

    $("#chbTodosMat").click(function () {
        if ($(this).prop("checked") == true) {

            $("#chbCentral").prop('checked', true);
            $("#chbGrafica").prop('checked', true);
            $("#chbFarmacia").prop('checked', true);
            $("#chbSND").prop('checked', true);
            $("#chbManutencao").prop('checked', true);
            $("#chbMecanica").prop('checked', true);
            $("#chbEstoque").prop('checked', true);
           


        }

        else if ($(this).prop("checked") == false) {


            $("#chbCentral").prop('checked', false);
            $("#chbGrafica").prop('checked', false);
            $("#chbFarmacia").prop('checked', false);
            $("#chbSND").prop('checked', false);
            $("#chbManutencao").prop('checked', false);
            $("#chbMecanica").prop('checked', false);
            $("#chbEstoque").prop('checked', false);


        }


    });





    $("#cbSGH").click(function () {
        if ($(this).prop("checked") == true) {
            $("#SGH").before('<br id="brSGH"/>');
            $("#SGH").show();
            $("input:radio[name$='SGH']").removeAttr('disabled');
            $("#rbSGHAc").prop('checked', true);



        }

        else if ($(this).prop("checked") == false) {

            $("#SGH").hide();
            $("#brSGH").remove();
            $("input:radio[name='SGH']").each(function(i) {
                this.checked = false;
            });
            $("input:radio[name$='SGH']").attr('disabled', true)

            $(".CardSGH input").each(function (i) {

                $(this).prop('checked', false);


            });


        }


    });


    $("#cbSimproc").click(function () {
        if ($(this).prop("checked") == true) {

            $("#Simproc").show();
            $("#Simproc").before('<br id="brSim"/>');
            $("input:radio[name$='Simproc']").removeAttr('disabled');
            $("#rdSimAc").prop('checked', true);

        }

        else if ($(this).prop("checked") == false) {
            $("#txbDtAdmissao1").val("");
            $("#Simproc").hide();
            $("#brSim").last().remove();
            $("input:radio[name$='Simproc']").attr('disabled', true)
            $("input:radio[name='Simproc']").each(function (i) {
                this.checked = false;
            });
            $("#txbNumCodUnid").val("");
            $("#txbCPF").val("");
            $("#txbRG").val("");
            $("#txbDtAdmissao1").val("");

        }


    });


 


    $("#cbMateriais").click(function () {
        if ($(this).prop("checked") == true) {

            $("#Materiais").show();
            $("#lbCentroCustoAntigo").hide();
            $("#txbCentroCustoAntigo").hide();
            $("#Materiais").before('<br id="brMat"/>');
            $("input:radio[name$='Materiais']").removeAttr('disabled');
            $("#rdMatAc").prop('checked', true);
            $("#rdbMatDia").prop('checked', true);

        }

        else if ($(this).prop("checked") == false) {

            $("#Materiais").hide();
            $("#brMat").last().remove();
            $("input:radio[name$='Materiais']").attr('disabled', true)
            $("input:radio[name='Materiais']").each(function (i) {
                this.checked = false;
            });
            $("input:radio[name='Materiais2']").each(function (i) {
                this.checked = false;
            });
            $("#txbCentroCusto").val("");

        }


    });

    $("#cbPainelBordo").click(function () {
        if ($(this).prop("checked") == true) {

            $("#PainelBordo").show();
            $("#PainelBordo").before('<br id="brPB"/>');
            $("input:radio[name$='PainelBordo']").removeAttr('disabled');
            $("#rdPBAc").prop('checked', true);

        }

        else if ($(this).prop("checked") == false) {

            $("#PainelBordo").hide();
            $("#brPB").last().remove();
            $("input:radio[name$='PainelBordo']").attr('disabled', true)
            $("input:radio[name='PainelBordo']").each(function (i) {
                this.checked = false;
            });


        }


    });


    $("#cbSistemaIsolamento").click(function () {
        if ($(this).prop("checked") == true) {

            $("#SistemaIsolamento").show();
            $("#SistemaIsolamento").before('<br id="brSI"/>');
            $("input:radio[name$='SistemaIsolamento']").removeAttr('disabled');
            $("#rdSIAc").prop('checked', true);

        }

        else if ($(this).prop("checked") == false) {

            $("#SistemaIsolamento").hide();
            $("#brSI").last().remove();
            $("input:radio[name$='SistemaIsolamento']").attr('disabled', true)
            $("input:radio[name='SistemaIsolamento']").each(function (i) {
                this.checked = false;
            });



        }

    });
    if (!$('#brComp').length) {

        $("#Complemento").before('<br id="brComp"/>');
    }
    $("#rdMatAt").change(
        function () {

            if ($(this).is(':checked')) {

                $("#lbCentroCustoAntigo").show();
                $("#txbCentroCustoAntigo").show();
            }

        });
    $("#rdMatAc").change(
        function () {

            if ($(this).is(':checked')) {

                $("#lbCentroCustoAntigo").hide();
                $("#txbCentroCustoAntigo").hide();
            }

        });
    $("#rdOSAt").change(
        function () {

            if ($(this).is(':checked')) {

                $("#lbOSCentroCustoAntigo").show();
                $("#txbOSCentroCustoAntigo").show();
            }

        });
    $("#rdOSAc").change(
        function () {

            if ($(this).is(':checked')) {

                $("#lbOSCentroCustoAntigo").hide();
                $("#txbOSCentroCustoAntigo").hide();
            }

        });
    $("#rdMatBl").change(
        function () {

            if ($(this).is(':checked')) {

                $("#lbCentroCustoAntigo").hide();
                $("#txbCentroCustoAntigo").hide();
            }

        });
    $("#rdOSBl").change(
        function () {

            if ($(this).is(':checked')) {

                $("#lbOSCentroCustoAntigo").hide();
                $("#txbOSCentroCustoAntigo").hide();
            }

        });

});


        /*  $('#demo-date-format1').datepicker({
        format: 'dd/mm/yyyy',
        language: 'pt-BR'
        });
        $('#demo-date-format').datepicker({
        format: 'dd/mm/yyyy',
        language: 'pt-BR'
        });
 
 
 */
