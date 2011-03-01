# DBManipulatorSybase.pm - This module contains the code specific to using a Sybase server.
#<!-- RCS Identication ; $Revision: 7016 $ --> 
#
# Sympa - SYsteme de Multi-Postage Automatique
# Copyright (c) 1997, 1998, 1999, 2000, 2001 Comite Reseau des Universites
# Copyright (c) 1997,1998, 1999 Institut Pasteur & Christophe Wolfhugel
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Softwarec
# Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.

package DBManipulatorSybase;

use strict;

use Carp;
use Log;

use DefaultDBManipulator;

our @ISA = qw(DefaultDBManipulator);

our %date_format = (
		   'read' => {
		       'Sybase' => 'datediff(second, \'01/01/1970\',%s)',
		       },
		   'write' => {
		       'Sybase' => 'dateadd(second,%s,\'01/01/1970\')',
		       }
	       );

sub build_connect_string{
    my $self = shift;
    $self->{'connect_string'} = "DBI:Sybase:database=$self->{'db_name'};server=$self->{'db_host'}";
}

## Returns an SQL clause to be inserted in a query.
## This clause will compute a substring of max length
## $param->{'substring_length'} starting from the first character equal
## to $param->{'separator'} found in the value of field $param->{'source_field'}.
sub get_substring_clause {
    my $self = shift;
    my $param = shift;
    return "substring(".$param->{'source_field'}.",charindex('".$param->{'separator'}."',".$param->{'source_field'}.")+1,".$param->{'substring_length'}.")";
}

## Returns an SQL clause to be inserted in a query.
## This clause will limit the number of records returned by the query to
## $param->{'rows_count'}. If $param->{'offset'} is provided, an offset of
## $param->{'offset'} rows is done from the first record before selecting
## the rows to return.
sub get_limit_clause {
    my $self = shift;
    my $param = shift;
    return "";
}

return 1;