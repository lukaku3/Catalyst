package Moose::Exception::RolesListMustBeInstancesOfMooseMetaRole;
$Moose::Exception::RolesListMustBeInstancesOfMooseMetaRole::VERSION = '2.1402';
use Moose;
extends 'Moose::Exception';
with 'Moose::Exception::Role::ParamsHash';

has 'class' => (
    is       => 'ro',
    isa      => 'Str',
    required => 1
);

has 'role' => (
    is       => 'ro',
    isa      => 'Any',
    required => 1
);

sub _build_message {
    my $self = shift;
    "The list of roles must be instances of Moose::Meta::Role, not ".$self->role;
}

1;