package AI::Ollama::ModelsResponse 0.01;
# DO NOT EDIT! This is an autogenerated file.
use 5.020;
use Moo 2;
use experimental 'signatures';
use Types::Standard qw(Str Bool Num Int Object ArrayRef);
use MooX::TypeTiny;

sub as_hash( $self ) {
    return { $self->%* }
}

=head2 C<< models >>

List of models available locally.

=cut

has 'models' => (
    is       => 'ro',
    isa      => ArrayRef[Object],
);


1;
