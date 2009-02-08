# CHANGEBAR.PERL by Nikos Drakos <nikos@cbl.leeds.ac.uk> 4-AUG-94
# Computer Based Learning Unit, University of Leeds.
#
# Extension to LaTeX2HTML to translate commands defined in 
# the changebar.sty file (c) 1990 by David B. Johnson 
# (dbj@titan.rice.edu). It also supports some commands from
# changebars.sty by Michael Fine and 
# Johannes Braams <J.L.Braams@research.ptt.nl>
#
#
# Modifications:
#
# nd = Nikos Drakos <nikos@cbl.leeds.ac.uk>
#
# nd  4-AUG-94 - Created

package main; 

sub do_cmd_chgbarbegin {
    &do_cmd_cbstart;
}

sub do_cmd_chgbarend {
    &do_cmd_cbend;
}

&ignore_commands( <<_IGNORED_CMDS_);
chgbarwidth # {}
chgbarsep # {}
_IGNORED_CMDS_


sub do_cmd_cbstart{
    join('',"<BR>$change_begin_visible_mark<BR>\n",@_);
}


sub do_cmd_cbend{
    join('',"<BR>$change_end_visible_mark<BR>\n",@_);
}

sub do_cmd_cbdelete{
    join('',"<BR>$change_delete_visible_mark<BR>\n",@_);
}

sub do_env_changebar {
    join('',"<BR>$change_begin_visible_mark<BR>\n@_",
	    "\n<BR>$change_end_visible_mark<BR>\n");
}

1;				# This must be the last line



