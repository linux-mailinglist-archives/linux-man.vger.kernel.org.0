Return-Path: <linux-man+bounces-4827-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F136D3956E
	for <lists+linux-man@lfdr.de>; Sun, 18 Jan 2026 14:48:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1E9323008180
	for <lists+linux-man@lfdr.de>; Sun, 18 Jan 2026 13:48:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6A8D51A256E;
	Sun, 18 Jan 2026 13:48:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GKPiTWeZ"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E92A158857
	for <linux-man@vger.kernel.org>; Sun, 18 Jan 2026 13:48:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768744109; cv=none; b=VB3WMngWT7IPGv/CAc0rFO2Q8htu2tr7ukjIyb2UVTc61vdzaPuP2tlIPvNGqdENK0XarSCj2z67CrD55RBrgOcsu9wyztQxmlmD1WUTnLFxpLXa3GqhsSW7Bflrwu83fpZ+bzfntH3WfXoGWZgTp4312yvkUhhOF/OPhLln9OM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768744109; c=relaxed/simple;
	bh=crjgCiYhMkCY2yNXCUH89wAZC/5NDpOhshiowUBhHSo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=QolJGyhVWB4JSKXkH0rEnLNu/93sLoohZkSsbMtrTvY9EltZ/sIuZmL8ciQRwh0dI2ameeYlSHBR04/tR1Cdyv5Bp0TxUlNq1byk9yXONcHBijpKA7Nw4jbSIGVTIWFLlMq3cItdqNyQL1RWcffIvTrHuuOK2D/ew4DkEwn5pLo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GKPiTWeZ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B667FC116D0;
	Sun, 18 Jan 2026 13:48:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768744108;
	bh=crjgCiYhMkCY2yNXCUH89wAZC/5NDpOhshiowUBhHSo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=GKPiTWeZHtNWKQs1kT7DsI834mK5edmWrlMzyh4thEdT47F1t96re9/7D2LfBZ2lQ
	 f44emBIX8h2PQN/Uus1X1vxd3z5MFkE7Kfqw+0ZC5mYkEK2//G9h9iBwsB0JgNvi9v
	 WbxPxN1FXkOJKpS4186vt9fBQ2Ul+LPFR/A9jlWYJ8BcUIFDu0JtEpNmwBwdRRGEU5
	 dBA10fx558pQjdVAAELUemFbioCpKznOB+/EUKDo3DCXEktaCnuwzr9TaEnHpltDn2
	 W2jeUzdeG5P8U79+Tw7rQxr1aHPvtYJK49FOzoL5o6jBwcyP+yAuPMyJdKlrMIOjQb
	 DYK3CpLubSnlA==
Date: Sun, 18 Jan 2026 14:48:25 +0100
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>, 
	Seth McDonald <sethmcmail@pm.me>, linux-man@vger.kernel.org
Subject: Re: Chronological order of BSD, SV, and POSIX.1
Message-ID: <aWzkE6DFVZldmleg@devuan>
References: <aWtmabtT1dFTBCI8@McDaDebianPC>
 <aWuHPHi-08JB8UAS@devuan>
 <4dhcmq7vwbkiw5ik4nivsdli2pfb7d3xchchshgyz7cejw7sqk@tarta.nabijaczleweli.xyz>
 <aWvBujsIFzewikif@devuan>
 <fiwqsh3cg5js2iuouv62zep53ikwkokrb4exiwr4yufze3d7uj@tarta.nabijaczleweli.xyz>
 <aWwzhLaG_aehhWOG@devuan>
 <20260118023323.5kztc554c5nz4gx5@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="po3g6qlxsxd4x2ja"
Content-Disposition: inline
In-Reply-To: <20260118023323.5kztc554c5nz4gx5@illithid>


--po3g6qlxsxd4x2ja
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>, 
	Seth McDonald <sethmcmail@pm.me>, linux-man@vger.kernel.org
Subject: Re: Chronological order of BSD, SV, and POSIX.1
Message-ID: <aWzkE6DFVZldmleg@devuan>
References: <aWtmabtT1dFTBCI8@McDaDebianPC>
 <aWuHPHi-08JB8UAS@devuan>
 <4dhcmq7vwbkiw5ik4nivsdli2pfb7d3xchchshgyz7cejw7sqk@tarta.nabijaczleweli.xyz>
 <aWvBujsIFzewikif@devuan>
 <fiwqsh3cg5js2iuouv62zep53ikwkokrb4exiwr4yufze3d7uj@tarta.nabijaczleweli.xyz>
 <aWwzhLaG_aehhWOG@devuan>
 <20260118023323.5kztc554c5nz4gx5@illithid>
MIME-Version: 1.0
In-Reply-To: <20260118023323.5kztc554c5nz4gx5@illithid>

Hi Branden,

