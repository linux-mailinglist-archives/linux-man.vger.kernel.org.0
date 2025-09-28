Return-Path: <linux-man+bounces-3996-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DE97BA7904
	for <lists+linux-man@lfdr.de>; Mon, 29 Sep 2025 00:25:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 95FFD3A1119
	for <lists+linux-man@lfdr.de>; Sun, 28 Sep 2025 22:25:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A4AEE261B65;
	Sun, 28 Sep 2025 22:25:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ffLLEK/l"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62E9E257848
	for <linux-man@vger.kernel.org>; Sun, 28 Sep 2025 22:25:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759098313; cv=none; b=YpVm8yTxWrEXp8NOXVrB1wYOisyAH5x1XrM93ajdonofkmmfUtqRZgG+2MruLvDwc+xdg1Xudlw/ctq/hCFPQibdHMLWr2AaxGLsFWU1KQtCETWPXsKMdBq6XND9+0ylvniM+SiiIQ9d66NJYsH/DSu02mJIPY+sXwp48i4Nkoc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759098313; c=relaxed/simple;
	bh=zFUDy2s+oOQSxmy6vY+biucqKitbOvSUQyK4jIyS17w=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=DupMPGusyt9HPGxrvgYwZbAJzNe4kJ+/AQCBr76CJnblHTLAaDRYWi29m7/ij6Vru9RaJ0dfddZYqLEYpgu/zW2wkw08zouFuyZILN5RYx6+VBVtNqthIorYVyBUHq2Zl6qh1ukOZtqRtLIDvMTCPIkFrqWlv95e+CIWWcql2f0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ffLLEK/l; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 20233C4CEF0;
	Sun, 28 Sep 2025 22:25:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759098311;
	bh=zFUDy2s+oOQSxmy6vY+biucqKitbOvSUQyK4jIyS17w=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ffLLEK/llnzJTSN5HKnce2VhyqocWnfg8bObPtWIybV5ip482xrtrkvEW0kk91Itt
	 0G04aAe2zBJ3+VRz2aszPqjTw8IC0M45tf2i+VTvNwhS//DaRwga0Nx9rl4B+fV3Fq
	 1oAND17yOaD41kXXbToYkfLpc8oPCPoHyf8/8V3sadPCL87baScrFu+rWzJuOXXwuM
	 hzcMOrRDb1C4U/F2zqW6r1y4gEulPklR5Chur+jYG6bpKtnQ8Jbzc80pTcMVZnh9vl
	 y2XiGs95jbjDya/OJcQBA8H1+rrM6GSMNquJeYsQhz2D/zVkIF8CbaccX9Pq4ijJAW
	 wxFxsUumNixtA==
Date: Mon, 29 Sep 2025 00:25:08 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Mark Harris <mark.hsj@gmail.com>
Cc: libc-alpha@sourceware.org, linux-man@vger.kernel.org
Subject: Re: getpwent_r(3) needs gr->gr_mem to be freed, but that's not
 documented
Message-ID: <b27573pyyrcczzr2hu3rhlecxitsfygsxwkdar7r3o5plqzhc4@3hbylr4udhsy>
References: <vy2burlsbramtt4oysq7gsesrytp47kkhmevlmgkxsktksjeit@7eenz2wnzkh7>
 <qxojij46n3oofvv7nekkslfuxsbdcxinf2lo763242hfzwm3fe@un6wgjr34rku>
 <CAMdZqKGBW=7jAWwtQLFyMTcPC03Wz0cuCvys9Hg+9FCvhbC5UQ@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="l2ngsgxtp5hflcmn"
Content-Disposition: inline
In-Reply-To: <CAMdZqKGBW=7jAWwtQLFyMTcPC03Wz0cuCvys9Hg+9FCvhbC5UQ@mail.gmail.com>


--l2ngsgxtp5hflcmn
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Mark Harris <mark.hsj@gmail.com>
Cc: libc-alpha@sourceware.org, linux-man@vger.kernel.org
Subject: Re: getpwent_r(3) needs gr->gr_mem to be freed, but that's not
 documented
