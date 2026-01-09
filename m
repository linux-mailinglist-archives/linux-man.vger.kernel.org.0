Return-Path: <linux-man+bounces-4775-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A55FD089D6
	for <lists+linux-man@lfdr.de>; Fri, 09 Jan 2026 11:37:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 046803026AB9
	for <lists+linux-man@lfdr.de>; Fri,  9 Jan 2026 10:37:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 938E53358C9;
	Fri,  9 Jan 2026 10:37:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qqKWnBan"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 581612D5A19
	for <linux-man@vger.kernel.org>; Fri,  9 Jan 2026 10:37:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767955058; cv=none; b=YmCWT1uFWComb5DgkSBOEGu5oqNf2sY8BQ2aXOBWe7OnO/POQIPUMWIx12XkaZCAkhjDLnr7AwfQQ+Ev78gWqiwerd9Jglp8Xdr4jl2jDmVh+InE+yZd+Y2Cu4J/+7PrBJYh81UUW4zwwUVXp7Oh2BG7mB54o+Ayz1akVAplcjI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767955058; c=relaxed/simple;
	bh=/trQBzmasgK7aD0WpkELFg8UdUVi0DZteLgwgKByq9s=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=TMvLtOyAahbZSkHU0VeG0JAbnRsjtjCxuuqkeqO4a/gbkdoPYLIKUz2pHDUED91iFauSnEsUt1tTLeB8WXOXicvbaierd6iGMh/jAH6K/lp++L/uXIe9WkvEPrn8I/hky32cVANZpLMmkJfQmts+jp2jqY2pB4FG6f3I7k097GQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qqKWnBan; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 541ADC16AAE;
	Fri,  9 Jan 2026 10:37:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767955058;
	bh=/trQBzmasgK7aD0WpkELFg8UdUVi0DZteLgwgKByq9s=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=qqKWnBanL3Y1eKZV/ZDdn02pDLZ4lt8Vl6VkIK53oCZBmvR/gn28rpLeFKzgqIrc+
	 pCYHF5IIgU6YMvdUK5l4GyAnhadd5Wrx3fpFrw+1s7MvnhfaMOCRCZrJl0iD7fZWIL
	 EZfGNZYa+eu6SGZzVivOJPKfLmaWewz/2e0a8kC4ZMtroAj6876LupzzANXNQ57u49
	 t2ujoUowkhey6ZiMIr3bU70fsxQ/HGu89Ul8PX8ea5Rdcc2eiBezZXmNa3wQZHSaUn
	 OMGu+mVHQKEySnVkynXp4FiPLA7LXw5thM80I/natp2EnYFCfby0KbAmPTsOSFKh0P
	 5+htw3/5bDEJg==
Date: Fri, 9 Jan 2026 11:37:35 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v1 21/25] man/man3type/wchar_t.3type: HISTORY: Update
 first SUS appearance of wchar_t(3type)
Message-ID: <aWDZ5EM-knrbOb_t@devuan>
References: <cover.1767939178.git.sethmcmail@pm.me>
 <a7d237cd5287cf35982d26f5289b1b9daaeb0be1.1767939178.git.sethmcmail@pm.me>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ywfakaeorwc7g3uc"
Content-Disposition: inline
In-Reply-To: <a7d237cd5287cf35982d26f5289b1b9daaeb0be1.1767939178.git.sethmcmail@pm.me>


--ywfakaeorwc7g3uc
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v1 21/25] man/man3type/wchar_t.3type: HISTORY: Update
 first SUS appearance of wchar_t(3type)
Message-ID: <aWDZ5EM-knrbOb_t@devuan>
References: <cover.1767939178.git.sethmcmail@pm.me>
 <a7d237cd5287cf35982d26f5289b1b9daaeb0be1.1767939178.git.sethmcmail@pm.me>
MIME-Version: 1.0
In-Reply-To: <a7d237cd5287cf35982d26f5289b1b9daaeb0be1.1767939178.git.sethmcmail@pm.me>

Hi Seth,

On Fri, Jan 09, 2026 at 04:40:39PM +1000, Seth McDonald wrote:
> From: Seth McDonald <sethmcmail@pm.me>
>=20
> wchar_t(3type) first appeared in SUSv1.[1]
>=20
> [1] X/Open CAE Specification, System Interfaces and Headers Issue 4,
> Version 2, Chapter 4 "Headers", p. 803.
>=20
> Signed-off-by: Seth McDonald <sethmcmail@pm.me>
> ---
>  man/man3type/wchar_t.3type | 1 +
>  1 file changed, 1 insertion(+)
>=20
> diff --git a/man/man3type/wchar_t.3type b/man/man3type/wchar_t.3type
> index 96139f794eb8..503ce31c5a34 100644
> --- a/man/man3type/wchar_t.3type
> +++ b/man/man3type/wchar_t.3type
> @@ -31,6 +31,7 @@ .SH STANDARDS
>  .SH HISTORY
>  .TP
>  .I wchar_t
> +SUSv1,
>  C99,
>  POSIX.1-2001.

I've recently learned that wchar_t and related APIs were introduced to
ISO C in C95.  If you are interested in them, you could check the C95
draft (there's a link in standards(7) --I added it a few weeks ago--).
Otherwise, I'll have a look at it myself.  Let me know.

I've applied the patch.  Thanks!


Have a lovely day!
Alex

>  .TP
> --=20
> 2.47.3
>=20

--=20
<https://www.alejandro-colomar.es>

--ywfakaeorwc7g3uc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmlg2m4ACgkQ64mZXMKQ
wqnYmxAAswU7OtulEPZb8Kwc5veZ99lqvB8HZqqSINQfmnlmcDOED2fSDj+lQ1JL
0OG/3neQfhS1M7RLvC0n1aNh8Gzgs6wGp/rndAge5plESANdTAlSzyHgBuRBPA/a
bsExrlCn/5wNI0QdB3W8/i+4SxcGjVGu3TQW/0qkhyPP88fjM8sO9/E6tkLQ5s+e
sJl2WHPjBNOE8hCS/mrVhVQHGnv7I1mR/jzH7wVkN9smm9o9ud6xQ6GDpXo0xoFJ
+g4C+rF6nMVW+ThZUuMkj6hErd8NdO2jKMZdHEqAtYnHpBqiZg+IISB+C6ir0BjI
4ZQox2ry3GtoXMkVkYwCsPSE5KD4YcvyME6mIZXHMV+GqH39VDocfcuMfC7XPRab
gZXwmOC7SWZZSmdeX+BhTAch4fMhw2720MUqEwtGsGgTCEBidEqqezWdAte7sVlb
0OmZToKGS0AQFezLwF1HP5TPj0SZbot1TQ+DEt2oh6XIZWIBjldJckUHj6xfId3+
Em9NZiiT50EAN8tHq8ZgJHS9EZLdv+xN6785r7NStUbLNy4Kb8ETfkpVWtUOcK91
gkwgWT0PUM5oqRCNxhD3d9haYBLqstVnrpAF/eA9dxuSVkN/WB7T2Poh0z2rGp2x
/NkgEioqed+03xwua+8veoMyBIarrjDVhqFfci7/3QpBJH45PNs=
=0hYG
-----END PGP SIGNATURE-----

--ywfakaeorwc7g3uc--

