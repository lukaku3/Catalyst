package MooseX::MethodAttributes::Role::Meta::Method;
{
  $MooseX::MethodAttributes::Role::Meta::Method::VERSION = '0.29';
}
BEGIN {
  $MooseX::MethodAttributes::Role::Meta::Method::AUTHORITY = 'cpan:FLORA';
}
# ABSTRACT: metamethod role allowing code attribute introspection

use Moose::Role;

use namespace::autoclean;


has attributes => (
    is      => 'ro',
    lazy    => 1,
    builder => '_build_attributes',
);


sub _build_attributes {
    my ($self) = @_;
    return $self->associated_metaclass->get_method_attributes($self->_get_attributed_coderef);
}

sub _get_attributed_coderef {
    my ($self) = @_;
    return $self->body;
}

1;

__END__

=pod

=encoding UTF-8

=for :stopwords Florian Ragwitz Tomas Doran Dave Karman (t0m) Rolsky David Steinbrunner
Karen Etheridge Marcus Ramberg Peter E metamethod

=head1 NAME

MooseX::MethodAttributes::Role::Meta::Method - metamethod role allowing code attribute introspection

=head1 VERSION

version 0.29

=head1 ATTRIBUTES

=head2 attributes

Gets the list of code attributes of the method represented by this meta method.

=head1 METHODS

=head2 _build_attributes

Builds the value of the C<attributes> attribute based on the attributes
captured in the associated meta class.

=head1 AUTHORS

=over 4

=item *

Florian Ragwitz <rafl@debian.org>

=item *

Tomas Doran <bobtfish@bobtfish.net>

=back

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2009 by Florian Ragwitz.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
