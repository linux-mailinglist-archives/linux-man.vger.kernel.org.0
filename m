Return-Path: <linux-man+bounces-5111-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KFJOCuWGjGmfqAAAu9opvQ
	(envelope-from <linux-man+bounces-5111-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 11 Feb 2026 14:40:53 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A46F124DDE
	for <lists+linux-man@lfdr.de>; Wed, 11 Feb 2026 14:40:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4FAF0303A10A
	for <lists+linux-man@lfdr.de>; Wed, 11 Feb 2026 13:39:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2FDA3285C88;
	Wed, 11 Feb 2026 13:39:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MVZpNavX"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4CD827EC80;
	Wed, 11 Feb 2026 13:39:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770817178; cv=none; b=MV70mD3IsWptPppj8IREDWdFVNc5pultTuq6wMXoqSO8J4lIzO5r5coXzzXabJLKJXYrLue3JxvbfUCSs7inpH59kTRdIuwp+DQVhLRDNz3FzBUbaA8TOsENeF83HhLFs45FKU8UcSH4ZvKl1KEZ9o/CXt1BzE//viZYEcuq4GI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770817178; c=relaxed/simple;
	bh=rImrNh7+9ksbLADxI8P82jlPY48QUOcwA3gyJvPm6UM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=h2DgW05+bUF88WhlQxSRRa4b8yyMrOLtkK8aSSb5VVPDXotLhzlJSXKSlB6GaFgNMalxB8+cxHY6DfUMdKgVYCs791ztUE9rXXJ6SNcDQ5qKGUoNql45voYwJebFKwk3gvn0Z8D3pwQAOJ+/0NhM9sydor+4IMa4ecUElazNerA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MVZpNavX; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 94BB9C19421;
	Wed, 11 Feb 2026 13:39:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770817177;
	bh=rImrNh7+9ksbLADxI8P82jlPY48QUOcwA3gyJvPm6UM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=MVZpNavXbXcL1bl7tovdQbM8DsaC8G5pTvTmmceB3Y6GdV5UCIP33NTORnQwAEiay
	 89Yh7FArUqyt9SZ+Wfnc1DFInYDhOdHZExq4d8gos9J2Fzkd1VfIQC5ohy+u2fgjxy
	 0z8RYN0JE/c72TGORuPHO6JJxo21UApqt1K6yrtTJOwXTER+e6Aa01lo4hoTawq2GZ
	 Ch7+JtYmG2aPxjCrtTHle7s4AUUlwDuCWE4lFhfmG7eHHv3qJXUTzPrcr72DVpt4PK
	 fUcgAScdsNl4lJ/N9Of0j8Us7RclOuCQePJ3hO8eJCfNKxCKlXF8WOWhO0DfKX7z6L
	 6LHrDeOlY1y+Q==
Date: Wed, 11 Feb 2026 14:39:33 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Bhavik Sachdev <b.sachdev1904@gmail.com>
Cc: linux-man@vger.kernel.org, criu@lists.linux.dev, 
	Andrei Vagin <avagin@gmail.com>, Pavel Tikhomirov <ptikhomirov@virtuozzo.com>, 
	Jeff Layton <jlayton@kernel.org>, Miklos Szeredi <miklos@szeredi.hu>, 
	Josef Bacik <josef@toxicpanda.com>, Christian Brauner <brauner@kernel.org>
Subject: Re: [PATCH v1 01/10] man/man2/statmount.2: Document req.mnt_ns_id
 and STATMOUNT_MNT_NS_ID
Message-ID: <aYyF1NWuzxTPr5pE@devuan>
References: <cover.1770671863.git.b.sachdev1904@gmail.com>
 <5cf41ebf2abbcf767807be999790e0e5a6bd5865.1770671863.git.b.sachdev1904@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="3ga4xpv7gdxfjujx"
Content-Disposition: inline
In-Reply-To: <5cf41ebf2abbcf767807be999790e0e5a6bd5865.1770671863.git.b.sachdev1904@gmail.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5111-lists,linux-man=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,alejandro-colomar.es:url]
X-Rspamd-Queue-Id: 7A46F124DDE
X-Rspamd-Action: no action


--3ga4xpv7gdxfjujx
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Bhavik Sachdev <b.sachdev1904@gmail.com>
Cc: linux-man@vger.kernel.org, criu@lists.linux.dev, 
	Andrei Vagin <avagin@gmail.com>, Pavel Tikhomirov <ptikhomirov@virtuozzo.com>, 
	Jeff Layton <jlayton@kernel.org>, Miklos Szeredi <miklos@szeredi.hu>, 
	Josef Bacik <josef@toxicpanda.com>, Christian Brauner <brauner@kernel.org>
