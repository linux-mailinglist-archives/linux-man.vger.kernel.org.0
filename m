Return-Path: <linux-man+bounces-3271-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 13814B0693B
	for <lists+linux-man@lfdr.de>; Wed, 16 Jul 2025 00:27:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1AA1D3AE971
	for <lists+linux-man@lfdr.de>; Tue, 15 Jul 2025 22:26:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5CD772C15AB;
	Tue, 15 Jul 2025 22:27:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e3/JANiA"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B8662C15A2
	for <linux-man@vger.kernel.org>; Tue, 15 Jul 2025 22:26:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752618420; cv=none; b=LVWi4BfN6XTM1Az3a0Tm4aIfMNMLntl7ZuZaPjMc0mlB5pl1Qqj18pAVOJUd4ARf7YkYcA94tXIki+i+ksE95mgE0IfLyd/gnvC4QjsN21Urp35p8Z3aWm8qAGCNRj0Lb/6ZkT9dwEemSoJAj3dc/18GfL0kEgpyFWN3oF6px7A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752618420; c=relaxed/simple;
	bh=Au3lWlaw0bLuy1iHqgT9w5EWkoHA+NNt/iY9xz5eDiY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=p9EhMFLfFTY9X2Q7vpwSr+dh6gKFG6ATsI1DlVcPhQpT18mwOdA0hSG0a0AsjmDGDpz9cWVGFWXC44PDozyuiwaVyG8D4DxFnFsYNzYt7e1mu6O8ceyI2uTyrbu5CWwUgTj/s9KHoKOsfuTWfBRMnInjiBGNFuezh/GVrlT/kGM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e3/JANiA; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BB7BFC4CEE3;
	Tue, 15 Jul 2025 22:26:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752618418;
	bh=Au3lWlaw0bLuy1iHqgT9w5EWkoHA+NNt/iY9xz5eDiY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=e3/JANiAofg5iZzsfx5i4e9WyQXA2dPC346ENmbCltSHDoXLWNCW71MfN+5yeYAFv
	 CgUX5244tCWRIpXae/2Lkg9wU3xvWelvOnAjaXmOPe+mTYSehX065+OGTNiSa0kx1v
	 nVj2kGxdZhJceoI5ftPG+sy1ZCwQ3Bc8gRFnR4wHNqLkXPp1Ds408L3hyzP1G9XDoV
	 oPrJcZVA3CcFakHZ0LvXrDjAR6hKIFpBTG4W0h0SNlKl0fC/KCckY+pk9dtbGC7+0K
	 xRERXhfdnAIL/mVY2AeQZoVKdmRY1/23Z/Be58tSYcM6w+p2mVIjX1P0xXCujmMR5o
	 fIN19tpHqDn1A==
Date: Wed, 16 Jul 2025 00:26:55 +0200
From: Alejandro Colomar <alx@kernel.org>
To: enh <enh@google.com>
Cc: Alejandro Colomar <alx.manpages@gmail.com>, 
	linux-man <linux-man@vger.kernel.org>
Subject: Re: [PATCH] printf.3: mention Android's %m support.
Message-ID: <cfyjj5fpvoowasfqy3c4xyxm64vqxx6b6vw3ez6anlxrwwj5le@b7whzrldtxtt>
References: <CAJgzZopjpJJY8F7khF6SN=-UuYPiR70vqOE4voaQz79U_HqhAQ@mail.gmail.com>
 <uxmsabvotuwrcv5xmobyzakdfxibmkvet5f55idux2peyeto3k@zz7wo32lk4cr>
 <forno7r2gzmghoj5tr2ze2eehjfni6xcxatvqeuvuxoppypnqw@mmcrxxnlb6kw>
 <CAJgzZoq_352z=YNOOCe+G3fq2xAuZQU=r16p22XC4euhaidKDg@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="zhzcyc2remisnu4w"
Content-Disposition: inline
In-Reply-To: <CAJgzZoq_352z=YNOOCe+G3fq2xAuZQU=r16p22XC4euhaidKDg@mail.gmail.com>


--zhzcyc2remisnu4w
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: enh <enh@google.com>
Cc: Alejandro Colomar <alx.manpages@gmail.com>, 
	linux-man <linux-man@vger.kernel.org>
