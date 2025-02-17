Return-Path: <linux-man+bounces-2475-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E4817A38EE5
	for <lists+linux-man@lfdr.de>; Mon, 17 Feb 2025 23:16:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 945201651DF
	for <lists+linux-man@lfdr.de>; Mon, 17 Feb 2025 22:16:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D1D4419F101;
	Mon, 17 Feb 2025 22:16:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dYx/9qoI"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 901BA33E7
	for <linux-man@vger.kernel.org>; Mon, 17 Feb 2025 22:16:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739830580; cv=none; b=GLdJrnWVuNigmchPbQzm6KL/oEptyn2YXBQNFd53z9+l29WOu4Yw7R3gh/7Y4kZgYrj3LLOc9X7LrcD9WcMGE1Rkn+1w1dHTksYhRn2tF+SjH4efsSPNiEJjtk/i9DUkd5h8AJ3uFtgPZDlZUW9jRpvRFqr2b/9iYRawOT5Y9I0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739830580; c=relaxed/simple;
	bh=7HnZsjMTtD+xZ2gpKxVIzakRhYVMVRSx1CGzG7KyobI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=keYkrdCLM/i56QBb4mzN9qB66M2nj2BxsayszzNEJ7QSn30fdjKhyqa7kBSMvPbyYrSlkoamqJwWH7XJZcYEQIn94EVKmY7OGTk0yOuO90meAA5PHhlSW4/vzZxbfy8yU9qkdQcrPSkWu0t1ata8b+F1waI/4VdjND8TtZRJncg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dYx/9qoI; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EF9CCC4CED1;
	Mon, 17 Feb 2025 22:16:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739830578;
	bh=7HnZsjMTtD+xZ2gpKxVIzakRhYVMVRSx1CGzG7KyobI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=dYx/9qoIcz1duw5ajKDnRC6rxpHOz2VbOsHYZE3qGc4zOxx5RgskIz3czkZwFd77r
	 Xz8HkO5Y/CqgO2DcH2s7fNlkGzWuzRnJDW5EWurZEqcLXx+HeIsjJPXedG5VmhstIz
	 pUuUYcpPUrbSMC5z1/kMMd9HegWhqqRoru2bjFGsk6ofWg5y4ubC20grS+MTUIuVQY
	 0mmhH/dsO0TDXbWH7esQekOaInFR6try6OGdB198uZ+IUURBQMUeCRRt2HIPdWdZC5
	 KtvBrLH1JXK5UcF281a75y48hpByxfBBgdwkTRNYB9maIKvKZ241vnR/JMIXRSkLtF
	 3QzQtDyGw4Ijg==
Date: Mon, 17 Feb 2025 23:16:59 +0100
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?Q?G=C3=BCnther?= Noack <gnoack3000@gmail.com>
Cc: linux-man@vger.kernel.org, branden@debian.org, 
	Jason Yundt <jason@jasonyundt.email>
Subject: Re: [PATCH v1] CONTRIBUTING.d/style/c: Add coding style for the
 example programs
Message-ID: <eawtdhfhbikpqnqygk6sisjb4drhzp6szneea2cajved6rwfkh@uf6ai7rjom4l>
References: <63bd996581c9ceedf9752852831e984c9ff00306.1739054584.git.alx@kernel.org>
 <20250217.157b556c3b77@gnoack.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="nhmwi33udchpxl42"
Content-Disposition: inline
In-Reply-To: <20250217.157b556c3b77@gnoack.org>


--nhmwi33udchpxl42
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?Q?G=C3=BCnther?= Noack <gnoack3000@gmail.com>
Cc: linux-man@vger.kernel.org, branden@debian.org, 
	Jason Yundt <jason@jasonyundt.email>
Subject: Re: [PATCH v1] CONTRIBUTING.d/style/c: Add coding style for the
 example programs
References: <63bd996581c9ceedf9752852831e984c9ff00306.1739054584.git.alx@kernel.org>
 <20250217.157b556c3b77@gnoack.org>
MIME-Version: 1.0
In-Reply-To: <20250217.157b556c3b77@gnoack.org>

On Mon, Feb 17, 2025 at 09:24:11PM +0100, G=C3=BCnther Noack wrote:
> Hi!

Hi!

> > +Name
> > +       style/c - C coding style
>=20
> "...for code examples in man pages"?

I didn't specify, because it also applies to programs written in commit
messages (for example to prove that a patch is correct).  It applies to
every C program that I have to look at as maintainer of this project
(and actually, of any project that I comaintain too).

> > +
> > +Description
> > +    Indentation
> > +	Use 4 spaces.  Ideally, tabs would be preferred; however, they
> > +	cause 5 spaces in manual pages, which is weird, so we use 4
> > +	spaces.
> > +
> > +		if (foo)
> > +		    bar();
> > +
> > +	Indent preprocessor directives after the hash by 1 space.
> > +
> > +		#ifndef  FOO
> > +		# define FOO
> > +		#endif
> > +
> > +	'case' is not indented within a 'switch'.
> > +
> > +		switch (x) {
> > +		case 1:
> > +		    foo();
> > +		    break;
> > +		default:
> > +		    break;
> > +		}
> > +
> > +    Line length
> > +	Lines should not be longer than 80 columns.
>=20
> I assume that this is referring to a column limit on the fully
> rendered man page, including surrounding indentation?

