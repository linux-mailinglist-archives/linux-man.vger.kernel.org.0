Return-Path: <linux-man+bounces-5015-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WIesCmitfGkaOQIAu9opvQ
	(envelope-from <linux-man+bounces-5015-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Fri, 30 Jan 2026 14:08:56 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8141EBAE19
	for <lists+linux-man@lfdr.de>; Fri, 30 Jan 2026 14:08:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 98C8130086D6
	for <lists+linux-man@lfdr.de>; Fri, 30 Jan 2026 13:08:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 63E212FD1CF;
	Fri, 30 Jan 2026 13:08:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ChHhU95H"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56D3A2DAFD2
	for <linux-man@vger.kernel.org>; Fri, 30 Jan 2026 13:08:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769778481; cv=none; b=qyaLo1GBs+PwHnbxXa06/n+erVkuHLotoLRbQ1edCm1pmuMADsx6pCmjN2xoq5NurX8m9GHPkON5/pCmCr+k6GnBGaKTf9tbyRG4xet82wHzIAwjd6ZN7wpU3TzGnsCmfpnj954++7fbAlZG667YH8RhQTLmK1zyMr82U/Zo7MQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769778481; c=relaxed/simple;
	bh=wONZCVRDpt8zry8Fgj/g0nYALPj/+9Qu8EnhY/mPh1A=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=mDJrxf6Tm6X8TleEw+TVKhTO85VgykTdqBPRzvFjFpGpPsYn3bzglSL34MzGcke2SZazjf1JbT1czNNoUQ+/BVs8xlQtrPggw3fI4tVLNZQz+l5oMKbO8qwRo6J2tjFh4FlmhU8bbJzMWpQavX/v/m3l8YeeMuYc+OZgUTmNQlo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ChHhU95H; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 91A64C4CEF7;
	Fri, 30 Jan 2026 13:07:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769778480;
	bh=wONZCVRDpt8zry8Fgj/g0nYALPj/+9Qu8EnhY/mPh1A=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ChHhU95HnuK0c4KfSIT4T4gZNEuAMpcnLGy3KMk3AlikuCdDupX7KLv8lPirboKRp
	 y5+mEJTx69FTITyAT6YI1xUZlcNDBfms7Kygc2t9SC0YIRAQRgaz38s4OkkdYmT7M3
	 epP1JOITH/JM8sgS92e2p8eDbnFVZYNMXs2wEsvKbdmBamXZz4aesC+mbSvKFPfmlI
	 AOzrxXkSHfbNJa4BubeKnlQo2JykdLOwMOD+mcQnYq8IJkCyTSy8Y2RpFfgeibvHpT
	 Qfmxm1SqsbjGcUyRwAro6WJ21fuAvLdn3887C1qzOfGFbD7tsREw0Uo2Q3ZNn579SF
	 JzYyhto7VVKWA==
Date: Fri, 30 Jan 2026 14:07:57 +0100
From: Alejandro Colomar <alx@kernel.org>
To: me@black-desk.cn
Cc: linux-man@vger.kernel.org, CAI Qian <caiqian@redhat.com>, 
	"Eric W. Biederman" <ebiederm@xmission.com>
Subject: Re: [PATCH] man/man2/mount.2: add ENOSPC
Message-ID: <aXyssOLaZl8qkSZ1@devuan>
References: <20260130-add-enospc-for-mount-v1-1-85b45f0ce3d8@black-desk.cn>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="cg6u7s4o5ogoywtw"
Content-Disposition: inline
In-Reply-To: <20260130-add-enospc-for-mount-v1-1-85b45f0ce3d8@black-desk.cn>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-5015-lists,linux-man=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[linux-man];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,black-desk.cn:email]
X-Rspamd-Queue-Id: 8141EBAE19
X-Rspamd-Action: no action


--cg6u7s4o5ogoywtw
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: me@black-desk.cn
Cc: linux-man@vger.kernel.org, CAI Qian <caiqian@redhat.com>, 
	"Eric W. Biederman" <ebiederm@xmission.com>
