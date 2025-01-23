Return-Path: <linux-man+bounces-2286-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 05371A1A41F
	for <lists+linux-man@lfdr.de>; Thu, 23 Jan 2025 13:25:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E30291887EA0
	for <lists+linux-man@lfdr.de>; Thu, 23 Jan 2025 12:25:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 007DA20E33E;
	Thu, 23 Jan 2025 12:25:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uKDqhO+V"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B350B20E035
	for <linux-man@vger.kernel.org>; Thu, 23 Jan 2025 12:25:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737635116; cv=none; b=DJMCDRkdhpvwYiU/7eQMdJ2OIVVEfaikfWckiIz2jo/u3bQGIR8BcrSEL3zX6owN8EcRkOahDSx2d8jANk80XehduZoNaMtm4X5qYWBBDAuj6uHEobASLNIh8EMmUXtKjK9wYAQpFpp1JTPvSIZQjdMDhikyNMlixW5QVCywcTo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737635116; c=relaxed/simple;
	bh=N3InOtnO24BjOwPZb2ehIqOWs9647Mn5eSsbC8fypSI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=c3b/b2Q4wORdrGxUZOR0nAjXENtvxQsBcVSNCLDfWjl8TcmE2sAV4uxqfMFNcMnl6EKA4CRvmhpBaD04CLkxuU9S7otHyLRV5EiaGIvS7Xkn/FOS+tqvRyvOMQJ79Y1noCb7YnGwUi/O8lDfomh1E/ZfuO48ktKRHSKojU7izMw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uKDqhO+V; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1BCF4C4CEE5;
	Thu, 23 Jan 2025 12:25:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737635116;
	bh=N3InOtnO24BjOwPZb2ehIqOWs9647Mn5eSsbC8fypSI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=uKDqhO+VRnRefwYRh4oFJ2HUj/yQAUCEK9aeBMr59AJkiFO4BPIJBZdgvggjdyA7z
	 pltWF7BoxySDvc1GfguHiIeMP6PONXLRqKCp7eFJNuR1w8RVF4FZ3OIoUqjfafIQvx
	 6gmlPc+Z+N3VUMuS5x7MTeB6sJVK6f11bX1UQrWEWgqm6ejvk8D5K/wZgGJNIWSUeg
	 ONkrZpvuluV/6RcFNuTh+0/yU5bOU5xFmgrvQArvzhEB2bzGTIxgNrIm9u5VllX4g/
	 JcJYp9X/BGyGnfWon0Ag2/OQ/gOvhl9+q8IBitDJE9oHu69c1Iyv7gwp5xgOXgGnQC
	 g15DjEiD70hAw==
Date: Thu, 23 Jan 2025 13:25:30 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Chen Linxuan <chenlinxuan@uniontech.com>
Cc: linux-man@vger.kernel.org, 
	"Eric W . Biederman" <ebiederm@xmission.com>
Subject: Re: [PATCH] man/man2/mkdir.2: Add EOVERFLOW
Message-ID: <hvmtgu7kscyawznd4o6zod45xklalinom2zdlcwn3bllkxlrg6@syxa44h4cp64>
References: <A5A55492765B9570+20250122092417.811572-1-chenlinxuan@uniontech.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="5fk4sj6nvrvhybhy"
Content-Disposition: inline
In-Reply-To: <A5A55492765B9570+20250122092417.811572-1-chenlinxuan@uniontech.com>


--5fk4sj6nvrvhybhy
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Chen Linxuan <chenlinxuan@uniontech.com>
Cc: linux-man@vger.kernel.org, 
	"Eric W . Biederman" <ebiederm@xmission.com>
Subject: Re: [PATCH] man/man2/mkdir.2: Add EOVERFLOW
References: <A5A55492765B9570+20250122092417.811572-1-chenlinxuan@uniontech.com>
MIME-Version: 1.0
In-Reply-To: <A5A55492765B9570+20250122092417.811572-1-chenlinxuan@uniontech.com>

Hi Chen,

On Wed, Jan 22, 2025 at 05:24:17PM +0800, Chen Linxuan wrote:
> `mkdir` and `mkdirat` might set errno to EOVERFLOW when UID or GID
> mapping has not been configured. See
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit=
/?id=3D036d523641c66bef713042894a17f4335f199e49

Would you mind adding a small program in the commit message that shows
this behavior?

> Signed-off-by: Chen Linxuan <chenlinxuan@uniontech.com>

Thanks for the patch!  It LGTM.


Have a lovely day!
Alex

> ---
>  man/man2/mkdir.2 | 4 ++++
>  1 file changed, 4 insertions(+)
>=20
> diff --git a/man/man2/mkdir.2 b/man/man2/mkdir.2
> index d84dbc27e..2af618d68 100644
> --- a/man/man2/mkdir.2
> +++ b/man/man2/mkdir.2
> @@ -203,6 +203,10 @@ does not support the creation of directories.
>  .B EROFS
>  .I pathname
>  refers to a file on a read-only filesystem.
> +.B EOVERFLOW
> +UID or GID mappings (see
> +.BR user_namespaces (7))
> +has not been configured.
>  .SH VERSIONS
>  Under Linux, apart from the permission bits, the
>  .B S_ISVTX
> --=20
> 2.43.0
>=20

--=20
<https://www.alejandro-colomar.es/>

--5fk4sj6nvrvhybhy
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmeSNTkACgkQnowa+77/
2zJ4NQ/+KTJE1Zr4Wi/wVbfQJP0kCVt5oDSTBhnLEkQ4klBvE9eInLs53t6rv60X
aVyrzvqxC5vHecplJ6oeEmU4mBxeSVQYI8QKzv9Q3Q3qYxCq6QSOwNHsHydV7RQg
40EL+EoqXECu6fDlGlBAor1lIe41VaA7gsI7aux/YX54D04NqzX78urPHqVt01fI
eT5ttpxzs0xoQBPGDT1xbh1Ki8bZAX/BtJo8MDZ458WntxVmwMyKoMP68dEpv6Aa
ZxIbnSsTpL0cqsqhDiZcUIyNv/KIs5aXNPNVk8Sh9jmWAbdDuVcGraV071u3qJmr
svyj6XBd6xx0jJVjt4NTvKwswoQcyNqcI9LNDNbv+6AtdulLZKWVERawOIm+mqad
D+RJYb9ZHB2J/HOQSSvLupRY8+fd5i02WIkCgmWjYfx2omue2QIrpLeQYdsepLaA
E+wsUeumLG7anCiSTzVW5kNKIG8BDw/Jidawv0Wym2PtqYEQXsPr9L+im+LonzA5
FpGq5psMTDlL7rUETyEXnpRns+h0IKihemM2iTwxzRWp85Lc7gberr2sgLxrkiEM
iPlOat5mSblka90Fnfhkyg4IbHH6fYMjW7DKxblOMHeCBHy7TDcnjzRCv1/FEYtL
tWZW4LfiqHPHBdN4Rz+JNSpIgAN6+MXMcFeNAnvnxzX29BbSBP0=
=jtyx
-----END PGP SIGNATURE-----

--5fk4sj6nvrvhybhy--

