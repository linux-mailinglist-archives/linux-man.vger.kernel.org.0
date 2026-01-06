Return-Path: <linux-man+bounces-4685-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B4E0FCF8AE1
	for <lists+linux-man@lfdr.de>; Tue, 06 Jan 2026 15:08:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9AF2A312B320
	for <lists+linux-man@lfdr.de>; Tue,  6 Jan 2026 13:58:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DE9601957E8;
	Tue,  6 Jan 2026 13:58:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZC7mVdeB"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C4543A1E72
	for <linux-man@vger.kernel.org>; Tue,  6 Jan 2026 13:58:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767707898; cv=none; b=NbBd5j7XkGmaaupovInUhJYzjsjYGGTHoA3is13acDrnQEV3bMGBaNCjmZk+yU4pI+HUE6b4fE/+4nDB+48D8G6czNirh6eC5mDYv5ffKvYNMPhUES7OQiLb8H84EREtUFWbWdpKCdqb8AwGP4y4mKeUinmAZzdF8C0fc0oH0WM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767707898; c=relaxed/simple;
	bh=XNswkMe0wPwvsr5ym8fZ37kbWiBPOqNNt0S5e2UMsco=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=krfzKFgvDPunZZCcM+XRAxpC19qxDBss3DKXZJ2GFCNmiJgO3jDHZ/Fm4BN6paofLQrhX7q9CmIsINFlO0NvBTlPYBF9mEn2tVRZX+o7n83/CccvYEbc68eZ4DtTsxZLsJi4SsIgLiy4+s5WfOzPlAN0Mh2IhsD5zwOEafR75sM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZC7mVdeB; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8DAE9C116C6;
	Tue,  6 Jan 2026 13:58:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767707898;
	bh=XNswkMe0wPwvsr5ym8fZ37kbWiBPOqNNt0S5e2UMsco=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ZC7mVdeBSLXgge4Fz9IVoku8Dh0h8a/HkaVja5oA44kSO1KXLVwgmjPrSbhIB6lBQ
	 F9xg9fdRRGQLBaznUpnIlOys3gMgLbDfsqmuQxtDjUQC9Aj668svFoD6JBwPoebf4S
	 0cNZPbWs9rraJ7PXVzD6ZbBIw6hc9melMBgWdNZiNdQU3VhVscMsSgTdwl27XE6VAJ
	 tl148UOeBpGobMECLXuR7/gz0jQV9jJN+clwRieoqlV4Cfj5wMMBlZmALX5DCA6qis
	 cNxSzT98GhES29lsWLIBg/phVE/uZsEMBiNdFoMPw2hUim8s6Oe3m0MH8p7pwGFvpW
	 M4A+0r69MaahA==
Date: Tue, 6 Jan 2026 14:58:15 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v1 05/15] man/man3type/clock_t.3type: HISTORY: Update
 first POSIX appearance of clock_t(3type)
Message-ID: <aV0U77xIoRM4eAw0@devuan>
References: <cover.1767675322.git.sethmcmail@pm.me>
 <24395294f63b638cd12edb58258e65412644ec75.1767675322.git.sethmcmail@pm.me>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="wifncxsfhoeecilq"
Content-Disposition: inline
In-Reply-To: <24395294f63b638cd12edb58258e65412644ec75.1767675322.git.sethmcmail@pm.me>


--wifncxsfhoeecilq
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v1 05/15] man/man3type/clock_t.3type: HISTORY: Update
 first POSIX appearance of clock_t(3type)
Message-ID: <aV0U77xIoRM4eAw0@devuan>
References: <cover.1767675322.git.sethmcmail@pm.me>
 <24395294f63b638cd12edb58258e65412644ec75.1767675322.git.sethmcmail@pm.me>
MIME-Version: 1.0
In-Reply-To: <24395294f63b638cd12edb58258e65412644ec75.1767675322.git.sethmcmail@pm.me>

On Tue, Jan 06, 2026 at 05:07:54PM +1000, Seth McDonald wrote:
> clock_t(3type) first appeared in POSIX.1-1988.[1]
>=20
> [1] IEEE Std 1003.1-1988, Section 2.8.1 "Symbols From The C Standard".
>=20
> Signed-off-by: Seth McDonald <sethmcmail@pm.me>

Applied; thanks!

> ---
>  man/man3type/clock_t.3type | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>=20
> diff --git a/man/man3type/clock_t.3type b/man/man3type/clock_t.3type
> index 6701862d0e8c..93b874f7dfe5 100644
> --- a/man/man3type/clock_t.3type
> +++ b/man/man3type/clock_t.3type
> @@ -24,7 +24,8 @@ .SH DESCRIPTION
>  .SH STANDARDS
>  C11, POSIX.1-2024.
>  .SH HISTORY
> -C89, POSIX.1-2001.
> +C89,
> +POSIX.1-1988.
>  .SH NOTES
>  The following headers also provide this type:
>  .I <sys/types.h>
> --=20
> 2.47.3
>=20

--=20
<https://www.alejandro-colomar.es>

--wifncxsfhoeecilq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmldFPcACgkQ64mZXMKQ
wql+jg/+MyQVsrjxnBS1gwwpMbpPJfwO70XdBZ2n3PCJr17sA9WFUp2wUgEKXlQi
IjkyrCttjqIQpypi07MFUBj6ibaK32SfrCDbPv9zp2e+JYKMheMjMDgrAFDW1mPg
aA+uI4XesIjEdF/rx+qqDdBl0Y5moPE6+p9IN/AiDApM04S34ZWQ2ZDz3Yra/YuG
QWmqaH3GiSdi5rIlHQ19C13mEIuK2AxmHjuhA4qIRuG8is0xRoK9DeqowxCLos+8
kQOUg263KH9UHp+eRDlwmHbtrW2uFF1Tnl9Rn8Szb3+Y2B+mB/UYQtNTqtn+ww3U
6ONtP+bEMpF0mFj7Y4HeeZ4eFMZxRx+lCtweImWUx05+swO/+gcy+Ez3KYl4a39C
uUj/Migfh4UnbZMhH+YqTOG5mgmVz11NyUypTHWGIh4O4r38R0NeVgfKphq1L9V3
UJ7UwswHhMfXO6m20cFnygCCIfGw/vPStkg3lgL+1fwgtY/MX2I1ZL/288SiXam6
yHoI9UzSIoH1Z0465GdtDFlZH23ldCgcWjnw1mgnOWAuVfkg9qNfqvw0CEC5W8+h
udpFVy2riykocW7PdDBx/m7aV2CbHZwAe+WcJVizmQA0ja2xfOHqB/fdUx6GDGIl
uZC69wHaAkb2RK28QjEwYNn3SuvQZkexHSvQWVbkOXsZ8VhPiv4=
=cet3
-----END PGP SIGNATURE-----

--wifncxsfhoeecilq--

