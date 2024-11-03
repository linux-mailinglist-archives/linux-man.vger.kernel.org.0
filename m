Return-Path: <linux-man+bounces-1850-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E685B9BA362
	for <lists+linux-man@lfdr.de>; Sun,  3 Nov 2024 02:16:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A9F96282B93
	for <lists+linux-man@lfdr.de>; Sun,  3 Nov 2024 01:16:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C5A4AA945;
	Sun,  3 Nov 2024 01:16:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BUC/KjpI"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 823DB481B6
	for <linux-man@vger.kernel.org>; Sun,  3 Nov 2024 01:16:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730596606; cv=none; b=JlxEyQsjU6WbkSqphCfL+Kdm9uvNfMxGsaYF0BWIhAMTqX+c7laP4kd1rF/Lcj89qsaLVgoXQyJlZrjULYfYgrFELX7v0St2CymfK0SG1p9Md2IfxzEWd1R+JBtE7GZwRMrA0Pg8di69c2awvMe4mAA59xbXzKD5ogkw+wHCZu0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730596606; c=relaxed/simple;
	bh=nfaU2x5FO7roO3vnHZWLfqUChsxRRcKvWZzsRY45HZM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Ad5an577iRacVFK2KQ7q1IYZURLGQfhhQENDEeRFWlhcnjoCNAh1XFBru3PBpUgL5KyzCfIdc3H9s2XJEAxCjZTu/oqrqYP9FuZZTbmFMmD6X6QwmJU3wAQiccLx3Eejoj2QZi+3vN69f6DZr1d0jS7KfCX4GarVLMOpb+z3PZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BUC/KjpI; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5D054C4CEC3;
	Sun,  3 Nov 2024 01:16:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730596606;
	bh=nfaU2x5FO7roO3vnHZWLfqUChsxRRcKvWZzsRY45HZM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=BUC/KjpI9S3mRHTImtkL4ltj/9DjYZGn9x+KksA7CoCVTWp9+64cyPPsAtB/IAjHI
	 kX0NG+kPrJEJAx4TmQlabQNNyF3uRTHqeLOuyXOvx5Jtywwe37DVEA8rDeqvC1W0Rt
	 YSvnH8HiNMnFicCmVnDghDn+5JaTYLzsIn8gXpHypvewLnfjiK3uYgM/+qI1BfuEkm
	 RjAPaamxBiXQFsXbgav6KJ/5Bz9VayCRFMH9TDbrK8j0TcRDWQ3nuBVbswAAXL4tE2
	 shdyDpMbhnTqNOnRX1C62Apt0dJ/wHq/Pnq5sYgZJ/ZNiJIrjYkViIkvz2EbU6FLcM
	 3zNiummvnrhaQ==
Date: Sun, 3 Nov 2024 02:16:40 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>, groff@gnu.org, cjwatson@debian.org,
	branden@debian.org
Subject: [PATCH v2 0/4] Add mansect(1)
Message-ID: <cover.1730596504.git.alx@kernel.org>
References: <cover.1730588410.git.alx@kernel.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="xj3L7oCIcr3E/v/z"
Content-Disposition: inline
In-Reply-To: <cover.1730588410.git.alx@kernel.org>
X-Mailer: git-send-email 2.39.5


--xj3L7oCIcr3E/v/z
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Sun, 3 Nov 2024 02:16:40 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>, groff@gnu.org, cjwatson@debian.org,
	branden@debian.org
Subject: [PATCH v2 0/4] Add mansect(1)

Hi Colin, Branden,

I've further optimized the script to be 3x faster, simpler and more
robust.  It now also prints the filename in the output, by calling
preconv(1), which is necessary for doing the job that mandb(8) does (see
patch 4/4).

Cheers,
Alex

Alejandro Colomar (4):
  src/bin/mansect, mansect.1: Add program and its manual page
  scripts/bash_aliases: man_lsfunc(), man_lsvar(): Use mansect(1)
  scripts/bash_aliases: man_lsfunc(), man_lsvar(): Use pcre2grep(1)
    instead of pcregrep(1)
  src/bin/mansect: Preprocess with preconv(1)

 man/man1/mansect.1   | 61 ++++++++++++++++++++++++++++++++++++++++++++
 scripts/bash_aliases | 51 +++++++-----------------------------
 src/bin/mansect      | 27 ++++++++++++++++++++
 3 files changed, 97 insertions(+), 42 deletions(-)
 create mode 100644 man/man1/mansect.1
 create mode 100755 src/bin/mansect

Range-diff against v0 (ignoring v1):
-:  --------- > 1:  5ccf08a11 src/bin/mansect, mansect.1: Add program and i=
ts manual page
-:  --------- > 2:  ef793bf0a scripts/bash_aliases: man_lsfunc(), man_lsvar=
(): Use mansect(1)
-:  --------- > 3:  0464c22ec scripts/bash_aliases: man_lsfunc(), man_lsvar=
(): Use pcre2grep(1) instead of pcregrep(1)
-:  --------- > 4:  929d1df17 src/bin/mansect: Preprocess with preconv(1)
--=20
2.39.5


--xj3L7oCIcr3E/v/z
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmcmzvgACgkQnowa+77/
2zLS+xAAnwTRAZs/Y12ClDHpcBmQBc+Tl8DhuYrzB/t1EJkvJIB2INkQrmBinUkv
zvAjqnLvdtSBhdka/bCyX3m1ySUZKfPrV7rrswlSHJ5e5JaBGUvMoNCBQewtyfkz
F5zYhDCW/dw27pZgRTcnRVp1TzGtsuzp13qZIhV12d7El76OkNYJv5WFD9voQQPA
MSqsJUfs5dYRpYgraVE4B61x6mz9VWDxOvJHZj9y/wmzlOm6ZvyrHa+DLFmf9oMj
uGZW7Qo1vgd2fWGApPPcf6JONwwiVShaqHC2munngdPygUJN5cAfo1+pvTMsM56y
FW6P//jL590XzATJvefWulLl62BfubdgIUpYvR4FgOOcBkWd7hlAV1/d2AtZHZ9j
BT5CwJXZ8hZotnhc40X5btsSo13p/2E+jmoam6fUbh5rGFiEieCI1w+8UUgQeZI0
cfF3fcRBZFjbE9C5ZXVjmavUxWo25oBQppLqmYxBti+sij2zI2mrUufllS02Bu5/
xE+9ccRdBcUiCmPByDrEVHRJoiHzsSu65ChIYHDtESI+jD152YW9B+Ye5lqAAO8i
4KQ5MF6OEyw4F8ypUKeRaFFnQKdplB9WYTMUO1rZrs/RThF0x1BYmeoHORX8PM07
RmfliHlw+yFOePF3nA1iiSkkOHpxsqkfLxDU7jHWhzv0bKJ/0D8=
=0+ku
-----END PGP SIGNATURE-----

--xj3L7oCIcr3E/v/z--

