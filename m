Return-Path: <linux-man+bounces-1266-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CD189174DC
	for <lists+linux-man@lfdr.de>; Wed, 26 Jun 2024 01:43:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id EFAD31F22CF1
	for <lists+linux-man@lfdr.de>; Tue, 25 Jun 2024 23:43:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7A2D217F39B;
	Tue, 25 Jun 2024 23:43:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rvq0YDvJ"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A4925EE97
	for <linux-man@vger.kernel.org>; Tue, 25 Jun 2024 23:43:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719359006; cv=none; b=ucre2cJIiUdhm3r7zZtYnMKeLGOi4XWb6cnotNMPD5I7f/GrP1wrJY8MnW9DCYg1kd8UsstA7Pe0igFtqrpubVLdRjkEaEeCWxsiE5nrXI6mpgzytPjY4d93GGXTM8DbqPSN8pAdDZJI5nCuGgtKt5dlQ4ZxT6V/y8o/uJlK+Cg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719359006; c=relaxed/simple;
	bh=JinwWaz1PxA6SXHa6yOPwNhOjHfTB+g3G+QyhKTiWB4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jyn/FfrC2fCXuygugC/q58mSUziz+ePTEDOsCF+mDuKJxSb+rAvHeJGNmparRUPkGLZGBQACWIUpMsaN3Cvg3erNo4G5AT00th+s9u0tyc52sD8EA2b/AFKfXYhHPkL6F+VfGZw7XetdeoxMQ9JJlMMjAYltQcUCY3VJq086AQ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rvq0YDvJ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 258EAC32781;
	Tue, 25 Jun 2024 23:43:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719359005;
	bh=JinwWaz1PxA6SXHa6yOPwNhOjHfTB+g3G+QyhKTiWB4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=rvq0YDvJxaQ0Q+wmOBJub4jjQ7MNUUnp2zxfTTBaeNM1miOpGWdo8nDHW7YvCgm9j
	 DP56rLSwksLZ2hwtrpJkg6lmmlrcnT2mm/gDj9kZ3+z/nVMs90yOZQ6JyrViuXP3Yf
	 bclFss7Ezk6x1hcmEugjk27cVTNrAlYlA0vuyiyIbHDib3x2vKKkp9eThcPc5g6bfd
	 5IHQLyNqo7d5PzWWhYlKiYbP3KWyHtf8hFYGXlj6KIOl5EeXk1+1YgYGtmstIcjAH9
	 2TFMJYKfCOIlx+oqskzrVniSqJoujY9nQ/5g9cxh5Iw3PW7jBabK/+BDRBP43HIR10
	 1H/gWBRr8GMPA==
Date: Wed, 26 Jun 2024 01:43:22 +0200
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: Dash in name of a manual page
Message-ID: <q7nihycam5tqdyapcfp252r7v6ajnmp3qikfg3n547qj7iy2fw@ta3xynl3oulw>
References: <dl4olmr4xh7abmo3op44fmgdkwqu6tvm7f2txk45zjn46gpspl@rjf5dgpyyojh>
 <20240624162159.tqodklnxcqp3ixob@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="krxfvek5fzdqonto"
Content-Disposition: inline
In-Reply-To: <20240624162159.tqodklnxcqp3ixob@illithid>


--krxfvek5fzdqonto
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: Dash in name of a manual page
References: <dl4olmr4xh7abmo3op44fmgdkwqu6tvm7f2txk45zjn46gpspl@rjf5dgpyyojh>
 <20240624162159.tqodklnxcqp3ixob@illithid>
MIME-Version: 1.0
In-Reply-To: <20240624162159.tqodklnxcqp3ixob@illithid>

On Mon, Jun 24, 2024 at 11:21:59AM GMT, G. Branden Robinson wrote:
> Hi Alex,

Hi Branden,

> Sorry for my delay in responding.

