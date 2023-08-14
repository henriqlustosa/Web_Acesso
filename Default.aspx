<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default"  contentType="text/html; charset=UTF-8"   %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Sistemas - Informática</title>
    <link href="estilo.css" rel="stylesheet" type="text/css" />
    <link href="css/jquery-ui.css" rel="stylesheet" type="text/css" />

    <script src="js/jquery-3.2.0.js" type="text/javascript"></script>

    <script src="js/jquery.maskedinput.js" type="text/javascript"></script>

    <script src="js/jquery-ui.js" type="text/javascript"></script>

    <script src="js/jquery.validate.js" type="text/javascript"></script>
    <script src="./javascript/javascript.js" type="text/javascript"></script>

    <style type="text/css">
        .style1
        {
            text-align: center;
            background-color: #999999;
        }
        .auto-style3
        {
            width: 33px;
        }
        .auto-style4
        {
            width: 175px;
        }
        .auto-style5
        {
            width: 49px;
        }
        .auto-style6
        {
            width: 14px;
        }
        .auto-style7
        {
            width: 200px;
            height: 34px;
        }
        .auto-style8
        {
            width: 208px;
            height: 34px;
        }
        .auto-style9
        {
            width: 29px;
        }
        .auto-style13
        {
            height: 13px;
        }
        .auto-style14
        {
            height: 8px;
        }
        .auto-style15
        {
            height: 20px;
        }
        .auto-style17
        {
            width: 236px;
        }
        .auto-style18
        {
            width: 203px;
            height: 11px;
        }
        .auto-style19
        {
            width: 266px;
        }
    </style>
    <style type="text/css">
        .errors
        {
            color: Red;
        }
        @media print
        {
            .btn, .btn
            {
                display: none !important;
            }
            #header, #header
            {
                display: none !important;
            }
        }
        .auto-style25
        {
            height: 34px;
            width: 80px;
        }
        .auto-style28
        {
            width: 247px;
            height: 11px;
        }
        .auto-style29
        {
            height: 15px;
        }
        .auto-style30
        {
            height: 11px;
        }
        .auto-style31
        {
            width: 222px;
        }
        .auto-style32
        {
            width: 269px;
        }
        .auto-style33
        {
            height: 10px;
        }
        .auto-style34
        {
            width: 350px;
        }
        .auto-style35
        {
            width: 99px;
        }
    </style>

  

