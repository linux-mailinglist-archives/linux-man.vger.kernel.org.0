Return-Path: <linux-man+bounces-2169-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 62F249F6637
	for <lists+linux-man@lfdr.de>; Wed, 18 Dec 2024 13:51:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A608216B799
	for <lists+linux-man@lfdr.de>; Wed, 18 Dec 2024 12:51:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1A06319CC3D;
	Wed, 18 Dec 2024 12:51:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DghIeeiP"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEAAE150980
	for <linux-man@vger.kernel.org>; Wed, 18 Dec 2024 12:51:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734526307; cv=none; b=nuT2FKHwZutstNkyQnuATdRewEsYIX/zSpZZPrhhKsq59Xt54+zZ0S64KE35EfUJTlKClvFNbkUFTKsGGtdGkHB1ZDnHGzxV2T7ATeR4AHSMhFz5NS10aMTLL6Zi1K2bqPbnQLYqGWJUodMeYvsPxgNPszzVhMF2QYHfavGhves=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734526307; c=relaxed/simple;
	bh=ha+F0aCSHowVhXXFx4Tv9OfeWpyjlcokAqppTqOPD3s=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=NESacbXwSuvpruVXLKcZheBw39zPTcx8NUKJjM90JZkhqRDBj6luUtz5N/wk59uMxOSWkMaYLgDrbeSjmwpTs0Q9sAYNjcJqy5pPtZBN5OsASEwMqlhaL7r1jn2OicD9D9EGY5oWk6/ruPM6+au02EojKsvtcTWatEGEMpgAlwo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DghIeeiP; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DD26DC4CECE;
	Wed, 18 Dec 2024 12:51:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734526307;
	bh=ha+F0aCSHowVhXXFx4Tv9OfeWpyjlcokAqppTqOPD3s=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=DghIeeiPDL/xCB27lreSS5T/2JNnQSzXh5Ijoy59XaPcDtIeM7hpGRaKRy4w06AZv
	 JTWsGMIQD6HeHDw0b7JknYAQ67ooThzkWGkwkdQ//yvy8zibt9OtEtnZB8aKxVRwGf
	 SVkkFfNcpuIJGrMYidC3jc4b/Zd2lW0B909q6NeswpTVEINiX9TSrsjEGPtVMDDcwK
	 jqicCXmrQRyWzi/IK/ZNs9VQ2OP0+qUHo1MxKdnYR4wYVnadwMPcY2bGpXCnnPYX20
	 1LXWVZ4vQRlf0pzH7785qecz7C+ZBlQLDqykhEaAf9p3iP6HchswFJMMqWSw32qRAL
	 /TCPpGtKs97bg==
Date: Wed, 18 Dec 2024 13:51:44 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Eugene Syromyatnikov <evgsyr@gmail.com>
Cc: Ahelenia =?utf-8?Q?Ziemia=C5=84ska?= <nabijaczleweli@nabijaczleweli.xyz>, 
	linux-man@vger.kernel.org
Subject: Re: [PATCH] getopt.3: remove _<PID>_GNU_nonoption_argv_flags_
 description
Message-ID: <3oaxdb2364nqty4fxts6i2fx66dksiw2vq3s5nlzfukztakg3j@iyl3vwrgrfe2>
References: <k57itvvrwcyzpgojoh6y4qe7gagkt4tuof6w6gcfpzpjg6juo7@tarta.nabijaczleweli.xyz>
 <CACGkJdsJ16u0Gedv-wBo4-qzbCbDyNoVm_mPz1pxxL+SiQ04Wg@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="7j7qe7okumujoh2e"
Content-Disposition: inline
In-Reply-To: <CACGkJdsJ16u0Gedv-wBo4-qzbCbDyNoVm_mPz1pxxL+SiQ04Wg@mail.gmail.com>


--7j7qe7okumujoh2e
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Eugene Syromyatnikov <evgsyr@gmail.com>
Cc: Ahelenia =?utf-8?Q?Ziemia=C5=84ska?= <nabijaczleweli@nabijaczleweli.xyz>, 
	linux-man@vger.kernel.org
