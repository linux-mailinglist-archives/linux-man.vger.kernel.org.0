Return-Path: <linux-man+bounces-3095-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2235FACCDD4
	for <lists+linux-man@lfdr.de>; Tue,  3 Jun 2025 21:49:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DBC5B1728B7
	for <lists+linux-man@lfdr.de>; Tue,  3 Jun 2025 19:49:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8231A205AA3;
	Tue,  3 Jun 2025 19:49:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HH25LCO/"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 407ED2F2D
	for <linux-man@vger.kernel.org>; Tue,  3 Jun 2025 19:49:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748980143; cv=none; b=dl4Phrx+9NsOF6dSbAwymA5JFNc7kjmF0Ey1uKihUu9NASG6aCVWWbAfmvZW59hiifYrxMREJAkBN2DY4sY8WsXPI06iWbIjZwekbku+28Hc6FoAcgcsMoqU0K8CVcid7TGWqgAkTT6rtVFbnG65yvWSpdDH5KWuf/Q4RnBFV0w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748980143; c=relaxed/simple;
	bh=/PD2Ka2qTrw7QGmi/nsznlCwO1yH6FxdPC0X8Z2FCBY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=iHrdrEFfe4DDQkJOuvG//DTzDxP70Wm5MerAxXLyiks1sL0/B/DhNpV+aid9Ht14+LWinN88301BRSrNoEuNxUQDdkFvT0K0Pt/MIie3c45jcF7Zxe2h/MgsYN+7JpdQak/5pal9AHP/O7JP2+ThfDFmF3NYl0rJnBdYCYvqKSU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HH25LCO/; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 848C3C4CEED;
	Tue,  3 Jun 2025 19:49:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748980142;
	bh=/PD2Ka2qTrw7QGmi/nsznlCwO1yH6FxdPC0X8Z2FCBY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=HH25LCO/2cC/W3I7EEyKURNBDCWT+h+0PGGxUeXOwpM70eWIVqJtMM5Izyyq1/p4q
	 oiaEDhv27tERbpTDNTCDBoHQxBUN3a+KhexwVFzAetdvaS0MHzXqu8pa5PRxwL0AsE
	 3cAGc5s78AvDY5lIuGyMRxF6A4PB4AqwbkasrVKkA0uW0FLLE6rZ5rtoOTefp+GpqP
	 M31FGOQCjQ2rVMcZKNTkGvCt2r1OySdDaknpABJ7vx7WngE/b6WLQcryQ9+ru+/HyL
	 mLb8CvhQSCeVV/7opa+S4eJBgVT8Xfx5aiarFpcY0pn5gyt/hYDz1c4bI0vgZ2OPyt
	 zTbY10pES8bMw==
Date: Tue, 3 Jun 2025 21:48:58 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Mark Naughton <mnaughto@redhat.com>
Cc: Mark Harris <mark.hsj@gmail.com>, linux-man@vger.kernel.org, 
	Joseph Myers <josmyers@redhat.com>
Subject: Re: Forward Deceleration Changes
Message-ID: <movtjbigtmqu5qwwijxng7pc62bvfxhqf5fhf36rd5wq67c4yy@wnpjvmfuti2i>
References: <CACdZg2UAkDE2KZ=0tCN+pV+-mjupeY=qdGALYPshS3Q0BrHnzw@mail.gmail.com>
 <7zkvtkaafxycu2si3r4jl6qaynzfkedvphhh26rfjibq3kbxc7@56katuftwykv>
 <CACdZg2XOB9gmH0aJRLZVn4gfsd8xHyn78ohB7=wwo2ppzsXzig@mail.gmail.com>
 <kghzj5sfvb7dmkdg5iqtt2l25unqw4voxps3jcy6s7wcznr4gx@e2dn6h3geupq>
 <CAMdZqKFhcNgH-xWSUZa=N6X0kkpH=XqtZNxnBCmgoCT+XY=7Bg@mail.gmail.com>
 <CACdZg2W6+EuYn+GJYUAr+6OdU7M886GChn1+uMUC-iNxCsV7pA@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="oa4vqoikkwikgcfm"
Content-Disposition: inline
In-Reply-To: <CACdZg2W6+EuYn+GJYUAr+6OdU7M886GChn1+uMUC-iNxCsV7pA@mail.gmail.com>


--oa4vqoikkwikgcfm
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Mark Naughton <mnaughto@redhat.com>
Cc: Mark Harris <mark.hsj@gmail.com>, linux-man@vger.kernel.org, 
	Joseph Myers <josmyers@redhat.com>
