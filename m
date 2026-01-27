Return-Path: <linux-man+bounces-4966-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UI1+K7HDeGmltAEAu9opvQ
	(envelope-from <linux-man+bounces-4966-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Tue, 27 Jan 2026 14:54:57 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C230952E3
	for <lists+linux-man@lfdr.de>; Tue, 27 Jan 2026 14:54:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7B5C83021E53
	for <lists+linux-man@lfdr.de>; Tue, 27 Jan 2026 13:47:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 17E8A35A92F;
	Tue, 27 Jan 2026 13:47:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="asXOfyRF"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9C603570AD
	for <linux-man@vger.kernel.org>; Tue, 27 Jan 2026 13:47:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769521663; cv=none; b=dZnjXt/c3cBwTPi+2G7QlHgSkNbsB/YTnvc/SUFx/AhsjoCGtoLF4/GX5DSeTHcfkujqMg4mf5/k3nR0MX2iW2PQPQcHgqnezhZGYpftggPKyBV2tj76mLvh9HmqoL8wL7I99NsohdUtoekSiZk1Nkv/9VAJYZQndVYBUwP+KEk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769521663; c=relaxed/simple;
	bh=Qr5W7ae78JKx66xn3K27l/eH220EL+rNxvo6v7iKGqU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=t4BayZKquBsRZ66WnzjSsXGM2ddHSVKuMewO367kIyIv5G2GHT6ka6dJXoK5rNE+3DWeNa+7J/m9WSlFlnJz+5l3xw4wQnYUrEgLPlp++7Te2Q8iXzp9GdwsgvqqeussivlV4dntX3M+3NQy0UVlrj5lsH48iPrlOZ1vINwGAjo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=asXOfyRF; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 34288C116C6;
	Tue, 27 Jan 2026 13:47:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769521663;
	bh=Qr5W7ae78JKx66xn3K27l/eH220EL+rNxvo6v7iKGqU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=asXOfyRFyS06VRtphQB2Ye8URadJW4XQZYhVpVS6TuM/pJwm3NN+d9R+ErgHaPqbX
	 oJy7Y3U6H0AXLoMeN9okcWiDplQvlCguhm6dFL0Kjkyp4SxIUCcUgEteHZ67b/WiLY
	 W2JPXiANFnBs81OD1sku6cYFKTQ2hiL3+AxOpW4DLcHc1QoiRl+3atc6Xgl/e8hObS
	 nanLuhu1/E60GP21LI3gqqVRIsNS42G6epJeUkkG0rDU1RMtjJXbfdRzOp4hjTgzGL
	 pdUaVMjWZ/6LHhRqpJIrNzFfF94wjuzAxqGiUXx0TPXKhm25PM5o7rEkEMcWaOvfe7
	 aJCzyxLTEHv5w==
Date: Tue, 27 Jan 2026 14:47:40 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org, 
	Douglas McIlroy <douglas.mcilroy@dartmouth.edu>, "G. Branden Robinson" <branden@debian.org>, 
	=?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Subject: Re: [RFC PATCH v1 0/2] New sman(1) script
Message-ID: <aXixqbsZcY-tbCJ4@devuan>
References: <cover.1769497513.git.sethmcmail@pm.me>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="zamu2aw5h5wqquwh"
Content-Disposition: inline
In-Reply-To: <cover.1769497513.git.sethmcmail@pm.me>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-4966-lists,linux-man=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[linux-man];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 0C230952E3
X-Rspamd-Action: no action


--zamu2aw5h5wqquwh
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org, 
	Douglas McIlroy <douglas.mcilroy@dartmouth.edu>, "G. Branden Robinson" <branden@debian.org>, 
	=?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Subject: Re: [RFC PATCH v1 0/2] New sman(1) script
Message-ID: <aXixqbsZcY-tbCJ4@devuan>
References: <cover.1769497513.git.sethmcmail@pm.me>
MIME-Version: 1.0
In-Reply-To: <cover.1769497513.git.sethmcmail@pm.me>

[CC +=3D Doug, Branden, =D0=BD=D0=B0=D0=B1]

Hi Seth!

On 2026-01-27T09:20:26+0000, Seth McDonald wrote:
> G'day,
>=20
> When parsing man pages, I've noticed I'm often only interested in a
> particular set of sections within the page (e.g. SYNOPSIS, HISTORY).
> And since skimming through the page to get to these sections can get
> monotonous, I wrote up a small bash script to automate the process.

Agree.  I wrote mansect(1) for the same exact reason.

> As far as I can tell, no program in src/bin/ can currently do this.  The
> closest is mansect(1), but that outputs the source code rather than the
> rendered page.

You could use mansect(1) for that, and pipe it to man(1) (or groff(1)).

	$ mansect 'STANDARDS|HISTORY' man2/chmod.2 \
	| MANWIDTH=3D64 man /dev/stdin \
	| cat;
	chmod(2)              System Calls Manual              chmod(2)

	STANDARDS
	     POSIX.1=E2=80=902024.

	HISTORY
	     chmod()
		    SVr4, POSIX.1=E2=80=901988, 4.4BSD.

	     fchmod()
		    SVr4, 4.4BSD, SUSv1, POSIX.1=E2=80=901996.

	     fchmodat()
		    POSIX.1=E2=80=902008.  Linux 2.6.16, glibc 2.4.

	     AT_SYMLINK_NOFOLLOW
		    POSIX.1=E2=80=902008, glibc 2.32, Linux 6.5.

	Linux man=E2=80=90pages (unreleased) (date)                    chmod(2)


>  So I've improved the script somewhat and written a brief
> man page for it, as included in this patch set.

That covers the main use case of mansect(1), so I think this specialized
wrapper could be useful.

> The main advantage to this script as opposed to manually awk(1)ing or
> sed(1)ing man pages is it can preserve the bold/italic formatting in a
> rendered man page.  It currently does so by using sed(1) to locate the
> section headers with regex which includes the relevant ANSI escape codes
> dictating bold and regular text.

Agree.

> I would consider this script a WIP still, and likely shouldn't yet be
> pushed without further edits.  The purpose of this patch set is to gauge
> interest in and comments on this script, moreso than to be immediately
> applied to the repo.

I'm somewhat interested.  I think I didn't write it myself back then
because I wasn't yet sure if that was the good design.  With time, I
think it makes sense to write it.

One of the question I still ask myself about it is whether it should use
find(1) or `man -w` to find the file names.  That is, should it accept
manual page names and search in the system, or should the user decide by
using find(1) or `man -w` explicitly and piping it to mansect(1)?

	find man2/ -type f | xargs mansect 'STANDARD|SHISTORY' | man /dev/stdin;
	man -w printf.3 | xargs mansect 'STANDARD|SHISTORY' | man /dev/stdin;
vs
	mansect 'STANDARD|SHISTORY' man2/ | man /dev/stdin;
	mansect 'STANDARD|SHISTORY' printf.3 | man /dev/stdin;

I still think when in doubt, it's better to keep it simple, so I use
find(1), and let users find the files with man(1) if they need, and
run a pipe.

Back then I also opted for the simplicity of allowing users to decide
the formatter with which to format the manual page, which BTW is useful
to test different ones (mandoc(1), groff(1)).  However, having a wrapper
that calls man(1) seems useful.

> As an example, the script currently re-renders the whole man page for
> each section in a for loop, rather than printing each section from the
> same rendered page, which would likely be more performant.

I honestly can't read that script.  My ability to read other people's
bash(1) scripts is quite limited.  :)