Huh, I had missed your reply somehow.  :(

>=20
> At 2024-06-19T22:06:56+0200, Alejandro Colomar wrote:
> > Let's say I write the manual page for git-diff(1).
> > The file name is <man1/git-diff.1>.
> >=20
> > In TH, should I use \- or just -?
> >=20
> > 	.TH git\-diff 1 2024-06-19 git
> > 	.TH git-diff 1 2024-06-19 git
>=20
> This is a style choice.  The formatter itself doesn't care.  I don't
> have a strong prescription in this area, just some observations.
>=20
> 1.  The difference matters only on output devices that distinguish
>     hyphens from minus signs.

This includes utf8, which is my main output device.

> 2.  A problem arises from the difference usually only when someone
>     attempts to copy-and-paste text from a man page to a shell prompt or
>     text editor, and gets the "wrong" kind of "dash".

And in my head, which feels that there's something wrong, even if few
people will be affected by it.

> 3.  In general, Unix systems are case-sensitive.

And dash/hyphen sensitive.

> 4.  I doubt that there is a tradition of copy-and-pasting the man page
>     name from the rendered document header because there is _another_
>     tradition, still widely seen, of rendering the document title in
>     full caps.  This tradition came from the Bell Labs CSRC in the
>     1970s, and obviously those folks knew point #3.  (Also they
>     interacted with the system using teletypewriters, so they had no
>     "copy-and-paste" experiences.)

Since man(1) is case-insensitive, this is still meaningful:

	$ cat /usr/local/man/man1/foo-foo.1 ;
	.TH foo-foo 1 1 1
	.SH Name
	foo-foo
	\-
	foo foo

	$ man /usr/local/man/man1/foo-foo.1 \
		| head -n1 \
		| awk '{print $1}';
	foo=E2=80=90foo(1)

	$ man /usr/local/man/man1/foo-foo.1 \
		| head -n1 \
		| awk '{print $1}' \
		| xargs man -w;
	No manual entry for foo=E2=80=90foo(1)

but

	$ cat /usr/local/man/man1/bar-bar.1 ;
	.TH bar\-bar 1 1 1
	.SH Name
	bar\-bar
	\-
	bar bar

	$ man /usr/local/man/man1/bar-bar.1 \
		| head -n1 \
		| awk '{print $1}';
	bar-bar(1)

	$ man /usr/local/man/man1/bar-bar.1 \
		| head -n1 \
		| awk '{print $1}' \
		| xargs man -w;
	/usr/local/man/man1/bar-bar.1

Of course, I don't expect this to be used (or useful) often, or maybe
ever, but let's be correct.  :)

> 5.  groff 1.23 makes the foregoing capitalization behavior user-
>     configurable via a register.[1]  So you, the page author, don't know
>     whether the reader will see your document title in full caps or not.
>     If they do, copy-and-paste will be defeated anyway ("man GIT-DIFF").
>=20
> Consequently, my personal judgment would be to not bother with `\-` in
> the first argument to the `TH` macro.  But I can't say that things are
> likely to go wrong if you _do_ bother.  Odds are it simply won't suffice
> to make the document title copy-and-paste-able for some of your
> audience, and a big part of that audience will never notice either way.

I guess I'll use the escape there.

> > How about SH Name?
>=20
> I reason differently about this case.
>=20
> > 	.SH Name
> > 	git\-diff \- Show changes between commits, commit and working tree, etc
> >=20
> > 	.SH Name
> > 	git-diff \- Show changes between commits, commit and working tree, etc
>=20
> In the "Name" section of a man page, we start with a comma-separated
> list of topics, each of which is supposed to identify a component of the
> system.  In sections 1, 6, and 8 (commands), we seldom see the "list"
> aspect of this specification exercised (or rather, the list is a
> singleton).  But in sections 2 and 3, lists of function names (and
> sometimes C objects [variables]) are common.  Since these all name
> things you might type that exist somewhere on the system, as programs
> resolved by $PATH search or as symbols in object files, or as macros the
> compiler will recognize, the argument for marking them up as "literals",
> with boldface and `\-` to get hyphen-minus characters, is stronger.[2]

Okay.

