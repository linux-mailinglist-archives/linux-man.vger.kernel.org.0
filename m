Return-Path: <linux-man+bounces-2619-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E9CCA6AC21
	for <lists+linux-man@lfdr.de>; Thu, 20 Mar 2025 18:35:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 34C01483365
	for <lists+linux-man@lfdr.de>; Thu, 20 Mar 2025 17:35:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E01EC224B13;
	Thu, 20 Mar 2025 17:35:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gJO+3Z9g"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A222B21CA00
	for <linux-man@vger.kernel.org>; Thu, 20 Mar 2025 17:35:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742492115; cv=none; b=dEVJq2owmG4biNE/W9ZJB8BFvxYyOWO+CevzS+/ON8ItNgiDPbNQ6ifmZXIc1kp7ygRBrKFQWVDD1ENSPpJfYzo8XSCP0t1YcU491jqnO1gODwOZlFunoOAOCJjHwoBBgUKcykoYyokyE108kYFLwY3MNhzER9vRvQwdWRP2I58=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742492115; c=relaxed/simple;
	bh=O+ig3vnMl+7+gX9R3ztWVAkZkKk2gls6pPst/4LsI0A=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=kXl59PEri7M6RRhLOwbwfeNqJ6Ne97qv3zZibf4+ASCd9VNqTWVmGlLlLUZdJMZL7JrxEh5nmjWS1NKJ6+nxOumHiK3FRKTjDwyKld/yt/fFJ71bjk8Dk+3mFEsnSbv+1U1JzoPJNBjjsKeDWuRZhTu42dH4MPfCoECQ5FBa+1Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gJO+3Z9g; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 467CAC4CEDD;
	Thu, 20 Mar 2025 17:35:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742492115;
	bh=O+ig3vnMl+7+gX9R3ztWVAkZkKk2gls6pPst/4LsI0A=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=gJO+3Z9ga20oPoCqcnr9L3Y5ithE3zr96YJB9UPSgRLSkLWEoY1zzvyDXRMqZmeT2
	 ImuSaXqLFm2f28A1EVgaa/nGRRPMK6ecb3DE09XLs+FqJqCsrCfXfY1s20wFGuYgvV
	 3zW+Rpe6n0ZpltfcxRtvpuDvqbMuzJBAnSKIeYSJ1HLkLbsG3oXuQEmnZWR1iyXxpu
	 T+JGBtk4aLvpiYT0cL0J9llbT/1cb+FXfM6VH7lp7yAl1eNCy62YnM0aAvDbmNfzWJ
	 P94IXDivbV8y1q9q0mfqsuWgCiaxgka6BjTQjytOEdhx0yvJx1U9MERqPpNJ6tOS2p
	 VlMfk/G1eJS5Q==
Date: Thu, 20 Mar 2025 18:35:12 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Joe Konno <joe.konno@linux.intel.com>
Cc: Joe Konno <joe.konno@intel.com>, linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man2/get_mempolicy.2: nodemask param is a pointer
Message-ID: <rwt3kkxllglicpdnqtn63vjdyve4imbls6xuqapvs52dq36ghb@ayn2seu2wst5>
References: <20250320163319.808000-1-joe.konno@intel.com>
 <zvmwpscmqqyyqwktnvd7e56tw2bpop7hlhold4wfhx5nn46vdv@54zng5rcq2gg>
 <47de99ff-0943-46a1-92d4-a2306978a229@linux.intel.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ll377gddfvw4lomh"
Content-Disposition: inline
In-Reply-To: <47de99ff-0943-46a1-92d4-a2306978a229@linux.intel.com>


--ll377gddfvw4lomh
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Joe Konno <joe.konno@linux.intel.com>
Cc: Joe Konno <joe.konno@intel.com>, linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man2/get_mempolicy.2: nodemask param is a pointer
References: <20250320163319.808000-1-joe.konno@intel.com>
 <zvmwpscmqqyyqwktnvd7e56tw2bpop7hlhold4wfhx5nn46vdv@54zng5rcq2gg>
 <47de99ff-0943-46a1-92d4-a2306978a229@linux.intel.com>
MIME-Version: 1.0
In-Reply-To: <47de99ff-0943-46a1-92d4-a2306978a229@linux.intel.com>


