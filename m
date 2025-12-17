Return-Path: <linux-man+bounces-4442-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E007CC9C5E
	for <lists+linux-man@lfdr.de>; Thu, 18 Dec 2025 00:12:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B2526302BD25
	for <lists+linux-man@lfdr.de>; Wed, 17 Dec 2025 23:12:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DE53D2ED17C;
	Wed, 17 Dec 2025 23:12:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T/S5aaaO"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D62325DB0D
	for <linux-man@vger.kernel.org>; Wed, 17 Dec 2025 23:12:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766013153; cv=none; b=p8Jarf6YnUGTYCWZNwbAEC6XqqGSs1KeQm578zWP/cdo71iEi7PsDG9ExJJTGxy+EhduJbfGkU8DFoLg1nPNuXjYFq5q0pxyK0zeSkXrEJ/uoAvTtJhkkVAu+2oqulF6wW/IxJNPabl7Ta7nIrdsIlXIaHeLdyBai4A9Ueq+FtY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766013153; c=relaxed/simple;
	bh=x5qdN6V29JMin8YZSb5SboBDyEtqVUOARbwUDPHoPC8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=cYx4K4a0I9QWE2SIgtRMQcrRXbp0MvDppEnksitcm/xKdnKoplnnBL+gBXaxRlz2KoFK5b/a/aYMofBzt3JUtE+nwB5RWaYSv1EcSbOG9cGVGvKmDXuPZlnevnWiD5UK3CKzOAXQjFBNFuwpH37G3d6xTl+sJun6NvZqYv20af0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T/S5aaaO; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7FB2BC4CEF5;
	Wed, 17 Dec 2025 23:12:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766013153;
	bh=x5qdN6V29JMin8YZSb5SboBDyEtqVUOARbwUDPHoPC8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=T/S5aaaOl4CtvuD8FaTMw9i/1zwQLokbyGEAU+jOs2FlOjfq7RZbdEfY5FlG6NpCw
	 ZqyUGdCbs8/Mq4NiTpH/kZPBZQmKgnbAMRJ3/zvlTWNYnBa/m1Kj/kq+FvhK9IPXaw
	 GPb5B+C7j0E0UpMoGzeRv0GRP6ofOjqC8WayIzoiMReILw6NyCsorHm3EsXGqWG7US
	 TFOvRqPND2hjEX3Obk7NxE6E8nilOjHOkYv24MpCvqzotfjGKNRdMrmxgC/9Pj9JAJ
	 sog7BO+yBJ9uuQ+pEWB9Boydiwm1oV/lcR0j4ptykofuRC+ltU18IMleUwIfZ/zgpI
	 QWTX0sYwx3rEA==
Date: Thu, 18 Dec 2025 00:12:29 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Florian Weimer <fweimer@redhat.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man2/clone.2: Document E2BIG-based extension
 handshake
Message-ID: <p2w4gsy2rdt2r6m6gpqz2oi6tn3raannxtqyfrucu7rctep6hk@p35sbzzdqeqq>
References: <lhua4zkxccq.fsf@oldenburg.str.redhat.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="t6u5wlhislkl5q2b"
Content-Disposition: inline
In-Reply-To: <lhua4zkxccq.fsf@oldenburg.str.redhat.com>


--t6u5wlhislkl5q2b
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Florian Weimer <fweimer@redhat.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man2/clone.2: Document E2BIG-based extension
 handshake
Message-ID: <p2w4gsy2rdt2r6m6gpqz2oi6tn3raannxtqyfrucu7rctep6hk@p35sbzzdqeqq>
References: <lhua4zkxccq.fsf@oldenburg.str.redhat.com>
MIME-Version: 1.0
In-Reply-To: <lhua4zkxccq.fsf@oldenburg.str.redhat.com>

Hi Florian,

On Mon, Dec 15, 2025 at 11:34:29AM +0100, Florian Weimer wrote:
> The clone3 system call uses copy_struct_from_user and the E2BIG
> error code to handle changes to the struct clone_args size.
>=20
> Signed-off-by: Florian Weimer <fweimer@redhat.com>
>=20
> ---

Thanks!  I've applied the patch.


Have a lovely night!
Alex

>  man/man2/clone.2 | 10 ++++++++++
>  1 file changed, 10 insertions(+)
>=20
> diff --git a/man/man2/clone.2 b/man/man2/clone.2
> index 74c5a59be..1d62a5df1 100644
> --- a/man/man2/clone.2
> +++ b/man/man2/clone.2
> @@ -1188,6 +1188,16 @@ in the caller's context, no child process is creat=
ed, and
>  is set to indicate the error.
>  .SH ERRORS
>  .TP
> +.BR E2BIG " (" clone3 "() only)"
> +The kernel does not support some functionality requested in this
> +.BR clone3 ()
> +call:
> +The size argument is larger than what the kernel supports,
> +and there are non-zero values in the struct after the kernel-supported s=
ize.
> +.TP
> +.BR E2BIG " (" clone3 "() only)"
> +The size argument is larger than the page size.
> +.TP
>  .BR EACCES " (" clone3 "() only)"
>  .B CLONE_INTO_CGROUP
>  was specified in
>=20
> base-commit: 46950a0845de91c422efe6c639091ace42cb92f8
>=20
>=20

--=20
<https://www.alejandro-colomar.es>

--t6u5wlhislkl5q2b
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmlDON0ACgkQ64mZXMKQ
wqmR0Q/9Eto5vnUmUr5E4fpWaDTxekkEs7YpRaFc3pRSXNQrIFyV7dQHdhwV60r9
AHHgnXqO41bJR9sGUpjf8eJrlnLWAQDOPzh6k0YcIJn+GsWImE3QcFPeGsELIRmS
O2ysGiKw8ts3PVYpduYZjXKkgCG2BFgTwrUyMBf7HL0TsRqnZBYfG0r7WjhwH/9A
EL/f8POpkOGBR+Ck3TODKX6xPPk9gxowu6HLDLgTvCwC2YQ4RM5QeGfgWS8fSaMw
Kc9xPL3dapHFDHeWUMNs9d5CPx+mv97xxwvcl2G2wM8z3/xGpA/qUwYQ7vkimWP6
5fQRjmtuoANaoysZwAIP5YXU6tEiezS7lJANtYXix1+quWT5VKtAChvUe3sZgwUN
TRFrXrDkJihMjdt5jhoS/mUXuuOEfyPFtAuGbV/v94IYAgga510106of2wNv7FOh
P48YO/aitI4ACYejxpdU8pkp/i8AgOVc+5jVgrMEJaY6s9U7qZ8B2DjyN9jaodIR
FVibbcWDILpKKpFg8CtYoX6TdvUCrDj1IzpOpP/ujTHAMvr5XzKBs9Ckc/0NQH6V
Sbd3w229Npa2bSKrL6XD4ZrOBFxO7z02vfJyJ7UO8/cPvnpjuImDutlyg+TpSiKz
Nv16CtPpipXq0CuS+4xwAIjFbOCwRj3WJP4m500mfti2yHWYKKE=
=wIJC
-----END PGP SIGNATURE-----

--t6u5wlhislkl5q2b--

