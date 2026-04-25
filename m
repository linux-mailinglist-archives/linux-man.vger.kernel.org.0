Return-Path: <linux-man+bounces-5401-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OIeXNY7W7GkAdAAAu9opvQ
	(envelope-from <linux-man+bounces-5401-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Sat, 25 Apr 2026 16:58:22 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id DA65F466A7F
	for <lists+linux-man@lfdr.de>; Sat, 25 Apr 2026 16:58:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 9EC7B30034BA
	for <lists+linux-man@lfdr.de>; Sat, 25 Apr 2026 14:58:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 69B7036D9F5;
	Sat, 25 Apr 2026 14:58:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i3u4Crsx"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CB11367F33
	for <linux-man@vger.kernel.org>; Sat, 25 Apr 2026 14:58:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777129095; cv=none; b=tbym/17BL4+Co2Vgtstkd7ri9OZxudncgszHsgwul0ZL1+4WN1KYM3In0SYM+J2tkU5j2DY24hnVqT2UBHE4dPCw/P757BUfLl7O6QpQSk0pGIhPO12gnd0fdq7rSyZwnEfUwmtqjDd3IU38nf1avxPthvvJ2ubnidLHDXwLnEk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777129095; c=relaxed/simple;
	bh=1u0TSlb8cvfpWJk5/v1muZWrEutx782QIOoYdairVz0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=WpD7R3X6klV1UM2GVV13UV42l+uJliBdtwzA2IyBoSa1l/by9wtsUE6AtCPOEGfDXNqpifVycH/wOrxNpy8uqjjyOFogoW88f2D2Hyuo0GGDw0GwC+yqNROcuCwSFZIrtg8zGB93jeqV3P7tCZitD92Jw9I7aCqW30JflH6bFAc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i3u4Crsx; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DB54BC2BCB0;
	Sat, 25 Apr 2026 14:58:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777129094;
	bh=1u0TSlb8cvfpWJk5/v1muZWrEutx782QIOoYdairVz0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=i3u4Crsx790W1eKIingwTnmglRAW3L0vS6sTG/cCajgiEITQ39QT95MXPLPmy50Ix
	 wH9QcuQq94VbwyuXY3PDX/HwpX5gTRIT3l98QenTuRO0n3HRWugou+IdH73OBwOrl3
	 ciRcIIwXvab8Q9q3xdLpGVJeeFVo5WMyGmoSITFNIrA+bYfI7jQLEll2ExH7wKfNFE
	 5aCMHni3qVfrjBXb6Exqr+PRQdNVpw6B69j4G9kUIdoasdYhQjX6eyLrmErqx1AZy3
	 sBNKrJZRm5hEPi5pfsV1kY6rYpx0U2YXI6UhSiL23tkJ2CHacEsraR9tcyVzpNwWFd
	 aJVmF1TBQTkVA==
Date: Sat, 25 Apr 2026 16:58:11 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Dorjoy Chowdhury <dorjoychy111@gmail.com>
Cc: linux-man@vger.kernel.org, brauner@kernel.org, jlayton@kernel.org
Subject: Re: [PATCH 1/1] man/man2/openat2.2: Document OPENAT2_REGULAR flag
Message-ID: <aezULCZu3eZhdUaq@devuan>
References: <20260425134048.62616-1-dorjoychy111@gmail.com>
 <20260425134048.62616-2-dorjoychy111@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ooykbtu2yreev6ku"
Content-Disposition: inline
In-Reply-To: <20260425134048.62616-2-dorjoychy111@gmail.com>
X-Rspamd-Queue-Id: DA65F466A7F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5401-lists,linux-man=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[linux-man];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[alejandro-colomar.es:url]


--ooykbtu2yreev6ku
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Dorjoy Chowdhury <dorjoychy111@gmail.com>
Cc: linux-man@vger.kernel.org, brauner@kernel.org, jlayton@kernel.org
Subject: Re: [PATCH 1/1] man/man2/openat2.2: Document OPENAT2_REGULAR flag
Message-ID: <aezULCZu3eZhdUaq@devuan>
References: <20260425134048.62616-1-dorjoychy111@gmail.com>
 <20260425134048.62616-2-dorjoychy111@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20260425134048.62616-2-dorjoychy111@gmail.com>

Hi Dorjoy,

On 2026-04-25T19:39:28+0600, Dorjoy Chowdhury wrote:
> Signed-off-by: Dorjoy Chowdhury <dorjoychy111@gmail.com>
> ---
>  man/man2/openat2.2 | 19 +++++++++++++++++++
>  1 file changed, 19 insertions(+)
>=20
> diff --git a/man/man2/openat2.2 b/man/man2/openat2.2
> index f0770f3a0..42ebf22ea 100644
> --- a/man/man2/openat2.2
> +++ b/man/man2/openat2.2
> @@ -133,6 +133,19 @@ argument,
>  .BR openat2 ()
>  returns an error if unknown or conflicting flags are specified in
>  .IR how.flags .
> +.IP
> +.BR openat2 ()
> +also supports the below additional flags:
> +.RS
> +.TP
> +.BR OPENAT2_REGULAR " (since Linux 7.2)"
> +Only open the file specified by
> +.I path
> +if it is a regular file. If it is not a regular file,

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

That is, break the line after period.

> +.BR openat2 ()
> +fails with the error
> +.BR EFTYPE .

Hmmm, this error code is new to me.

	alx@devuan:~$ errno EFTYPE
	alx@devuan:~$ echo $?
	1
	alx@devuan:~$ man 3 errno | grep EFTYPE
	alx@devuan:~$ grepc EFTYPE /usr/include/
	alx@devuan:~$=20

I don't see it documented, nor defined under </usr/include>.
Is this error code available in user space?
Is it a new error code?

> +.RE
>  .TP
>  .I mode
>  This field specifies the
> @@ -471,6 +484,12 @@ and an escape from the root during path resolution w=
as detected.
>  contains
>  .BR RESOLVE_NO_XDEV ,
>  and a path component crosses a mount point.
> +.TP
> +.B EFTYPE
> +.I how.flags
> +contains
> +.BR OPENAT2_REGULAR

This should use B instead of BR.  BR is for alternating Bold and Roman.
B is for Bold.

Other than these minor formatting issues, and the question about EFTYPE,
the patch looks good to me.  Thanks!


Have a lovely day!
Alex

> +flag and the path is not a regular file.
>  .SH STANDARDS
>  Linux.
>  .SH HISTORY
> --=20
> 2.53.0
>=20

--=20
<https://www.alejandro-colomar.es>

--ooykbtu2yreev6ku
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmns1n0ACgkQ64mZXMKQ
wqmNXRAAurv4lgnG9n7w0vvCedIdUJDC6qVpFq3EhYAFdkzHtGtxCgAmHLQpszGC
y6sUV5JSoxlFLXRfBnMwMmm18/AVuf9ZTINs5YnBpERKfdSEX6PR6JVLMaF107jh
/g62vlvxsvW46A7KJdnJN/aRmWi+hI7I+uGJXvMi/Ja53P/YhaHgN0KoK/ro99mZ
A1/OAbQm9YTLsl+Amp9cOR3h4+Gm/eEkNxk2msPib29kr+C1pyX3KwQqiv6jdHtE
v/bfOfmX839ntxdsGUrOAXWmqsJ6Da83cN682zer/ZpuM0o5TJbwOOcYKfgWpxaj
NlbzVl3bzakjnHE7lz31Ydl22BCVVqzTVnQwvy/3ThEVprEumcWf2zcNaz3mFV2Y
SiogeCyXXp06e9DWzF5xv0pRg3CpV/yubrEwX94/xLqXa66C3K7rjsuhvmm+6bjm
HxCMP/TDiaI0DfYROSZUd4P+JpC5c+UMDCFBlutJFaTMdtePT4MazwhYrp+CIm6F
mgV/NpjtCwqEIUS0+JyJO0bwfKpi1EqZbhYsmnl/DwUBDBaUolwtmPDq018CNtv1
A0hyzMbRevOE/3/g8ZsS1OUkWXMM6zBzvzirc2Rh5k5r6Wnc+rC1oAK2N3rEeWU6
X3JwCIM6RpkHRsy8IrTH+dY3EpGtcNbqt/tWZTq+aoZLwI+GKf8=
=CKBP
-----END PGP SIGNATURE-----

--ooykbtu2yreev6ku--