Hi Joe,

On Thu, Mar 20, 2025 at 10:02:21AM -0700, Joe Konno wrote:
> Derp. I can't blame Monday for this one. ^_^ Apologies for the noise.

No problem.  :)


Cheers,
Alex

>=20
> On 3/20/25 09:42, Alejandro Colomar wrote:
> > Hi Joe,
> >=20
> > On Thu, Mar 20, 2025 at 04:33:19PM +0000, Joe Konno wrote:
> > > Checked, and nodemask parameter for this syscall has been a pointer
> > > since v2.6.7 (near as I can tell).
> >=20
> > It is currently documented as such.
> >=20
> > 	unsigned long nodemask[(.maxnode + ULONG_WIDTH - 1) / ULONG_WIDTH],
> >=20
> > It is an array parameter, and array parameters are adjusted to pointers.
> >=20
> >=20
> > Have a lovely day!
> > Alex
> >=20
> > >=20
> > > Fixes: 77f31ff920bc ("get_mempolicy.2, mbind.2: SYNOPSIS: Use VLA syn=
tax in function parameters")
> > > Signed-off-by: Joe Konno <joe.konno@intel.com>
> > > ---
> > >   man/man2/get_mempolicy.2 | 2 +-
> > >   1 file changed, 1 insertion(+), 1 deletion(-)
> > >=20
> > > diff --git a/man/man2/get_mempolicy.2 b/man/man2/get_mempolicy.2
> > > index 526acc0c9a17..d6a8eca9564b 100644
> > > --- a/man/man2/get_mempolicy.2
> > > +++ b/man/man2/get_mempolicy.2
> > > @@ -18,7 +18,7 @@ NUMA (Non-Uniform Memory Access) policy library
> > >   .nf
> > >   .P
> > >   .BI "long get_mempolicy(int *" mode ,
> > > -.BI "                   unsigned long " nodemask [(. maxnode " + ULO=
NG_WIDTH \- 1)"
> > > +.BI "                   unsigned long *" nodemask [(. maxnode " + UL=
ONG_WIDTH \- 1)"
> > >   .B "                                          / ULONG_WIDTH],"
> > >   .BI "                   unsigned long " maxnode ", void *" addr ,
> > >   .BI "                   unsigned long " flags );
> > > --=20
> > > 2.49.0
> > >=20
> >=20
>=20
>=20

--=20
<https://www.alejandro-colomar.es/>

--ll377gddfvw4lomh
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmfcUccACgkQ64mZXMKQ
wqkllg//SYocsWciwP6uBaBsGUeeUTimHKSD0KQ1ORXCKymYcKPge1e0ky1vvjQJ
rZSDR3+7EZYKW0lqjI6sXVdLbjaCZXcPmsS0JpNDsdLE/EFmIYdTwQoxtGBxpBWW
6owgupgM9qb5DD18Dmfo9BIoUwN+O+t7CqqAWrzhiyuFPkj+11rTpvvmopPY1yzi
IIap45ySt/TPYhYw9rg8/7O+hfC9or9A3shJ5odjHlqN/PmG79XBcKddwoRTA+h1
lpXSvgF71hJWH92LyBzhBEw880BII1wErqdnZkiZs3AsRvLz/S1+sZbw655fI61M
SIBu61DC3thwLpSmSiOn17Mn5VWw2GekqOsfeecqDroZ5F8LHYoi3jxb2vKihAO+
QRdUYeRZRBlWpQHbeJJNVE07o4bt3GVixpwHp2jrHAqu58SaUrMrnlpIA5uu2FQj
EQNgJx+EZGklYfJE/cky5jRAGWyT/yRVYo0pG5kXAro7U3gX3sdo5rX4k2Je0og+
cQdxAG5owVbNoal3mVBin5t4rhz/+LPK3tX5SjW+gAvAmKDuKfDJBrnn3naY1JY4
B4nsi/03jjjKm0U7o2HefpKd+wYLEIrPaXg9bNNk8Q8KHPL8e8gpNWoch5aLOELr
8B3TK93u6Zm2wkY8ZbNJSK/Hc/0OuZXctXZg4VWYPZpV/MjMfM4=
=8Qrn
-----END PGP SIGNATURE-----

--ll377gddfvw4lomh--

