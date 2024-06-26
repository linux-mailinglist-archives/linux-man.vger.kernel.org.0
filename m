Return-Path: <linux-man+bounces-1269-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E4A66917571
	for <lists+linux-man@lfdr.de>; Wed, 26 Jun 2024 03:10:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9F50C1F222CA
	for <lists+linux-man@lfdr.de>; Wed, 26 Jun 2024 01:10:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4DE99BA47;
	Wed, 26 Jun 2024 01:10:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T8iCNa/2"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E91D28FA
	for <linux-man@vger.kernel.org>; Wed, 26 Jun 2024 01:10:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719364215; cv=none; b=G4XN78V3j+5SsZIwxduFYmAa6SA9eX97zC8K2DixKNGJ4eV4LCDO2zaYNW7dTiOcTrjz8y5UvkyW8XzLxWL3FedfQZ6xf0A8PrigjiL4yQ1pnslWp58bfFqUAz0fNUKkwc2F7+HGM8Pt97GK6QnE4W6fc0wSh1lA6GBXRPqyAiY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719364215; c=relaxed/simple;
	bh=Dm2rO4q0QyTwTWNSziMXri7UelZ8pJXdoQwEmH5Z3Qc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qeeGbOo0nvpoFpDEnlqA7OxTkNZcxtOYWVUg6j6p54c8yJIOMOzAh1poRX842h34qfKPaW2tyikgp36wJgN66v32FsTVeKOc1hm5Noti90so9XvJSNyL3W+aAdDOMp4eotARKv6iIUKZDH/+TJsDTYegZBgs1Ysgte9mDHkm5x8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T8iCNa/2; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A4917C32781;
	Wed, 26 Jun 2024 01:10:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719364214;
	bh=Dm2rO4q0QyTwTWNSziMXri7UelZ8pJXdoQwEmH5Z3Qc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=T8iCNa/22YYCuFjxy0bdGs7sRWZar98EJQXX9lSN77xGEPEIila1wKxhTqh4KgCXL
	 tdMgmcdROoimSEPCx0tEpXpvfLKGWc6TZ++vnnAtH2EZamS7Nc83kHOSXHoGnIDVgY
	 r2XyNzWxYz/XDJT15L9CX21YspEg04ldwuAHBIEZ7LFJGsPNWZjCbk1fkiW00tbJy5
	 CSQwAjZiZLqtUHSNW0pwMo86Cd6hiUjScdzJi9Z4E34MXuRietkuj/EykmrBf6xuIZ
	 nOKSNsfPNGOOzRChiPjNwksZ+BaQ84I9AVyfgkrBBPw4pQ0bVyjiHWHAhdop8XKpKv
	 fFuk4Zen2XnYQ==
Date: Wed, 26 Jun 2024 03:10:11 +0200
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Josef Bacik <josef@toxicpanda.com>, linux-man@vger.kernel.org
Subject: Re: [PATCH 1/3] statx.2: Document STATX_MNT_ID_UNIQUE
Message-ID: <dl4m45r3txr55k5utlnhrorl7rplaql5abfeh2tutb5mekfm7k@bjluqcdvji6a>
References: <cover.1719341580.git.josef@toxicpanda.com>
 <a45b2623a25357f33978b49963dad5f99b984386.1719341580.git.josef@toxicpanda.com>
 <20240626003945.hj6ub2jn52teddun@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="3qclnsprhvosvvvc"
Content-Disposition: inline
In-Reply-To: <20240626003945.hj6ub2jn52teddun@illithid>


--3qclnsprhvosvvvc
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Josef Bacik <josef@toxicpanda.com>, linux-man@vger.kernel.org
Subject: Re: [PATCH 1/3] statx.2: Document STATX_MNT_ID_UNIQUE
References: <cover.1719341580.git.josef@toxicpanda.com>
 <a45b2623a25357f33978b49963dad5f99b984386.1719341580.git.josef@toxicpanda.com>
 <20240626003945.hj6ub2jn52teddun@illithid>
MIME-Version: 1.0
In-Reply-To: <20240626003945.hj6ub2jn52teddun@illithid>

Hi Branden,

On Tue, Jun 25, 2024 at 07:39:45PM GMT, G. Branden Robinson wrote:
> [trimming CC list for this formatting issue]
>=20
> At 2024-06-25T14:56:04-0400, Josef Bacik wrote:
> [...]
> > -.in +4n
> > +.in +1n
> >  .TS
> >  lB l.
> >  STATX_TYPE	Want stx_mode & S_IFMT
> > @@ -255,6 +255,7 @@ .SH DESCRIPTION
> >  STATX_MNT_ID	Want stx_mnt_id (since Linux 5.8)
> >  STATX_DIOALIGN	Want stx_dio_mem_align and stx_dio_offset_align
> >  	(since Linux 6.1; support varies by filesystem)
> > +STATX_MNT_ID_UNIQUE	Want unique stx_mnt_id (since Linux 6.8)
> >  .TE
>=20
> In my opinion this would have been better done by retaining the existing
> indentation and changing the table to (1) expand the right-hand column
> with the "x" column modifier and (2) using text blocks for lengthy items
> in the right column.  tbl(1) in groff 1.23.0 covers this ground.
>=20
> Alex, your acceptance of this patch isn't showing up for me yet.
>=20
> $ git remote get-url origin
> https://git.kernel.org/pub/scm/docs/man-pages/man-pages/
>=20
> I guess it's only on your staging site so far?

Yep; it's on my staging site.

And I agree; I dislike that +1n.  But I didn't come up with a good
solution.

>=20
> Anyway, let me know if you agree.

Sure.  Do you want to send a patch against my remote?

Have a lovely night!
Alex

>=20
> Regards,
> Branden



--=20
<https://www.alejandro-colomar.es/>

--3qclnsprhvosvvvc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmZ7anMACgkQnowa+77/
2zLM2w/+Ksg8Mfs3M5OmtoRjxfSkN+hKVX5UvMLLag6nh0EC3fvdTp8fgIUlXW1x
4APVRqTUCxnt5gGmqQk9+B3mJfSBwSJwE9j1WOZaCMYaPSRocWbyWewPpe7Hfqko
qiTl2zT1gBcCtLwV3g0OtlVp+3SZFirUXFb/HqmPC0yW2k0WCFOljTAEx2Yp5fMK
4cEmvObKqCNI/nv3R+WtbrMgVH3ZblLhJm79vxp1JGNgPiruiAMe9NS4eRfxr82Z
J841mhkV3FeVbt4NsGXIbdfPvWiHAeN0xiBQORacWx9fdWr/Gnqiifb4albrc8up
oepc3jScPTJOfACr3wRe8aRxtMUNKcG+oVF6Iosz6qi+90wkwAIjPINiAW5JHCks
GpzD4VPhOOgVBKOuA6Rq37QpxtDmzrAb/c30gMalGTd4KY5DPnx2ePksm5L+KDQq
pxcM2rNdFPyxRFP5mhs+T4EDlNzgxkdFm9AlpJV7na1VcTITQA9irec7v07LVgxW
e0bv9uvFyCeKc72iBDp1WzNf7+oqMzXntQQVhTRQZeKppGaRW3eZ8gX2PshpVCX2
8LMOxbKk9ekJBX4eC5VNiE0ukSJ+flihfejHRkPmfUzfsEmJbOf/byFBO7ZbmAuw
sGzG+HmmMD3jNYI1TFkyMkgrQDeBeD6s27cEgGFS3Q9mndJiu8o=
=PbCB
-----END PGP SIGNATURE-----

--3qclnsprhvosvvvc--

