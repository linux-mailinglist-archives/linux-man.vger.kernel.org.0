Return-Path: <linux-man+bounces-2961-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id CA1EEABAE90
	for <lists+linux-man@lfdr.de>; Sun, 18 May 2025 09:59:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 81EDD3AAC4C
	for <lists+linux-man@lfdr.de>; Sun, 18 May 2025 07:58:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3A1B420469E;
	Sun, 18 May 2025 07:58:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nxGijVnL"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED3A3204090
	for <linux-man@vger.kernel.org>; Sun, 18 May 2025 07:58:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747555137; cv=none; b=SyRAmJiuVCeSx8gmWrNn5g1ke6I7QBymB04r/I5DWocMnYM5U2KoGpIej4fzkuVekDObByjWYuLSFBCC3cSs3wgKi1npma7u3yL8s4sqHI/TdlvM5PhmFqsZ9Ek97CUOzmJVDGywr8Un2jZ9tK5Sba48emCvnfoiumqEpkX8yqY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747555137; c=relaxed/simple;
	bh=bpx8bUUKXUWIeIh/16pbM3/aL2sbAJfZ8e50uVaQ9h4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Q27q3HvWwe7CVPF+Y7uOnfsNUMXvztWTd9r0MpnoQxLXKhl7qjKVf2qO1DBlZ7QgRcHeMO8rBt1LWWTUI3TGgvCF9lvadC+yNVe+jV/rgmKCxpbKeAjPQAqtzurhKgzB3pbJk7f+/EnkpAI+YnJHctsqcjDzPAzAP1zhnUNErEc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nxGijVnL; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 57F7EC4CEE7;
	Sun, 18 May 2025 07:58:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747555135;
	bh=bpx8bUUKXUWIeIh/16pbM3/aL2sbAJfZ8e50uVaQ9h4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=nxGijVnLNzIKdXMz+1/W4ngXms6tSMyo79kDpHqG1sF3Y9FvOdTN8Lvp7gWTimO8l
	 0UxmBCl5HwX7bgkOkn2U8adqNywDdXelwCsNeKx7R9Lcy7ACRGUHTUYr7Z6m5/vTRh
	 SQlYlrqlH9oBivB7qLCmYthR47DZmCLztMdNLQ2CMKJdXSdyDtSYrQZovDo6vK81ns
	 FHik0qjKA4VcvNsUri2gFMcBUHaYCK3+bpru2TDUQzu40Q+F4kI08sq4IFm2GEOc9j
	 o0h1/PItTAiG6mryIjXPTQ+gHbAj52Px92CP8qxB/Zshq+HeeWHs38ibkTsgLkL/C0
	 tHwcSQf5iZ4gg==
Date: Sun, 18 May 2025 09:58:51 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Collin Funk <collin.funk1@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 2/3] man/man3/getenv.3: Mention secure_getenv was
 standardized in POSIX-1.2024
Message-ID: <cvljded6h7v7vqpu23hdx2f4wl5smsbqsvbkrxjg6nf5sikwhs@42plwr5rowkx>
References: <6abbe99f5e8710202650bfee5d41e6fceaff4d1c.1747515178.git.collin.funk1@gmail.com>
 <f1cc4b34bb42b09ae9c0820df8fdece6fcebfcd8.1747515178.git.collin.funk1@gmail.com>
 <ationx4kn5f2d5b76ayyufnjakuy5q3pkgmgq7fagwgakfitar@5l6ty5ftdsrg>
 <87v7pznd4a.fsf@gmail.com>
 <aqq7gag27u7kwnltq4zumzjk2wvlsevbevm5lkgr3m2x5rhowf@hdufz4pmli3q>
 <87msbaop79.fsf@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="xmnpfgtrriqutdp6"
Content-Disposition: inline
In-Reply-To: <87msbaop79.fsf@gmail.com>


--xmnpfgtrriqutdp6
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Collin Funk <collin.funk1@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 2/3] man/man3/getenv.3: Mention secure_getenv was
 standardized in POSIX-1.2024
References: <6abbe99f5e8710202650bfee5d41e6fceaff4d1c.1747515178.git.collin.funk1@gmail.com>
 <f1cc4b34bb42b09ae9c0820df8fdece6fcebfcd8.1747515178.git.collin.funk1@gmail.com>
 <ationx4kn5f2d5b76ayyufnjakuy5q3pkgmgq7fagwgakfitar@5l6ty5ftdsrg>
 <87v7pznd4a.fsf@gmail.com>
 <aqq7gag27u7kwnltq4zumzjk2wvlsevbevm5lkgr3m2x5rhowf@hdufz4pmli3q>
 <87msbaop79.fsf@gmail.com>
MIME-Version: 1.0
In-Reply-To: <87msbaop79.fsf@gmail.com>

Hi Collin,

On Sat, May 17, 2025 at 03:19:22PM -0700, Collin Funk wrote:
> FYI, I left the documentation that ptsname_r returns -1 on Tru64 and
> HP-UX. I just remembered that this is also the case on FreeBSD where I
> reported it and it was documented 2 years ago [1]. But it still hasn't
> been changed [2].
>=20
> Do you think that is worth documenting? We have to work around this in
> Gnulib, for example, so applications can be portable.

Do you mean mentioning FreeBSD in VERSIONS?  If so, yes, I think that
would be useful.


Cheers,
Alex

>=20
> Collin
>=20
> [1] https://github.com/freebsd/freebsd-src/commit/a5ed6a815e38d6c622cd97a=
6020592ded579cf7a
> [2] https://github.com/freebsd/freebsd-src/blob/6b8222793fbb4c0e162232716=
bc454dad31b709f/lib/libc/stdlib/ptsname.c#L74



--=20
<https://www.alejandro-colomar.es/>

--xmnpfgtrriqutdp6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmgpkzsACgkQ64mZXMKQ
wqmDIBAAnkchaiWBGPRMx4gPlexdnXegupGNaeVGYF+aA6dnjis1qPQpsda2rY5r
IRBl8Sui9+f084hEAYdiNShyH1C+TC1Ad72dGiIVqgAX+Ut4cAhlDyo8oQRhLN1Z
HQMzLY7RVRj/Z+wY5OmigEIIwtwDpGL7kA+2W/TY4Davowot/liH8qFg2eoPR//g
vmO57J6h1x7J69ldqQ1l+tflLX6SQkBtt2aScJ0wdprUW6dXTxnE6hDQwj4xz6qr
+UThKE/lz7Vn1X8eRkceI5g2Mo+KQ/y9nSLiI9DNIFlQEKV0hrbPnE0+hAXBQvsG
NraYoxeqKkACDX++IgYQCYnScYlOd631fC0tGirn9rS0BUWQGLdmXe/gluwehhz4
FIxPs8G5dM+Z5WvOgooNhOUkX4E5znffI5XK0LEVf15Y83kF84YQLGNI1og4kdjK
xwNLtWBkphXJh1TlQ723uldnMVATqxqrT34PQ1F1/wOeSbhGpI612OOKPaNcQGIM
bmWhJ8apnr5BP5dc8lnryATdmQLHH45OL9YXBO0xkZywS6LJg4i6NkxUM6qSg/+j
U3wbdjwvYkDxtOYZntZYstHmI+p8G40ySVGkPPnaZY4esrQMS5utsuIYwffaD4JU
FekliAm3BrWyLUHRFx8PY4Hf7Ii6/weSdgoPn3IAsFjZkRYmmTM=
=3yVg
-----END PGP SIGNATURE-----

--xmnpfgtrriqutdp6--

