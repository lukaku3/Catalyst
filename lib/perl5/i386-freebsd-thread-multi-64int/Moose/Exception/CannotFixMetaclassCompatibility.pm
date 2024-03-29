package Moose::Exception::CannotFixMetaclassCompatibility;
$Moose::Exception::CannotFixMetaclassCompatibility::VERSION = '2.1402';
use Moose;
extends 'Moose::Exception';
with 'Moose::Exception::Role::Class';

has 'superclass' => (
    is       => 'ro',
    isa      => 'Object',
    required => 1
);

has 'metaclass_type' => (
    is       => 'ro',
    isa      => 'Str',
);

sub _build_message {
    my $self = shift;
    my $class_name = $self->class_name;
    "Can't fix metaclass incompatibility for $class_name because it is not pristine.";
}

1;
