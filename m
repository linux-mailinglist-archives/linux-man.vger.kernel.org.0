Return-Path: <linux-man+bounces-5003-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sHtKEWx7e2kQFAIAu9opvQ
	(envelope-from <linux-man+bounces-5003-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Thu, 29 Jan 2026 16:23:24 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id D2EF6B166F
	for <lists+linux-man@lfdr.de>; Thu, 29 Jan 2026 16:23:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 0B3833006B4F
	for <lists+linux-man@lfdr.de>; Thu, 29 Jan 2026 15:23:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 33BB227B32C;
	Thu, 29 Jan 2026 15:23:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jH7HR+qb"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAFF97260A;
	Thu, 29 Jan 2026 15:23:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769700201; cv=none; b=oqyDhw4peAfRiySM78OrUw8IZ57MMNhFksgyFD9rKUksWy/kVZc516mpq0px+VhEAD//U+aJyBVlNGA7TPRBQiWEWQee70VerC5s/Y+LWqnzzwb5OYX7VMOqc9swgzkAGC86rotJSl1ztOjHUOy5yRBIS/PJ3lkzj4ODRm1tUg0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769700201; c=relaxed/simple;
	bh=aOtOvOSIAzYvdUpjJlhKiLXDmMNvInj8xYPdYd2naU0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=JgOMqZbY/5gz/ZTlcfMaHkjbvCO+OoGCbZ91arszKDMEZJRVqPstKtWg+TfdEhY0a6bspJSdub4/GBXMY6ULzavLT0+QS7fErf87XU1aAgYBKA91nbC4RyBNkQEuNNy0ProIxQBYogfbxtJUFBu2IzLLCf+R+k3LMbxs63I18R8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jH7HR+qb; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 88708C4CEF7;
	Thu, 29 Jan 2026 15:23:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769700200;
	bh=aOtOvOSIAzYvdUpjJlhKiLXDmMNvInj8xYPdYd2naU0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=jH7HR+qbhgQa8DX2yLCbNbUvWpLH8QakWL+7ri8vmFnXpdUZ7oKZa8MN+3DwbSgW2
	 PfRVA4/hh/6EeXbhvYxAXFio7xDkhjcLQqaUx9nAaTUgUvNCGNZTC53v/db6iT/7EI
	 eWs3TIWs7i74P5L6Wd2okpyWj3NqZCFi1kawuVydT4gZS5KGVEBBLZ54iyHY/3fkT9
	 8ybgkmelMmw77tyyA1c4OaVtefriLApB66bj3y9AT31FBLPHrH72czGG/qjCokWaSu
	 LNlkilUS+U0HhHU2FDECYyV9daSlg5cV+oTuLum/FxdC3iWuw/2oRfQKX7oJfi5h+A
	 ZrCeQLI3FfpIw==
Date: Thu, 29 Jan 2026 16:23:16 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Bhavik Sachdev <b.sachdev1904@gmail.com>
Cc: linux-man@vger.kernel.org, criu@lists.linux.dev, 
	Andrei Vagin <avagin@gmail.com>, Pavel Tikhomirov <ptikhomirov@virtuozzo.com>, 
	Jeff Layton <jlayton@kernel.org>, Miklos Szeredi <miklos@szeredi.hu>, 
	Josef Bacik <josef@toxicpanda.com>, Christian Brauner <brauner@kernel.org>
Subject: Re: [PATCH 1/9] man/man2/statmount.2: Document req.mnt_ns_id and
 STATMOUNT_MNT_NS_ID
Message-ID: <aXt7AoaCFkWEvktW@devuan>
References: <cover.1769608658.git.b.sachdev1904@gmail.com>
 <b312000a204c408f452757793c12e65be510cb96.1769608658.git.b.sachdev1904@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ealwwb3isi2m2pyb"
Content-Disposition: inline
In-Reply-To: <b312000a204c408f452757793c12e65be510cb96.1769608658.git.b.sachdev1904@gmail.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5003-lists,linux-man=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.linux.dev,gmail.com,virtuozzo.com,kernel.org,szeredi.hu,toxicpanda.com];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[alejandro-colomar.es:url]
X-Rspamd-Queue-Id: D2EF6B166F
X-Rspamd-Action: no action


