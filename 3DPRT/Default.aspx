<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="_3DPRT._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="mainContent" runat="server">

    <div style="vertical-align:middle; position: absolute; width: 106%; top: 20%; left: -16px;  text-align: center; font-family: 'Righteous';"  align="center" >
        <div class="jumbotron" align="center" style="background-color:#CE8523;" >
            <div class="row">
                <div class="col-md-4">
                    <div class="card" style="width: 18rem;" href="#">
                      <img class="card-img-top" src="/images/printer.png">
                      <div class="card-body">
                        <p class="card-text">3D Printing</p>
                      </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card" style="width: 18rem;" href="#">
                      <img class="card-img-top" src="/images/laser.png">
                      <div class="card-body">
                        <p class="card-text">Laser engraving and cutout</p>
                      </div>
                    </div>
                </div>
                <div class="col-md-4">  
                    <div class="card" style="width: 18rem;" href="#">
                      <img class="card-img-top" src="/images/cnc.png">
                      <div class="card-body">
                        <p class="card-text">CNC carving</p>
                      </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    

</asp:Content>
