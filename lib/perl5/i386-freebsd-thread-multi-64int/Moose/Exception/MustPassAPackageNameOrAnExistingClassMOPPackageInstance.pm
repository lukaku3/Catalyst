package Moose::Exception::MustPassAPackageNameOrAnExistingClassMOPPackageInstance;
$Moose::Exception::MustPassAPackageNameOrAnExistingClassMOPPackageInstance::VERSION = '2.1402';
use Moose;
extends 'Moose::Exception';
with 'Moose::Exception::Role::ParamsHash';

has 'class' => (
    is       => 'ro',
    isa      => 'Any',
    required => 1
);

sub _build_message {
    "You must pass a package name or an existing Class::MOP::Package instance";
}

1;