Message-ID: <b27573pyyrcczzr2hu3rhlecxitsfygsxwkdar7r3o5plqzhc4@3hbylr4udhsy>
References: <vy2burlsbramtt4oysq7gsesrytp47kkhmevlmgkxsktksjeit@7eenz2wnzkh7>
 <qxojij46n3oofvv7nekkslfuxsbdcxinf2lo763242hfzwm3fe@un6wgjr34rku>
 <CAMdZqKGBW=7jAWwtQLFyMTcPC03Wz0cuCvys9Hg+9FCvhbC5UQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAMdZqKGBW=7jAWwtQLFyMTcPC03Wz0cuCvys9Hg+9FCvhbC5UQ@mail.gmail.com>

Hi Mark,

On Sun, Sep 28, 2025 at 02:54:59PM -0700, Mark Harris wrote:
> Alejandro Colomar wrote:
> >
> > On Sun, Sep 28, 2025 at 10:26:33PM +0200, Alejandro Colomar wrote:
> > > Hi!
> > >
> > > Another thing I realized about getpwent_r(3) et al. is that gr->gr_mem
> >
> > Actually, getgrent_r(3).
> >
> > > is allocated by the function, but is expected to be freed by the call=
er.
> > >
> > > I didn't find this documented, neither in the manual page nor in the
> > > glibc manual.  Is it documented but I missed it?  Or did I misunderst=
and
> > > something?  Or is it just that nobody documented it?
>=20
> All memory referenced by the structure, including gr_mem, comes out of
> the buffer supplied to the function.  POSIX doesn't have getgrent_r,
> but it has getgrgid_r, and says:

Hmmm, that's good.  Thanks!  At least, the user doesn't need to free(3)
anything weird.

So, a good estimate of the size to be allocated prior to the
sgetgrent_r() call should be:

	size =3D strlen(s) + 1 + strchrcnt(s, ',') + 2;

That would be wasting a little bit if there are any commas outside of
the fourth ':'-delimited field, but it should work.

BTW, where's this exactly in the glibc source code?  It's a bit hard to
follow.


Have a lovely day!
Alex

>     Storage referenced by the group structure is allocated from the
> memory provided with the buffer parameter, which is bufsize bytes in
> size.

--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--l2ngsgxtp5hflcmn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmjZtb0ACgkQ64mZXMKQ
wqnW2g//Q7ZplnKe9/Zll5WBNlqVfVNubqovuesmn2QEKnugtNl3FTaSoDXXjm7F
pB6saGINrGCi/U83xEa06rdbZabUSSl4jY3SuzPAwvvgjYvHKtrL98foURyzpoN2
VfIaSgF6NSSzb+9CX6UoM05fXwDgHWzKj9FomKkzbnXNv4szugx6FineSZQTDwy9
wc+bay0uUjSSt24omx+JgaldbVO8C0HujM2AtP4iRwdcIf9klk6UGutdAYrufXYk
lL8i1tKjp+X0omYDad14hWu4wqhuOrj8jhQYmdj1I1FFz8ELSZ53Y3a70aAsn5/i
AvzFx4UzoiB56kJ7WIYr75wdNhkISN4YbrjacXXvRO+iVvzxv2susGiLrBVXHtLQ
hRWSH16ojgRE/HgVN+jXFkR/Fkurixzje84Zvjs0ZddQHcUZ327h+Dbl7F5KznkR
iz1qPRYu7RZUGsKF9jP2fmfDkNifGQKsj/4jl9JSkVF+MjNcaQGlABT+VqqDkzct
2syZZOy6dY9Dh+bxakVhTAwXiL3itGp2iGXzTRxiumfR5m3eaEV3pHFWgdy7xFOy
hpS6lKeFHQOWNSl7ZbwkMLj0L+wppkErWI+WV3JIdI/NjJq07BAaFycMaijV07AT
45jzXORHS9ddDim239v3E9Noas48gOfCN5Afzj3yyCnlCySTJH0=
=C9z7
-----END PGP SIGNATURE-----

--l2ngsgxtp5hflcmn--