It applies at several levels:

-  The source code cannot go past column 80.
-  The rendered page cannot go past column 80.

80 is a hard limit in every way possible.

> > +     Except that if they
> > +	contain string literals, they can be longer; don't break
> > +	user-visible string literals.
> > +
> > +	When breaking a function prototype, start the continuation line
> > +	with 4 spaces.
>=20
> When we break parameter lists in function prototypes, do we need to
> break them in function definitions the same?

Yes.  With the only difference that the return type goes in a line of
its own in the definition, but goes in the same line in the declaration.

>  I'm asking because it
> might make the indentation confusing when it's next to a function body
> with the same indentation.  For instance:
>=20
> void foobar(char *bananas, int oranges, float pineapples,
>     int cucumbers) {

The opening brace goes in a line of its own.  It should be:



	void foobar(char *bananas, int oranges, float pineapples,
	    int cucumbers);

	void
	foobar(char *bananas, int oranges, float pineapples,
	    int cucumbers)
	{
	}


>     int gherkins;
>     int potatoes;
>=20
>     /* actual code starts here */
> }
>=20
> Now the last parameter and the local variables have the same
> indentation and can get confused more easily.

The rule for braces is K&R, which places the opening brace of a function
in a line of its own (unlike most other braces).

When a conditional is split across several lines, I also override K&R by
moving the brace to an empty line to avoid precisely that:

                if (foooooooooooooooooooooooooo
                 || baaaaaaaaaaaaaaaaaaaaaaaaaar)
                {
                    baz();
                }

> > +
> > +	When breaking a function call, align at the opening parenthesis.
> > +
> > +    Braces and spaces
> > +	Use K&R style for braces.  But if the controlling expression of
> > +	an if/for/while is broken, the opening brace goes on a line of
> > +	its own.
> > +
> > +		if (foo)
> > +		    bar();
> > +
> > +		if (foooooooooooooooooooooooooo
> > +		 || baaaaaaaaaaaaaaaaaaaaaaaaaar)
> > +		{
> > +		    baz();
> > +		}
> > +
> > +	Treat sizeof() and similar operators as functions, not keywords.
> > +	Use a space after keywords, but not after functions.
> > +
> > +	Use a space to separate binary and ternary operators (except
> > +	`.` and `->`), but not to separate unary operators.
> > +
> > +	Use a space between a cast and the expression it converts.
> > +
> > +    Naming
> > +	Use short names.  Long names should be an exception, and
> > +	indicate that something probably isn't well designed.
> > +
> > +    Functions
> > +	Functions should be short and sweet.
> > +
> > +	All functions should have prototypes.
>=20
> Like this?
>=20
> int foobar(int a, int b);
>=20
> int foobar(int a, int b) {
>     return a + b;
> }
>=20
> I don't understand what this duplication would be good for.
> Or I am misunderstanding what you meant here. :)

The definitions go all after main().  The prototypes go all before
main().  The benefit is that you can get an overview of what is defined
without having to look at the implementation.


Have a lovely night!
Alex

--=20
<https://www.alejandro-colomar.es/>

--nhmwi33udchpxl42
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmeztVAACgkQ64mZXMKQ
wql0dw//URPsVEgbUEDOUwMl7yqru11BW2hMB+BF7CUbt9fqWVCFOGu699nKhTLu
mseh4yLLxst8euy78qSYtkazRp06RbYLh5BID+XN6ENbYOqxd+TWLz2Y6hLoMqNB
bwB9A8BxV0HFVcsGHogoCexs2BEy0aM4dHsNBeSwpvJL8Jmw9f/BmVohnGF7Hnl/
Nb1HNPJkNUw7aqWu8W+OIzfFoutraScTBhAUKaeTtCe6Hhsx7qfAS3kAdPTK7bpf
6StzAn+nT0xWgmHuL22cILza+bYAT1vAM/o9nYzRByIMhpPGhpmzNDs05H3/CHY+
BKDXMcfx6C2SVCQ93zymh1FQ9TR/41QJUlu0WCxAosNsMabaGSLefcsyyLgn1gfR
6zbsFP+W0ni1C698boYYXOd+9Fm3IzjQ0Q8VTgOgMhUgbQGP4WOYd+WJ9ZqiAd0l
r2rw3uiX8B34z+05V0kryY0oc6s793+5yS/t2qOp7riSnxZs5j7RxPfopIu10MOL
mMC+6mZtuQtDQoJFSoGONn3wyCJHgAziUI6IJBFINChZrFnreZNTnxNhwV1jnAtw
OhdhFmwYCH7+1ZEkyp1nuKLNIbGJupkf7F60eT+rprs0NErrEZnPnKFWfYfKM6Ep
ecPRpJw4UjP5WxERR2mvF4c23ocCtNRasqO5JnwF4yuSqgqeOjo=
=+oST
-----END PGP SIGNATURE-----

--nhmwi33udchpxl42--

