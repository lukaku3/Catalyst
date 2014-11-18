package Moose::Exception::CannotAutoDereferenceTypeConstraint;
$Moose::Exception::CannotAutoDereferenceTypeConstraint::VERSION = '2.1402';
use Moose;
extends 'Moose::Exception';
with 'Moose::Exception::Role::Attribute', 'Moose::Exception::Role::Instance', 'Moose::Exception::Role::TypeConstraint';

sub _build_message {
    my $self = shift;
    "Can not auto de-reference the type constraint '" . $self->type_name . "'";
}

1;