On Sat, Jan 17, 2026 at 08:33:23PM -0600, G. Branden Robinson wrote:
> Hi Alex,
>=20
> At 2026-01-18T02:51:55+0100, Alejandro Colomar wrote:
> > 	V1
> > 	V2
> > 	V3
> > 	V4
> > 	V5-- 1BSD					  /--- OpenBSD=09
> > 	V6-----\ 2BSD				 /------ NetBSD
> > 	V7---------\ 3BSD - 4BSD - 4.3BSD Lite --
>=20
> Let me offer some corrections here, drawn partially from McKusick's
> article "20 Years of Berkeley Unix".[1]  Sorry it's gonna make the lines
> longer.
>=20
> 	V5-- 1BSD
> 	V6-----\ 2BSD ---- 2.8BSD ------ 2.11BSD		/--- OpenBSD
> 	V7	    \	  /		/		    /------ NetBSD
> 	32/V---------\ 3BSD - 4BSD - 4.3BSD - 4.4BSD-Lite --
> 	|						    \------ FreeBSD
> 	SysIII
> 	Unix/TS 4

Thanks!!

> The salient points being:
>=20
> * Unix 32/V, being the port to the DEC VAX, was a huge deal and
>   ultimately the common ancestor of _all_ AT&T and BSD Unices.  I won't
>   say nobody ever developed Unix on any 16-bit platform besides the
>   PDP-11 ever again, but I venture that any such efforts are now mostly
>   obscure, and not impactful on the C or POSIX standards.  ("near" and
>   "far" did not make it into ANSI C, for example, and if the x86
>   couldn't manage that, no other chip was going to.)
>=20
> * 2BSD, being a PDP-11-only product, kept the PDP-11 Unix kernel but
>   refreshed its userspace from the {3,4}BSD mothership on an ongoing
>   basis, where memory constraints permitted, and indeed 2.11BSD
>   continues to be developed as of 2025^Wwhoops, scratch that, patch #499
>   came out 3 days ago.[1]
>=20
> * There was no 4.3BSD-Lite.  4.4BSD-Lite is what you mean.

Yup; accident.

>   Strictly,
>   "4.4BSD-Lite Release 2" was the end of the road, after which the CSRG
>   disbanded and several of its principals departed to BSDI where
>   unimaginable riches awaited them.  Surely.
>=20
> * Despite the previous, it's good to have 4.3BSD on the chart because it
>   endured a very long time.  (To some frustration at the CSRG, but as I
>   understand it, AT&T Corporate spent years making ever louder threats
>   that they were going to sue the bejeezus out of Berkeley so that BSD
>   Unix, which was so aggravatingly popular with all the cheap computer
>   science labor spewing from the universities, quit creating headaches
>   for its marketers and price-fixers.)  4.3BSD was so influential that
>   much of it got folded back into SVr4, around the same time Sun
>   Microsystems sold its soul (and a major stake of equity) to AT&T.
>
> Regards,
> Branden
>=20
> [1] https://www.oreilly.com/openbook/opensources/book/kirkmck.html
> [2] https://minnie.tuhs.org/TUHS/Archive/Distributions/UCB/2.11BSD/Patche=
s/

Very interesting; thanks!


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es>

--po3g6qlxsxd4x2ja
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmls5KkACgkQ64mZXMKQ
wqmgyw/+MKSjGtaSaKPgxwj+jXHxX/wACWkbfN9ncWsprA3j0HaSXYijnZtmwLcX
JxBaVFyLFefEscPDNQfSjfbqT/sQurhBIcFQmA6ng6exH6v6v0adrER40NVOH1O8
wHeE6Fw2N4pS23Die1Y+2rl2egL9ydBJuI+OdYfyj1J1bVWQ9nic+CkCFm+VW1be
JY2RquT/VrMuaF3fmQenVRQqfyu14fdb3ce35Ov99M8DAKCwwbtqSHUN+wWFDdVF
wlflL0iZRddiAV+FJPTHbUWAlThUll1XijC1GbHj5W3oARBAa/gvdS35TjyhWyQE
hmd9T7igF1cSHq+yR3dsftT8X5b8fX/qG9+S+ZNG6n70nrnKgsKC1PcQob2D3IfK
DmJ3FlW6Z6Y1ygqMDN4Ps/HroAHvL01julcc2mhC9E8hFF9RWin1oo3BBtRxjE+y
WNWoGyUlogd3543W/hEMF9+JHXmZq+gre2uA27FKCYoUe30jiGGiOdrvP6fpRtti
L/KNU7Nm0uQxfaoIg/fOIqHqzJP2nf9tlSVNq0lkjVDYBClJEICfdSH/bODky7k+
9ZLRqelHcn6pFl4Pgs5qAwabr8ZKWesUj27JA5HNFrtIy1uX+8K+LC3FtWVCFa/O
HvBiYfO9Ta6JmD2NWsBWi7VKHgkm+FrgtxxN/gmLs/XDkL2GFhw=
=sAQ5
-----END PGP SIGNATURE-----

--po3g6qlxsxd4x2ja--

