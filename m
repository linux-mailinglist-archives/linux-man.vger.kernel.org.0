Return-Path: <linux-man+bounces-3981-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 89981BA0096
	for <lists+linux-man@lfdr.de>; Thu, 25 Sep 2025 16:34:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BD42D4C7084
	for <lists+linux-man@lfdr.de>; Thu, 25 Sep 2025 14:32:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9BEE72E06E4;
	Thu, 25 Sep 2025 14:31:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ku+wZ6SG"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F46D2E0411
	for <linux-man@vger.kernel.org>; Thu, 25 Sep 2025 14:31:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758810701; cv=none; b=apF5OkIRpmVxiToL8LbAl1tfouyJZD/WkGxK7Jef8NybE0WJQXHM1eek/9M77xSyjkd7g98AsEcvh7hCx9P35zsK+Z3jNWi7tCYTaIYOpo2cA6itWqa/ubOrmqnuKOeo7Aadst2EtbRXD5C/GN1VyRXDtxxGEXOwMihuJ5UhQuM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758810701; c=relaxed/simple;
	bh=SpcPhiARpVKwR6LDT1JZntSwVvgZHZvUh8BAoE4KZIc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ENYv0PX4isGN2ZYKNN1HYt4nldaX/IpkSubukZLBzfVaYT4TFqWEUYEHhrL7RqdyzAOlINDtI58D49qGIQhTuoYL6yWZltA4PD1Yvxzu/lUPRAkjWycksI3fubhFsVuyppIDIkXaAgOvAs0o6GONiSxDYz5YOevpnyY7f1CmbKw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ku+wZ6SG; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 826E2C4CEF7;
	Thu, 25 Sep 2025 14:31:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758810700;
	bh=SpcPhiARpVKwR6LDT1JZntSwVvgZHZvUh8BAoE4KZIc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Ku+wZ6SG0H1YpSWuTUTaV2jlvccEcSVEBOYxEMv3sw2awsKCphh9cdjVF6RibVsNe
	 uYxWOLiauFQnahnMbDOeTtJgB/lcTKNhP0ic80nAHLwmVa4MxSPo0MkfgXc97l2iLl
	 cCKx/E9fkok1cdqmASJv0yqIq7AEURjPTYD8UmSBJ/D1+0qNYRnJHOgqX99ot8xz4u
	 zOh7zZG+UfkpCx9U0GgDKkA054AOQHrqSykcyFMgcKU07kGHB51mGdzCpnMRxZuSHY
	 xvsspyOzFReFmIuB8NpIuspDjJXx5hFbOwywSUscYkyYQheDDtG/EdpxkYBYn9NiuC
	 WqxB8wMtwXF6Q==
Date: Thu, 25 Sep 2025 16:31:36 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Arsen =?utf-8?Q?Arsenovi=C4=87?= <arsen@aarsen.me>
Cc: coreutils@gnu.org, linux-man@vger.kernel.org
Subject: Re: Move GNU manual pages to the Linux man-pages project
Message-ID: <sdprfcwwtirbygpx4pqcavchf7hl3ichxjcxsr6kn6pl3f2ri6@7mshrxxpjhn3>
References: <wqfzoyixsh4l3wg7tkz3c4bjejy4wlski2s5g2pwoqiy2wg3ty@lkqy5semt757>
 <87jz1sm2t3.fsf@aarsen.me>
 <fziyxvozscytwasmhtrpjfqbmldxmggjkdm4pzo7cupxhby422@czrmkask4xsc>
 <87cy7e7hml.fsf@aarsen.me>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="6sj7viejpqotuhpn"
Content-Disposition: inline
In-Reply-To: <87cy7e7hml.fsf@aarsen.me>


--6sj7viejpqotuhpn
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Arsen =?utf-8?Q?Arsenovi=C4=87?= <arsen@aarsen.me>
Cc: coreutils@gnu.org, linux-man@vger.kernel.org
Subject: Re: Move GNU manual pages to the Linux man-pages project
Message-ID: <sdprfcwwtirbygpx4pqcavchf7hl3ichxjcxsr6kn6pl3f2ri6@7mshrxxpjhn3>
References: <wqfzoyixsh4l3wg7tkz3c4bjejy4wlski2s5g2pwoqiy2wg3ty@lkqy5semt757>
 <87jz1sm2t3.fsf@aarsen.me>
 <fziyxvozscytwasmhtrpjfqbmldxmggjkdm4pzo7cupxhby422@czrmkask4xsc>
 <87cy7e7hml.fsf@aarsen.me>
MIME-Version: 1.0
In-Reply-To: <87cy7e7hml.fsf@aarsen.me>

Hi Arsen,

On Thu, Sep 25, 2025 at 04:04:50PM +0200, Arsen Arsenovi=C4=87 wrote:
> Hi Alex,
>=20
> Alejandro Colomar <alx@kernel.org> writes:
>=20
> > [[PGP Signed Part:No public key for EB89995CC290C2A9 created at 2025-09=
-21T14:53:21+0200 using RSA]]
> > Hi Arsen,
> >
> > On Sun, Sep 21, 2025 at 02:02:16PM +0200, Arsen Arsenovi=C4=87 wrote:
> >> IMO, docs should not be outsourced from the project they correspond to.
> >> Doing so makes them harder to install and keep accurate to the install=
ed
> >> version of what they target.
> >
> > I could maintain them within the coreutils repo, if that's preferred.
>=20
> That'd be significantly better, yes, if by that you mean that they'd
> become part of the coreutils (et al) distribution.

