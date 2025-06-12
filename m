Return-Path: <linux-man+bounces-3142-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 78223AD7EB4
	for <lists+linux-man@lfdr.de>; Fri, 13 Jun 2025 01:01:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E97AF3A48F3
	for <lists+linux-man@lfdr.de>; Thu, 12 Jun 2025 23:01:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1BB2821B9E5;
	Thu, 12 Jun 2025 23:01:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q/4EfX4w"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFDCC15C0
	for <linux-man@vger.kernel.org>; Thu, 12 Jun 2025 23:01:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749769303; cv=none; b=RltM3rwJBx269D9xLItv6mHcVkEZSIp3283VI+txkP6WOPECzIvIPG25oRiLP2icg/P+onPHK507K3aR3zDCEZ2Zr4OEQOxK/NNZiGsT8smtpsq8R6EJuKHZ5oquCuLxc5uQXv9slfeijd5kVabSAB7PIViVg0im2r2SFRbVnps=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749769303; c=relaxed/simple;
	bh=THgZFzo1D3yikhYzJTT2rN+s7IIAFzltmHUsSUEmQT8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=CKb6FlFnOCeq/kfUz52SSwz5BjiBphCPrxV5tFXSIJPDWhL5rY2ZykmfP3H4FV17ap2xYH2jtHjH1gGJ8TeFJv1lrkpyXzV4qkKv00nNKOWjAeZntawuBEWvY6Heyekaa292oNJnb6QvAZA0vD+jNh1duP09uHgcCN/qgiOo4mE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q/4EfX4w; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1C91FC4CEEA;
	Thu, 12 Jun 2025 23:01:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749769303;
	bh=THgZFzo1D3yikhYzJTT2rN+s7IIAFzltmHUsSUEmQT8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=q/4EfX4wV1TcZOSVn3azHHDp/4bI14Rw05Vj5DbnbCVjNuordiLUNwcns7gZnLThO
	 UU0d/5+m4ijblFoomiLN8EACp4OnJOfRZ4XCHeH/q1iml7qpkMxFq0pEm0NBZk8YAg
	 xLHng3xU1JlaFrCDhCccFAKN3qkdZemWdhAi2dhrF+GOx5YivZq+zUQGc8hH/e6jY6
	 IaLrnUnpz0VPtpEf5tqPpOkozjOVpZLVBQtAGDx1Z/Lft4DVt3y5XQUU8cJV+/W0Dx
	 MFAX6XLotWxp3ivVbWLlrLX3PV8QIjSdlvSAFY0EdHhJme049V2BtXIzibieFP0aOR
	 /JXRzAPxcMYGg==
Date: Fri, 13 Jun 2025 01:01:39 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Rich Felker <dalias@libc.org>
Cc: "A. Wilcox" <AWilcox@wilcox-tech.com>, musl@lists.openwall.com, 
	linux-man@vger.kernel.org, libc-help@sourceware.org
Subject: Re: [musl] sys/prctl.h differences vs man page
Message-ID: <sawuky2aiv6qpeqcnimbljvpzjlk3vnpoebgmhfw5uszyx3g2d@rb2r3tbdstru>
References: <20250612064940.ukl7RfT2@linutronix.de>
 <CAJgzZoou1wBNK8qHAheR7_haHf1njaTgRZwXnPGX+19qUAbwLg@mail.gmail.com>
 <20250612162636.GS1827@brightrain.aerifal.cx>
 <F863CD31-25C5-4406-B02C-CE8B3FBFB28A@Wilcox-Tech.com>
 <20250612163847.GT1827@brightrain.aerifal.cx>
 <plmtyslnimcvytuclnm4pqdhdz5tsdjwwgjkflxodjrzumgeh5@3wldhlt4pysu>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="qzosotibcevqstyo"
Content-Disposition: inline
In-Reply-To: <plmtyslnimcvytuclnm4pqdhdz5tsdjwwgjkflxodjrzumgeh5@3wldhlt4pysu>


--qzosotibcevqstyo
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Rich Felker <dalias@libc.org>
Cc: "A. Wilcox" <AWilcox@wilcox-tech.com>, musl@lists.openwall.com, 
	linux-man@vger.kernel.org, libc-help@sourceware.org
Subject: Re: [musl] sys/prctl.h differences vs man page
References: <20250612064940.ukl7RfT2@linutronix.de>
 <CAJgzZoou1wBNK8qHAheR7_haHf1njaTgRZwXnPGX+19qUAbwLg@mail.gmail.com>
 <20250612162636.GS1827@brightrain.aerifal.cx>
 <F863CD31-25C5-4406-B02C-CE8B3FBFB28A@Wilcox-Tech.com>
 <20250612163847.GT1827@brightrain.aerifal.cx>
 <plmtyslnimcvytuclnm4pqdhdz5tsdjwwgjkflxodjrzumgeh5@3wldhlt4pysu>