--ealwwb3isi2m2pyb
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Bhavik Sachdev <b.sachdev1904@gmail.com>
Cc: linux-man@vger.kernel.org, criu@lists.linux.dev, 
	Andrei Vagin <avagin@gmail.com>, Pavel Tikhomirov <ptikhomirov@virtuozzo.com>, 
	Jeff Layton <jlayton@kernel.org>, Miklos Szeredi <miklos@szeredi.hu>, 
	Josef Bacik <josef@toxicpanda.com>, Christian Brauner <brauner@kernel.org>
Subject: Re: [PATCH 1/9] man/man2/statmount.2: Document req.mnt_ns_id and
 STATMOUNT_MNT_NS_ID
Message-ID: <aXt7AoaCFkWEvktW@devuan>
References: <cover.1769608658.git.b.sachdev1904@gmail.com>
 <b312000a204c408f452757793c12e65be510cb96.1769608658.git.b.sachdev1904@gmail.com>
MIME-Version: 1.0
In-Reply-To: <b312000a204c408f452757793c12e65be510cb96.1769608658.git.b.sachdev1904@gmail.com>

Hi Bhavik,

On 2026-01-28T19:27:30+0530, Bhavik Sachdev wrote:
> Document the new mnt_ns_id parameter to struct mnt_id_req and the
> STATMOUNT_MNT_NS_ID flag.
>=20
> req.mnt_ns_id can be used to query for a mount in a foreign mount
> namespace.
>=20
> STATMOUNT_MNT_NS_ID can be used to retreive the mnt_ns_id of the mount
> being queried.
>=20
> The mnt_ns_id parameter description is based on this commit message [1]
> and STATMOUNT_MNT_NS_ID text is based on [2].
>=20
> Link [1]:
> <https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commi=
t/?id=3D71aacb4c8c3d19da053363a5fe7538a8af082d56>
> Link [2]:
> <https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commi=
t/?id=3D09b31295f833031c88419550172703d45c5401e3>
>=20
> Signed-off-by: Bhavik Sachdev <b.sachdev1904@gmail.com>
> ---
>  man/man2/statmount.2 | 24 +++++++++++++++++++++---
>  1 file changed, 21 insertions(+), 3 deletions(-)
>=20
> diff --git a/man/man2/statmount.2 b/man/man2/statmount.2
> index cdc96da92..8cf6775ff 100644
> --- a/man/man2/statmount.2
> +++ b/man/man2/statmount.2
> @@ -23,9 +23,10 @@ .SH SYNOPSIS
>  .P
>  .EX
>  .B struct mnt_id_req {
> -.BR "    __u32  size;" "    /* sizeof(struct mnt_id_req) */"
> -.BR "    __u64  mnt_id;" "  /* The mnt_id being queried */"
> -.BR "    __u64  param;" "   /* An ORed combination of the STATMOUNT_ con=
stants */"
> +.BR "    __u32  size;" "        /* sizeof(struct mnt_id_req) */"
> +.BR "    __u64  mnt_id;" "      /* The mnt_id being queried */"
> +.BR "    __u64  param;" "       /* An ORed combination of the STATMOUNT_=
 constants */"
> +.BR "    __u32  mnt_ns_id;" "   /* The id of mnt_ns to query the mnt_id =
in */"
>  .B };
>  .P
>  .B struct statmount {
> @@ -47,6 +48,7 @@ .SH SYNOPSIS
>  .B "    __u64  propagate_from;"
>  .B "    __u32  mnt_root;"
>  .B "    __u32  mnt_point;"
> +.B "    __u64  mnt_ns_id;"
>  .B "    char   str[];"
>  .B };
>  .EE
> @@ -59,6 +61,9 @@ .SH SYNOPSIS
>  .SH DESCRIPTION
>  To access a mount's status,
>  the caller must have CAP_SYS_ADMIN in the user namespace.
> +In case of accessing a mount in a foreign mount namespace (specified via
> +.IR req.mnt_ns_id ),
> +the foreign mount namespace should be child of the current namespace.
>  .P
>  This function returns information about a mount,
>  storing it in the buffer pointed to by
> @@ -102,6 +107,7 @@ .SS The mnt_id_req structure
>  STATMOUNT_MNT_ROOT	/* Want/got mnt_root  */
>  STATMOUNT_MNT_POINT	/* Want/got mnt_point */
>  STATMOUNT_FS_TYPE	/* Want/got fs_type */
> +STATMOUNT_MNT_NS_ID	/* Want/got mnt_ns_id */
>  .TE
>  .in
>  .P
> @@ -130,6 +136,14 @@ .SS The mnt_id_req structure
>  as one or more bits may,
>  in the future,
>  be used to specify an extension to the buffer.
> +.P
> +.I req.mnt_ns_id
> +can be obtained from
> +.B NS_GET_MNTNS_ID
> +.BR ioctl (2)
> +operation and is used to specify a foreign mount namespace in which to q=
uery
> +.IR req.mnt_id .
> +.P

