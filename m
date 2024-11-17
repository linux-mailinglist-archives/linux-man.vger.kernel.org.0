Return-Path: <linux-man+bounces-1978-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EBE069D034A
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 12:33:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 71DD7B24EDF
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 11:33:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A2E8B146D40;
	Sun, 17 Nov 2024 11:33:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iX3vnIc7"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 636F37DA81
	for <linux-man@vger.kernel.org>; Sun, 17 Nov 2024 11:33:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731843196; cv=none; b=L2itiJT1PCD3oTkE3qW3jL2UiW0a+bn41HjXbRxd4z6htxD7VuPr0VTaADgkugpkLVo+mwiXcI+kw0Dn3MinmDjn1sRIYc3V5B0j4PP4U9vSSfYLQOauowFSpogjIlbgrqE3wdylqYnW8Wpp3RdUYI7tmO3YerxaecbtxqObejs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731843196; c=relaxed/simple;
	bh=mWOarx5512gsG4Oy/5jRmJPxfxDzYVXH5FW4Z/EaQYc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Fcj6ZqoEVPa2ZpODuI73vm/yYyrfdls30kb3M/l/4AZMCWcsEeViGcMf89RK/1EODQ0uCZtg1fn4Zm4L2gvGatlu7E2Iqml/quwyNq22b3bpEEkvnuZvQLoaM1aFrp+nuPyq4dP+cTBUYGWbo9CFUXyOvDKSdUey6TqIIo6S5HI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iX3vnIc7; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 23B72C4CECD;
	Sun, 17 Nov 2024 11:33:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731843195;
	bh=mWOarx5512gsG4Oy/5jRmJPxfxDzYVXH5FW4Z/EaQYc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=iX3vnIc7AZzebonw/fZFp1nrt0IdUWRnawtgb3CofiRlXJV87FOE9/nXVpSOU+vGA
	 aFVZz9/gl0K1041LvXW8Oc00oxUH0woSR2JAOL0OgrAMnKT+i0UscI3AclpzbC2Q7c
	 MlnS8L6+GoitwIpxU1x0Ll2qE1eYnioRB+v+0kqQMkFG1ct+VYPyMaWXII3lvdpC9y
	 /wb2ifgzEB6MtIMkd+u7RgDJMiyDH4XcKScr5eEyeoRiVQN+bMDY4kpWkqkcbDywBM
	 pWYDL04fdkZeg9gsLIgW9P6kNG/EofaSN3UNGJMTNJ4M0H4FC34XIqQnVVSMV5aYm6
	 Bxj/jhxSJSUnw==
Date: Sun, 17 Nov 2024 12:33:13 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page proc_timer_stats.5
Message-ID: <6f36qk2pgcvkd4hijiwdafu5wm5olgbrxl5ywshw45zv4x26v2@s73psznizi2q>
References: <ZznJfjcl7JIMY7y9@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="zekwzo3r4tpboe2l"
Content-Disposition: inline
In-Reply-To: <ZznJfjcl7JIMY7y9@meinfjell.helgefjelltest.de>


--zekwzo3r4tpboe2l
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page proc_timer_stats.5
References: <ZznJfjcl7JIMY7y9@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
In-Reply-To: <ZznJfjcl7JIMY7y9@meinfjell.helgefjelltest.de>

Hi Helge,

On Sun, Nov 17, 2024 at 10:46:22AM GMT, Helge Kreutzmann wrote:
> Without further ado, the following was found:
>=20
> Issue:    Other pages don't use FROM and until =E2=86=92 to - maybe align?

When a feature is discontinued, "from" makes more sense than "since".
"Since" means that it still exists today.

I'll eventually do a consistency fix in this regard.

About until/to, I think until is more common.  I'll also check.

Cheers,
Alex

>=20
> "I</proc/timer_stats> (from  Linux 2.6.21 until Linux 4.10)"

--=20
<https://www.alejandro-colomar.es/>

--zekwzo3r4tpboe2l
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmc51HgACgkQnowa+77/
2zLtUQ/+Pwi46vLg+8sJACN354p2AvHm2/vzMpnoMrjTYJZa2/hNVddUUaWaHSg5
+pNFr8NtmM6thcyTw0Gjr1Gb7yednAwaOe4asBTi6qYYb3aBMyiqPi9Jo8lVOpkK
alreKLQ2hhoya6J2IZuGCscisEXuEdnBMFXEPLnMc8GzRUrq3LZ5QYeg5NOiHiGK
0oPY4kRr3RMYO/b1v9423wVVWx2G1KJdJAB+hsauUMCcvtLiclQWzg/2NTwYynpl
Z9RLM5bUOaoLf8RGwsvvcqjz5ZMA9WppppeIysJbVqXHwBugqOeUnVgXGMSZcq5A
mz1Bj2edANyfZohM1UREaJsqkzw6PlVSuj4NykW+fu3r53sJRq9nv0JR4le0mWSb
43lE1ALvJYvP1rmZLkSFjLpvMUkIwGwEmHLmnJj6/HEttEJsaaFZz9OcCS3SZaRk
6yFNng2TcNv7p2b3HWsusjoukKIE8w7eYL9PH99zrNEofg7qE4H3UPm0G7DRPlau
Iq2ngg4JosJeF1pDwqZGZ8lKybEORos43Jr8Sn04oTyvu/juUdef+sJnGxttt5vv
Chvb2pTtZp0mHrRoe32zMBilKhreEnO761JU8rxjfOV9F5xTFsKbGDBhwmFFOEep
2WWkcYJ+IoFKNWRms2zXnB0eKTw/ipxp/9OcAKQdM1V2WuE65zE=
=Rmms
-----END PGP SIGNATURE-----

--zekwzo3r4tpboe2l--

