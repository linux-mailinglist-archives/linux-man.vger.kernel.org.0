Return-Path: <linux-man+bounces-4682-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id B7E54CF8AFC
	for <lists+linux-man@lfdr.de>; Tue, 06 Jan 2026 15:08:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7FA2531297F2
	for <lists+linux-man@lfdr.de>; Tue,  6 Jan 2026 13:58:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6868526FD9A;
	Tue,  6 Jan 2026 13:57:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s+aPcbHr"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 290121957E8
	for <linux-man@vger.kernel.org>; Tue,  6 Jan 2026 13:57:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767707825; cv=none; b=hWGYF5SQzrvRSWGNRG9Gh8hIyBnmMzKBvlNmLDwapL/PY1YVGyEDylw/Dz5Vp+GhDOVvSLWH3nImraXmCopcO6Yj3AdO0vuEOIQ3waB3RSbwXNzqLJgea/ZtSkIaX8xd2bKT5WTrhwEAmrYJq3kqSEA6OxxjBqtKR56XX+Av0NA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767707825; c=relaxed/simple;
	bh=EzLPwTBHXQn8RxMvnlY/ZQuN9q9+rJl3P/bklQO8C4w=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=gET9pH+cBKRzU3sHZ11LzYrRi9wnTmWlPWh18Udd3BPAi4SwnLFeXkHnMqyAhx9t6E0/zeZtvcc1suTjghn/HaXLhoy9T59iEtOMUKi7Vfim9Md3JpTlJil0eXwwlAWhFZiKGoJS5EkKXKsEa/6wGeXK6WmPFnn40ByQiE/VXdo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s+aPcbHr; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 23562C116C6;
	Tue,  6 Jan 2026 13:57:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767707824;
	bh=EzLPwTBHXQn8RxMvnlY/ZQuN9q9+rJl3P/bklQO8C4w=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=s+aPcbHrMm7kxuh6yvG0cR5/nDd18pHSp/RZniKY/UDRiBa1eWdpSwM5D8OKj0FW6
	 Os0fr8iKuMhic6M7CIDUu5B0mctjIAhgGq6pQL0vIds5ZSjo+gCIFujNHfLRVeArAU
	 +TevSDm09Xq7Vu4FeRbcrTFk9sS39+iGHbvQUzqynJbNjUjdExc9Jd5wUjRlvzxc8s
	 ojxm5+8ZzSbs9C/8f3K5I3GX8f1C9aE8wZt1noBk/AsFGhV543Zp4C/kVyMauQtfBy
	 RH1bA5l1Krohn7ebXiDnXQoztG5zXU/ESfL4LtbbPHUd25ErAGA7vNb94PhtxhOqfI
	 DxLqDb96mqMvA==
Date: Tue, 6 Jan 2026 14:57:01 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v1 02/15] man/man3type/blk{cnt,size}_t.3type: HISTORY:
 Update first SUS appearance of blk{cnt,size}_t(3type)
Message-ID: <aV0UoiFKAKjX_X69@devuan>
References: <cover.1767675322.git.sethmcmail@pm.me>
 <3e3cdf605fad029b74a09b9b88aa9f52cc6d8d72.1767675322.git.sethmcmail@pm.me>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="xia5qi7xpxdkix47"
Content-Disposition: inline
In-Reply-To: <3e3cdf605fad029b74a09b9b88aa9f52cc6d8d72.1767675322.git.sethmcmail@pm.me>


--xia5qi7xpxdkix47
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v1 02/15] man/man3type/blk{cnt,size}_t.3type: HISTORY:
 Update first SUS appearance of blk{cnt,size}_t(3type)
Message-ID: <aV0UoiFKAKjX_X69@devuan>
References: <cover.1767675322.git.sethmcmail@pm.me>
 <3e3cdf605fad029b74a09b9b88aa9f52cc6d8d72.1767675322.git.sethmcmail@pm.me>
