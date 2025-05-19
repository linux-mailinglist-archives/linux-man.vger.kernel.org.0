Return-Path: <linux-man+bounces-2987-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 8335FABCB9E
	for <lists+linux-man@lfdr.de>; Tue, 20 May 2025 01:39:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A45087A3E38
	for <lists+linux-man@lfdr.de>; Mon, 19 May 2025 23:38:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D8B5221FF20;
	Mon, 19 May 2025 23:39:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HR1D+VVP"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9764621CC71
	for <linux-man@vger.kernel.org>; Mon, 19 May 2025 23:39:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747697950; cv=none; b=BNlXbG8ailLMU5aqu5c9InGRe45LmRrlbc9L1hdxAAhZagcXlAkctgC6aO8Mu0b2aq5Su41Z5pTL38TKtUPluDqDZEx5zPPtK0OVDRgBWtoQYwGcr65tvwzriAVtz7asBNUlbC3Q74aWCofYgYdm7cROX+H9voamU7R6bNvneT4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747697950; c=relaxed/simple;
	bh=GdV5K+4o1ODNiiwUA7ih547yNptsZNjQAr2rxbPN9PA=;
	h=Date:From:To:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=nl3g22uU4oMwSS0pi8ts3nNUYcsHWpuRV/3TIHZsJOszJjUXO86WIZaOCVHw+EYxIg6WIIxpiw/rruX7ahwPs1H1YxPgllmNGA+PEEJEcWvyHr4ErRB2Dr6ACaN49RpgSiw+c93+2jt4ebKMfZRM22rYyj6+ru9tuNdiS6LS10g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HR1D+VVP; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 66D8DC4CEE4;
	Mon, 19 May 2025 23:39:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747697949;
	bh=GdV5K+4o1ODNiiwUA7ih547yNptsZNjQAr2rxbPN9PA=;
	h=Date:From:To:Subject:References:In-Reply-To:From;
	b=HR1D+VVPOYCbV999kQsePy8IkbaUwog5c2ONWQZkHLHVK0bbZvD624nhaZ9Wl+zVh
	 YBYIyJHaIkles4/GSTNoy/LLMvpYY/HqOrWCT7DYF2L/j/Xk33UsqAB6DRWLdxwKoU
	 HY4uN5BR+PUemZYZFMZvDfJMqON6awDDR3bwmijRBHUXfJoQ1WoiIBhlX4L1+wk4UC
	 haqJSuJa5DvCXrpbtNDVU+c5eS9uAO+MgK+DA/8KXgz+u3Q1F7lxCD7zJqYPertp4k
	 g7ZgFlAfgCDQ9BIP4N4OxwXfB4LceXVXCtVBwxInBp2JZuVIHYLVyGZKBhISPnbFxl
	 E9r2juzpLknVg==
Date: Tue, 20 May 2025 01:39:06 +0200
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org, Steffen Nurpmeso <steffen@sdaoden.eu>
Subject: Re: man-pages: mbrtowc: misleading
Message-ID: <uvy6dnzz3rl2oqlq3chng76m35nj6v3p2yph4ptofppypagek6@xud3qebwdwdr>
References: <20250518013401.seThfADR@steffen%sdaoden.eu>
 <atdny7g2j5caim4oz2qgcqfpt43y5th2vuoyyy2qlqgdpivxez@y2bjsgm3jttt>
 <20250519135221.5a48Joxu@steffen%sdaoden.eu>
 <gxghgfhmtz2w6sen7c3gl5or624wkrb5gluafjt77otrpzxh2u@tkqkqs6fjizd>
 <20250519222653.8aL97Par@steffen%sdaoden.eu>
 <20250519231034.TyLdPgtx@steffen%sdaoden.eu>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="j4bpnjjqdtqhosme"
Content-Disposition: inline
In-Reply-To: <20250519231034.TyLdPgtx@steffen%sdaoden.eu>