Subject: Re: [PATCH] getopt.3: remove _<PID>_GNU_nonoption_argv_flags_
 description
References: <k57itvvrwcyzpgojoh6y4qe7gagkt4tuof6w6gcfpzpjg6juo7@tarta.nabijaczleweli.xyz>
 <CACGkJdsJ16u0Gedv-wBo4-qzbCbDyNoVm_mPz1pxxL+SiQ04Wg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CACGkJdsJ16u0Gedv-wBo4-qzbCbDyNoVm_mPz1pxxL+SiQ04Wg@mail.gmail.com>

Hi Eugene, nab,

On Wed, Dec 18, 2024 at 12:43:06PM GMT, Eugene Syromyatnikov wrote:
> On Tue, Dec 17, 2024 at 5:36=E2=80=AFPM Ahelenia Ziemia=C5=84ska
> <nabijaczleweli@nabijaczleweli.xyz> wrote:
> >
> > Per <https://sourceware.org/git/?p=3Dglibc.git;a=3Dcommitdiff;h=3Dbf079=
e19f50d64aa5e05b5e17ec29afab9aabb20>:
> > * this was set by bash 2.0 (1996-12)
> >   (implemented in glibc b07c5668f672125074dd5b0b658145e1544120be)
> > * it's no longer set by bash 2.01 (1997-06) because it was bad
> > * glibc disabled this with no way to enable it in 2001-08
> >   (518a0dd201c48a5c15d73c1919c304a9f8f5e3c1)
> > * glibc removed it in 2017 bf079e19f50d64aa5e05b5e17ec29afab9aabb20
> >
> > So this was experienced by people for 5 months at best,
> > and could remotely be experienced for 3 years
> > (if you somehow wanted this bad behaviour and added it into your shell),
> > over 20 years ago. No modern reader (or, frankly, non-modern reader)
> > has ever used this, or could use it, really.
>=20
> I would suggest to rather comment it out (along with the provided
> history above), so it's still preserved in some
> relatively-easy-to-find form.

Maybe move it to HISTORY, having a short mention about it?  I don't like
those comments too much.

Have a lovely day!
Alex


--=20
<https://www.alejandro-colomar.es/>

--7j7qe7okumujoh2e
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmdixWAACgkQnowa+77/
2zIvSxAAlN3kzkx8nPhXxasnHU3jf+c1pXtSPoHKYaRXTBYPgiTAW6v7Be5KyfPM
+1yvS6KbTBtAVObfx2bHtrOaX4yhFqQGOYRiN8g/Rn8VPa+v3WP+mDEu5bcNQkWT
wNly1iNBfakyOg/94If+vxpt0XT24KVGqTkLi/mluYa13FcwXaSnadiC4U4+txEx
05RP8CgSdsEN5w0vbiC9YpSnzWS+T0hUxe3EGOfgrVbrFHAySl0Uphi0JzCmr9G6
DUJ/IqzlBaWwDFz2wzVFkTGJrBBtLFKFgZmz9NThW0rJzjiQ/wAG28SfeQxU+7he
z9xCPNA3whj1HqJu347z33F0FNIck5r32sbFHi8wzzsVjRp7gvzhdrnouOEfgoOj
Sxbi7cqQwwDmNqkxmRLQElDTMhtmk+U92xWN4WdMuDlD/xWsCP9/ChVIUgUrjgr8
ccjjMqVLU4wIVAewpDNFb49bmcwjyXeFzquRBIcVhv7mltbcVvKBbx17Bk7F85bE
9fV8rDpGXQL3TH9+5FxpWM0DZhujvDVF8Tld/U1kOzyYgSrAdi2XoVV4HxPO5kzi
LrR+UBblmSKyTItXABiAzU1/rWQLsc/1oKiq7oF5s5vkmPbuFj+h1pFEIjdHOoIP
nZj6xuTi5nUDcfl0G7fuSdDhxKox9IfqSXPHleF0Xf+GD6vEKRY=
=bX+M
-----END PGP SIGNATURE-----

--7j7qe7okumujoh2e--