MIME-Version: 1.0
In-Reply-To: <plmtyslnimcvytuclnm4pqdhdz5tsdjwwgjkflxodjrzumgeh5@3wldhlt4pysu>

[CC +=3D linux-man@, libc-help@]

Hi Rich,

On Thu, Jun 12, 2025 at 10:37:00PM +0200, Alejandro Colomar wrote:
> Hi Rich,
>=20
> On Thu, Jun 12, 2025 at 12:38:48PM -0400, Rich Felker wrote:
> > On Thu, Jun 12, 2025 at 11:32:47AM -0500, A. Wilcox wrote:
> > > On Jun 12, 2025, at 11:26, Rich Felker <dalias@libc.org> wrote:
> > > > I don't see where it's documented that one should include
> > > > <linux/prctl.h> to use the prctl API. It's not in my copy of the man
> > > > page.
> > > >=20
> > > > Rich
> > >=20
> > > https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/commit/ma=
n/man2/prctl.2?id=3Dae31bd15b65ce03a143860e8f4daa99fcd5125a4
> >=20
> > CC'ing commit author on this breakage.
>=20
> I'd say I only changed the formatting of the information, but the manual
> page already claimed you should include both <sys/prctl.h> and
> <linux/prctl.h>; it just dit it in a weird way.
>=20
> So, should we consider <sys/prctl.h> to be the provider of PR_*
> constants?  I'd be happy to update the manual page, but libc maintainers
> should state what is the official header for the PR_* constants.

Here's some research about the history of this manual page:

	alx@devuan:~/src/linux/man-pages/man-pages/master$ git blame -- man/man2/p=
rctl.2 | grep 'linux/prctl.h'
	ae31bd15b6 man/man2/prctl.2 (Alejandro Colomar 2024-05-31 21:47:29 +0200  =
15) .BR "#include <linux/prctl.h>" "  /* Definition of " PR_* " constants *=
/"
	alx@devuan:~/src/linux/man-pages/man-pages/master$ git show ae31bd15b6 -- =
man/man2/prctl.2 | grep -e ^diff -e linux/prctl.h | grep -v -B1 ^d
	    prctl.2, PR_*.2const: SYNOPSIS: #include <linux/prctl.h> for the PR_* =
constants
	diff --git a/man/man2/prctl.2 b/man/man2/prctl.2
	+.BR "#include <linux/prctl.h>" "  /* Definition of " PR_* " constants */"
	-(with values defined in \fI<linux/prctl.h>\fP), and further
	alx@devuan:~/src/linux/man-pages/man-pages/master$ git blame ae31bd15b6^ -=
- man/man2/prctl.2 | grep 'linux/prctl.h'
	1a329b567a man2/prctl.2     (Michael Kerrisk   2007-12-10 07:16:56 +0000  =
35) (with values defined in \fI<linux/prctl.h>\fP), and further
	alx@devuan:~/src/linux/man-pages/man-pages/master$ git show 1a329b567a -- =
man2/prctl.2 | grep -e ^diff -e linux/prctl.h | grep -v -B1 ^d
	diff --git a/man2/prctl.2 b/man2/prctl.2
	-(with values defined in <\fIlinux/prctl.h\fP>), and further
	+(with values defined in \fI<linux/prctl.h>\fP), and further
	alx@devuan:~/src/linux/man-pages/man-pages/master$ git blame 1a329b567a^ -=
- man2/prctl.2 | grep 'linux/prctl.h'
	^fea681daf (Michael Kerrisk 2004-11-03 13:51:07 +0000  50) (with values de=
fined in <\fIlinux/prctl.h\fP>), and further
	alx@devuan:~/src/linux/man-pages/man-pages/master$ git blame korg/prehisto=
ry -- man2/prctl.2 | grep 'linux/prctl.h'
	3b676b1346 (Kr=C3=B3nos          1998-04-19 23:53:00 +0200  44) (with valu=
es defined in <\fIlinux/prctl.h\fP>), and further
	alx@devuan:~/src/linux/man-pages/man-pages/master$ git show 3b676b1346 -- =
man2/prctl.2 | grep -e ^diff -e linux/prctl.h | grep -v -B1 ^d
	diff --git a/man2/prctl.2 b/man2/prctl.2
	+.B #include <linux/prctl.h>
	+(with values defined in <\fIlinux/prctl.h\fP>), and further
	alx@devuan:~/src/linux/man-pages/man-pages/master$ git log --pretty=3Dfull=