--j4bpnjjqdtqhosme
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org, Steffen Nurpmeso <steffen@sdaoden.eu>
Subject: Re: man-pages: mbrtowc: misleading
References: <20250518013401.seThfADR@steffen%sdaoden.eu>
 <atdny7g2j5caim4oz2qgcqfpt43y5th2vuoyyy2qlqgdpivxez@y2bjsgm3jttt>
 <20250519135221.5a48Joxu@steffen%sdaoden.eu>
 <gxghgfhmtz2w6sen7c3gl5or624wkrb5gluafjt77otrpzxh2u@tkqkqs6fjizd>
 <20250519222653.8aL97Par@steffen%sdaoden.eu>
 <20250519231034.TyLdPgtx@steffen%sdaoden.eu>
MIME-Version: 1.0
In-Reply-To: <20250519231034.TyLdPgtx@steffen%sdaoden.eu>

On Tue, May 20, 2025 at 01:10:34AM +0200, Steffen Nurpmeso wrote:
> Steffen Nurpmeso wrote in
>  <20250519222653.8aL97Par@steffen%sdaoden.eu>:
>  ...
>  |Got it.  Actually i see more problems on the page, for example the
>  |prototype is broken and shows a false leading "n" argument etc.
>=20
> Out of interest i got back; this actually was "broken" in
>=20
>   d2c2db8830f8fcbb736bdea52b398257447bef6b

Yep.

d2c2db8830f8 (2025-03-14; "man/: SYNOPSIS: Use GNU forward-declarations of =
parameters for sizes of array parameters")

> and that refers to some C language proposal i have never heard of,
> namely
>=20
>   https://www.open-std.org/jtc1/sc22/wg14/www/docs/n3433.pdf
>=20
> Therefore that i take back.  Interesting!  And so old.

:-)


Cheers,
Alex

>  Not really
> something for me, i even started to replace calls of "memcpy" with
> "memmove" because "they" now beat onto the "overlap", even if it
> is completely nonsense (ie: you have to read a byte to write it).
> Sure all these non-temporal copies etc etc., who knows what the
> hardware really does.  Or what the compiler optimizes.  Sigh, that
> is all no fun.
>=20
> --steffen
> |
> |Der Kragenbaer,                The moon bear,
> |der holt sich munter           he cheerfully and one by one
> |einen nach dem anderen runter  wa.ks himself off
> |(By Robert Gernhardt)

--=20
<https://www.alejandro-colomar.es/>

--j4bpnjjqdtqhosme
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmgrwRkACgkQ64mZXMKQ
wqlKuRAAlxJOvf4Ik5G6oZxdrSeTizQdP2gsMCdSwPWPeWfjNFvI7bbjv3BzRHeb
PqQ5XcFNd9750yWSPkndYy2VnwUMLhMzRZYXPMu6eUTp4UXITFiFmASOnpKuApaT
ZYSn+VTfRZG2XqrjYX2bLxUrqcIpHomSKfiJn681CPbdhulZGZ/txd5AC1vgjKEd
qEssIXkzj0HQetDf6NCuFO2J9YilXjtSM4uZsaPIoqjhB0SCchS7O5oAlNz42yhm
bGCmtiMVAM4wo3Idegn0gsAguniXFNbjIWhVDw2WArdW9NZBv4mpbX5A6d8Lohgs
d+8JCSgbGKiA3L7AQVo6P5a+FQY/kdnujzThbLzEpspAhE5lKu4rTn8uXdK6lpIL
McBm18xu48Z4HIsp95Oj+FO9ur2hX3DOzZPup45qeU+EhZvThWpjUz60rila1Jod
NsQGN7mc1w3PaQEYlKfZN3VUO047BA4RmApGduQ85SJY2BbYQeTrHwMjDeUJYkqr
u62YqeaknXZZzN6SDNhHWul1ZK6614gvL/I+fd1uadLn6Grk8dj9AA3oP+PURYIo
KtZeFaJzs8LygrppfAsv1SnFtS+IXuIXUH56xBbsqhwdnHJuU18HVPDr+pVOfVlO
xcljNzJ3h+d74bX35Do9z0SDItW+HXAKFjkEbgjuxq24qfngaeY=
=tCT8
-----END PGP SIGNATURE-----

--j4bpnjjqdtqhosme--

