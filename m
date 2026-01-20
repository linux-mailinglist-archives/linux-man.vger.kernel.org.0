Return-Path: <linux-man+bounces-4858-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ECBLDNM4cGmgXAAAu9opvQ
	(envelope-from <linux-man+bounces-4858-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 21 Jan 2026 03:24:19 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 922C74FB57
	for <lists+linux-man@lfdr.de>; Wed, 21 Jan 2026 03:24:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 6D63186CE91
	for <lists+linux-man@lfdr.de>; Tue, 20 Jan 2026 13:52:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1C561423A93;
	Tue, 20 Jan 2026 13:52:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ODEbiyZo"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDECE3FC9
	for <linux-man@vger.kernel.org>; Tue, 20 Jan 2026 13:52:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768917145; cv=none; b=cBOTTzLLkl5j4I5Gr4O4ovPCqhzfUKmC5xltO2vRQ9hkSi16YEk6UNQyqT0axJKgY4xfDDcpPRTm26QZoLF3vgfAc38Mnm2KdZwq97x6jT1482PIm99zTtIMnqdGJgY1qb5lQ57I8VzuhGX0qPk1MzoUPF5htUjEkSM4iIv7oxs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768917145; c=relaxed/simple;
	bh=I9WiVr1UNBkf6ujVdEqqwveRBBR+O2wNktG/AZZFYFk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=EIYmxcQSorkMd/WqDSQyt8/RKhF9T3uImI0CVFmF5mzrNQ4K7YYQqu4OyGjR53YU5xl8GOg/FURa0wvtDm5/xvFK48njxZ6V70lkzhMoawLrhr7jrLSUSqUyIMHF3UZaqwcDFFr+Tww5jwTE4BS85nl6jFiUanxoguSFQnfYKJ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ODEbiyZo; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B820AC16AAE;
	Tue, 20 Jan 2026 13:52:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768917145;
	bh=I9WiVr1UNBkf6ujVdEqqwveRBBR+O2wNktG/AZZFYFk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ODEbiyZo+SOv39juhIlAAboW0rLOTc8iX9wtFdI5Y9gnPzGtD3XvCrh289SjoKLIz
	 Q/4byJq9nqcwqJ2fjNxvpfK/ahIC1SuY6R6GCXBhsdRffFlCtP1O0BO+AAlGAYKEab
	 Kmx+ag/j8vZzR07fGPWkvC06lrE9gIPn8GScRRzQcXc5ETnF3ONKVTEjWwZTpfQSEl
	 rANgVJv8+SJiKqaecEaaR/8wJoqMXnRnkAHHM5CxnC75W6P4fgcjNUO0j6HDZb31Kb
	 tHukWjYqlEznP8DBGlVKbw1JiAsduW6EYZiUzdmnQP0fJeLjSJVcM2oh7AdqDhVNkT
	 H6WRMAuQrMYjg==
Date: Tue, 20 Jan 2026 14:52:22 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org
Subject: History of const in C++, C89, and POSIX.1-1988 (was: [PATCH v1
 02/19] man/man2/access.2: HISTORY: Specify different)
Message-ID: <aW96GgzoYUurH5FS@devuan>
References: <cover.1768822707.git.sethmcmail@pm.me>
 <d87c7800e0f556efefaf5972294fb6a149bf02d1.1768822707.git.sethmcmail@pm.me>
 <aW7aOgFHOdCSiwUH@devuan>
 <aW9xYhsFpNxlo3C5@McDaDebianPC>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="nvesh6zqwzrhkbne"
Content-Disposition: inline
In-Reply-To: <aW9xYhsFpNxlo3C5@McDaDebianPC>
X-Spamd-Result: default: False [-3.56 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-4858-lists,linux-man=lfdr.de];
	DMARC_POLICY_ALLOW(0.00)[kernel.org,quarantine];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCPT_COUNT_TWO(0.00)[2];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DKIM_TRACE(0.00)[kernel.org:+];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	ASN(0.00)[asn:7979, ipnet:142.0.200.0/24, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[dfw.mirrors.kernel.org:rdns,dfw.mirrors.kernel.org:helo]
X-Rspamd-Queue-Id: 922C74FB57
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--nvesh6zqwzrhkbne
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org
Subject: History of const in C++, C89, and POSIX.1-1988 (was: [PATCH v1
 02/19] man/man2/access.2: HISTORY: Specify different)
Message-ID: <aW96GgzoYUurH5FS@devuan>
References: <cover.1768822707.git.sethmcmail@pm.me>
 <d87c7800e0f556efefaf5972294fb6a149bf02d1.1768822707.git.sethmcmail@pm.me>
 <aW7aOgFHOdCSiwUH@devuan>
 <aW9xYhsFpNxlo3C5@McDaDebianPC>
MIME-Version: 1.0
In-Reply-To: <aW9xYhsFpNxlo3C5@McDaDebianPC>

Hi Seth,

On Tue, Jan 20, 2026 at 12:13:32PM +0000, Seth McDonald wrote:
> On Tue, Jan 20, 2026 at 02:34:08AM +0100, Alejandro Colomar wrote:
> > Hi Seth,
> >=20
> > On Mon, Jan 19, 2026 at 11:55:06AM +0000, Seth McDonald wrote:
> > > access(2) was specified in POSIX.1-1988 with the prototype
> > > int access(char *path, int amode); [1]
> > >=20
> > > POSIX.1-1990 then changed the prototype to
> > > int access(const char *path, int amode); [2]
> >=20
> > I suspect this is common to all APIs specified in those standards,
> > right?  Or is it specific to this API?
> >=20
> > 'const' was invented by ANSI C89, so I expect the change was around that
> > time.
>=20
> I believe the qualifier is indeed absent from any* specified prototype
> in POSIX.1-1988.  Which would make sense if it was first specified in
> C89.  Similar to how void pointers didn't first appear in POSIX.1-1988,
> but after being added in C89, appeared in POSIX.1-1990.
>=20
> *Interestingly enough, the appendix of POSIX.1-1988 (section B.2.2.4,
> page 192) does acknowledge the const qualifier when describing the C
> Standard's atoi(3) function.  Which makes me think that POSIX was
> actually aware of C89's upcoming additions to the language.  Which in
> turn begs the question: why, if they knew about it, was it not used in
> the POSIX.1-1988 standard?  Multiple other types and functions were
> included in POSIX.1-1988 because they were (going to be) in C89.

I don't know the year in which const was added to the C89 drafts, but
I suspect it was near the release.

The C89 rationale says:

	The syntax and semantics of const were adapted from C++;
	the concept itself has appeared in other languages.

Also, qualifier rules were made more strict near the release of C89, as
they discovered the dangers of assigning a 'char**' to a 'const char**'
near the release.  C++ had more time to investigate the issue before
C++98, and so the came up with the better rules they have.

C2y will likely adopt the C++ rules for qualifiers, as proposed (by me)
in n3749 <https://www.open-std.org/jtc1/sc22/wg14/www/docs/n3749.txt>.
We will vote this in a month or two.

And after we vote n3749, we want to improve the rules even further, as
proposed by Chris Bazley in n3674
<https://www.open-std.org/jtc1/sc22/wg14/www/docs/n3674.pdf>.

> This is just me thinking out loud here.  I don't mind if the answer
> isn't known.  Although if the answer is relevant/broad enough, it may be
> useful to mention it in standards(7).

We might need a qualifiers(7) manual page.  Especially, once their rules
are modified in ISO C2y.  Alternatively, we may need a new section
man3qual, with an intro(3qual) page talking about this, and then
const(3qual) and volatile(3qual) to document the usual qualifiers, plus
a restrict(3qual) documenting how irremediably broken that monster is,
and _Atomic(3qual) also documenting that qualifier (which I never really
understood well, and from what the committee is talking now, they don't
seem to like it either).

> Something like "POSIX.1-1988
> attempted to align its specification with the features/syntax of the
> (not yet released) C89 standard, but for ABC reasons, could not use XYZ
> language features."
>=20
> > On the change itself, it wasn't a breaking change: programs written
> > before the addition of const wouldn't notice that const has been added
> > to the prototype.
> >=20
> > The change would be noticed by a program written today, but compiled in
> > such an old system.  However, I expect such a program to be aware that
> > pre-ANSI C was different, and it would have to adapt to it anyway.
> > const would be something that would have to be globally ignored, with
> > something like
> >=20
> > 	#define const
> >=20
> > Given this should be of no importance to users, I'd prefer not
> > documenting this difference.
> >=20
> > What do you think?
>=20
> It's important to note that since the type 'const char*' is a pointer to
> a const char, rather than a const pointer to a char, the type is
> incompatible with its non-const counterpart.  That is, 'const char*' and
> 'char*' are technically incompatible datatypes.
>=20
> This can be seen by attempting to compile the following C program:
>=20
> 	#include <stdio.h>
>=20
> 	int say_hi(const char* str)
> 	{
> 		return printf("Hi %s", str);
> 	}
>=20
> 	int main(void)
> 	{
> 		int (*func)(char*) =3D say_hi;
> 		func("Linux");
> 		return 0;
> 	}
>=20
> On GCC at least, you should get an incompatible-pointer-types error.
>=20
> Now imagine an old program that was built to be compatible with
> specifically POSIX.1-1988, and which liked to use function pointers a
> little too much.  If it happened to use function pointers to functions
> whose parameters weren't const-qualified in POSIX.1-1988, but were in
> later versions, then it (to my understanding) cannot be linked to an
> implementation of a later POSIX version without either errors or the
> possibility of undefined behaviour.
>=20
> While I cannot guarantee that such a program exists, what I can say is
> that I have used pointers to library functions in my own code before.
> So I don't think it'd be unusual for such a program to exist.
>=20
> Given this, I do think this still may be notable enough to document.
> Perhaps not in every such function - as that can get quite repetitive -
> but instead as a property of the POSIX.1-1988 standard as a whole.  But
> feel free to let me know if there's something I missed here.

I suspect back then this was not a big problem.

Function prototypes were also invented by C89 (although it seems to have
been invented in an earlier draft than const, by the fact that
POSIX.1-1988 has prototypes but not const).

Before function prototypes, functions were declared as

	int f();

and function pointers were declared as

	int (*fp)();

For example, here's how qsort(3) was implemented in 4.3BSD (1986):

	alx@devuan:~/src/unix/unix/4.3BSD$ cat ./usr/src/lib/libc/gen/qsort.c \
	| sed -n \
		-e '/^qsort/,/^{/p' \
		-e '/compar\>/p' \
		-e '/qcmp/p' \
		-e '/^}/{p;q}' \
	| uniq;
	static  int		(*qcmp)();		/* the comparison routine */
	qsort(base, n, size, compar)
		char	*base;
		int	n;
		int	size;
		int	(*compar)();
	{
		qcmp =3D compar;
			if (qcmp(j, lo) > 0)
			while (qcmp(hi -=3D qsz, min) > 0)
	}

Even though in 1988 function prototypes already existed, I expect code
didn't start using them quickly, and thus no real incompatibilities
existed.

About when function prototypes were introduced...  POSIX.1-1988 already
uses them, and SVID Issue 2 (~1986) doesn't, so it was somewhere between
those years.


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es>

--nvesh6zqwzrhkbne
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmlviJAACgkQ64mZXMKQ
wqms1BAApbCfSuBqH42MqXrD93nBgAGQhPVLQ8AlTdJQ/vSpFPszG3d8J3EGf2j4
QXhtVIQroSrvKg455X8eHidHXZnLAvfrQoIe2r2yHD2HqMCUofb2G1NNa4iBH6c9
lahyZAiXiTnt4x8Pgjq4mIP1S63aNVUBxy6O6ctopcGXUDkMXp1qoVIeuYatFU6y
1TT3kl8DJb72oHITDTUlTGkMg6rdQSlTuY7w/lBHd9k9ik6xiVg/W0JbL9Cue90R
uKsCLfB5A2N1HGN7X+1aHCSU5hoTRasaSy6lJjJs7sCpQR4zaqHC3B4OZgOYrKGI
ZHvfF27hhHQEQj6bUMpmTXHJYBEv3ACwZuC8M4tqu+LZTLP5rd1O81sx9+V/Z75/
JvZymQ/1dFr4r2GOdcWgrR2Krhfp6boI04BDNKdXnDEaH55dlLLlDUGqyrDrhZnl
yJjeJHBmGtBZ2bFtDaOATMxHTSl4P3baFzh1L8+uIC7naU5oaEYKmy3aNKoPymW+
593tm94ZgPFEIX4PFothC4tJndcUeVSaES1Xl1XEYVj9f4M7aXK+E6gLj/UI3YAK
9M9esz2zeRtryda60II8LHjJ62+0oSX5LBqItSelnUZMZreJeP/1hOeyr5LCxTaz
RzOF+fEJzey71gYl/lLKN+s9StUUQ5Dee+uoiWg+J1dvLIBomlQ=
=LTTJ
-----END PGP SIGNATURE-----

--nvesh6zqwzrhkbne--

