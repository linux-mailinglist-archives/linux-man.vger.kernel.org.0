Return-Path: <linux-man+bounces-1893-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A7A5C9C3AF0
	for <lists+linux-man@lfdr.de>; Mon, 11 Nov 2024 10:34:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 326EB1F22A78
	for <lists+linux-man@lfdr.de>; Mon, 11 Nov 2024 09:34:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AB08813C3C2;
	Mon, 11 Nov 2024 09:34:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R95SSjES"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64DEF224D6;
	Mon, 11 Nov 2024 09:34:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731317690; cv=none; b=BRnlme429m8a33ZoIiCCoUgxLVXIvOY8uSArEjmQI8X5sJ9L9tm1cCYsfQ5OtV9pmHg5gCjf4Z/cYDDt5mN0IWiHBJwNrAIH6xU7QcdAVKrOfYibORNcVP01vwEnkijja6Efvgix4ckGPxOJn1ep3Beop83dKy1zodQVw+lDk0c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731317690; c=relaxed/simple;
	bh=oM2w0fRYXaMjbTO38PsVcs6JogWiEt4Q6dRAHtie0eo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=BkK0WGu21gW5DTXZqL5vk16b/yHVDIFiOhM5ndrnS80F9+8bFI9UO38Jquqc0WMCFgd9AT/orzffQzQiWSPHy+so4bO3kdOKdMywpisKuUtZG4r1xBGlGR1aumAzUf69pEM2BfOnQ4+BINrXkZy4svDnJQqj+lSXEtx5Kv4Zpb4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R95SSjES; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B7D58C4CED0;
	Mon, 11 Nov 2024 09:34:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731317689;
	bh=oM2w0fRYXaMjbTO38PsVcs6JogWiEt4Q6dRAHtie0eo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=R95SSjESFg3QmTa8vxxlbcrC6i6NsFUGgxfQXxSum8ijc1moLzsBimBtbk7eyEYby
	 zoGDftPywOTnYx4poI7YLwvBTX+wFEu2NrxN5fO/6RXyQfyIqW96n/ylDiL1jaeEZy
	 m3BlpzQ5DhupjVMwFCHa6kTRaCQGFw/H/HWi8rMMEdovgOm6RsrRKB2vw/LHAU5JhE
	 hXAXoKiUJosjaDbiLuvouPyqN4NF5GPOtOQfPTrCKRf4FdcUCVnScRZgfiADX6vBOt
	 ghqEgfYyFwIdes3DMkj8c8tYnnG/2A/MmPy9Kz/3wvRk7TLSm+0D4WuZzG6/8sGGN0
	 VvInvaFT5FH0w==
Date: Mon, 11 Nov 2024 10:34:46 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Alex Henrie <alexhenrie24@gmail.com>
Cc: Kuniyuki Iwashima <kuniyu@amazon.com>, branden@debian.org, 
	linux-man@vger.kernel.org, netdev@vger.kernel.org
Subject: Re: [PATCH] rtnetlink.7: Document struct ifa_cacheinfo
Message-ID: <76utdqobulhs7botd22qrtxooklpv6ai6xyh7wbjy737kiblhw@637outnydbi7>
References: <20241105041507.1292595-1-alexhenrie24@gmail.com>
 <20241105055338.61082-1-kuniyu@amazon.com>
 <xfzcwmn6syhywvdcu6kn3mkuwqpo5usiwkssblvk6qrpoys5dp@hwgvspb43tdo>
 <CAMMLpeRMKEWkNC=irH5dWwJSMS2jp6OSeB6KJBh2=ZbLsigM7A@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="fg5ihjp3ifj7wsod"
Content-Disposition: inline
In-Reply-To: <CAMMLpeRMKEWkNC=irH5dWwJSMS2jp6OSeB6KJBh2=ZbLsigM7A@mail.gmail.com>


--fg5ihjp3ifj7wsod
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Alex Henrie <alexhenrie24@gmail.com>
Cc: Kuniyuki Iwashima <kuniyu@amazon.com>, branden@debian.org, 
	linux-man@vger.kernel.org, netdev@vger.kernel.org
Subject: Re: [PATCH] rtnetlink.7: Document struct ifa_cacheinfo
References: <20241105041507.1292595-1-alexhenrie24@gmail.com>
 <20241105055338.61082-1-kuniyu@amazon.com>
 <xfzcwmn6syhywvdcu6kn3mkuwqpo5usiwkssblvk6qrpoys5dp@hwgvspb43tdo>
 <CAMMLpeRMKEWkNC=irH5dWwJSMS2jp6OSeB6KJBh2=ZbLsigM7A@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAMMLpeRMKEWkNC=irH5dWwJSMS2jp6OSeB6KJBh2=ZbLsigM7A@mail.gmail.com>

Bon dia Alex,  :)

On Sun, Nov 10, 2024 at 11:17:40PM GMT, Alex Henrie wrote:
> On Tue, Nov 5, 2024 at 4:33=E2=80=AFAM Alejandro Colomar <alx@kernel.org>=
 wrote:
