package Moose::Exception::CannotCreateMethodAliasLocalMethodIsPresentInClass;
$Moose::Exception::CannotCreateMethodAliasLocalMethodIsPresentInClass::VERSION = '2.1402';
use Moose;
extends 'Moose::Exception';
with 'Moose::Exception::Role::Role', 'Moose::Exception::Role::Method', 'Moose::Exception::Role::Class';

has 'aliased_method_name' => (
    is       => 'ro',
    isa      => 'Str',
    required => 1
);

sub _build_message {
    "Cannot create a method alias if a local method of the same name exists";
}

1;
