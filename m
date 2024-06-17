Return-Path: <linux-man+bounces-1219-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A96290AC5E
	for <lists+linux-man@lfdr.de>; Mon, 17 Jun 2024 12:57:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B422228A5A3
	for <lists+linux-man@lfdr.de>; Mon, 17 Jun 2024 10:57:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 38D46194C7D;
	Mon, 17 Jun 2024 10:56:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nwKXA2ta"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E913E194092;
	Mon, 17 Jun 2024 10:56:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718621776; cv=none; b=YEyzgYXljVmJCoKWwvKY2jAZ/Wj4IRBQYnraytvbIugLP24ClLz9EHlqqpBkWHhBiqZ+rD/yfaEGIX7EE5VJ7pJgWdLLz7tO5hfc+f33t528RJr49O1qXCOy0f8mGCD9BP4iuirYd3en/5kYubtlX36LxxwsltDi+TiQOaBN55c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718621776; c=relaxed/simple;
	bh=zzLLXAIICTOoRn22UoSYRnUST/TkPx1rcgkyJKROuCc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=S34uty4QG5Wf3WbTBx+H2WvVCxK1DpaFkzFm2DJHdXuhn6+0NhFLHmB8DVPxfjFx+Z64xsa4M1QO8Jr8iqrX9FlE9Ykr6LRZdcz2ajIsqLhBqJDbRG9v/korGpEuFn7NUSe+qvSPoo+gG6Xzshm92AVxDAuIxlfNtur5OyyVlpA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nwKXA2ta; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2D4E2C2BD10;
	Mon, 17 Jun 2024 10:56:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718621775;
	bh=zzLLXAIICTOoRn22UoSYRnUST/TkPx1rcgkyJKROuCc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=nwKXA2taI6TwPMcacCN0O/FU/7TxnB9/CwnhF47Z+IDPpaRjwoV52L+jbRwPlx02O
	 3PP+83FhbbIDUWc0SQYlg8IArH3LGPkFtMiB0lbfdkFERNwNZIMQRv7ftD4bc6rgl1
	 MHzzO+r1lms/3gLQGRGu8RL0PtC/JuVJZjYS28D/15htp4SNun9eOplgOdt3V3uaUX
	 e6umsC75RryM5MVoBJ1XaY3ophVOmGF5ChemWWcAujqSaPOXZSM1yNfA6LGUEJn+cR
	 4uqC1E0Cf4ec4HgZdT/YM0isMDXoUcgWHd6ZNnbguwgSZgy81+oMCVmW3kUoAAmh3u
	 kowH5AGhNYMcg==
Date: Mon, 17 Jun 2024 12:56:11 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Dev Jain <dev.jain@arm.com>
Cc: linux-man@vger.kernel.org, mingo@kernel.org, tglx@linutronix.de, 
	mark.rutland@arm.com, ryan.roberts@arm.com, broonie@kernel.org, suzuki.poulose@arm.com, 
	Anshuman.Khandual@arm.com, DeepakKumar.Mishra@arm.com, aneesh.kumar@kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/2] signal.7: Clearly describe ucontext kernel dump
 to userspace
Message-ID: <ytg2isaszdvkt3s7gs7s4zb5dmkl3d7ledv6t6raf73jzkaayi@n45spi4qc6d7>
References: <20240611090823.820724-1-dev.jain@arm.com>
 <20240611090823.820724-2-dev.jain@arm.com>
 <covxubn5xegwevqjieovannko2hyq6hzwkloltxlca6fz5ygvu@rzofsbealrpk>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="bz4vzcfigxzzydw2"
Content-Disposition: inline
In-Reply-To: <covxubn5xegwevqjieovannko2hyq6hzwkloltxlca6fz5ygvu@rzofsbealrpk>


--bz4vzcfigxzzydw2
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Dev Jain <dev.jain@arm.com>
Cc: linux-man@vger.kernel.org, mingo@kernel.org, tglx@linutronix.de, 
	mark.rutland@arm.com, ryan.roberts@arm.com, broonie@kernel.org, suzuki.poulose@arm.com, 
	Anshuman.Khandual@arm.com, DeepakKumar.Mishra@arm.com, aneesh.kumar@kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/2] signal.7: Clearly describe ucontext kernel dump
 to userspace