</head>
<body id="myFirstContextMenu"" >
    <p>
        <br />
    </p>
    <form id="form1" runat="server">
    <div id="teste" align="center">
        <table width="715">
            <tr>
                <td style="border-style: none; text-align: center; width: 800px;">
                    <asp:Image ID="logo" runat="server" DescriptionUrl="~/image/hspm.jpg" ImageAlign="Left"
                        ImageUrl="~/image/hspm.jpg" Width="110px" Height="43px" 
                        style="margin-top: 18px" />
                    <h3>
                        <asp:Image ID="prefeitura" runat="server" DescriptionUrl="~/image/logo_prefeitura.png"
                            ImageAlign="Right" ImageUrl="~/image/logo_prefeitura.png" Width="90px" 
                            Height="60px" />
                        HOSPITAL DO SERVIDOR PÚBLICO MUNICIPAL<br />
                        Solicitação de Acesso à Rede e Sistemas HSPM</h3>
                </td>
            </tr>
        </table>
        <table width="715">
            <tr>
               
                <td style="border: hidden" class="auto-style25">
                </td>
                <td style="border: 2px none black; text-align: left;" class="auto-style7">
                    Computador&nbsp; nº:<asp:TextBox ID="txbCac" runat="server" Width="100px" required></asp:TextBox>
                </td>
                <td style="border: hidden" class="auto-style25">
                </td>
            </tr>
        </table>
        &nbsp;&nbsp;<br />
        <table style="width: 715px" class="table">
            <tr>
                <td colspan="6" style=" background-color: #C0C0C0">
                    DADOS DO FUNCIONÁRIO:
                </td>
            </tr>
            <tr>
                <td style="text-align: left" class="auto-style35">
                    Nome:
                </td>
                <td colspan = "5" style="text-align: left" class="auto-style34">
                    <asp:TextBox ID="txbNome" name="Nome" runat="server" Width="596px" Style="margin-left: 0px"
                        required></asp:TextBox>
                </td>
               
            </tr>
              <tr>
                <td style="text-align: left" >
                    RF Antigo:
                </td>
                <td style="text-align: left" >
                    <asp:TextBox ID="tbRfAntigo" runat="server" Width="122px" required></asp:TextBox>
                </td>
                <td style="text-align: left">
                    RF Novo:
                </td>
                <td style="text-align: left">
                    <asp:TextBox ID="txbRfNovo" runat="server" Width="151px" required></asp:TextBox>
                </td>
                   <td style="text-align: left">
                    Login:
                </td>
                  <td style="text-align: left">
                    <asp:TextBox ID="txbLogin" runat="server" Width="152px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="text-align: left" class="auto-style35">
                    Cargo:
                </td>
                <td colspan = "3" style="text-align: left" class="auto-style34">
                    <asp:TextBox ID="txbCargo" runat="server" Width="360px" required></asp:TextBox>
                </td>
                <td style="text-align: left">
                    Lotação:
                </td>
                <td colspan = "3" style="text-align: left">
                    <asp:TextBox ID="txbLotacao" runat="server" Width="151px" required></asp:TextBox>
                </td>
            </tr>
          
        </table>
        &nbsp;&nbsp;<br />
        <table style="width: 715px" class="table">
            <tr>
                <td colspan="6" style=" background-color: #C0C0C0">
                    SOLICITAÇÃO DE SISTEMAS:
                </td>
            </tr>
            <tr>
                <td style="font-size: small;" class="auto-style9">
                </td>
                <td style="font-size: small;" class="auto-style4">
                </td>
                <td style="font-size: small;" class="auto-style3">
                    Acesso
                </td>
                <td style="font-size: small;" class="auto-style6">
                    Bloqueio
                </td>
                <td style="font-size: small;" class="auto-style5">
                    Atualização
                </td>
                <td style="font-size: small; text-align: left;" class="auto-style5">
                    Observação:
                </td>
            </tr>
            <tr>
                <td style="font-size: small" class="auto-style33">
                  
                    <input id='cbRedeCorporativa' name='Solicitacao' type='checkbox' value='1' />
                </td>
                <td style="font-size: small; text-align: left;" class="auto-style33">
                    Rede Corporativa
                </td>
                <td style="font-size: small" class="auto-style33">
                    <asp:RadioButton ID="rbRdAc" runat="server" GroupName="RedeCorporativa" />
                </td>
                <td style="font-size: small" class="auto-style33">
                    <asp:RadioButton ID="rbRdBl" runat="server" GroupName="RedeCorporativa" />
                </td>
                <td style="font-size: small" class="auto-style33">
                    <asp:RadioButton ID="rbRdAt" runat="server" GroupName="RedeCorporativa" />
                </td>
                <td rowspan="10" style="font-size: small">
                    <asp:TextBox ID="txbObserv" runat="server" Height="220px" Width="315px" TextMode="MultiLine"
                        Style="margin-top: 0px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="font-size: small" class="auto-style33">
                   
                    <input id='cbSGH' name='Solicitacao' type='checkbox' value='1' />
                </td>
                <td style="font-size: small; text-align: left;" class="auto-style33">
                    SGH
                </td>
                <td style="font-size: small" class="auto-style33">
                    <asp:RadioButton ID="rbSGHAc" runat="server" GroupName="SGH" />
                </td>
                <td style="font-size: small" class="auto-style33">
                    <asp:RadioButton ID="rbSGHBl" runat="server" GroupName="SGH" />
                </td>
                <td style="font-size: small" class="auto-style33">
                    <asp:RadioButton ID="rbSGHAt" runat="server" GroupName="SGH" />
                </td>
            </tr>
            <tr>
                <td style="font-size: small" class="auto-style33">
                  
                       <input id='cbSimproc' name='Solicitacao' type='checkbox' value='1' />
                    
                </td>
                <td style="font-size: small; text-align: left;" class="auto-style33">
                    Simproc
                </td>
                <td style="font-size: small" class="auto-style33">
                    <asp:RadioButton ID="rdSimAc" runat="server" GroupName="Simproc" />
                </td>
                <td>
                    <asp:RadioButton ID="rdSimBl" runat="server" GroupName="Simproc" Style="font-size: small"
                        class="auto-style33" />
                </td>
                <td style="font-size: small" class="auto-style33">
                    <asp:RadioButton ID="rdSimAt" runat="server" GroupName="Simproc" />
                </td>
            </tr>
        
            <tr>
                <td style="font-size: small" class="auto-style33">
                   
                       <input id='cbMateriais' name='Solicitacao' type='checkbox' value='1' />
                </td>
                <td style="font-size: small; text-align: left;" class="auto-style33">
                    Materiais
                </td>
                <td style="font-size: small" class="auto-style33">
                    <asp:RadioButton ID="rdMatAc" runat="server" GroupName="Materiais" />
                </td>
                <td style="font-size: small" class="auto-style33">
                    <asp:RadioButton ID="rdMatBl" runat="server" GroupName="Materiais" />
                </td>
                <td style="font-size: small" class="auto-style33">
                    <asp:RadioButton ID="rdMatAt" runat="server" GroupName="Materiais" />
                </td>
            </tr>
             <tr>
                <td style="font-size: small" class="auto-style33">
                   
                       <input id='cbOS' name='Solicitacao'  type='checkbox' value='1' />
                </td>
                <td style="font-size: small; text-align: left;" class="auto-style33">
                    OS-Manutenção
                </td>
                <td style="font-size: small" class="auto-style33">
                    <asp:RadioButton ID="rdOSAc" runat="server" GroupName="OS" />
                </td>
                <td style="font-size: small" class="auto-style33">
                    <asp:RadioButton ID="rdOSBl" runat="server" GroupName="OS" />
                </td>
                <td style="font-size: small" class="auto-style33">
                    <asp:RadioButton ID="rdOSAt" runat="server" GroupName="OS" />
                </td>
            </tr>
            <tr>
                <td style="font-size: small" class="auto-style33">
                 
                       <input id='cbPainelBordo' name='Solicitacao' type='checkbox' value='1' />
                </td>
                <td style="font-size: small; text-align: left;" class="auto-style33">
                    Painel de Bordo
                </td>
                <td style="font-size: small" class="auto-style33">
                    <asp:RadioButton ID="rdPBAc" runat="server" GroupName="PainelBordo" />
                </td>
                <td style="font-size: small" class="auto-style33">
                    <asp:RadioButton ID="rdPBBl" runat="server" GroupName="PainelBordo" />
                </td>
                <td style="font-size: small" class="auto-style33">
                    <asp:RadioButton ID="rdPBAt" runat="server" GroupName="PainelBordo" />
                </td>
            </tr>
            <tr>
                <td style="font-size: small" class="auto-style33">
                    
                       <input id='cbSistemaIsolamento' name='Solicitacao' type='checkbox' value='1' />
                </td>
                <td style="font-size: small; text-align: left;" class="auto-style33">
                    Sistema de Isolamento
                </td>
                <td style="font-size: small" class="auto-style33">
                    <asp:RadioButton ID="rdSIAc" runat="server" GroupName="SistemaIsolamento" />
                </td>
                <td style="font-size: small" class="auto-style33">
                    <asp:RadioButton ID="rdSIBl" runat="server" GroupName="SistemaIsolamento" />
                </td>
                <td style="font-size: small" class="auto-style33">
                    <asp:RadioButton ID="rdSIAt" runat="server" GroupName="SistemaIsolamento" />
                </td>
            </tr>
            <tr>
                <td style="font-size: small" class="auto-style33">
                   
                       <input id='cbSei' name='Solicitacao' type='checkbox' value='1' />
                </td>
                <td style="font-size: small; text-align: left;" class="auto-style33">
                    SEI
                </td>
                <td style="font-size: small" class="auto-style33">
                    <asp:RadioButton ID="rdSeiAc" runat="server" GroupName="SEI" />
                </td>
                <td style="font-size: small" class="auto-style33">
                    <asp:RadioButton ID="rdSeiBl" runat="server" GroupName="SEI" />
                </td>
                <td style="font-size: small" class="auto-style33">
                    <asp:RadioButton ID="rdSeiAt" runat="server" GroupName="SEI" />
                </td>
            </tr>
            <tr>
                <td style="font-size: small" class="auto-style33">
                   
                       <input id='cbCompras' name='Solicitacao' type='checkbox' value='1' />
                </td>
                <td style="font-size: small; text-align: left;" class="auto-style33">
                    Compras
                </td>
                <td style="font-size: small" class="auto-style33">
                    <asp:RadioButton ID="rdCompAc" runat="server" GroupName="Compras" />
                </td>
                <td style="font-size: small" class="auto-style33">
                    <asp:RadioButton ID="rdCompBl" runat="server" GroupName="Compras" />
                </td>
                <td style="font-size: small" class="auto-style33">
                    <asp:RadioButton ID="rdCompAt" runat="server" GroupName="Compras" />
                </td>
            </tr>
        </table>
        <table width="715" id="Servicos" class="table">
            <tr>
                <td colspan="3" style="text-align: center; background-color: #C0C0C0">
                    SERVIÇOS
                </td>
            </tr>
            <tr>
                <td style="text-align: left; vertical-align: top" class="auto-style31" rowspan="3">
                    Rede Corporativa
                </td>
                <td style="text-align: left" class="auto-style32">
                    <input id='cbRdEmail' name='CardRede' type='checkbox' value='1' /><asp:Label ID="Label1"
                        runat="server" Text="E-mail Corporativo"></asp:Label>
                </td>
                <td rowspan="2">
                </td>
            </tr>
            <tr>
                <td style="text-align: left" class="auto-style32">
                    <input id='cbCx' name='CardRede' type='checkbox' value='1' /><asp:Label ID="Label2"
                        runat="server" Text="Caixa Departamental"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="text-align: left" class="auto-style32">
                    <input id='cbPastaRede' name='CardRede' type='checkbox' value='1' /><asp:Label ID="Label3"
                        runat="server" Text="Pasta de Rede (Especificar):"></asp:Label>
                </td>
                <td style="vertical-align: bottom; text-align: left">
                    <asp:TextBox ID="txbRedeCorp" runat="server" Width="325px" Height="22px"></asp:TextBox>
                    <span id="errNm2"></span>
                </td>
            </tr>
        </table>
        <table width="715" id="SGH" class="table" style="text-align: left; margin-bottom: 0px;">
            <tr>
                <td colspan="6" style="text-align: center; background-color: #C0C0C0">
                    SGH - MÓDULOS
                </td>
            </tr>
            
            <tr>
                <td class="auto-style15" style="text-align: left; font-size: small;">
                    <input id='cbSGHAmb' name='CardSGH' type='checkbox' value='1' /><asp:Label ID="lbSGHAmb"
                        runat="server" Text="Ambulatório"></asp:Label>
                </td>
                <td class="auto-style15" style="text-align: left; font-size: small;">
                  <asp:TextBox ID="txbSGHAmb" runat="server" Width="580px"></asp:TextBox>
                </td>
               
               
            </tr>
            <tr>
                <td class="auto-style13" style="text-align: left; font-size: small;">
                    <input id='cbSGHCentCir' name='CardSGH' type='checkbox' value='1' /><asp:Label ID="lbSGHCentcir"
                        runat="server" Text="Centro Cirúrgico"></asp:Label>
                </td>
                <td class="auto-style13" style="text-align: left; font-size: small;">
                    <asp:TextBox ID="txbSGHCentCir" runat="server" Width="580px" 
                        style="margin-left: 0px"></asp:TextBox>
                </td>
                
                
            </tr>
            <tr>
                <td class="auto-style14" style="text-align: left; font-size: small;">
                <input id='cbSGHInt' name='CardSGH' type='checkbox' value='1' /><asp:Label ID="lbSGHInt"
                        runat="server" Text="Internação"></asp:Label>
                    
                </td>
                <td class="auto-style14" style="text-align: left; font-size: small;">
               <asp:TextBox ID="txbSGHInt" runat="server" Width="580px"></asp:TextBox>
                   
                </td>
                
            </tr>
              <tr>
                <td class="auto-style14" style="text-align: left; font-size: small;">
                <input id='cbEmergencia' name='CardSGH' type='checkbox' value='1' /><asp:Label ID="Label10"
                        runat="server" Text="Pronto Socorro"></asp:Label>
                    
                </td>
                <td class="auto-style14" style="text-align: left; font-size: small;">
               <asp:TextBox ID="txbEmergencia" runat="server" Width="580px"></asp:TextBox>
                   
                </td>
                
            </tr>
         
        </table>
        <table width="715" id="Simproc" class="table">
            <tr>
                <td colspan="3" style="text-align: center; background-color: #C0C0C0">
                    SIMPROC
                </td>
            </tr>
            <tr>
                <td colspan="3" style="text-align: left" class="auto-style29">
                    Número de Código Unidade:<asp:TextBox ID="txbNumCodUnid" runat="server" Width="474px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style28" style="text-align: left; margin-bottom: 0px">
                    CPF:<asp:TextBox id="txbCPF" runat="server" onblur="TestarCPF(this.value,this)" ></asp:TextBox>
                </td>
                <td class="auto-style18" style="text-align: left; margin-bottom: 0px">
                    R.G:<asp:TextBox ID="txbRG" runat="server" Width="99px"></asp:TextBox>
                </td>
                <td style="text-align: left; margin-bottom: 0px" class="auto-style30">
                    Data de Admissão:<asp:TextBox ID="txbDtAdmissao1" class="txbDtAdmissao" runat="server"
                        Width="90px"></asp:TextBox>
                </td>
            </tr>
        </table>
    
        <table width="715" id="Materiais" class="table">
            <tr>
                <td colspan="5" style="text-align: center; background-color: #C0C0C0">
                    MATERIAIS
                </td>
            </tr>
            <tr>
                <td style="text-align: left">
                    Acesso Almoxarifado:
                    </td>
                 <td colspan="4" style="text-align: left">
                       <asp:CheckBox ID="chbTodosMat" Text="Todos" runat="server" />
                       <asp:CheckBox ID="chbCentral"  Text="Central" runat="server" />
                       <asp:CheckBox ID="chbGrafica" Text="Gráficca" runat="server" />
                       <asp:CheckBox ID="chbFarmacia"  Text="Farmácia" runat="server" />
                     
                    
                    
                      <asp:CheckBox ID="chbSND"  Text="SND" runat="server" />
                       <asp:CheckBox ID="chbManutencao"  Text="Manutenção" runat="server" />
                
                
                      <asp:CheckBox ID="chbMecanica" Text="Mecânica" runat="server" />
                         
                      <asp:CheckBox ID="chbEstoque" Text="Estoque Laboratório" runat="server"/>
                      </td>
                  
                </tr>
                
         
            <tr>
                <td colspan="4" style="text-align: left">
                    Número Centro de Custo(s): Novo <asp:TextBox ID="txbCentroCusto" 
                        runat="server" Width="75px" ></asp:TextBox>
             
                    <asp:Label ID="lbCentroCustoAntigo" runat="server" Text=" Antigo"></asp:Label> 
                    <asp:TextBox ID="txbCentroCustoAntigo" runat="server" Width="79px" ></asp:TextBox>
                </td>
                 <td colspan="1" style="text-align: left">
                    CPF:<asp:TextBox ID="txbCPFMat" runat="server" onblur="TestarCPF(this.value,this)" Width="110px" ></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style17" style="text-align: left">
                    Cota:
                </td>
                <td class="auto-style17" style="text-align: left">
                    <asp:RadioButton ID="rdbMatDia" runat="server" Text="Diária" GroupName="Materiais2" />
                </td>
                <td class="auto-style17" style="text-align: left">
                    <asp:RadioButton ID="rdbMatSem" runat="server" Text="Semanal" GroupName="Materiais2" />
                </td>
                <td class="auto-style17" style="text-align: left">
                    <asp:RadioButton ID="rdbMatQuinz" runat="server" Text="Quinzenal" GroupName="Materiais2" />
                </td>
                <td class="auto-style17" style="text-align: left">
                    <asp:RadioButton ID="rdbMatMen" runat="server" Text="Mensal" GroupName="Materiais2" />
                </td>
            </tr>
        </table>
        <table width="715" id="OS" class="table">
            <tr>
                <td colspan="5" style="text-align: center; background-color: #C0C0C0">
                    OS-MANUTENÇÃO
                </td>
            </tr>
            <tr>
                <td colspan="4" style="text-align: left">
                    Número Centro de Custo(s): Novo <asp:TextBox ID="txbOSCentroCusto" 
                        runat="server" Width="75px" ></asp:TextBox>
             
                    <asp:Label ID="lbOSCentroCustoAntigo" runat="server" Text=" Antigo"></asp:Label> 
                    <asp:TextBox ID="txbOSCentroCustoAntigo" runat="server" Width="75px" ></asp:TextBox>
                </td>
                 <td colspan="1" style="text-align: left">
                    CPF:<asp:TextBox ID="txbCPFOS" runat="server" Width="110px" onblur="TestarCPF(this.value,this)" ></asp:TextBox>
                </td>
            </tr>
           
        </table>
        <table width="715" id="PainelBordo" class="table">
            <tr>
                <td colspan="4" style="text-align: center; background-color: #C0C0C0">
                    PAINEL DE BORDO
                </td>
            </tr>
            <tr>
                <td class="auto-style17" style="text-align: left">
                    Módulos:
                </td>
                <td class="auto-style17" style="text-align: left">
                    <input id='cbPbAtend' name='CardPainelBordo' type='checkbox' value='1' /><asp:Label
                        ID="Label4" runat="server" Text="Atendimento"></asp:Label>
                </td>
                <td class="auto-style17" style="text-align: left">
                    <input id='cbPbPesq' name='CardPainelBordo' type='checkbox' value='1' /><asp:Label
                        ID="Label5" runat="server" Text="Pesquisa"></asp:Label>
                </td>
                <td class="auto-style17" style="text-align: left">
                    <input id='cbPbRelat' name='CardPainelBordo' type='checkbox' value='1' /><asp:Label
                        ID="Label6" runat="server" Text="Mailling"></asp:Label>
                </td>
            </tr>
          
        </table>
        <table width="715" id="SistemaIsolamento" class="table">
            <tr>
                <td colspan="5" style="text-align: center; background-color: #C0C0C0">
                    SISTEMA DE ISOLAMENTO
                </td>
            </tr>
            <tr>
                <td class="auto-style17" style="text-align: left">
                    Módulos:
                </td>
                <td class="auto-style17" style="text-align: left">
                    <input id='cbSiLab' name='CardSistemaIsolamento' type='checkbox' value='1' /><asp:Label
                        ID="Label7" runat="server" Text="Laboratório"></asp:Label>
                </td>
                <td class="auto-style17" style="text-align: left">
                    <input id='cbSiInt' name='CardSistemaIsolamento' type='checkbox' value='1' /><asp:Label
                        ID="Label8" runat="server" Text="Internação"></asp:Label>
                </td>
                <td class="auto-style17" style="text-align: left">
                    <input id='cbSiCCIH' name='CardSistemaIsolamento' type='checkbox' value='1' /><asp:Label
                        ID="Label9" runat="server" Text="CCIH"></asp:Label>
                </td>
                   <td class="auto-style17" style="text-align: left">
                    <input id='cbRelatorio' name='CardSistemaIsolamento' type='checkbox' value='1' /><asp:Label
                        ID="Label30" runat="server" Text="Relatórios"></asp:Label>
                </td>
            </tr>
        </table>
        <table width="715" id="Sei" class="table">
            <tr>
                <td colspan="3" style="text-align: center; background-color: #C0C0C0">
                    SEI
                </td>
            </tr>
            <tr>
                <td style="text-align: left">
                    Sigla da(s) Unidade(S):
                </td>
                <td>
                    <asp:TextBox ID="txbUnidade" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="txbUnidade2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td>
                    <asp:TextBox ID="txbUnidade3" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="txbUnidade4" runat="server"></asp:TextBox>
                </td>
            </tr>
        </table>
         <table width="715" id="Compras" class="table">
            <tr>
                <td colspan="3" style="text-align: center; background-color: #C0C0C0">
                    COMPRAS
                </td>
            </tr>
            <tr>
                <td style="text-align: left">
                    CPF: <asp:TextBox ID="txbCPFCompras" runat="server" onblur="TestarCPF(this.value,this)" Width="200px" Style="margin-bottom: 0px"></asp:TextBox>
                </td>
            
            </tr>
        </table>
        <table width="715" class="table" id="Complemento">
            <tr>
                <td class="style1" colspan="4">
                    COMPLEMENTO
                </td>
            </tr>
            <tr>
                <td style="text-align: left; vertical-align: top; padding: 23px 0px 0px 20px" class="auto-style19">
                    Ramal para Contato:<asp:TextBox ID="txbContato" class="teste" runat="server" Width="98px"  required></asp:TextBox>
                </td>
                <td style="text-align: left; vertical-align: top; padding: 23px 0px 0px 20px" >
                    Data:<asp:TextBox ID="datepicker1" class="datepicker" runat="server" Width="95px" required></asp:TextBox>
                </td>
                <td align="center">
                    <br />
                    <br />
                    <hr style="text-align: center; width: 213px;" />
                    Carimbo e Assinatura da Chefia
                </td>
            </tr>
        </table>
        <br />
        <asp:Button ID="btnImprimir" class="btn" runat="server" Text="Imprimir" OnClientClick="ValidatePage()" />
    </div>
    <br />
    </form>
</body>
</html>
