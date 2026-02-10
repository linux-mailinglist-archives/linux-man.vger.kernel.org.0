Return-Path: <linux-man+bounces-5102-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EFp3Cvy8i2mHaAAAu9opvQ
	(envelope-from <linux-man+bounces-5102-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 11 Feb 2026 00:19:24 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F3FF11FE7C
	for <lists+linux-man@lfdr.de>; Wed, 11 Feb 2026 00:19:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 16A41301FFBD
	for <lists+linux-man@lfdr.de>; Tue, 10 Feb 2026 23:19:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5F0703128CF;
	Tue, 10 Feb 2026 23:19:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VFGSpTAI"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22EDD226D18
	for <linux-man@vger.kernel.org>; Tue, 10 Feb 2026 23:19:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770765561; cv=none; b=AhNKrx958c3/Q3cRSgrc1IENF2BI1VCRtLlG4zTKGNK9R8QQyBTM2HQPCeeFK7wIgogWItwtkMdK39WMLcMzDD2fN9G/Dr7uk+bkN7Zfhl8MqW8pyvXXBR1zPWulTAy4bb0Uegu8wAJnOw9Qc5T27udyKqMktOKSvf6hZtgtkHY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770765561; c=relaxed/simple;
	bh=ScWuB9JJuNEAMZg6Ob32PrT4DxZIPjcD9DR0MuWTKV4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Beiu1O2whAIZBrCF1H0uKFwlA0IMujHXFldknGKmDcusSah/gpEQ1A5kWp3LuvR2APvyHsDdO5G4DiwWe5+huRhurd5AZhMbK1lbiuB3XhMa5guDyyw7mcz08PBdn/jOQ2K6qCvcKcJ3u1hvP+YKEr55OdzUfE+WKlsmzjXZjPg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VFGSpTAI; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EF227C116C6;
	Tue, 10 Feb 2026 23:19:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770765561;
	bh=ScWuB9JJuNEAMZg6Ob32PrT4DxZIPjcD9DR0MuWTKV4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=VFGSpTAIuxSb/9/Rk3Od8adOjXznoYpgRQT3WsbD0TU0vCty8eIQvO6t1iSaUN5qF
	 EGLKrYZ5BsWIUonaWMNsCmEXMBb/73aoD+yrcr134hjKJeR5M6D/r2g6/tYmyXsnLT
	 BLM0mCSRgr3soApu9QjnuKD6s5gtEGCDACGxSyBxJh0GqPyiMWH675tA77kotyvyVr
	 Dbj6UvuaIdn8ZEk84J4GVfKJ6UZxT8c+dISTsXHMgGnv7/wN8UXwGtB8Ldqpna5Mgg
	 s8IFhjieQ9AFcUDfOAayriDavGpXr+dqvefA3tUxtysdxG/rx/xLqOYLPZumQQ/bRj
	 n8bKIH4bhhZuQ==
Date: Wed, 11 Feb 2026 00:19:17 +0100
From: Alejandro Colomar <alx@kernel.org>
To: me@black-desk.cn
Cc: linux-man@vger.kernel.org, CAI Qian <caiqian@redhat.com>, 
	"Eric W. Biederman" <ebiederm@xmission.com>
Subject: Re: [PATCH v2] man/man2/mount.2: add ENOSPC
Message-ID: <aYu845Smj2aepWud@devuan>
References: <20260201-add-enospc-for-mount-v2-1-43c990199cc6@black-desk.cn>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="fqenypq6a6xpke4a"
Content-Disposition: inline
In-Reply-To: <20260201-add-enospc-for-mount-v2-1-43c990199cc6@black-desk.cn>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-5102-lists,linux-man=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[linux-man];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 7F3FF11FE7C
X-Rspamd-Action: no action


--fqenypq6a6xpke4a
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: me@black-desk.cn
Cc: linux-man@vger.kernel.org, CAI Qian <caiqian@redhat.com>, 
	"Eric W. Biederman" <ebiederm@xmission.com>
Subject: Re: [PATCH v2] man/man2/mount.2: add ENOSPC
Message-ID: <aYu845Smj2aepWud@devuan>
References: <20260201-add-enospc-for-mount-v2-1-43c990199cc6@black-desk.cn>
MIME-Version: 1.0
In-Reply-To: <20260201-add-enospc-for-mount-v2-1-43c990199cc6@black-desk.cn>

Hi Chen,

On 2026-02-01T11:59:33+0800, Chen Linxuan via B4 Relay wrote:
> From: Chen Linxuan <me@black-desk.cn>
>=20
> After linux commit d29216842a85 ("mnt: Add a per mount namespace limit
> on the number of mounts"), mount(2) might return ENOSPC.
>=20
> Signed-off-by: Chen Linxuan <me@black-desk.cn>

Thanks!  I've applied the patch.


Have a lovely night!
Alex

> ---
> Changes in v2:
> - Apply changes suggested by Alejandro:
>   - Correct the sign-off line;
>   - Use semantic newlines.
> - Link to v1: https://lore.kernel.org/r/20260130-add-enospc-for-mount-v1-=
1-85b45f0ce3d8@black-desk.cn
> ---
>  man/man2/mount.2 | 15 +++++++++++++++
>  1 file changed, 15 insertions(+)
>=20
> diff --git a/man/man2/mount.2 b/man/man2/mount.2
> index d5a68cb836b2..35fef946a6d6 100644
> --- a/man/man2/mount.2
> +++ b/man/man2/mount.2
> @@ -793,6 +793,21 @@ A pathname was empty or had a nonexistent component.
>  .B ENOMEM
>  The kernel could not allocate a free page to copy filenames or data into.
>  .TP
> +.B ENOSPC
> +Number of mounts will exceed the limit after this syscall
> +in some mount namespaces.
> +This limit is controlled by
> +.IR /proc/sys/fs/mount-max ,
> +see
> +.BR proc_sys_fs (5)
> +for details of this limit.
> +Note that this limit applies
> +both to the mount namespace where the mount operation occurs
> +and to any mount namespaces to which the mount will propagate.
> +See
> +.BR mount_namespaces (7)
> +for details for mount namespace and mount propagation.
> +.TP
>  .B ENOTBLK
>  .I source
>  is not a block device (and a device was required).
>=20
> ---
> base-commit: 6754bd1a126ed1e9b7d9c2bc1d221681f5182bb3
> change-id: 20260130-add-enospc-for-mount-3ea1e87af6ee
>=20
> Best regards,
> --=20
> Chen Linxuan <me@black-desk.cn>
>=20
>=20

--=20
<https://www.alejandro-colomar.es>

--fqenypq6a6xpke4a
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmmLvPUACgkQ64mZXMKQ
wqkvUg//boQjdTFucQJUsHK7TROp5PaFlKH3NL4S7AhPQpqtw420XA12z6TzKU0b
4FQK15vNGKO3K5lSucF2bGzMX138e1VxxnvJFBoEbGMRv5YA+x0W10agINoh9JmF
TiOoYNz0hazSbt+KKcUnA52SjxBaC1ng56B2GX6mCdPN81uE6RyM/c1JUAVY5XO5
VRJaTOh64moVgdyOD5j/zgzJHKdGI/bM03uKxpX5esyiaBfawgw6PIyE5Ss1khBf
PIjg2LnMakevuMqeO/li+rZD6i6qCUyH8cpSaMQoG5Ujj66ckerlLUfBUVbf0Ls8
n9/QJDiG3Npbo4pUwdnuxMvtcrB1rt2qHWhN6Q445Q9uXgvhqpilHqCqVGNw9gEH
AqriN7ExQq3inR+4FLuaLRzpzct64lh0px2yrL5zxeL1NU3LJZh2VR11aT0adEJc
HJ4Bt9XgFWGSA1upgUy/HdC8BqWr9PNPFWKBUTRxrtx1X3EgzIX3iXCvvkvGqhKj
KwY7PXsKUo7A0jOECMNGPRXqf/VlrBQtN/5EKhwFITyjkRzgW23hcGQgmb4D2jJC
eUSu+jN9VzHD4PH1h2aILNcJyqZf1IQp65oOIr7TxMdy4VvYvXMZhIgmuNNYKkZY
EWIT604nD8I3vMesxA4ZoEYvjxjuCxtoHAu9VtRxhomxMAgTEqQ=
=0PTl
-----END PGP SIGNATURE-----

--fqenypq6a6xpke4a--

