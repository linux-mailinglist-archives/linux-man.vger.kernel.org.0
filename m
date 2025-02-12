Return-Path: <linux-man+bounces-2401-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 98B61A3297F
	for <lists+linux-man@lfdr.de>; Wed, 12 Feb 2025 16:06:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9B57F188742D
	for <lists+linux-man@lfdr.de>; Wed, 12 Feb 2025 15:05:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 127FB21127A;
	Wed, 12 Feb 2025 15:05:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qz2wZeVz"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC34C20F077;
	Wed, 12 Feb 2025 15:05:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739372730; cv=none; b=JGK8jyQoMAdMEYdHsPfwAkbgVM0RZDY8adrG3No29Brt3tFmzLtYcuXRZwb3iNGrfnsQT+H1paguveXNZOlkQ6nw+1YAvvrIchi6QDIq2nQfyvDa3N7ABNXRrM+76R2KxDbAmXPVsyr9mJFUBmq16AEcAWueWAZTD4P07+fDcMA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739372730; c=relaxed/simple;
	bh=w9HBmzbsRhGZHlzu5GUY4UoHmAOJCRjBXRBw6avZ0xg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=pfv5ir2D2Vj+lU1Wt8+DycYLR/lfH/17hQIrGWi+PpBlCjR8G1BDkLNf4/qaJ1W4+5vSE9MR18e175VCEkLf10vaBWdKC/n0uGzPIdvsdqKTdvE99LULjC0528m2ytMGtz3M0/8MtFVtZh7M+9USUNhExXSCd3C4ZTZwkoZuCX0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qz2wZeVz; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6273BC4CEDF;
	Wed, 12 Feb 2025 15:05:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739372730;
	bh=w9HBmzbsRhGZHlzu5GUY4UoHmAOJCRjBXRBw6avZ0xg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Qz2wZeVz1Yi9vq6BDXVrCvUySVc5c8FaNCs70mWOICKflyO9kPSzeOYCqoeILaVXl
	 535sUYmqALGRZg6Jgo18HFbnfqSQLr/JFvh8/1ToN9O0PwxDVRhbMPLxGqj1WdkmyF
	 eDG91IRZW4QBvpVPdwgksiIIb5B7A19zR+uTTcbiDc/SFBowGjQK/aI6vjWLCu7Rgu
	 LMrCPQpWLjHk5WK3YYyW6Egjswf9sklCdH+fSRerXm+DA49v2HMj6Dshy2ibNimaCR
	 hzMAUiO0lSj9cvpmV/+Pj7HArFw+Cg2DOw8J8p6kSp3R4TDpqiam3AJDeJ5Vyatu5a
	 ++RnDnNR8o93A==
Date: Wed, 12 Feb 2025 16:06:06 +0100
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?Q?Micka=C3=ABl_Sala=C3=BCn?= <mic@digikod.net>
Cc: =?utf-8?Q?G=C3=BCnther?= Noack <gnoack@google.com>, 
	linux-security-module@vger.kernel.org, Tahera Fahimi <fahimitahera@gmail.com>, 
	Tanya Agarwal <tanyaagarwal25699@gmail.com>, Daniel Burgener <dburgener@linux.microsoft.com>, 
	tools@kernel.org, linux-doc@vger.kernel.org, linux-man@vger.kernel.org
Subject: Re: [PATCH 1/2] landlock: Minor typo and grammar fixes in IPC
 scoping documentation
Message-ID: <7vl6uylhzgkokl42bz36d5g3krcusqf7mdy4bd7tblcjckatrw@ullu2kblovji>
References: <20250124154445.162841-1-gnoack@google.com>
 <20250211.Ree5bu6Eph2p@digikod.net>
 <22olfm76rcgjfs4vrr3adtbznsnz47kaehlr3ljn6e5jkc6waq@ue7azstxlwfv>
 <20250211.ieSoo7Phe5oh@digikod.net>
 <3unkhxarmiddobfjvojx4sdpgitjld26udcagka2ocgrb6c2jc@dcg4w5yk5mut>
 <20250211.oavooPhap9OX@digikod.net>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="sewn3eknkwtsr5ds"
Content-Disposition: inline
In-Reply-To: <20250211.oavooPhap9OX@digikod.net>