>=20
> > On Mon, Nov 04, 2024 at 09:53:38PM GMT, Kuniyuki Iwashima wrote:
> > > From: Alex Henrie <alexhenrie24@gmail.com>
> > > Date: Mon,  4 Nov 2024 21:14:20 -0700
> > > > struct ifa_cacheinfo contains the address's creation time, update t=
ime,
> > > > preferred lifetime, and valid lifetime. See
> >
> > We use two spaces after period (the correct amount).  :)
> > (I'm thinking we probably want to document something about it in
> >  man-pages(7).  Branden, do you want to send a patch about it?  I want
> >  to include the references you showed to me, and you probably remember
> >  better those links.)
> >
> > > > https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/=
tree/include/uapi/linux/if_addr.h?h=3Dv6.11#n60
> >
> > Please use this format for links:
> >
> > Link: <http://example.com>
>=20
> Since the second sentence will be eliminated in favor of a Link line,
> the first sentence will no longer have any spaces after its period.
>=20
> > Which include provides the structure?

The manual page should document it.  Readers should know which header
they need to include to use a structure, no?

>=20
> linux/if_addr.h, which is the file I linked to in the commit message,
> and the same file that contains struct ifaddrmsg which is documented a
> few paragraphs earlier in the same section of the man page.
>=20
> > > > +struct ifa_cacheinfo {
> > > > +    __u32 ifa_prefered; /* Preferred lifetime in seconds, -1 =3D f=
orever */
> > > > +    __u32 ifa_valid;    /* Valid lifetime in seconds, -1 =3D forev=
er */
> > >
> > > -1 should be rather 0xFFFFFFFF (INFINITY_LIFE_TIME) as it's unsigned.
> >
> > I prefer UINT32_MAX over 0xF...F, which might be unclear how many Fs it
> > has.
>=20
> INFINITY_LIFE_TIME is not defined in any public header, so let's not
> mention it. I agree that it's hard to see at a glance how many F's are
> in 0xFFFFFFFF. I would suggest ~0u, which is short and sweet, but
> UINT32_MAX is a little better because ~0u isn't 32 bits on all C
> compilers that have ever existed.
>=20
> > > Also, it would be nice to mention that ifa_prefered must be less than
> > > or equal to ifa_valid (ifa_prefered <=3D ifa_valid) and 0 is invalid =
for
> > > ifa_valid.
> > >
> > >   0 <=3D ifa_prefered <=3D ifa_valid
> > >   0 < ifa_valid <=3D 0xFFFFFFFF
>=20
> I'll add a paragraph to explain those relationships.
>=20
> > It might also be interesting to add a separate manual page for the type,
> > and reference it here.  Otherwise, the page starts getting fatty.
>=20
> Perhaps. In my opinion, there's not enough material here to be worthy
> of its own page.

If you see the pages in section 2type or 3type, they're pretty small.
Types don't have that much to tell.  But they're nevertheless useful.
When you just want to see which header you need for a given type, just
run `make type`, and you'll immediately see it.  It also has a few lines
of description.

But up to you.

> Thanks for the feedback,

Have a lovely day!
Alex

>=20
> -Alex
>=20

--=20
<https://www.alejandro-colomar.es/>

--fg5ihjp3ifj7wsod
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmcxz68ACgkQnowa+77/
2zKzjQ/+JFCWdop6trDsOsYD3fs91JWi7vPkiNOlGazo8k4y78alVjf5iWw+1T96
v2vhPK/vHhnJhHVFnI/8LGmiMkkPrzrJ27xm6wl/pfvfFbeZ3odct0VqTbxJbNx8
9YrIVFG6UUyxVfmm4jb4LvqH/Z5Gt3EvXaikSCF0qHMAp1racQB025X/zoS4m1u4
8rvxOHfD/xLbG5AhPu3tZmY0oEpAat8F7eB7uqsAhUGN0mDMv3z6KwdUyr+yT5RM
OCvLuTsMhM0r4uTDbjPo68WglQoFdg353ijcWUYMF4A1DeBW1lRvbhayQ2yOhIsa
5mUJm4EKeOs4hCz+oZJIGHR0IOj5VHwbVO+Oiigs5HgnifNVdPsFrHOBpnNnj0yg
XbzHj0R/CIghcvv29jVqQDswQlpVG0bgZU7b1yMfeBqe0HM7X4StUCaCjJZJw1lF
dZqAE4F2Nt26/wMMN38hFW3p9NxdL8ak4AUNz1jTNGxYeSVxU0Eqrv8B+om4/M2U
imcjW7YuVrKuqo59Cz59axrgb5upxvyEFQEnHNSxSFBE51zd3oqPNxIEViy4RX2i
SLFhpVtrXB2QI9bD9q8EvpSHz3Yerj6g3j2ix1UI8GovV7K4RdvbxlbPGKnjAwcf
DvEzetmhZO51Pra+0eCnyU8Y3OqXhHf9RLdaMTNFVzTbJcrjyhI=
=Uhqn
-----END PGP SIGNATURE-----

--fg5ihjp3ifj7wsod--