MIME-Version: 1.0
In-Reply-To: <3e3cdf605fad029b74a09b9b88aa9f52cc6d8d72.1767675322.git.sethmcmail@pm.me>

On Tue, Jan 06, 2026 at 05:07:51PM +1000, Seth McDonald wrote:
> blkcnt_t(3type) and blksize_t(3type) first appeared in SUSv2.[1]
>=20
> [1] CAE Specification, System Interfaces and Headers, Issue 5, Chapter 4
> "Headers", p. 1177.
> <https://pubs.opengroup.org/onlinepubs/7908799/xsh/systypes.h.html>
>=20
> Signed-off-by: Seth McDonald <sethmcmail@pm.me>

Applied; thanks!

> ---
>  man/man3type/blkcnt_t.3type  | 1 +
>  man/man3type/blksize_t.3type | 1 +
>  2 files changed, 2 insertions(+)
>=20
> diff --git a/man/man3type/blkcnt_t.3type b/man/man3type/blkcnt_t.3type
> index 7247f6486b7e..e9644ff94420 100644
> --- a/man/man3type/blkcnt_t.3type
> +++ b/man/man3type/blkcnt_t.3type
> @@ -20,6 +20,7 @@ .SH DESCRIPTION
>  .SH STANDARDS
>  POSIX.1-2024.
>  .SH HISTORY
> +SUSv2,
>  POSIX.1-2001.
>  .SH NOTES
>  The following header also provides this type:
> diff --git a/man/man3type/blksize_t.3type b/man/man3type/blksize_t.3type
> index 4ec9013fdb22..81d767d47882 100644
> --- a/man/man3type/blksize_t.3type
> +++ b/man/man3type/blksize_t.3type
> @@ -20,6 +20,7 @@ .SH DESCRIPTION
>  .SH STANDARDS
>  POSIX.1-2024.
>  .SH HISTORY
> +SUSv2,
>  POSIX.1-2001.
>  .SH NOTES
>  The following header also provides this type:
> --=20
> 2.47.3
>=20

--=20
<https://www.alejandro-colomar.es>

--xia5qi7xpxdkix47
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmldFK0ACgkQ64mZXMKQ
wqnxtg/8CRZhVAwLdvZuBf4emQHW11vYJZBAejr+clyrkwb59Ev89Z2D/FCBdYJ6
8qJFFB9GZl6zlvCcG0S5ROmtx6DCK0TS1zIDyPUoie+YtADePnAmFFIDzILaw+Ww
oKCUdUy3oi9aAojbkKjP/5v9Trr/skTqZLr00NnS6G/pRGUFr430sYz3GfQzL92z
DOwDTG6HNBgr6XXVYf80H6mv+uspgbiSw7d8YsikLEwzinIXtu7tsANmP/Pcdafc
ju/qjN3ILK4VhJtzfxYwIcpcDlvGHlU61zlrJ2ESsyg4BXiAxWciZ+7WEo5tmRjG
3agG2Qp+dWEOeqxKZIH0Uu3vhU/Aam16B59PKTtcjq7vSOfUhYqXOfkGj2SX5PR9
GmhZSzm3b7z24119tA9BybPuT/Z2xNDLQ2IDOEg1d2JaMembhhEJdhVlbMlDC4Ib
3G4SdMgfL1hTKq6Z2RHtgEDYOyypIwzvQVZx6aTjka5m87sTz6B5nhIhEnuy8Z4m
qr875ul/cLTvtZ8YnlbAiKYFDZLJx5HBsz4Xhr+7kpwL/XyMAQ9YfqvU2Rgm1MsC
z3k4fodfiT6h1jF9uyWBeJMDTvR1ZUhX5bH1GWjQrNKWgh0wB7qV8MkxlIMTuoR+
yaiYVcW+NkvUQs8Pte28SHIFuuZGN/YyvDYG64o5RFjEfBUE9rY=
=u+jW
-----END PGP SIGNATURE-----

--xia5qi7xpxdkix47--