Subject: Re: [PATCH] man/man2/mount.2: add ENOSPC
Message-ID: <aXyssOLaZl8qkSZ1@devuan>
References: <20260130-add-enospc-for-mount-v1-1-85b45f0ce3d8@black-desk.cn>
MIME-Version: 1.0
In-Reply-To: <20260130-add-enospc-for-mount-v1-1-85b45f0ce3d8@black-desk.cn>

[CC +=3D CAI, Eric]

Hi Chen,

On 2026-01-30T16:13:54+0800, Chen Linxuan via B4 Relay wrote:
> From: Chen Linxuan <me@black-desk.cn>
>=20
> After linux commit d29216842a85 ("mnt: Add a per mount namespace limit
> on the number of mounts"), mount(2) might return ENOSPC.
>=20
> ---
> Signed-off-by: Chen Linxuan <me@black-desk.cn>

The sign-off should be in the commit message (above the '---').

> ---
>  man/man2/mount.2 | 13 +++++++++++++
>  1 file changed, 13 insertions(+)
>=20
> diff --git a/man/man2/mount.2 b/man/man2/mount.2
> index d5a68cb836b2..bebd3c1792ba 100644
> --- a/man/man2/mount.2
> +++ b/man/man2/mount.2
> @@ -793,6 +793,19 @@ A pathname was empty or had a nonexistent component.
>  .B ENOMEM
>  The kernel could not allocate a free page to copy filenames or data into.
>  .TP
> +.B ENOSPC
> +Number of mounts will exceed the limit after this syscall in some mount
> +namespaces. This limit is controlled by

Please use semantic newlines.  See man-pages(7):

$ MANWIDTH=3D72 man man-pages | awk '/Use semantic newlines/,/^$/'
   Use semantic newlines
     In the source of a manual page, new sentences should be started on
     new lines, long sentences should be split  into  lines  at  clause
     breaks  (commas,  semicolons, colons, and so on), and long clauses
     should be split at phrase boundaries.  This convention,  sometimes
     known as "semantic newlines", makes it easier to see the effect of
     patches, which often operate at the level of individual sentences,
     clauses, or phrases.


Have a lovely day!
Alex

> +.IR /proc/sys/fs/mount-max ,
> +see
> +.BR proc_sys_fs (5)
> +for details of this limit.
> +Note that this limit applies both to the mount namespace where the mount
> +operation occurs and to any mount namespaces to which the mount will pro=
pagate.
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
>=20

--=20
<https://www.alejandro-colomar.es>

--cg6u7s4o5ogoywtw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAml8rS0ACgkQ64mZXMKQ
wqkJUxAAvUI6oVoTMFy32kpHl0t117rMB/AJWdKNW6OWJrwervdwturNX2tSFZVd
lIQichynBC061kWg7ve2+S3sKkvF5H2TikyRtHf6DLH6ial+yhk3lwKIrjmANHfW
THalSSehI9WTorucwDQNdlXWpS0RLr6x/UgYOpxLX4XzyqMCNtvO4DLQITBK1HAn
UasT7tvJHlZRbx1WWa5sUP3ikQDHjmQLcZR5B8BouwOiypwUAmKtYvggfT8lMyT0
fWQaJprCDkZ+z2BwDPu6OvwI7StuSNcHIC1gC5IfrdfB7yEN43MAAsS3kTk/RhbF
aGWbxurp8ZfpyYzwAyA5ikW7pnujnwm0ovhw5QfopOEDd/cBfbwlUCQdzxBSDNdf
umJsyv+zpQSxdjlIojvCmG2mtYGR64Pqs+5g9VPLLxiGJkq+D8NPq+wWvxPPlEON
BHCUmpDXrCjT/AZttMkjgdLGiph8bZDg/9o+rFDNvQKqtnqpQo6ytfqsSKrFaNos
hfyGZ40BHmX+lFWNoKW/K5LsHDCV33c0kNz/x/TGF27cqnM3rGN9548TFCiLMs6w
4KXqn7dw3AKvuI/Vid+OMhafiwdXmMnVgEps1UxZdlYCP3MTO0OxLUon8lzjkxHD
osfEVDxcr1PXebeIhf+3kDFL6ybiDm17NGKnpGPL0XV1Hlf94ZE=
=KQnq
-----END PGP SIGNATURE-----

--cg6u7s4o5ogoywtw--

