Return-Path: <linux-man+bounces-2390-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 180DDA310E5
	for <lists+linux-man@lfdr.de>; Tue, 11 Feb 2025 17:14:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6FD53169469
	for <lists+linux-man@lfdr.de>; Tue, 11 Feb 2025 16:13:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AB526254AF4;
	Tue, 11 Feb 2025 16:12:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RM/Z9FKN"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62ED3254B0B;
	Tue, 11 Feb 2025 16:12:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739290366; cv=none; b=mdbRFvcrQ38hjTpr93cb6Y7CkEQkynkwI206bSBakUbNsGX1IsAQSAUyTLYrXu56ohr7RQ8krCUqudUmaPse3d9IijH6tL5ugapXOrdx7culIMsfdmdz8XQmHVjJFx4aSsM7Tox4rPzl2WO3fQ9ni8nWCd79T5B25EsdJbghDIY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739290366; c=relaxed/simple;
	bh=ExX1hIFSL04lqowmKkcasm2jISXBQF19XqfdcbWI4mY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qY4DYj6IOkYb9Eudrw+zyM4tni5PBXj00mOQmGL38/Rv+waYmW7PDgM2G6L/85E5FvXKErT6Nt4RxlyZPTRcC+PderhM4wOHKkQVwm8tIHSmzs2edOh7scNrDk5YcpM12oGaHnqETrJ7Mb2kYD2S98hf3HVq2XOW8vllSz/Fh70=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RM/Z9FKN; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 07B3EC4CEDD;
	Tue, 11 Feb 2025 16:12:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739290365;
	bh=ExX1hIFSL04lqowmKkcasm2jISXBQF19XqfdcbWI4mY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=RM/Z9FKNwxm96IRvreaQzf6dieJeK70Dje5SgmY373o/dZMWmIxdVa2zkVupIH/9t
	 +pRFI+p1g4SXe8E8WutuWhc95bQhToP3sa5DsAKqyQ9NIybkoCdBt7xMSGkbw2uMJ1
	 XYLx61MH2N10cJcr6Q6SERDIeonUNdDlHbHFHEmDimMhLySAQVesoGdqxgWPlfwb8x
	 nU0bzCiw2BIAV71qfjaFuzfAq5IAvpuw6r0p5dyRZKINQwO5DrHOw7NALMzRJkYNle
	 WMAeQ8jcXFlSHZjGlTujXhrQrV17nebipxRLyYm2NUxqVPjdmF5r6dJ2lAEXt0TscD
	 KdLksQnT4aPFw==
Date: Tue, 11 Feb 2025 17:13:21 +0100
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?Q?Micka=C3=ABl_Sala=C3=BCn?= <mic@digikod.net>
Cc: =?utf-8?Q?G=C3=BCnther?= Noack <gnoack@google.com>, 
	linux-security-module@vger.kernel.org, Tahera Fahimi <fahimitahera@gmail.com>, 
	Tanya Agarwal <tanyaagarwal25699@gmail.com>, Daniel Burgener <dburgener@linux.microsoft.com>, 
	tools@kernel.org, linux-doc@vger.kernel.org, linux-man@vger.kernel.org
Subject: Re: [PATCH 1/2] landlock: Minor typo and grammar fixes in IPC
 scoping documentation
Message-ID: <3unkhxarmiddobfjvojx4sdpgitjld26udcagka2ocgrb6c2jc@dcg4w5yk5mut>
References: <20250124154445.162841-1-gnoack@google.com>
 <20250211.Ree5bu6Eph2p@digikod.net>
 <22olfm76rcgjfs4vrr3adtbznsnz47kaehlr3ljn6e5jkc6waq@ue7azstxlwfv>
 <20250211.ieSoo7Phe5oh@digikod.net>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="qwbn4iyhdyh726ll"
Content-Disposition: inline
In-Reply-To: <20250211.ieSoo7Phe5oh@digikod.net>


--qwbn4iyhdyh726ll
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
MIME-Version: 1.0
In-Reply-To: <20250211.ieSoo7Phe5oh@digikod.net>

Hi!

On Tue, Feb 11, 2025 at 04:53:44PM +0100, Micka=C3=ABl Sala=C3=BCn wrote:
> > Let me suggest the opposite: Could we move the kernel docs to manual
> > pages in man9?  (As is the historic place for kernel docs.)
> > (You could keep man9 in the kernel tree if you want, or could handle it
> >  to the Linux man-pages project, if you want.)  That would help have a
> > more clear separation between the two sets of documentation, and prevent
> > duplication.
>=20
> I didn't know about man9 but it's not clear to me what would be the
> content.

