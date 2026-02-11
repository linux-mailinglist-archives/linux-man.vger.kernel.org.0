Return-Path: <linux-man+bounces-5117-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iP45K7WLjGmHqgAAu9opvQ
	(envelope-from <linux-man+bounces-5117-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 11 Feb 2026 15:01:25 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A5A1125097
	for <lists+linux-man@lfdr.de>; Wed, 11 Feb 2026 15:01:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 14666300381D
	for <lists+linux-man@lfdr.de>; Wed, 11 Feb 2026 14:01:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C310E28640B;
	Wed, 11 Feb 2026 14:01:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lW+ZOeFL"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 854CE25A359;
	Wed, 11 Feb 2026 14:01:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770818475; cv=none; b=bXRAbXMve0vI7PfKqxnEh6eZ62JFwOIHEf140y8HWBabKIV1p0b4kFfWg3ESJiX5ZRtilt8fqmpIb70JZ6C2kofWjV9MRKyaTqvAV2kwWp3yMqq3MvgkXyD2T9IYntP09Ui9Dejvx2zHhWUpZdLGRKWBE0s0PGiU86E8TRD8lZw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770818475; c=relaxed/simple;
	bh=LJ17aFkh54BZuAqqTlaa+j1hnobsrV/hV/SGmARdS1o=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=AWujkk0q2WYRNvTLc7AgIkmc8a7orQCWyks50l0+8e2ZfeoiDwgRWi5J6axwV4UvFo3Yl3RGgKfgnfvFjFmH2UJkZw1ZFXRhy7O3g3n7YY3eMsU7wLoQUQ3HI3C1+qBpCs9y0Z5jcLbbJ6Hsc8eRrYa4W5gt/skxSiBvi+hWVWA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lW+ZOeFL; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EAFA0C19421;
	Wed, 11 Feb 2026 14:01:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770818474;
	bh=LJ17aFkh54BZuAqqTlaa+j1hnobsrV/hV/SGmARdS1o=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=lW+ZOeFLPNaZHsc9ro8wmm+0WRUqIN6ThsI3yTNheGhGXmEQkE0gdKbbodYSRm1L1
	 p42USbTQ36qkCYxhLrVP6/8MLMWDXmSs4wPhDj6hTt0oO43NFAVw+y8wLWN1IPd2rv
	 GtjP9UozeToGeccJme+m2KbLVFKHdHXmRLFGCcevwqmXbcMP/UYu14lIBfCW7EHhgY
	 1auF3dqL2vbi3oYAnH7u0G+tb6LgGjF3oxpci6L26uVhu/tzShSbezW/nrNeJ5E+Sq
	 MjoakrhJ+KdsIfvf9LrYRZp5LyeyUrc3n6lMkD9ICjOHk5n72kY8eQXJJKRr4FAeTx
	 BCtPOotoeRTuw==
Date: Wed, 11 Feb 2026 15:01:10 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Bhavik Sachdev <b.sachdev1904@gmail.com>
Cc: linux-man@vger.kernel.org, criu@lists.linux.dev, 
	Andrei Vagin <avagin@gmail.com>, Pavel Tikhomirov <ptikhomirov@virtuozzo.com>, 
	Jeff Layton <jlayton@kernel.org>, Miklos Szeredi <miklos@szeredi.hu>, 
	Josef Bacik <josef@toxicpanda.com>, Christian Brauner <brauner@kernel.org>
Subject: Re: [PATCH v1 09/10] man/man2/statmount.2: Document req.mnt_ns_fd
Message-ID: <aYyLe7m6A47F0cc2@devuan>
References: <cover.1770671863.git.b.sachdev1904@gmail.com>
 <43470f57e3a7ffdb7646e32a66b458e104b391f4.1770671863.git.b.sachdev1904@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="dvd4qzpgqkryy77a"
Content-Disposition: inline
In-Reply-To: <43470f57e3a7ffdb7646e32a66b458e104b391f4.1770671863.git.b.sachdev1904@gmail.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5117-lists,linux-man=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.linux.dev,gmail.com,virtuozzo.com,kernel.org,szeredi.hu,toxicpanda.com];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RSPAMD_EMAILBL_FAIL(0.00)[bsachdev1904.gmail.com:query timed out];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[linux-man];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,alejandro-colomar.es:url]
X-Rspamd-Queue-Id: 0A5A1125097
X-Rspamd-Action: no action


--dvd4qzpgqkryy77a
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Bhavik Sachdev <b.sachdev1904@gmail.com>
Cc: linux-man@vger.kernel.org, criu@lists.linux.dev, 
	Andrei Vagin <avagin@gmail.com>, Pavel Tikhomirov <ptikhomirov@virtuozzo.com>, 
	Jeff Layton <jlayton@kernel.org>, Miklos Szeredi <miklos@szeredi.hu>, 
	Josef Bacik <josef@toxicpanda.com>, Christian Brauner <brauner@kernel.org>
Subject: Re: [PATCH v1 09/10] man/man2/statmount.2: Document req.mnt_ns_fd
Message-ID: <aYyLe7m6A47F0cc2@devuan>
References: <cover.1770671863.git.b.sachdev1904@gmail.com>
 <43470f57e3a7ffdb7646e32a66b458e104b391f4.1770671863.git.b.sachdev1904@gmail.com>