Subject: Re: [PATCH] printf.3: mention Android's %m support.
References: <CAJgzZopjpJJY8F7khF6SN=-UuYPiR70vqOE4voaQz79U_HqhAQ@mail.gmail.com>
 <uxmsabvotuwrcv5xmobyzakdfxibmkvet5f55idux2peyeto3k@zz7wo32lk4cr>
 <forno7r2gzmghoj5tr2ze2eehjfni6xcxatvqeuvuxoppypnqw@mmcrxxnlb6kw>
 <CAJgzZoq_352z=YNOOCe+G3fq2xAuZQU=r16p22XC4euhaidKDg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAJgzZoq_352z=YNOOCe+G3fq2xAuZQU=r16p22XC4euhaidKDg@mail.gmail.com>

Hi Elliott,

On Tue, Jul 15, 2025 at 05:04:44PM -0400, enh wrote:
> (moved the API 29 note to the man page and reworded the commit message
> text about the BSDs.)

Did you actually forget the 29 detail?  I don't see it in the patch.


Have a lovely night!
Alex

>=20
> On Tue, Jul 15, 2025 at 4:50=E2=80=AFPM Alejandro Colomar <alx@kernel.org=
> wrote:
> >
> > On Tue, Jul 15, 2025 at 09:48:50PM +0200, Alejandro Colomar wrote:
> > > Hi Elliott,
> > >
> > > On Tue, Jul 15, 2025 at 02:50:06PM -0400, enh wrote:
> > > > Unclear to me whether it would be useful to explicitly mention that=
 it's
> > > > _not_ available on iOS/macOS and the BSDs, since that's the caveat I
> > > > usually give when recommending %m to people.
> > >
> > > We can omit that for now, but please not it in the commit message.
> >
> > s/not/note/
> >
> > >
> > > >
> > > > Technically this is available on Android from API level 29, if we w=
anted
> > > > to be more specific.
> > >
> > > Yep, that might be useful.
> > >
> > > Thanks!
> > >
> > >
> > > Have a lovely day!
> > > Alex
> > >
> > > > ---
> > > >  man/man3/printf.3 | 2 +-
> > > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > >
> > >
> > >
> > > --
> > > <https://www.alejandro-colomar.es/>
> >
> >
> >
> > --
> > <https://www.alejandro-colomar.es/>



--=20
<https://www.alejandro-colomar.es/>

--zhzcyc2remisnu4w
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmh21a8ACgkQ64mZXMKQ
wqmRmg//WK1nq9BEHuqxIIOY6b/ngxtaEVOJVQ0IQZBZGc68fa4bmnnuQPtD0/8S
iun3xeGVVmbVECKTHawqPjhJhfGnlsdeFOrm7CChwovnUW4bQs3eJXByJuriCcUL
r8qTFI6BFbLi438N+Hax/zS8eCjSVKfB6txDqBc7UTEYnlvDfE5TQH77i/S/VfoY
6vMM/M/qbZqEq2FdWKASt/QIAqwSB3Fxnvgeg/tyecOUfB4IfpGRLTSDRPc4fSxU
r4vkLASZ3KSya6XF2axGUE3+8N5ag4L5ZMDTlQh7XjGZxxj2sJMqIlIdgIy2+fzv
vjnonnTUJC6+2qNGNME3zgduje1lPCD6OLS6+V4ljnYVaBTyk0MU+DEapLeU4+cH
M4L88ARI2u6my0NUkKmKNgXwZaYeYctM7hwF9z15uNJYHHFl7ITwxhDyYZUGSbXq
R/93xdvro0/ruYeAjHBU2sCkxfWjnEGBzel89Bn3T/uogWc52yfIHcj0DbNr2+T4
ZDXyiPvqIsBflw348hIjjafAJ5fE0yCWz8rOXm+KYpRrGnsRx5RRaJ22EkMnTi+a
PW9zXGXxvN+fqI0lHqIGpQYYfmEvz/HeqsqQIHJmcbC18agz2I9q3U+596U+8C6m
efeqhObadQSOXYr4feHfP/8maoX+5WiRkqmyeY2rpTo/gF0NkAc=
=/OX3
-----END PGP SIGNATURE-----

--zhzcyc2remisnu4w--

