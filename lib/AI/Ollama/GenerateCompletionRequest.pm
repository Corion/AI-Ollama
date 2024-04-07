package AI::Ollama::GenerateCompletionRequest 0.03;
# DO NOT EDIT! This is an autogenerated file.
use 5.020;
use Moo 2;
use experimental 'signatures';
use Types::Standard qw(Str Bool Num Int Object ArrayRef);
use MooX::TypeTiny;

=head1 NAME

AI::Ollama::GenerateCompletionRequest -

=head1 SYNOPSIS

  my $obj = AI::Ollama::GenerateCompletionRequest->new();
  ...

=cut

sub as_hash( $self ) {
    return { $self->%* }
}

=head1 PROPERTIES

=head2 C<< context >>

The context parameter returned from a previous request to [generateCompletion], this can be used to keep a short conversational memory.

=cut

has 'context' => (
    is       => 'ro',
    isa      => ArrayRef[Int],
);

=head2 C<< format >>

The format to return a response in. Currently the only accepted value is json.

Enable JSON mode by setting the format parameter to json. This will structure the response as valid JSON.

Note: it's important to instruct the model to use JSON in the prompt. Otherwise, the model may generate large amounts whitespace.

=cut

has 'format' => (
    is       => 'ro',
    isa      => Str,
);

=head2 C<< images >>

(optional) a list of Base64-encoded images to include in the message (for multimodal models such as llava)

=cut

has 'images' => (
    is       => 'ro',
    isa      => ArrayRef[Str],
);

=head2 C<< keep_alive >>

How long (in minutes) to keep the model loaded in memory.

- If set to a positive duration (e.g. 20), the model will stay loaded for the provided duration.
- If set to a negative duration (e.g. -1), the model will stay loaded indefinitely.
- If set to 0, the model will be unloaded immediately once finished.
- If not set, the model will stay loaded for 5 minutes by default

=cut

has 'keep_alive' => (
    is       => 'ro',
    isa      => Int,
);

=head2 C<< model >>

The model name.

Model names follow a `model:tag` format. Some examples are `orca-mini:3b-q4_1` and `llama2:70b`. The tag is optional and, if not provided, will default to `latest`. The tag is used to identify a specific version.

=cut

has 'model' => (
    is       => 'ro',
    isa      => Str,
    required => 1,
);

=head2 C<< options >>

Additional model parameters listed in the documentation for the Modelfile such as `temperature`.

=cut

has 'options' => (
    is       => 'ro',
    isa      => Object,
);

=head2 C<< prompt >>

The prompt to generate a response.

=cut

has 'prompt' => (
    is       => 'ro',
    isa      => Str,
    required => 1,
);

=head2 C<< raw >>

If `true` no formatting will be applied to the prompt and no context will be returned.

You may choose to use the `raw` parameter if you are specifying a full templated prompt in your request to the API, and are managing history yourself.

=cut

has 'raw' => (
    is       => 'ro',
);

=head2 C<< stream >>

If `false` the response will be returned as a single response object, otherwise the response will be streamed as a series of objects.

=cut

has 'stream' => (
    is       => 'ro',
);

=head2 C<< system >>

The system prompt to (overrides what is defined in the Modelfile).

=cut

has 'system' => (
    is       => 'ro',
    isa      => Str,
);

=head2 C<< template >>

The full prompt or prompt template (overrides what is defined in the Modelfile).

=cut

has 'template' => (
    is       => 'ro',
    isa      => Str,
);


1;