MIME-Version: 1.0
In-Reply-To: <43470f57e3a7ffdb7646e32a66b458e104b391f4.1770671863.git.b.sachdev1904@gmail.com>

On 2026-02-10T02:47:42+0530, Bhavik Sachdev wrote:
> Document the new mnt_ns_fd parameter to struct mnt_id_req.
>=20
> req.mnt_ns_fd can be used to query for a mount in a foreign mount
> namespace.
>=20
> The mnt_ns_fd parameter description is based on this commit message [1].
>=20
> Link [1]:
> <https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commi=
t/?id=3D9020d0d844ad58a051f90b1e5b82ba34123925b9>
>=20
> Signed-off-by: Bhavik Sachdev <b.sachdev1904@gmail.com>
> ---
>  man/man2/statmount.2 | 21 ++++++++++++++++++++-
>  1 file changed, 20 insertions(+), 1 deletion(-)
>=20
> diff --git a/man/man2/statmount.2 b/man/man2/statmount.2
> index 0b906a334..e835eb0f6 100644
> --- a/man/man2/statmount.2
> +++ b/man/man2/statmount.2
> @@ -24,6 +24,7 @@ .SH SYNOPSIS
>  .EX
>  .B struct mnt_id_req {
>  .BR "    __u32  size;" "        /* sizeof(struct mnt_id_req) */"
> +.BR "    __u32  mnt_ns_fd;" "   /* fd of mnt_ns to query the mnt_id in *=
/"
>  .BR "    __u64  mnt_id;" "      /* The mnt_id being queried */"
>  .BR "    __u64  param;" "       /* An ORed combination of the STATMOUNT_=
 constants */"
>  .BR "    __u32  mnt_ns_id;" "   /* The id of mnt_ns to query the mnt_id =
in */"
> @@ -74,7 +75,9 @@ .SH DESCRIPTION
>  To access a mount's status,
>  the caller must have CAP_SYS_ADMIN in the user namespace.
>  In case of accessing a mount in a foreign mount namespace (specified via
> -.IR req.mnt_ns_id ),
> +.I req.mnt_ns_id
> +or
> +.IR req.mnt_ns_fd ),
>  the foreign mount namespace should be child of the current namespace.
>  .P
>  This function returns information about a mount,
> @@ -97,6 +100,15 @@ .SS The mnt_id_req structure
>  it should always be set to
>  .IR sizeof(struct\~mnt_id_req) .
>  .P
> +.I req.mnt_ns_fd
> +can be obtained from
> +.B PIDFD_GET_MNT_NAMESPACE
> +.BR ioctl (2)
> +operation or by opening a file descriptor to
> +.IR /proc/[pid]/ns/mnt

Reformat:

	.IR /proc/ pid /ns/mnt


Cheers,
Alex

> +and is used to specify a foreign mount namespace in which to query
> +.IR req.mnt_id .
> +.P
>  .I req.mnt_id
>  can be obtained from either
>  .BR statx (2)
> @@ -365,6 +377,13 @@ .SH ERRORS
>  .I req
>  is of insufficient size to be utilized.
>  .TP
> +.B EINVAL
> +Both
> +.I req.mnt_ns_id
> +and
> +.I req.mnt_ns_fd
> +were set.
> +.TP
>  .B E2BIG
>  .I req
>  is too large.
> --=20
> 2.53.0
>=20
>=20

--=20
<https://www.alejandro-colomar.es>

--dvd4qzpgqkryy77a
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmmMi6YACgkQ64mZXMKQ
wqnOpw/+PzK7LKWgFGnsXTl8RDsjOFGPgceWm5faZyyZwuw/Qo8r+AxdtFfEgYvS
0nCGWvKGjXRaOt5Cnsqq2euN6bubVhO5xYSZR3jqVN5FrHUnoufPF5UolB03miPV
1MOC3/WV7VwHVsfLMUX8lZ13Rl6tA/xQUYWH2pR3lZa440L5PYTLmALIbHsaL3ef
s3PfElJllwsscloYrOrZ3B5W4IgzkggBCDKZMo8gJAD5K+LgF+10fwM653vR96lB
PDnZbux/bWJITd4vtqT5XWSo8GollbKV69INAB6VVVB6eYdEDRRVm14aXc5h+PZD
YdZuIZNx5qhdPQ/SW4WVUfBCLcFDmmDTF0lSlv5PeR3Y/xB03L3d7vLyOMhWfpOY
o8yI2AJK3nc0o5MPca3P4HRTuCz+x1yTDhco1dnz4cWZZ31ViWvT+n/YuR3z8Jy1
gWIZltRfMHccVTki8Sj3ULBkgaQVjkDNI8JgFQbOnrs+7Px8Qpte5M83pqrGPXC7
W/SUrSane0SNxfzsRpqQ0AbQzEIWHW+GdkJzTq7bTQnclHzqnYB1DKrP7n9Sv2Sw
+KKC/IAjTwrZiZC0uVecQ4hE4k1dF+A112XDm7V9f6swRN54hwCMXw2tFypRRRzs
9bXIoIvPzvXFq3EBzHr7CCE7F2rwAzevam1xdgik0QKZjsJs4Ss=
=/9Vl
-----END PGP SIGNATURE-----

--dvd4qzpgqkryy77a--