I'd guess that if the pages are within the coreutils.git repo, the build
system will package them with the rest of the distribution, so yes.

However, I'm unable to deal with autotools, so that would need to be
handled by some of you.  But yes, that's the idea.

I can maintain the contents of the pages.

> >> > I understand GNU's stance on manual pages, and that you might not be
> >> > interested in improving them much, but maybe you're open to them bei=
ng
> >> > improved elsewhere.
> >>=20
> >> It's frankly better to improve them inline.  But I'd rather see us move
> >> past the woefully inadequate 'man' documentation system,
> >
> > I disagree with man(1) being inadequate.  :)
>=20
> Unfortunately, it is.  A collection of linear mostly-unrelated pages in
> predetermined shape simply cannot document complex software, a
> hierarchical approach is non-negotiable.
>=20
> libc, (most of) the syscall API and coreutils are a lucky case in that
> they are, fundamentally, large collections of *very* simple bits
> (functions and programs),

Luckily, we're discussing the documentation of coreutils.  :-)

(Actually, git(1) also has more-or-less hierarchical manual pages for
 documentation, and it works quite well, IMO.  But I agree it's not
 always the case.  PCRE is a counter-example, where I can't find
 anything.)

[...]
> >> Given that coreutils manpages are generated from help text, adding a
> >> paragraph to the tsort help text would probably suffice (see sort for =
an
> >> example).
> >>=20
> >> > The Linux man-pages project already documents the GNU C library, so =
it
> >> > wouldn't be extraneous to also take ownership of the coreutils manual
> >> > pages.
> >>=20
> >> And it's a source of problems; they don't always correspond to the
> >> installed version of the libc,
> >
> > That's not very important.  The manual pages keep old information, so as
> > long as you have the latest pages, they're good for whatever glibc is
> > installed.  Of course, we are missing a few pages, but there are few.
> > And of course, if you have bleeding edge glibc, there are more chances
> > some details may be missing.
>=20
> This addresses half of the issue (what if the pages are old?),

A solution for old pages is cloning them from the upstream repo, and
running 'make && sudo make install'.  But that's not for everybody.

Alternatively, kindly ask your distribution manager to package a recent
version of the pages.  After all, they're just text, so stability isn't
very important.

> and still
> leaves the fact its a separate software distribution unsolved.

The issue there is that the distinction between manual pages for the
kernel and for glibc isn't very clear.  That's why we have one project
that covers all, instead of duplicating the information, or having
incomplete information in either side.

But that's not an issue in coreutils, as we could have them distributed
with the binaries.

> >> don't get installed with libc, and have
> >> lead to the actual manual being somewhat forgotten.
> >
> > In general, the manual pages are more accurate than glibc's own manual,
> > as even some glibc maintainers have acknowledged in the past, so I
> > wouldn't worry much about this.
>=20
> That is precisely the problem I was referring to.

Ah, I thought you were worried users would forget about it.  If the
maintainers forget about it, that's a problem for users of info manuals,
indeed.

>=20
> Have a lovely day!

You too!  :-)

Alex

> --=20
> Arsen Arsenovi=C4=87



--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--6sj7viejpqotuhpn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmjVUkgACgkQ64mZXMKQ
wqnUxA/9Fq2kPOHmEm7Z/n2DoXxjOsNa51PAtJ+6PSQONH8X15FZwPQGs/NU5wVr
AO+vjpUV/FV9iLXhYYpEJCYuam1u3SwI0ON2XeDu17EsZbh2PmCogLKmIjOtV9iY
n73rCdNhQx5lG/9iKuejMsySjKyrI+HF+kG6T/7OoqEh0/RHeWf1EMkL/i+dCJn0
n6zWIJ+xxrAgSYynE/gPBpVeZPGkW3l5wYwrKMImuTlJ1LlnAkcvXLEpFhXRa43X
jR08QmP69H2I+DTQnZGanwUx+bmwtrX5361pnyu1sfHDqe0EgeBWIVtA/H+rHvHn
RNhWTYubxeYgNpRJUBwJskznDC5XVVYcoGU4iASA8Ug7BOO2NpJv+PY0f42l8sV2
pRXhp7C9StY0ttgaJonypZa8zXimtQQXERFsk3yK2UhDv6RoFc/Ck2m4widD6W7R
G8bmsjxiKyG2c+xuYybWqaZIlkRNKG2LC3jNwKqvsLUFhWxELLAP60h1kMonRX6j
6StZgzWF2HRApZKBPuNJPAr7sTMNxILJZNkPiiOKaX2sYBPJjxx/fkz0tdY5e73f
IBH/gpdZFAfKPnQHdOEgNY2RLx4UZCBHRjyvRnbZ6IExwwaYY2b28Qqm5mVGQnt5
Kt8eL5CvScmcOCi0NLKT5meCP8ZIY9gbUDJw0eegKZPn559sA8A=
=JXMr
-----END PGP SIGNATURE-----

--6sj7viejpqotuhpn--