> > I'm worried especially about the Name section, in case that \-
> > interferes with man-db.
>=20
> There is no need to worry when you can easily put the question to an
> empirical test.  Run lexgrog(1) on your document to see what it says.
>
> $ lexgrog ./man/roff.7.man
> ./man/roff.7.man: "roff - concepts and history of roff typesetting"
> $ lexgrog - <<EOF
> .TH git-diff 1 2024-06-24 "groff test suite"
> .SH Name
> git\-diff \- show changes between commits, commit and working tree, etc.
> EOF
> -: "git-diff - show changes between commits, commit and working tree, etc=
=2E"
>=20
> man-db seems happy to me.

So, what's the rule?  The first white-space-delimited \- (that is, the
\- forms a separate token) is the separator, right?

>=20
> Regards,
> Branden
>=20
> [0] Secret footnote: The practices I suggested above also translate well
>     to mdoc(7) practice, where the `Dt` macro defines the "document
>     title", and `Nm` calls designate "names" of topics the page
>     discusses.  I don't advocate mdoc(7) over man(7), but I also do not
>     wish to create unnecessary impedance mismatches between them.
>=20
> [1] ...which is defeated if the document shouts its title in full caps
>     in its *roff source.  But here is the configuration control.
>=20
> groff_man(7):
>      -rCT=3D1   Set the man page identifier (the first argument to .TH) in
>               full capitals in headers and footers.  This transformation
>               is off by default because it discards case distinction
>               information.
>=20
>     People who aren't accustomed to viewing man page documents with
>     "groff" or "nroff", but do use man-db, would likely put the
>     foregoing command-line option into $MANROFFOPT.  An approach that
>     works for any (groff 1.23) system regardless of man librarian is to
>     edit the "man.local" file to set the register (`.nr CT 1`).  See
>     section "Files" of groff_man(7).  (mandoc(1) doesn't respect this
>     and likely never will; its maintainer scorns configurability.)
>=20
> [2] Since `-` isn't a valid character in C identifiers, that aspect of
>     the discussion doesn't hold for that language.  But I am trying to
>     reason ecumenically, and command names in kebab-case are well known.

The pages I was considering writing are keyctl-...(1).  I want to
separate that huge page into one per subcommand, as git(1) does.

Have a lovely night!
Alex


--=20
<https://www.alejandro-colomar.es/>

--krxfvek5fzdqonto
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmZ7VhUACgkQnowa+77/
2zKCPhAApTLRwlMing2YnUjvjdQ9INqiygGp/JcBNoemufAacYaE1mfQdpYZNecF
/TDn5/vqIaWy02GrYkvjjDAabhKIwyQdHNL8BWd/bXuhXE7hoJriZ2VC+44B6ZFy
j5WQUUKlApms6cEnZKXsBVkMpDKX8Kxapq5s3G5Hv3Vk5p0hAkMH6gyC6CIF+lNY
NLyGfCXWFm0vGQX+eLrqI21klLEOwuqXEgYlLe+ScAY7gU40Emd5CN/M4ey3dANo
FKGd1E5p6cHmpVXWC7pCViV/mgF9BXzw0ckykwcD2Z0sMtpZu+a1WrADT/pi8uXN
bIl/Qu9YuEbZPyuOIk5IugagqW6XGrd/COItaxKeN1pTv7vsCIOMrJybkH+Pw0/E
Y/6BNNd3TA5f4V6o/lrfz5k2A636gESZs5YiXpYomBEyXVuiz87kJc8tTO/k+jK9
u3bAAgw86PfIWeyhbx85ApOpKGk163MHGX4PoJip0cIT8sRXg5CkazbVef5nRKdn
lFqARK0ddnjfnomTsHjoX21a0pcbL8YAG9U4A9BL/tofs8nYLyoaYxYxQjNuJxSs
MP84SXSeAdsMFry9Hza1IKYWicj91v2QjYniasDaVBNY9J20eZ6tjvi5EWc/R90O
uDrc8Soij90KaL3yF6uvLOU7hKfP+pTlwJqvk2xo/sf+dwTlduE=
=IxzF
-----END PGP SIGNATURE-----

--krxfvek5fzdqonto--