About the interface, I think I like more the interface of mansect(1),
which is

	mansect section [file ...]

I think that's ideal.  We don't need an argument like man(1)'s -s,
because that would be more easily specified as

	mansectf LIBRARY printf.3;

The .3 disambiguates without needing a separate argument.  However,
I don't think we want to do librarian work here, and think we should
entirely refrain from accepting manual page names like man(1).  I think
we should only accept file names.  It should be trivial for someone to
use

	man -w printf.3 | xargs mansectf LIBRARY;

That simplifies the parsing logic.  By having all non-trailing arguments
be mandatory, the interface is more obvious, and easier to remember.
Almost all Unix programs have such an interface, where there are fixed
arguments, and then goes a possibly-empty list of files (or file-like
entities) on which to work, and when the list is empty, the file is
/dev/stdin.

About specifying several sections, I prefer using a single argument, for
the same reasons: having just one mandatory argument with that meaning,
and then a list of files.  You can use '|' within the section argument
to specify more than one (this is documented in mansect(1)).

	man -w printf.3 | xargs mansectf 'LIBRARY|STANDARDS';

Then, about the implementation, it checks the existence of commands,
which is unnecessary: the shell will complain for us if they don't
exist.

	$ foo
	bash: foo: command not found

Keep it simple.

Then you export a few things:

