<!-- RCS Identication ; $Revision$ ; $Date$ -->

<!-- begin admin_menu.us.tpl -->
    <TD BGCOLOR="[selected_color]" ALIGN="CENTER" COLSPAN="7">
	<FONT COLOR="[bg_color]"><b>List Administration Panel</b></font>
    </TD>
    </TR>
    <TR>
        [IF action=review]
    <TD BGCOLOR="[selected_color]" ALIGN="CENTER">
       <FONT size="-1" COLOR="[bg_color]"><b>Subscribers</b></FONT>
    </TD>
    [ELSE]
    <TD BGCOLOR=[light_color] ALIGN=CENTER>
       [IF is_owner]
       <A HREF="[path_cgi]/review/[list]" >
       <FONT size="-1"><b>Subscribers</b></FONT></A>
       [ENDIF]
    </TD>
    [ENDIF]

    [IF action=edit_list_request]
    <TD BGCOLOR="[selected_color]" ALIGN="CENTER">
      <A HREF="[path_cgi]/edit_list_request/[list]" >
      <FONT size="-1" COLOR="[bg_color]"><b>Edit List Config</b></FONT></A>
    </TD>
    [ELSE]
    <TD BGCOLOR="[light_color]" ALIGN="CENTER">
        <A HREF="[path_cgi]/edit_list_request/[list]" >
          <FONT size="-1"><b>Edit List Config</b></FONT></A>
    </TD>
    [ENDIF]

    [IF action=modindex]
    <TD BGCOLOR="[selected_color]" ALIGN="CENTER">
       <FONT size="-1" COLOR="[bg_color]"><b>Moderate</b></FONT>
    </TD>
    [ELSE]
       [IF is_editor]
       <TD BGCOLOR="[light_color]" ALIGN=CENTER>
         <A HREF="[path_cgi]/modindex/[list]" >
         <FONT size="-1"><b>Moderate</b></FONT></A>
       </TD>
       [ELSE]
         <TD BGCOLOR="[light_color]" ALIGN="CENTER">
           <FONT size="-1" COLOR="[bg_color]"><b>Moderate</b></FONT>
         </TD>
       [ENDIF]
    [ENDIF]

    [IF action=editfile]
    <TD BGCOLOR="[selected_color]" ALIGN="CENTER">
       <FONT size="-1" COLOR="[bg_color]"><b>Customizing</b></FONT>
    </TD>
    [ELSE]
    <TD BGCOLOR="[light_color]" ALIGN="CENTER">
       [IF is_owner]
       <A HREF="[path_cgi]/editfile/[list]" >
       <FONT size="-1"><b>Customizing</b></FONT></A>
       [ENDIF]
    </TD>
    [ENDIF]

    [IF action=reviewbouncing]
    <TD BGCOLOR="[selected_color]" ALIGN="CENTER">
       <FONT size="-1" COLOR="[bg_color]"><b>Bounces</b></FONT>
    </TD>
    [ELSE]
    <TD BGCOLOR="[light_color]" ALIGN="CENTER">
       [IF is_owner]
       <A HREF="[path_cgi]/reviewbouncing/[list]" >
       <FONT size="-1"><b>Bounces</b></FONT></A>
       [ENDIF]
    </TD>
    [ENDIF]

    <TD BGCOLOR="[light_color]" ALIGN="CENTER">
	[IF shared=none]
          [IF is_privileged_owner]
          <A HREF="[path_cgi]/d_admin/[list]/create" >
             <FONT size=-1><b>Create Shared</b></font></A>
          [ELSE]
             <FONT size=-1 COLOR="[bg_color]"><b>Create Shared</b></font>
          [ENDIF]
	[ELSIF shared=deleted]
          <A HREF="[path_cgi]/d_admin/[list]/restore" >
             <FONT size=-1><b>Restore shared</b></font></A>
	[ELSIF shared=exist]
          <A HREF="[path_cgi]/d_admin/[list]/delete" >
             <FONT size=-1><b>Delete Shared</b></font></A>
        [ELSE]
          <FONT size=1 color=red>
          [shared]
	[ENDIF]        
    </TD>

   <TD BGCOLOR="[light_color]" ALIGN="CENTER">
      [IF is_privileged_owner]                   	
        <A HREF="[path_cgi]/rename_list_request/[list]" >
        [IF list_conf->status=closed]         
          <FONT size="-1"><b>Rename/Restore</b></font>
        [ELSE]                               
          <FONT size="-1"><b>Rename/Remove</b></font>
        [ENDIF]
	</A>
      [ELSE]
	 [IF list_conf->status=closed]
	<FONT size="-1" COLOR="[bg_color]"><b>Rename/Restore</b></font>
	 [ELSE]
	<FONT size="-1" COLOR="[bg_color]"><b>Rename/Remove</b></font>
	 [ENDIF]
      [ENDIF]                 
    </TD>       
    [IF action=edit_list_request]
    </TR>
    <TR>
    <TD BGCOLOR="[selected_color]" ALIGN="CENTER">
       <A HREF="[path_cgi]/edit_list_request/[list]/description" >
       <FONT COLOR="[bg_color]" size=-1><B>List Definition</B></FONT></A>
    </TD>
    <TD BGCOLOR="[selected_color]" ALIGN="CENTER">
       <A HREF="[path_cgi]/edit_list_request/[list]/sending" >
       <FONT COLOR="[bg_color]" size=-1><B>Sending/Reception</B></FONT></A>
    </TD> 
    <TD BGCOLOR="[selected_color]" ALIGN="CENTER">
       <A HREF="[path_cgi]/edit_list_request/[list]/command" >
       <FONT COLOR="[bg_color]" size=-1><B>Privileges</B></FONT></A>
    </TD>
    <TD BGCOLOR="[selected_color]" ALIGN="CENTER">
       <A HREF="[path_cgi]/edit_list_request/[list]/archives" >
       <FONT COLOR="[bg_color]" size=-1><B>Archives</B></FONT></A>
    </TD> 
    <TD BGCOLOR="[selected_color]" ALIGN="CENTER">
       <A HREF="[path_cgi]/edit_list_request/[list]/bounces" >
       <FONT COLOR="[bg_color]" size=-1><B>Bounce Settings</B></FONT></A>
    </TD>
    
    <TD BGCOLOR="[selected_color]" ALIGN="CENTER">
       <A HREF="[path_cgi]/edit_list_request/[list]/other" >
       <FONT COLOR="[bg_color]" size=-1><B>Miscellaneous</B></FONT></A>
    </TD>
    [IF is_listmaster]
    <TD BGCOLOR="[selected_color]" ALIGN="CENTER">
       <A HREF="[path_cgi]/edit_list_request/[list]/data_source" >
       <FONT COLOR="[bg_color]" size=-1><B>Data Source</B></FONT></A>
    </TD>                             
    [ELSE]
    <TD BGCOLOR="[selected_color]" ALIGN="CENTER">
    &nbsp;
    </TD>
    [ENDIF]
    [ENDIF] 
<!-- end menu_admin.tpl -->