References: <20240611090823.820724-1-dev.jain@arm.com>
 <20240611090823.820724-2-dev.jain@arm.com>
 <covxubn5xegwevqjieovannko2hyq6hzwkloltxlca6fz5ygvu@rzofsbealrpk>
MIME-Version: 1.0
In-Reply-To: <covxubn5xegwevqjieovannko2hyq6hzwkloltxlca6fz5ygvu@rzofsbealrpk>

On Mon, Jun 17, 2024 at 12:54:10PM GMT, Alejandro Colomar wrote:
> On Tue, Jun 11, 2024 at 02:38:22PM GMT, Dev Jain wrote:
> > The set of blocked signals is updated from struct sigaction after the
> > kernel dumps ucontext. Mention this to avoid misunderstanding.
> >=20
> > Signed-off-by: Dev Jain <dev.jain@arm.com>
>=20
> Hi Dev,
>=20
> I've applied this patch, with some minor tweaks:
> <https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/c=
ommit/?h=3Dcontrib&id=3D9e1f221b2099ee2c936ce4d6562a61e1e253af47>

Whoops; I found another issue, and amended:
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3Db8136d84eb3b9b1db0dd6f54f47c1c104682f44f>


>=20
> Have a lovely day!
> Alex
>=20
> > ---
> >  man/man7/signal.7 | 8 +++++++-
> >  1 file changed, 7 insertions(+), 1 deletion(-)
> >=20
> > diff --git a/man/man7/signal.7 b/man/man7/signal.7
> > index 4ba5306c8..7d22a7cfe 100644
> > --- a/man/man7/signal.7
> > +++ b/man/man7/signal.7
> > @@ -282,7 +282,13 @@ the thread's alternate signal stack settings.
> >  .B SA_SIGINFO
> >  flag, then the above information is accessible via the
> >  .I ucontext_t
> > -object that is pointed to by the third argument of the signal handler.)
> > +object that is pointed to by the third argument of the signal handler.
> > +This object reflects the state at which the signal is delivered, rather
> > +than in the handler;
> > +for example, the mask of blocked signals stored in this object will not
> > +contain the mask of new signals blocked through
> > +.BR sigaction(2)).
> > +
> >  .IP (1.4)
> >  Any signals specified in
> >  .I act\->sa_mask
> > --=20
> > 2.34.1
> >=20
> >=20
>=20
> --=20
> <https://www.alejandro-colomar.es/>



--=20
<https://www.alejandro-colomar.es/>

--bz4vzcfigxzzydw2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmZwFkoACgkQnowa+77/
2zIqbg//W74CC8ARhsd3y1iwcfPplqEk5+oJfWOoOxnwzaVOnAQ+QMi+vvvz4vkj
w7xCRohnUkiAdBnbPiPoVS6jbQPzc2ymbhx+4qjjn3wduQ/a8woulFQR8iuKD0tH
MtyA5Dl8eebEddWdaMV9/szLoVJp5se5HS0k4Y1RAuDrlgJNuS/OPgwI9VGCNuNH
ziihw8nn2LRmVXAL2MpYA21NcMoXSCki7Dr7u8zaZnan3xm7towqzN0Zq8NggMJn
YpILXOcMuL4cQ6di9jnsuzO0zE42ekBwETQ0k7Im9zOuQVLVbhIOWbFOVSuFAIVd
DWoXWBasLz44OQhFvgXGjtK/4Ac2QzQgJH5XciRPKNwIqlSPrC366lgYCA2oilv9
bxdhnE97bLG7hjDHfpu99sVRXaoCg2wAcOjO1A64tLMgK4HRec7+MA120cuTWNv4
cqMxGQiUJCuN+rSGdu/pyMFwB7vNouoF96ocgRPMSPpXpaNe+WXcgit/hoVIqC00
tj9ByGd8tYjSuoc9Gdw0SXLKIWQ9i1HJ70aEVDr31REYRod26rTbrPP/p6EblZCP
aBrDVbc31ZlkogZkHUphYP3PV5TWXWpcXdYjwibIntkQf8H+KvTmVy/Z26voEamq
wVGMmhBMF5myFydvkvtrOqGSL0aeF6IXXZL8zDRN7iKaccZlqtQ=
=99Qp
-----END PGP SIGNATURE-----

--bz4vzcfigxzzydw2--