--sewn3eknkwtsr5ds
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?Q?Micka=C3=ABl_Sala=C3=BCn?= <mic@digikod.net>
Cc: =?utf-8?Q?G=C3=BCnther?= Noack <gnoack@google.com>, 
	linux-security-module@vger.kernel.org, Tahera Fahimi <fahimitahera@gmail.com>, 
	Tanya Agarwal <tanyaagarwal25699@gmail.com>, Daniel Burgener <dburgener@linux.microsoft.com>, 
	tools@kernel.org, linux-doc@vger.kernel.org, linux-man@vger.kernel.org
Subject: Re: [PATCH 1/2] landlock: Minor typo and grammar fixes in IPC
 scoping documentation
References: <20250124154445.162841-1-gnoack@google.com>
 <20250211.Ree5bu6Eph2p@digikod.net>
 <22olfm76rcgjfs4vrr3adtbznsnz47kaehlr3ljn6e5jkc6waq@ue7azstxlwfv>
 <20250211.ieSoo7Phe5oh@digikod.net>
 <3unkhxarmiddobfjvojx4sdpgitjld26udcagka2ocgrb6c2jc@dcg4w5yk5mut>
 <20250211.oavooPhap9OX@digikod.net>
MIME-Version: 1.0
In-Reply-To: <20250211.oavooPhap9OX@digikod.net>

Hi Micka=C3=ABl,

On Tue, Feb 11, 2025 at 08:24:21PM +0100, Micka=C3=ABl Sala=C3=BCn wrote:
> > The official name of man9 is "Kernel Developer's Manual".
> > In-scope in man9 are internal kernel APIs, and in general anything that
> > is of interest to kernel developers but not to user-space developers.
> >=20
> > >  Because I want new kernel features to come with proper tests
> > > and documentation, it would be much easier to apply all these patches=
 to
> > > the same repository, at the same time.  Using the same repository sho=
uld
> > > also help to synchronize documentation with code changes.
> > >=20
> > > One remaining issue would be that some generated documentation come f=
rom
> > > the kernel source files, especially the UAPI headers, which also helps
> > > maintaining the documentation in sync with the code.  What would you
> > > suggest to improve the current workflow?
> >=20
> > For generated documentation, I'd really avoid that.  Currently, in the
> > man-pages we only have bpf-helpers(7), and I'd very much not follow that
> > for other pages.
>=20
> OK, kernel doc in man9 would not be a good fit then.

Well, I think I should develop what I said.  I think the quality of
generated documentation isn't good, compared to hand-written
documentation.  I wouldn't recommend in general generating man(7) pages,
just like I wouldn't recommend generating .rst documents.

However, given the assumption that you're going to generate the
documentation anyway from comments (which is what I recommend against),
generating man(7) source isn't worse than generating .rst docs.  I
personally don't like in-source comments either, so writing only man(7)
source is fine --I don't have the problem of keeping it up to date with
the comments; there's no duplication--.  If you're committed to
in-source comments, and your internal APIs change so often that it
wouldn't be reasonable to write documentation by hand (other than the
in-source comments), then it makes sense to generate man(7) pages in
the man9 section.

I'm going to release today the next version of the Linux man-pages
project, and have refreshed the bpf-helpers(7) manual page from Linux
source.  The process is pretty easy:

<https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/commit/?id=3De=
bfa53a052e70a1252051ba3ad99c3b5a87da42d>
	commit ebfa53a052e70a1252051ba3ad99c3b5a87da42d
	Author: Alejandro Colomar <alx@kernel.org>
	Date:   Wed Feb 12 15:46:18 2025 +0100

	    man/man7/bpf-helpers.7: Refresh page from Linux v6.13
	   =20
	    Scripted change:
	   =20
		    $ ~/src/linux/linux/v6.13/scripts/bpf_doc.py \
		    | rst2man \
		    >man7/bpf-helpers.7;
	   =20
	    Signed-off-by: Alejandro Colomar <alx@kernel.org>

	diff --git a/man/man7/bpf-helpers.7 b/man/man7/bpf-helpers.7
	[...]

So you could really use man9 for internal Landlock stuff.  Even if I
think generated documentation isn't ideal, it's better than nothing.
Being able to use man(1) for reading kernel documentation would still be
a nice feature.

And while I can't run all the linters that I run on hand-written docs on
generated pages (because generated source necessarily triggers many
false positives), I could still run some, which would trigger some
accidents in the docs, and would also detect bugs in the software
translating the docs from one language to another.

So, I'd still recommend you considering man9.

> > For APIs that change often, that may make sense, but in general, APIs
> > shouldn't change significantly enough to prefer generated docs.
> >=20
> > > > I personally don't like the idea of having man2 in the kernel tree.
> > > > Michael Kerrisk already mentioned several reasons for why it's a bad
> > > > idea in the past.  On top of them, I'd add that the build system of=
 the
