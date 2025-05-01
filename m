Return-Path: <linux-man+bounces-2829-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id EE1DEAA5DA2
	for <lists+linux-man@lfdr.de>; Thu,  1 May 2025 13:15:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5DABD4C067D
	for <lists+linux-man@lfdr.de>; Thu,  1 May 2025 11:15:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F3FBB1A38E1;
	Thu,  1 May 2025 11:15:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YH2JMEkJ"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A7C1D222563
	for <linux-man@vger.kernel.org>; Thu,  1 May 2025 11:15:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746098104; cv=none; b=sfToB2gug6xuE00q+eehcfAzVIW24w4hSWpXxkmZ7RgLCrlHui/+7V1KZp1B3V4QfKIJ9lKxUU3HOF+vakF3k7oSJam/z8WBDUf5OJ7dtLwNPFq6L0fI3xj04d8b0UKkK26BOQqkaZECQf6+8qjifCfAUr3KLJBsk4pnlIK8GiQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746098104; c=relaxed/simple;
	bh=DMfWhSHpGgu0tqTfyjYE2vkyjSY70ngebPhkxCxe8aQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=bWkRjtGNDy67mdg5wLTwslGlMNScpDqCoMWow8XDyQq8SiPEhPUypSMC9KDIvGgID8i1IwzNCe5c/AF5SZ6d/mPWZD7mxJ0S3qHgCV74QuMuXZ4aOljTqC7CuDIBzbw2DT2TG0XqxXvr9yyxpm1po+j5GeWKoZFCIe/sBZLuyuE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YH2JMEkJ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6EEE7C4CEE3;
	Thu,  1 May 2025 11:15:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746098104;
	bh=DMfWhSHpGgu0tqTfyjYE2vkyjSY70ngebPhkxCxe8aQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=YH2JMEkJwzysGOHGZODMuCgip1A2+/LXCgEIvAfVZ43bF9LL2dbpUYwjrw/JNG1iC
	 fbagzu8LUFI9wCutALaMeNGF2avtRJBhA5TSii6Pwo38Sa6y0fIuIIHbxpYN9mTsHK
	 4urDxdKvxDn4AuZ0+qvcqIsovD6ySl7OKakddnOL5ah3FQbyn9oOzAL+aCPuFXiMje
	 P9R0xRACoZjC8m3MbtLpWSxYWGCLELaMEDu2sB30LBB1pKFlJzmOSi29MzZZSkTPpE
	 kkOH9fNu5ydtHfdPjWBi8CE6wxL+7SLTG9uzPE97Wf+1DDSgjkD/kaqeuuVdwZxU26
	 7WH2/k2aSg5jw==
Date: Thu, 1 May 2025 13:14:59 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Lorenzo Stoakes <lorenzo.stoakes@oracle.com>
Cc: linux-man@vger.kernel.org, Suren Baghdasaryan <surenb@google.com>, 
	"Liam R . Howlett" <Liam.Howlett@oracle.com>, Matthew Wilcox <willy@infradead.org>, 
	Vlastimil Babka <vbabka@suse.cz>, Jann Horn <jannh@google.com>, linux-mm@kvack.org
Subject: Re: [PATCH v2] madvise.2: update MADV_GUARD_INSTALL,
 MADV_GUARD_REMOVE description
Message-ID: <xj5qzwiz6rknq46iyxit6plkpemt6ch5foiskept37xcjhuf3a@vdpgwbdiyugk>
References: <20250423183105.116978-1-lorenzo.stoakes@oracle.com>
 <3472d46d-3a93-4de3-8ec4-14f972d06da3@lucifer.local>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="cejtro3qmrfmy47u"
Content-Disposition: inline
In-Reply-To: <3472d46d-3a93-4de3-8ec4-14f972d06da3@lucifer.local>


--cejtro3qmrfmy47u
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Lorenzo Stoakes <lorenzo.stoakes@oracle.com>
Cc: linux-man@vger.kernel.org, Suren Baghdasaryan <surenb@google.com>, 
	"Liam R . Howlett" <Liam.Howlett@oracle.com>, Matthew Wilcox <willy@infradead.org>, 
	Vlastimil Babka <vbabka@suse.cz>, Jann Horn <jannh@google.com>, linux-mm@kvack.org
Subject: Re: [PATCH v2] madvise.2: update MADV_GUARD_INSTALL,
 MADV_GUARD_REMOVE description
References: <20250423183105.116978-1-lorenzo.stoakes@oracle.com>
 <3472d46d-3a93-4de3-8ec4-14f972d06da3@lucifer.local>
MIME-Version: 1.0
In-Reply-To: <3472d46d-3a93-4de3-8ec4-14f972d06da3@lucifer.local>

Hey Lorenzo!

On Thu, May 01, 2025 at 10:53:51AM +0100, Lorenzo Stoakes wrote:
> Hey Alejandro,
>=20
> Just a gentle ping on this :) Let me know if you need me to do anything
> else on this!

Sorry for being slow; I was on a family trip.  :-)


I've applied your patch.  It was all good.  I've only slightly tweaked
the commit message subject line:

<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3D9ee66d0b01dfc797c57b4735fd48c138f97a66d2>

	man/man2/madvise.2: Update MADV_GUARD_INSTALL, MADV_GUARD_REMOVE for Linux=
 6.15

I added the info that it's about Linux 6.15, to see it without having to
read the entire message, and also used the full path of the page (I
changed that recently for all commits).  (Plus also start with uppercase
after the ':'.)

> Cheers, Lorenzo


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--cejtro3qmrfmy47u
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmgTV7MACgkQ64mZXMKQ
wqnH7w//TJwXdfM/ld33mEoz7Dr7mQE7VOTgmd0J45VTGU2qsWDPY6OO5Jnm6/pL
BEdswAgRA1bM4MaYsuZbYDYFc7a6CDqzPdvWd/nggjj6riUa3k3bDW2SJHJdkmi1
W1GJ010Bcsrk1p/uyF8Bg0PW9s4GpI6NHzxy87zxDplAq/mp++x7wCfD1fP0XBHp
u8MlCn2Ob2eqdmXmkmQG3qpvLEoQ2kjtGKQ8yc/t3rclNW1ftlO20nv+9RPG+twA
QnKco2nFr+VhKX1z67AGY0wesHS3a9blWnaRYh3FUnJKcm/1FQQzrI/GVHzRvdmU
2Yehe6z5kcvmUIksPJ2q+zc7BawesYVKuigw93lnohpyUmAE9fIYZHvDh5DC8lxe
hWCfM6S0H4IN40k+C8fYixlkPrKJWQGFObfNAd6hYhPhP+az74AQ57+JtF48Sbh5
qOYzyw9Wr0+mj8wYf3JNg0NoR5b8xgfBFivou2gu6vw/bGm3JZwh9oU/OLu/nR/Z
SnxRA+g1rC/EO6sQYJ9KaXj0Xm6YjvYRkbuOFoauwwZsGaTJsk9AUo2M4JL9MtJm
U9swVChebpx3ZolbNfx0Z5TCwSDtoHwqAVj9AfJbVYO/9BZHulT+Sc1PMEgOALi2
mojRYwoQrba367n284sFYjVk5kz5K7FNqaDtIlWxc/NtOZZSHpA=
=22mD
-----END PGP SIGNATURE-----

--cejtro3qmrfmy47u--