+[[ $MAN_KEEP_FORMATTING ]] && export MAN_KEEP_FORMATTING=3D1
+[[ $MANWIDTH ]] && export MANWIDTH

That seems redundant.  If it is already exported, the childs will
inherit that.

And then about the main work, it can be done by calling mansect(1) in
a pipeline.

With that in mind, I've written my own approach, which I've called
mansectf.

	$ cat src/bin/mansectf;
	#!/bin/bash
	#
	# Copyright, the authors of the Linux man-pages project
	# SPDX-License-Identifier: GPL-3.0-or-later

	set -Eefuo pipefail;

	mansect "$@" \
	| man /dev/stdin;

Does this work for you?  I look at it and wonder if it's worth
a separate script, but then it might be useful for people who are less
experienced with man(1).  To be fair, few people know that man(1) can
accept stdin, and even if they know, sometimes convenience wrappers
improve readability: for example, printf(1) is unnecessary given that
fprintf(3) exists, yet it's thoroughly used and I find it essential.

	printf("foo");
	fprintf(stdout, "foo");

So, I think such a thin wrapper can have its place, as it's the main use
case of mansect(1).

>  I also named
> the script sman(1) primarily because I can't think of a better name.

There already exist two programs with that name:

	$ apt-file find bin/sman
	axiom: /usr/lib/axiom-20210105dp1/bin/sman
	fricas: /usr/lib/fricas/target/x86_64-pc-linux-gnu/bin/sman

Alternatively, I've thought of calling it mansectf(1), where the
trailing 'f' means 'formatted' (as in printf(1)).  After all, this is
a thin wrapper around mansect(1) that formats the output.

> Feel free to give your thoughts!

I've CCed a few people to hear their thoughts.


Have a lovely day!
Alex

>=20
> Seth McDonald (2):
>   src/bin/sman: Add script
>   man/man1/sman.1: Add man page
>=20
>  man/man1/sman.1 | 69 +++++++++++++++++++++++++++++++++++++++++++++++++
>  src/bin/sman    | 54 ++++++++++++++++++++++++++++++++++++++
>  2 files changed, 123 insertions(+)
>  create mode 100644 man/man1/sman.1
>  create mode 100755 src/bin/sman
>=20
> Range-diff against v0:
> -:  ------------ > 1:  d093a884e5fb src/bin/sman: Add script
> -:  ------------ > 2:  e1849d315c95 man/man1/sman.1: Add man page
>=20
> base-commit: 6754bd1a126ed1e9b7d9c2bc1d221681f5182bb3
> --=20
> 2.47.3
>=20



--=20
<https://www.alejandro-colomar.es>

--zamu2aw5h5wqquwh
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAml4wfYACgkQ64mZXMKQ
wqllhQ//ePNQ0gWAr1JTMLYoymaf1os8aGeM13mvZJpzHrU5h2OwdExI6McO2soV
xKbdkrjwLUz6JK/HksIQWwDvEdrratND4olTKlXIp8SYg37f+dEngi1P43SkZqr4
4CdBjufgWZxsUTkfeIxN03q/H/TRQho1uQJLGjhn8GJzwUt19xJQCJgCJIpxlamq
0NKvus3p6tlRh8YraiYZKj1ddrY6ff5bsT9XYkzB9N1jA7FuMOftG9B4/pz1nv1h
nq2NkvvsAAEHY53LKDBZanpscjdTrf6DpJsb8h8V6hA8RsRBC93QpJK9i93D/T6V
1w4HKz1+Qb55Olz8mvvJ/vibYwJItW6PrsPitdrL3XeUc+E3aQGFNYSioQG4j4BA
woffSTtERo/xePNQ5cSWbop1JuSnKXtO0pBbEE+98+9gDdqKNvC4rJNqmQ8BOfkk
OTerhkJEa1HR0z9zXE+0Y6bj/KrLGE/ddOJ3FNJjKxCY3IFEjdUsKuUfyCKfI0uy
WdC5XrTUa1NtTcK2XjeoR7UyCy68VvvAMg28yrGk3RKixomTlxVT1KGMlaqshQBV
DXNE/7VxqmHOYQjfIHOjHQZcDzJUWOIudxjMx0tMtjWZal6aVEmfWbYmOrKWsWdz
x030yFbprfxWkoVTyF2qw78L2w1NebtO/ZpxZvd/Si4FYEyzMc0=
=AGwa
-----END PGP SIGNATURE-----

--zamu2aw5h5wqquwh--

