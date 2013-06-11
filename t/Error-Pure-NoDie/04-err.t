# Pragmas.
use strict;
use warnings;

# Modules.
use English qw(-no_match_vars);
use File::Object;
use Error::Pure::NoDie qw(err);
use Test::More 'tests' => 6;
use Test::Output;

# Path to dir with T.pm. And load T.pm.
BEGIN {
	unshift @INC, File::Object->new->s;
};
use T;

# Test.
eval {
	err 'Error.';
};
is($EVAL_ERROR, "Error.\n", 'Simple message in eval.');

# Test.
eval {
	err 'Error.', 1, 2;
};
is($EVAL_ERROR, "Error.\n", '3 messages in eval.');

# Test.
eval {
	err 'Error.';
};
my $tmp = $EVAL_ERROR;
eval {
	err $tmp;
};
is($EVAL_ERROR, "Error.\n", 'More evals.');

# Test.
stdout_is(
	sub {
		err 'Error';
		return;
	},
	"Error\n",
	'Print error instead die.',
);

# Test.
stdout_is(
	sub {
		err 'Error', 1, 2;
		return;
	},
	"Error12\n",
	'Print error instead die. Version with more messages.',
);

# Test.
eval {
	T::example;
};
is($EVAL_ERROR, "Something.\n", 'Error from module.');