This .P is superfluous and produces a diagnostic.

>  .SS The returned information
>  The status information for the target mount is returned in the
>  .I statmount
> @@ -232,6 +246,10 @@ .SS The returned information
>  relative to the current root (ie if you are in a
>  .BR chroot ).
>  It is a null-terminated string.
> +.TP
> +.I smbuf.mnt_ns_id
> +The unique ID of the mount namespace the mount belongs to.
> +.TP

This .TP is superfluous and produces a diagnostic.

=2EP, .IP, and .TP introduce a new paragraph.  It doesn't make sense to
have them before a section heading.


Have a lovely day!
Alex

>  .SH RETURN VALUE
>  On success, zero is returned.
>  On error, \-1 is returned, and
> --=20
> 2.52.0
>=20

--=20
<https://www.alejandro-colomar.es>

--ealwwb3isi2m2pyb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAml7e14ACgkQ64mZXMKQ
wqndJQ/+K34HvRhoZ6L6dKC8g3PrcFCYIDJ0uxZVSzjqHIZjliTKe5hUnab6+pel
YnOTybSFGZ2JDha9Rc0OWrSKma4Lbz4cFf6OTMHS05roiwdDOfEu8UtNlctLs5hB
UevxCgRJkPXEv+y2X31hh6XTnqiwPWvOWIEPCP+Oh916AcuToaLhfGw2Be025l9d
JCSdr4MM18cS74B9/etiYksTT3PK6W+Hg6LLxNdzFiZxnjh1/rsXVLEYlZXgJaDK
1CfEpZNwEvmFx65UzwQXLyBlowPXN5CAY7jYH0gkBfRDURGVLSs8J0utTQ3ytOxv
YqVZ+HwzpDhg15wsogeCSKBwWwilysLSh5jrin6yFAE+V0KWBmjhYKfFh0gqUXrb
F0HkAngcu2wB7liCrQ7bWtjs22ctibSYXxYFSXbRnjD+eoFBcroOBvbiKICyJtyH
owgB57M87zZqmJcOEvQ4XL51EySBpCBCM90yNOwrjmxrBGTfQ/8hAkutmUEY27S1
Mk2mMme1reSsvLypL7n5Gwivv4MkHdyzhtoaY1CZsvpy5jHFdmx82dBVzsMAij2c
m8G1NgX6avzYuN3wllSgtlkYIGxz601KTbbyEAavyTgRyDIFsUmUm1nGZJLBBEyY
W4K0kOB5O1ShJsfPTfOyc1178x+wSksf6MXSR8Qv/NNfCFqwAk4=
=hcpR
-----END PGP SIGNATURE-----

--ealwwb3isi2m2pyb--

