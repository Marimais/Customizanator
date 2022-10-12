<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="_3DPRT._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="mainContent" runat="server">

    <div style="vertical-align:middle; position: absolute; width: 70%; left:15%; top: 20%;  text-align: center; font-family: 'Righteous';"  align="center" >
        <div class="jumbotron" align="center" style="background-color:#CE8523; " >
            <div class="row">
                <div class="col-md-4">
                    <a href="#" style="color:black">
                    <div class="card" style="width: 25rem;height:27rem; border: 5px outset #803300;">
                      <img class="card-img-top" src="/images/printer.png">
                      <div class="card-body">
                        <p class="card-text">3D Printing</p>
                      </div>                        
                    </div>
                    </a>
                 </div>
                <div class="col-md-4">
                    <a href="#" style="color:black">
                        <div class="card" style="width: 25rem; height:27rem; border: 5px outset #803300;">
                          <img class="card-img-top" src="/images/laser.png">
                          <div class="card-body">
                            <p class="card-text">Laser engraving and cutout</p>
                          </div>
                        </div>
                    </a>
                </div>
                <div class="col-md-4">  
                    <a href="#" style="color:black">
                        <div class="card" style="width: 25rem;height:27rem; border: 5px outset #803300;">
                          <img class="card-img-top" src="/images/cnc.png">
                          <div class="card-body">
                            <p class="card-text">CNC carving</p>
                          </div>
                        </div>
                    </a>
                </div>
            </div>
        </div>
    </div>
    

</asp:Content>