er -1 3b676b1346 | head
	commit 3b676b1346f336fd0e9841365689f2dde1dff528
	Author:     Kr=C3=B3nos <Kr=C3=B3nos@S=C4=81turnus>
	AuthorDate: Sun Apr 19 23:53:00 1998 +0200
	Commit:     Alejandro Colomar <alx@kernel.org>
	CommitDate: Mon Dec 19 21:01:33 2022 +0100

	    man-pages 1.19
	   =20
	    Link: <https://www.win.tue.nl/~aeb/ftpdocs/linux-local/manpages.archiv=
e/>
	    Signed-off-by: Alejandro Colomar <alx@kernel.org>

In man-pages-1.19, the text saying that <linux/prctl.h> provides PR_*
was added.  It also included the header in the SYNOPSIS.

	alx@devuan:~/src/linux/man-pages/man-pages/master$ git blame -- man/man2/p=
rctl.2 | grep 'sys/prctl.h'
	^fea681daf man2/prctl.2     (Michael Kerrisk   2004-11-03 13:51:07 +0000  =
16) .B #include <sys/prctl.h>
	alx@devuan:~/src/linux/man-pages/man-pages/master$ git blame korg/prehisto=
ry -- man2/prctl.2 | grep 'sys/prctl.h'
	1205550985 (Kr=C3=B3nos          2000-03-06 01:54:00 +0100  37) .B #includ=
e <sys/prctl.h>
	alx@devuan:~/src/linux/man-pages/man-pages/master$ git show 1205550985 -- =
man2/prctl.2 | grep -e ^diff -e /prctl.h | grep -v -B1 ^d
	diff --git a/man2/prctl.2 b/man2/prctl.2
	-.B #include <linux/prctl.h>
	+.B #include <sys/prctl.h>
	alx@devuan:~/src/linux/man-pages/man-pages/master$ git log --pretty=3Dfull=
er -1 1205550985 | head
	commit 1205550985885436f2554b2ed38c6c565118c979
	Author:     Kr=C3=B3nos <Kr=C3=B3nos@S=C4=81turnus>
	AuthorDate: Mon Mar 6 01:54:00 2000 +0100
	Commit:     Alejandro Colomar <alx@kernel.org>
	CommitDate: Mon Dec 19 21:01:34 2022 +0100

	    man-pages 1.29
	   =20
	    Link: <https://www.win.tue.nl/~aeb/ftpdocs/linux-local/manpages.archiv=
e/>
	    Signed-off-by: Alejandro Colomar <alx@kernel.org>

In man-pages-1.29, the SYNOPSIS was updated to show <sys/prctl.h>, but
the text within the DESCRIPTION saying that <linux/prctl.h> was the
provider of these macros wasn't removed.

I don't know if it should have been removed back then and they forgot,
or if something has changed in the meantime and nobody documented it.

Please suggest what changes should be applied to the manual page.


Have a lovely night!
Alex

--=20
<https://www.alejandro-colomar.es/>

--qzosotibcevqstyo
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmhLXE0ACgkQ64mZXMKQ
wqmWGQ/+N2/Jh+O4jh716t6ALiwR00WfuhSolcxGxdPncUYy/qddxoxC+Dxhc0sA
YPdMhQcS6asOoYpBG3iaPztbLoz6EryR0ZLtxJ39MYnH2yURV2ybdKrv6hU7eG9w
n59LSyshUCWAZSnDPoqivVFa//GQE8D/z7GcA96VTOKmaZrHazNUiJ0eAOyMsu/1
8bPnkFaKaetFWDaAP6RXGqDQRUCwKeXv1PJhVTUFeiUfqJ4Jx6i2uB7PuIm1eytP
ThdOeudsM7cSsrOgVYqvGyyx1iiX+xUFmaORBQLVyF31Hc8lqGRQ2r5y4Z5G+KKS
yvBLkQE1OHzOVFfGhwCYwIg5JzqM7rTM1Kb6BdAqMM6Dgm6+ZX6+t+c4tQUfrzFJ
hPPwpmTrVVpI0eaAU4cTuhamDgZSlFeeb8VvM77mVAiBAZJVoxl6Z8sUo1jBtLN6
7W27XXf9QtMHeXOnWVpLW3HEytNd9ifa8CeqmUOu2iKaaF02p04dAj/Hx8ulQ7MH
U0IakV4UYVCb6RGlhjRqNsYLOiEHYhPrrq8YHaQsdSmvB0RrlyrXRP1QqcVXBdIX
+EApUcr4+64jqycvVAHTY63xBPNSVAZFPjU5zVdl/wZMk7oycanCO9uaaZdMkFtN
19Ie+x8ZZtq2W1Krmb9K52FTIzJz8n1deLDY1w6CpvBooIs6jxY=
=4oSr
-----END PGP SIGNATURE-----

--qzosotibcevqstyo--

