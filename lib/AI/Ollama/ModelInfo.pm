package AI::Ollama::ModelInfo 0.03;
# DO NOT EDIT! This is an autogenerated file.
use 5.020;
use Moo 2;
use experimental 'signatures';
use Types::Standard qw(Str Bool Num Int Object ArrayRef);
use MooX::TypeTiny;

=head1 NAME

AI::Ollama::ModelInfo -

=head1 SYNOPSIS

  my $obj = AI::Ollama::ModelInfo->new();
  ...

=cut

sub as_hash( $self ) {
    return { $self->%* }
}

=head1 PROPERTIES

=head2 C<< license >>

The model's license.

=cut

has 'license' => (
    is       => 'ro',
    isa      => Str,
);

=head2 C<< modelfile >>

The modelfile associated with the model.

=cut

has 'modelfile' => (
    is       => 'ro',
    isa      => Str,
);

=head2 C<< parameters >>

The model parameters.

=cut

has 'parameters' => (
    is       => 'ro',
    isa      => Str,
);

=head2 C<< template >>

The prompt template for the model.

=cut

has 'template' => (
    is       => 'ro',
    isa      => Str,
);


1;
