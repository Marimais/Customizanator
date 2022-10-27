<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="_Customizanator._Default" %>

<asp:Content ID="DefaultBodyContent" ContentPlaceHolderID="mainContent" runat="server">

    <div align="center" class="default-body-content">
            
                <div>
                    <a href="Print.aspx" aria-label="3D Printing">
                    <div class="card  default-card">
                      <img class="card-img-top" alt="" src="/images/printer.png">
                      <div class="card-body">
                        <p class="card-text">3D Printing</p>
                      </div>                        
                    </div>
                    </a>
                 </div>
                <div>
                    <a href="Laser.aspx" aria-label="Laser engraving and cutout">
                        <div class="card default-card">
                          <img class="card-img-top" alt="" src="/images/laser.png">
                          <div class="card-body">
                            <p class="card-text">Laser engraving and cutout</p>
                          </div>
                        </div>
                    </a>
                </div>
                <div>  
                    <a href="CNC.aspx" aria-label="CNC carving">
                        <div class="card default-card">
                          <img class="card-img-top" alt="" src="/images/cnc.png">
                          <div class="card-body">
                            <p class="card-text">CNC carving</p>
                          </div>
                        </div>
                    </a>
                </div>
            </div>
    

</asp:Content>
