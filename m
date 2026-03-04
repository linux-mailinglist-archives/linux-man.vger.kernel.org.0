Return-Path: <linux-man+bounces-5232-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mFzbIG9PqGmmtAAAu9opvQ
	(envelope-from <linux-man+bounces-5232-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 04 Mar 2026 16:27:43 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id F3B40202A74
	for <lists+linux-man@lfdr.de>; Wed, 04 Mar 2026 16:27:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id BCF8E310CCF5
	for <lists+linux-man@lfdr.de>; Wed,  4 Mar 2026 15:02:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 870783BE143;
	Wed,  4 Mar 2026 14:58:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dmo55lTO"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A6053B4E80;
	Wed,  4 Mar 2026 14:58:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772636301; cv=none; b=JwQlWa7K/qgmcdUZP1H3nMuJqbYWprJzyCQ9+is8qYsCN51KzZbhFXyOF0GBSsK7tX+qZUk4mX1vPXY7rNpVtEXkE12ZimXyxOpgphRs32BTRRA7bYMAallQTOADM/+HxdCa6NaUktAdUEw/WlOVVEq+9M6OarRHQ6hAnOianKI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772636301; c=relaxed/simple;
	bh=U1ITfq0SBMFcy3m2IaeP6UPwJkKtlAXrguGfXyL/sVA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=tjbw+NEPsHjoYDSEFY71FJCeye6Io1gtesU3w6ZIdzBAgOCy8NbL1FEdQdL6yn4YbcNOXGdmbwhJM6Yx/09c3abahb4qtq1UXULhCiQTII8LIB7V7ZGTncAW/6n9IXbgsin0/6Q2jx46F6zdrT6kqJo5YMRv3KvesFrTsSpwDJQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dmo55lTO; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9D123C4CEF7;
	Wed,  4 Mar 2026 14:58:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772636300;
	bh=U1ITfq0SBMFcy3m2IaeP6UPwJkKtlAXrguGfXyL/sVA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=dmo55lTOFGYNFSiGADxvDBkyT2CfmC7zBFOlzrIarxnAVeW2Cj5j1RhQEHhZazByJ
	 Q0EMkUw2YYYbyocTxlBF7tfujgOTJX/AVWLijR0n+RH5r1r0uzTHhozO1dOHxL3zMR
	 iOxLx0vB9wkq6Pn4Srv1UFoWzt80lHf+ba4Vd4VLx49ZtQGzSPleLC1HPykU4ia38f
	 eWKBEK/53ZuWDlUy4kaonQ352HPPVjjt2Cw1wUA2UqSHV3EFhExSjS+GD2Jj/+vvxx
	 2HXmD1AUROdYLUcTz1HIGwzgu/IW6BtZNIh2Nf5A///6ZzvilAnes30PJQUk3cAaeL
	 mq0xT4ZMOGCmg==
Date: Wed, 4 Mar 2026 15:58:16 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Bhavik Sachdev <b.sachdev1904@gmail.com>
Cc: avagin@gmail.com, brauner@kernel.org, criu@lists.linux.dev, 
	jlayton@kernel.org, josef@toxicpanda.com, linux-man@vger.kernel.org, 
	miklos@szeredi.hu, ptikhomirov@virtuozzo.com, Aleksa Sarai <cyphar@cyphar.com>, 
	Askar Safin <safinaskar@gmail.com>
Subject: Re: [PATCH v3] man/man2/statmount.2: Document STATMOUNT_BY_FD
Message-ID: <aahG1Mb0oRBEG6sy@devuan>
References: <aZzuI5pPe19gFvPf@devuan>
 <ef5a337e52f904d7eeb1e3fa82a09b04b46a4860.1772075365.git.b.sachdev1904@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="dhk2r44xcd2otpqp"
Content-Disposition: inline
In-Reply-To: <ef5a337e52f904d7eeb1e3fa82a09b04b46a4860.1772075365.git.b.sachdev1904@gmail.com>
X-Rspamd-Queue-Id: F3B40202A74
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5232-lists,linux-man=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,lists.linux.dev,toxicpanda.com,vger.kernel.org,szeredi.hu,virtuozzo.com,cyphar.com];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.997];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[alejandro-colomar.es:url,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Action: no action


--dhk2r44xcd2otpqp
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Bhavik Sachdev <b.sachdev1904@gmail.com>
Cc: avagin@gmail.com, brauner@kernel.org, criu@lists.linux.dev, 
	jlayton@kernel.org, josef@toxicpanda.com, linux-man@vger.kernel.org, 
	miklos@szeredi.hu, ptikhomirov@virtuozzo.com, Aleksa Sarai <cyphar@cyphar.com>, 
	Askar Safin <safinaskar@gmail.com>
Subject: Re: [PATCH v3] man/man2/statmount.2: Document STATMOUNT_BY_FD
Message-ID: <aahG1Mb0oRBEG6sy@devuan>
References: <aZzuI5pPe19gFvPf@devuan>
 <ef5a337e52f904d7eeb1e3fa82a09b04b46a4860.1772075365.git.b.sachdev1904@gmail.com>
MIME-Version: 1.0
In-Reply-To: <ef5a337e52f904d7eeb1e3fa82a09b04b46a4860.1772075365.git.b.sachdev1904@gmail.com>

Hi Bhavik,

Sorry for the delay; I had an issue with my mail provider.  It's now
resolved.

On 2026-02-26T08:40:16+0530, Bhavik Sachdev wrote:
> STATMOUNT_BY_FD introduces the ability to get information about a mount
> using a fd on the mount. This functionality is currently in linux-next
> [1].
>=20
> Link [1]:
> <https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/comm=
it/?h=3Dnext-20260126&id=3Dd5bc4e31f2a3f301b4214858bec834c67bb2be5c>
>=20
> Signed-off-by: Bhavik Sachdev <b.sachdev1904@gmail.com>
> Message-ID: <57c96336ccfbdc05f60b7875c315a8c1dd0d14b8.1771870334.git.b.sa=
chdev1904@gmail.com>
> Message-ID: <7d4b22c595feeadb3be6df8a8781344597120f7e.1771870502.git.b.sa=
chdev1904@gmail.com>
> ---
> Hey Alex!
>=20
> > Also, should we say the same as elsewhere?:
> >	"It is an ORed combination of the following constants"
> > and then a list which contains only STATMOUNT_BY_FD?
>=20
> I am not really sure that statmount flags will be a ORed combination in
> the future i.e (STATMOUNT_BY_FD | STATMOUNT_NEW_FLAG) would be something
> that is valid.
>=20
> I think for now, it is better we don't do that.
>=20
> Thanks,
> Bhavik
>=20
>  man/man2/statmount.2 | 40 ++++++++++++++++++++++++++++++++++++++--
>  1 file changed, 38 insertions(+), 2 deletions(-)
>=20
> diff --git a/man/man2/statmount.2 b/man/man2/statmount.2
> index 5ac96796c..1556342de 100644
> --- a/man/man2/statmount.2
> +++ b/man/man2/statmount.2
> @@ -24,7 +24,10 @@ .SH SYNOPSIS
>  .EX
>  .B struct mnt_id_req {
>  .BR "    __u32  size;" "        /* sizeof(struct mnt_id_req) */"
> -.BR "    __u32  mnt_ns_fd;" "   /* fd of mnt_ns to query the mnt_id in *=
/"
> +.BR "    union {"
> +.BR "           __u32  mnt_ns_fd;" "   /* fd of mnt_ns to query the mnt_=
id in */"
> +.BR "           __u32  mnt_fd;" "      /* fd on the mount being queried =
*/"
> +.BR "    };"
>  .BR "    __u64  mnt_id;" "      /* The mnt_id being queried */"
>  .BR "    __u64  param;" "       /* ORed combination of the STATMOUNT_ co=
nstants */"
>  .BR "    __u32  mnt_ns_id;" "   /* The id of mnt_ns to query the mnt_id =
in */"
> @@ -89,7 +92,8 @@ .SH DESCRIPTION
>  .I bufsize
>  with the fields filled in as described below.
>  .I flags
> -must be 0.
> +must either be 0 or
> +.BR STATMOUNT_BY_FD .
>  .P
>  (Note that reserved space and padding is omitted.)
>  .SS The mnt_id_req structure
> @@ -110,6 +114,27 @@ .SS The mnt_id_req structure
>  .I req.mnt_id
>  (since Linux 6.18).
>  .P
> +.I req.mnt_fd
> +is a file descriptor on a mount.

Is this the same as a "mount object file descriptor" as describer in
fsopen(2)?  If so, we should use the same language, I think.

CC +=3D Aleksa, Askar

> +If
> +.B STATMOUNT_BY_FD
> +flag is specified,
> +.I req.mnt_id
> +and
> +.I req.mnt_ns_id
> +are zeroed, the function will return information about the mount the fd =
is on

We always spell "file descriptor", not fd.

Aleksa, Askar, would you mind reviewing this patch?  You may have
comments on some specific terms used here, as they might relate to
fsopen(2).

> +(Since Linux 7.0).

s/Since/since/

> +.P
> +The fd can also be on a mount that has been lazily unmounted (see
> +.BR umount2 (2)
> +with
> +.BR MNT_DETACH ).
> +In this case,
> +.BR STATMOUNT_MNT_POINT

s/BR/B/

BR is for alternating bold and roman.


Other than the questios/doubts about mounts and file descriptors, and
these minor formatting/source issues (which I would have amended
otherwise), the patch looks good to me.


Have a lovely day!
Alex

> +and
> +.BR STATMOUNT_MNT_NS_ID
> +will be unset, since an unmounted mount is no longer a part of the files=
ystem.
> +.P
>  .I req.mnt_id
>  can be obtained from either
>  .BR statx (2)
> @@ -392,6 +417,17 @@ .SH ERRORS
>  .I req.mnt_ns_fd
>  were set.
>  .TP
> +.B EINVAL
> +.I req.mnt_id
> +or
> +.I req.mnt_ns_id
> +was specified alongside
> +.IR req.mnt_fd .
> +.TP
> +.B EBADF
> +.I req.mnt_fd
> +is an invalid file descriptor.
> +.TP
>  .B E2BIG
>  .I req
>  is too large.
> --=20
> 2.53.0
>=20

--=20
<https://www.alejandro-colomar.es>

--dhk2r44xcd2otpqp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmmoSHsACgkQ64mZXMKQ
wqmHlg//QgvVuE99Vuz+oFdf7kQQIYkYRnbGM5thIdYKHB6Z2yp6JHZ+DkmeDd04
2iXIxgkpzR6cgRZ8klo/ku51Wjc91gsaJF8uiX1A+9Gqv1H7L62T0m2wiilR4IZh
GqJiS4eeZsIKQosy9q4q4mEHfhd9EO2SA4zfbpFgU2yUfRxLXU3x/Od3wFdbwqeX
RWxTXNq9SFDezlyTmzISFQRRxdqzwcWBSnkK3XlpKLyQwP8QHfgQCC7L5Dohcm5H
AYnq2weBpHz+BqUPjC64Bvlxfv83Sfu1BfMlIrSPeIBqIA3uqwExu5/qont7PjbP
jJVC+YPiYqpTYFD0AkeLP3Xg/aK2NCwXhbt4nTJWuIqz+X0ODqEN/m+Y+8W/spdH
VPrR/2VcNL++vp8pNfaWJyFHlOIcHJZiJBbH9RPIMCvYXzTJKWh11kUrmbO7MoLA
RpruD0GDb8EozlX/ZhB9cPwD27gtrKKfzrLXEbMd3+5ghI8mIoyr896Cwv4WqUFw
42Apjkm7pMYQt4w+WodvgHjl6xXwNGwZl9Xp0B00K9I0qmP+vazc6VeUDkXdUhsj
dkw+OanBXf4MyD3YrqDSXQHvfFobLns9PJPEMpN5TAMBofObkfGH+pSbFGeGaj5K
tMX4XGhSHsfeiDW4+ozfMZiZl3zJzWmkxpHIUdbYluBeMYQWA6g=
=rzaI
-----END PGP SIGNATURE-----

--dhk2r44xcd2otpqp--