Subject: Re: [PATCH v1 01/10] man/man2/statmount.2: Document req.mnt_ns_id
 and STATMOUNT_MNT_NS_ID
Message-ID: <aYyF1NWuzxTPr5pE@devuan>
References: <cover.1770671863.git.b.sachdev1904@gmail.com>
 <5cf41ebf2abbcf767807be999790e0e5a6bd5865.1770671863.git.b.sachdev1904@gmail.com>
MIME-Version: 1.0
In-Reply-To: <5cf41ebf2abbcf767807be999790e0e5a6bd5865.1770671863.git.b.sachdev1904@gmail.com>

Hi Bhavik,

On 2026-02-10T02:47:34+0530, Bhavik Sachdev wrote:
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
>  man/man2/statmount.2 | 22 +++++++++++++++++++---
>  1 file changed, 19 insertions(+), 3 deletions(-)
>=20
> diff --git a/man/man2/statmount.2 b/man/man2/statmount.2
> index cdc96da92..f5c4da122 100644
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
> @@ -130,6 +136,13 @@ .SS The mnt_id_req structure
>  as one or more bits may,
>  in the future,
>  be used to specify an extension to the buffer.
> +.P
> +.I req.mnt_ns_id
> +can be obtained from
> +.B NS_GET_MNTNS_ID

Should this ioctl(2) be documented?  I don't find it in any manual page.
You don't need to do it in this patch set, though.

> +.BR ioctl (2)
> +operation and is used to specify a foreign mount namespace in which to q=
uery
> +.IR req.mnt_id .
>  .SS The returned information
>  The status information for the target mount is returned in the
>  .I statmount
> @@ -232,6 +245,9 @@ .SS The returned information
>  relative to the current root (ie if you are in a
>  .BR chroot ).
>  It is a null-terminated string.
> +.TP
> +.I smbuf.mnt_ns_id

We should document the Linux version in which this was added.  It should
be something like this

=2EIR smbuf.mnt_ns_id " (since Linux 1.23)"


Have a lovely day!
Alex

> +The unique ID of the mount namespace the mount belongs to.
>  .SH RETURN VALUE
>  On success, zero is returned.
>  On error, \-1 is returned, and
> --=20
> 2.53.0
>=20
>=20

--=20
<https://www.alejandro-colomar.es>

--3ga4xpv7gdxfjujx
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmmMhpQACgkQ64mZXMKQ
wqlDBA/+Nr3IuKqY2THokCmpcqtIiPLXta+YlRlx1fG00uNBe42A8F7h4RRrrx6P
IZQncpwWsb/2PMWzL2p4/LOXgyZrJM3z4RhNvkkXOtZEMkTbKx84VTZAyKe452qg
K3foWHka9ulWkXDvUrDAMw4YoOFa6fbJziB/4ul9DSc2tpvX02c7y/KLktQgUnp4
8ruEg4fBpdrhyWMqM2X5BUJ6xl3hTE5driz99LStbHoVELM5KdLAFtsqU+sLPHME
Tt+M+4QW078TEFb6gnF4uVxJc0ir5Uitc7KIcKu1+n/f/8vOesiBz3VNRrgm2nhp
h7ru9mf0MA+AB8yJS/XUiZJIrnJDuXFlsmli0ki6xxBv/n3eVlJ3xbD3pbmHjkcF
xsmruKWhyp8cwyxXD7WM5woqG/aZhSw3meMchAjjDzcP2+RxdFCZgNA3VTUWjWj6
OZIQLH5c/PFSHcBNOORXr9cVqfIq+wWK1W2aH44WVpmIYfeSGBXYIdjyf/d4mLEf
VGsIatOSg8HxtJU4GEAd4Vwq5TdSlqIogOBB4K3OE9jTrHs7PmQ5k71wJPQEeZ5W
5kmf3gUO5zzicZuqcNdqDris9WH/geEJ3WXmGXVATL1uMJXl8Fpx3wjciLI3QgGc
jLFMwXOBJad8nqBExOYIDmW9Wskz2kzxvu5YOK90VU6TeRzf0ys=
=WSCN
-----END PGP SIGNATURE-----

--3ga4xpv7gdxfjujx--

