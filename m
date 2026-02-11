Return-Path: <linux-man+bounces-5113-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aJk0KRGIjGmHqgAAu9opvQ
	(envelope-from <linux-man+bounces-5113-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 11 Feb 2026 14:45:53 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AE5E124E90
	for <lists+linux-man@lfdr.de>; Wed, 11 Feb 2026 14:45:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id ED22F3023B92
	for <lists+linux-man@lfdr.de>; Wed, 11 Feb 2026 13:45:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 577A0260565;
	Wed, 11 Feb 2026 13:45:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EFnIV7rH"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F38FE352C2B;
	Wed, 11 Feb 2026 13:45:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770817513; cv=none; b=kdD+b9GWliGnqqzB8mDx9NIEuiPs5uxLsca32vXzTAoWBbsEEgz4iOHgLjQ2qcHy7afi8utHVy+OiPPJGBqFBbpfOdIjn8kayz7MBAbGf5Ywp/3lzhAnONbOIcmFP5Lgy/rUbZYDous+ZnABWocawg6y7zvOoqYOR6NQ5ktvwzg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770817513; c=relaxed/simple;
	bh=mQE349Ek+9unzmcg+rjmIRBM+5Iw9QvQD4dcRmR7EzQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=esCvZsr5jx2HoPMyEUdLIqqoidLNbgCsy/SVxIUQmlbyfXH+BkEZHnjemz5xWUnFZzdxytVWTsPIDXMRJ/ZvlX8TIzgNESVGybH6Jzd6Dx09dLuOvIaffvTejgG2vMqREzJqfGAPK0m2FunkHsiMvMceRiAp0hptIJAajqu02tM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EFnIV7rH; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B1B00C19424;
	Wed, 11 Feb 2026 13:45:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770817512;
	bh=mQE349Ek+9unzmcg+rjmIRBM+5Iw9QvQD4dcRmR7EzQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=EFnIV7rHohIWPdYPOv4QlTAfdPkE/xUvxqA/NntNNgoGWUyPHzxEDXw2DSdSTMIXw
	 u6R9sUhYqADHfdnq0pQBVSjKcV2VQ4FZ2ETtppTqIFIeo0hK1hsMjFnuxRxZk4fnRq
	 9O/LAN3JijFSCCQzQJm6Nr9OTPy7lVcXjiHziaJzTHfaasFnhcYHwET0dKlQBDg9MG
	 L3GRtqxDnay9ntbAMmjbBjT4tPTUlcKK+SNnuUmeMvFf8Fxn13pXWxCDhXP+jKyfy6
	 IyJU3/P+NmMvFY2JrCtckzqeE+zWt4LQJ4q4dI9GxzWpKti95zkv8LANHB9jcdZxhQ
	 KMRCY0/onJX3g==
Date: Wed, 11 Feb 2026 14:45:08 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Bhavik Sachdev <b.sachdev1904@gmail.com>
Cc: linux-man@vger.kernel.org, criu@lists.linux.dev, 
	Andrei Vagin <avagin@gmail.com>, Pavel Tikhomirov <ptikhomirov@virtuozzo.com>, 
	Jeff Layton <jlayton@kernel.org>, Miklos Szeredi <miklos@szeredi.hu>, 
	Josef Bacik <josef@toxicpanda.com>, Christian Brauner <brauner@kernel.org>
Subject: Re: [PATCH v1 05/10] man/man2/statmount.2: Document
 STATMOUNT_OPT_ARRAY
Message-ID: <aYyHt246ioAg2X3k@devuan>
References: <cover.1770671863.git.b.sachdev1904@gmail.com>
 <91f613b422c405f77993c2d9c993495a30fb7e53.1770671863.git.b.sachdev1904@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="3jxd2s26ytcdeimu"
Content-Disposition: inline
In-Reply-To: <91f613b422c405f77993c2d9c993495a30fb7e53.1770671863.git.b.sachdev1904@gmail.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5113-lists,linux-man=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.linux.dev,gmail.com,virtuozzo.com,kernel.org,szeredi.hu,toxicpanda.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[linux-man];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[alejandro-colomar.es:url,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 4AE5E124E90
X-Rspamd-Action: no action


--3jxd2s26ytcdeimu
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Bhavik Sachdev <b.sachdev1904@gmail.com>
Cc: linux-man@vger.kernel.org, criu@lists.linux.dev, 
	Andrei Vagin <avagin@gmail.com>, Pavel Tikhomirov <ptikhomirov@virtuozzo.com>, 
	Jeff Layton <jlayton@kernel.org>, Miklos Szeredi <miklos@szeredi.hu>, 
	Josef Bacik <josef@toxicpanda.com>, Christian Brauner <brauner@kernel.org>
Subject: Re: [PATCH v1 05/10] man/man2/statmount.2: Document
 STATMOUNT_OPT_ARRAY
Message-ID: <aYyHt246ioAg2X3k@devuan>
References: <cover.1770671863.git.b.sachdev1904@gmail.com>
 <91f613b422c405f77993c2d9c993495a30fb7e53.1770671863.git.b.sachdev1904@gmail.com>
MIME-Version: 1.0
In-Reply-To: <91f613b422c405f77993c2d9c993495a30fb7e53.1770671863.git.b.sachdev1904@gmail.com>

On 2026-02-10T02:47:38+0530, Bhavik Sachdev wrote:
> Document STATMOUNT_OPT_ARRAY flag and the corresponding fields
> introduced by it. This text is based on this commit message [1].
>=20
> Retrieve only file system options, separated by null bytes. For security
> opts STATMOUNT_OPT_SEC_ARRAY is used.
>=20
> Link [1]:
> <https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commi=
t/?id=3D2f4d4503e9e5ab765a7948f98bc5deef7850f607>
>=20
> Signed-off-by: Bhavik Sachdev <b.sachdev1904@gmail.com>
> ---
>  man/man2/statmount.2 | 13 +++++++++++++
>  1 file changed, 13 insertions(+)
>=20
> diff --git a/man/man2/statmount.2 b/man/man2/statmount.2
> index dd1f1f17d..e47af22c3 100644
> --- a/man/man2/statmount.2
> +++ b/man/man2/statmount.2
> @@ -52,6 +52,8 @@ .SH SYNOPSIS
>  .B "    __u64  mnt_ns_id;"
>  .B "    __u32  fs_subtype;"
>  .B "    __u32  sb_source;"
> +.B "    __u32  opt_num;"
> +.B "    __u32  opt_array;"
>  .B "    char   str[];"
>  .B };
>  .EE
> @@ -114,6 +116,7 @@ .SS The mnt_id_req structure
>  STATMOUNT_MNT_OPTS	/* Want/got mnt_opts */
>  STATMOUNT_FS_SUBTYPE	/* Want/got fs_subtype */
>  STATMOUNT_SB_SOURCE	/* Want/got sb_source */
> +STATMOUNT_OPT_ARRAY	/* Want/got opt_... */
>  .TE
>  .in
>  .P
> @@ -274,6 +277,16 @@ .SS The returned information
>  .I smbuf.str
>  the source for the mount.
>  It is a null-terminated string.
> +.TP
> +.I smbuf.opt_num
> +The number of filesystem options set on the mount.
> +.TP
> +.I smbuf.opt_array
> +The offset to the location in the
> +.I smbuf.str
> +buffer that contains file system options separated by null bytes.
> +They can be iterated over the help of

Missing word? "iterated over _with_ the help of"


Cheers,
Alex

> +.IR smbuf.opt_num .
>  .SH RETURN VALUE
>  On success, zero is returned.
>  On error, \-1 is returned, and
> --=20
> 2.53.0
>=20
>=20

--=20
<https://www.alejandro-colomar.es>

--3jxd2s26ytcdeimu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmmMh+QACgkQ64mZXMKQ
wqkKGg/+JKQvAZ3bt43iyCS29U7m7GX3wD5IwTC7qy2oG6LiAzR5GVx+fBy2JOUx
PBNRKhEFAYkvLEfQZNPS/tZy+fahZHPFpc/PHtTpu7vUbSq9acHpLN8pREMz+ggd
bA7U9uegDxMBGuRNpCbdTHs8hY1CkZzY8lr2aXYW71BZYloUbBBNATSn8Kgf+mZT
9QaqNGN7WOS5Ff5s0c0Xq7hnrzal13HVoV2AX31fz+yI1rfiTBC+MvSd5jZMqzG6
XP2nK7co4ODpOmFbd6q9dGMdNLdQB++d9W7VqxCvPPYKCdNBPfQ5WuttcQ1x380G
eVpCnUFVzMDXWvch1iWEDre5+ZtVfhQ8URJeouAqus9cE4rZklc94aOCh/AOqFI4
4g70ZWAz3x5Qq5ATZl72k1efwEJzt+Sxq9IoiYKRxTCqoXXwW/so/FTtuS6l1KPy
ORTAzzQqkojC+R/gXDV8euILJZx2aOVS/oMI5cI01/jBhvK4QzIB5MGW7xsqhWwK
TNMCkEV0ofDxsaOJQZLh9tSrfkJfbu5SRqlVwb3+kMZhSE6uc+of1IoWesa0YXvi
VRq4ISVHoqAYPy3CYqVy99YbMODjl3rp+7d8Iv0s1BUlkK2hYQMlweZm0liRlg6L
Psp3131nouLPXFrQzAm4J+AhYGh+wBFa1+1pvZsNKR1+ZJ6ksyE=
=dVny
-----END PGP SIGNATURE-----

--3jxd2s26ytcdeimu--