Subject: Re: Forward Deceleration Changes
References: <CACdZg2UAkDE2KZ=0tCN+pV+-mjupeY=qdGALYPshS3Q0BrHnzw@mail.gmail.com>
 <7zkvtkaafxycu2si3r4jl6qaynzfkedvphhh26rfjibq3kbxc7@56katuftwykv>
 <CACdZg2XOB9gmH0aJRLZVn4gfsd8xHyn78ohB7=wwo2ppzsXzig@mail.gmail.com>
 <kghzj5sfvb7dmkdg5iqtt2l25unqw4voxps3jcy6s7wcznr4gx@e2dn6h3geupq>
 <CAMdZqKFhcNgH-xWSUZa=N6X0kkpH=XqtZNxnBCmgoCT+XY=7Bg@mail.gmail.com>
 <CACdZg2W6+EuYn+GJYUAr+6OdU7M886GChn1+uMUC-iNxCsV7pA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CACdZg2W6+EuYn+GJYUAr+6OdU7M886GChn1+uMUC-iNxCsV7pA@mail.gmail.com>

Hi Mark and Mark,

On Tue, Jun 03, 2025 at 03:52:59PM +0100, Mark Naughton wrote:
> Agreed, Mark.
>=20
> Mark
>=20
> On Tue, Jun 3, 2025 at 3:48=E2=80=AFPM Mark Harris <mark.hsj@gmail.com> w=
rote:
> >
> > > > When I open a man page I want to see "what arguments do I pass and =
in
> > > > what order". With this change you have to parse the prototype for t=
he
> > > > semi-colon
> > > > to see the start of the args.
> > >
> > > I tried to use a style that makes the ';' stand out more, by breaking
> > > the line after it.  But I agree that the first times you look at it, =
it
> > > can be a bit confusing and hard to distinguish.
> >
> > The main issue with the forward declaration syntax is that it is easy
> > to mistake the forward declarations for arguments, especially when
> > just quickly checking the man page to remind yourself which argument
> > is first.  If you want to retain this syntax, what might help is to
> > remove the bold font style from the forward declarations, or change
> > their formatting in some other way to be different than that of the
> > arguments.

Hmmm, agreed.  I had been thinking about it.  Maybe using all roman for
both the type and the variable name would be good.  Thanks!  I'll do it
when I finish some other work I'm doing at the moment.


Have a lovely night!
Alex

--=20
<https://www.alejandro-colomar.es/>

--oa4vqoikkwikgcfm
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmg/UaQACgkQ64mZXMKQ
wqnqTg//W5O7eC6fgqjpgRXC3En5EiiztFPnkCCzeQCRXaZztDrSdK8nL0Wzx/xR
gkWk16v0uwIW+oD04gGnJtrrbY++Y+YPtRS/G05NoJrLWILEJfumbcEKYcK8kt1/
h23MM0KdRsQ4oioSmViDvGdOg/03ImKRHb0j6t3CxSZ2fAPsQLaY5SI3WzTo9K1H
O0n4VJKyHgC9GLzGtO9YY3damvQ7+eu/xaNPSCGX57341SiVEO8Acs+ghUGqBPZJ
JA/PmZZlqIGMizvaKlhNViNigN9qRbyt8CW/nHR3Wn/sBcERppn5pbN82HAzAxyM
Kbn5ipIarUqd7Jm3fW/PnaGPscMKrclbVbIJLlEicHeCvSWRlWDBKM40n5ZErPHl
XhQD5bKHsV5vuXQzqaTCFLQnZgDY2SIAm0c1vlINp/b9gVc8RcFXZiOh3pYK1Bfd
qdzPYsI9K2IjXf6iuPkwVsqoJyvuYMC69TtWkan6/WcJvXJZocx2ItqlT5fOAwMW
XtfeFGpTRe+qKsccHm8OiumX5nC1mRz7j8TPD9/FWmZAqZFOeylvBhwCiaFHeRSR
CvnvUCfekHElqTqJHHc0lFr4g89fWwGX2ecia7pok9jsxpISo7l5KEm2vbcxSKmm
bNvQ2Kza9gL0BBSAopyLAQHKeyTTsAaPmJZu9dnT10nc8+rj2W0=
=/bjw
-----END PGP SIGNATURE-----

--oa4vqoikkwikgcfm--