> > > > Linux man-pages project is quite more powerful than the kernel one,=
 and
> > > > it would be an important regression to have to adapt to the kernel
> > > > Makefiles in the manual pages.
> > >=20
> > > For the Landlock syscalls case, could we move the syscall documentati=
on
> > > to man9?
> >=20
> > man9 is for internal kernel APIs.  Here's intro(9) in different systems,
> > which documents what should go into man9, and what shouldn't:
> >=20
> > <https://man.netbsd.org/intro.9>
> > <https://man.openbsd.org/intro.9>
> > <https://man.freebsd.org/cgi/man.cgi?query=3Dintro&apropos=3D0&sektion=
=3D9&manpath=3DFreeBSD+14.2-RELEASE+and+Ports&arch=3Ddefault&format=3Dhtml>
> >=20
> > Debian had a project which documented some Linux kernel internals in
> > man9, but it was eventually dropped.  I don't know who maintained that,
> > and what was the history about it.
> >=20
> > If Landlock has internal documentation that only matters to kernel
> > developers, yes, that would be in-scope for man9.  The user-facing docs
> > are more relevant in man2 and man7, though.
> >=20
> > I would be happy to take all the landlock docs in the form of man9 pages
> > if you handle them to the Linux man-pages project.  I can do the work of
> > transforming the .rst docs into man(7) pages; that's fine by me.
> >=20
> > If there's consensus in the kernel of moving to man9 docs, I'd be happy
> > to help with that.  I fear that some maintainers may fear man(7) pages.
> > If you need me to give any talks to explain how to write man(7) source
> > code, and show that it's easier than it looks like, I could do that
> > (G=C3=BCnther already suggested me to do so :).  Maybe I should give a =
talk
> > at Plumbers.
>=20
> It would be interesting to get the point of view of other kernel
> maintainers but I guess a lot of them would have the same: to lower the
> bar of contributions.

I'm working hard on making it easier to contribute to the Linux
man-pages project.  Adding consistency to the existing pages makes it
easier to just look at the surrounding documentation and deduce how to
document some new feature.  The source is today much more
self-consistent than it was 5 years ago.

Also, me being paid to work on the project means significantly less time
to review something.  If I can do anything else to make it easier to
write man(7) and/or contribute via email, please let me know.

Yes, tools like b4(1) may not be ideal for working in two different
repos, but I expect that if you report that to Konstantin, he'll
probably have ideas for that.  I don't think that should be impossible
to fix.


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--sewn3eknkwtsr5ds
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmesuNgACgkQnowa+77/
2zJGtg/+ObB/c0bD0V5sdyKq/7jhMu2/ds415RlgP9ISaGSed0nAH9JVQpbkzkhh
PKlk9N2WszM+x+bAu/+VIVUgBY5Z27Uw9e5BJ+vbZJZjkQPq/cjY1NTbHHTHalbe
aeh5xHoRXxWJrdr9xrNozQNV2I0bLBWfnFLhaOj47SQ8Ep+maMKD1dwctLUDCRW8
2Sx1/UiqYx0ZTGZdkvIiSI4iFQje6UdvjzaFf4RXdo3s4ILUhclSkrnOcoDOw47h
YTUBr7vBytGLSiI3ZpAYhLs+FCfyYKMIDPM+Scw4KxBq0LW1zAiR4Z0os9Wq+9rf
P1ZM7E1MWeChxy070OXm8AXq+68QEhMG4v7DDHmol/UYhEiWdWdtlsyw7i3N38Ks
ifE4Aa0Tg7jRjEL6jKUr+JeZ0IdzFdvPN/defU6m0v5bP4GLFEt+w7v0KTLjJqMS
B8H/+SsqRMfuemEc+FiOaU74GBdl8mZ5C1ZjIkyRLjvzOQtFE3TRDOmlLBrzHZ0q
/y7etqDSUAxy5GgMpAelJWeu7WvRgyQY+xH7IewrqAhTLF948nESuZScM987S7r6
rIX22xE1kxIyT4UrOHGAxxT9FhYr+1yxw/N+gyh9fQpwAzAlwh94GKZBRFC30U9v
ZhAPm6DZEHiSuBZhxYDvycij80TIS0C9Oge7vQwQdnwxKOjPOo8=
=OiCp
-----END PGP SIGNATURE-----

--sewn3eknkwtsr5ds--