The official name of man9 is "Kernel Developer's Manual".
In-scope in man9 are internal kernel APIs, and in general anything that
is of interest to kernel developers but not to user-space developers.

>  Because I want new kernel features to come with proper tests
> and documentation, it would be much easier to apply all these patches to
> the same repository, at the same time.  Using the same repository should
> also help to synchronize documentation with code changes.
>=20
> One remaining issue would be that some generated documentation come from
> the kernel source files, especially the UAPI headers, which also helps
> maintaining the documentation in sync with the code.  What would you
> suggest to improve the current workflow?

For generated documentation, I'd really avoid that.  Currently, in the
man-pages we only have bpf-helpers(7), and I'd very much not follow that
for other pages.

For APIs that change often, that may make sense, but in general, APIs
shouldn't change significantly enough to prefer generated docs.

> > I personally don't like the idea of having man2 in the kernel tree.
> > Michael Kerrisk already mentioned several reasons for why it's a bad
> > idea in the past.  On top of them, I'd add that the build system of the
> > Linux man-pages project is quite more powerful than the kernel one, and
> > it would be an important regression to have to adapt to the kernel
> > Makefiles in the manual pages.
>=20
> For the Landlock syscalls case, could we move the syscall documentation
> to man9?

man9 is for internal kernel APIs.  Here's intro(9) in different systems,
which documents what should go into man9, and what shouldn't:

<https://man.netbsd.org/intro.9>
<https://man.openbsd.org/intro.9>
<https://man.freebsd.org/cgi/man.cgi?query=3Dintro&apropos=3D0&sektion=3D9&=
manpath=3DFreeBSD+14.2-RELEASE+and+Ports&arch=3Ddefault&format=3Dhtml>

Debian had a project which documented some Linux kernel internals in
man9, but it was eventually dropped.  I don't know who maintained that,
and what was the history about it.

If Landlock has internal documentation that only matters to kernel
developers, yes, that would be in-scope for man9.  The user-facing docs
are more relevant in man2 and man7, though.

I would be happy to take all the landlock docs in the form of man9 pages
if you handle them to the Linux man-pages project.  I can do the work of
transforming the .rst docs into man(7) pages; that's fine by me.

If there's consensus in the kernel of moving to man9 docs, I'd be happy
to help with that.  I fear that some maintainers may fear man(7) pages.
If you need me to give any talks to explain how to write man(7) source
code, and show that it's easier than it looks like, I could do that
(G=C3=BCnther already suggested me to do so :).  Maybe I should give a talk
at Plumbers.


Cheers,
Alex

--=20
<https://www.alejandro-colomar.es/>

--qwbn4iyhdyh726ll
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmerdxsACgkQnowa+77/
2zIHhw/+M+2zNJlER+uRIpHd8YeuvEju7kHxHXJRAcSnPLBFr4kRWqG/VeDuTbcP
7XKy7KDksG8F1kvgsdXko9qi1YXTSY8RElnvUmAmnLkSYklZNONiBMtBhCSBVxi2
pcRSvcW3sWV/6AruF9LSXoccETiZCPGipt0HI/M1NT9/2RTCW0O6j9s9wFFlQTXd
MA9f/jEjY7BPARu0Zs2VuoUbZHvB7y3CkHkJVenu2FSAzQIuE0f4Tv17GqIT8uJW
JwXtFWT/ERvB1WtP1275FkSb6DHQzSfQnOsnFmV5lT1ry5IDoo98SuhKvwRFIA41
5Ei+DuKrjrnqBEyo8Xv+5KsboHyeRPDZtxL05oiggRoVWJnm7le+WGARyjLjzQEg
t50Nkh1GNrPkrkEpYaofxZkwZ4RSICuprhkONzQPNlS00i6qKce3d38yEcMu/cex
UNQQGGVV/bEiBXC8+pzJjEbK4vFvJsphgwyS7b680V6HrJMefezABsS4z5mOB6Bx
rGxT8T6BN3KvEAmLGHPOt2GAuYeLJcwBXNZbhfmt/Z9pPVlxu7ptacg+la3Zj6K7
q/SjVorjJpfej2hD7TVNDbbwJ2Ly4kKxTcxyNOHv4X2IFxm+ciuJPWsXaKv1O0HX
rQsd+SuvLhsAn4K6vcX7W0evuPC5pYmhFiFZfIvInPUtIyAkkXg=
=W7tw
-----END PGP SIGNATURE-----

--qwbn4iyhdyh726ll--

