Return-Path: <linux-man+bounces-5114-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GOqVJvyIjGmHqgAAu9opvQ
	(envelope-from <linux-man+bounces-5114-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 11 Feb 2026 14:49:48 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id F0881124F0D
	for <lists+linux-man@lfdr.de>; Wed, 11 Feb 2026 14:49:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CBF5A3016924
	for <lists+linux-man@lfdr.de>; Wed, 11 Feb 2026 13:49:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 69C2728B3E7;
	Wed, 11 Feb 2026 13:49:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RCWsiT1Y"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28DED2773FF;
	Wed, 11 Feb 2026 13:49:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770817784; cv=none; b=BCg7fU75Mw4J8dvthO/FvV5D9PgJJfvpyU66MHea8ckqD73aslEnrLUVyPqrPDgGAZMHpC6rfcgfdtWRyyKHtm3UYHyOO18ixA1CO30NIJSXAe/7faojXEpUEIQAd/rMLqru4ov0mM5S+oCX3n1UXYCasnCECkxZCVNSh8maf50=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770817784; c=relaxed/simple;
	bh=LZF1863jORhY8KwuIJqX8dyW3HI+k5Hhk1bpPg6RqmQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ntYeYFW/24jvL6DNqa4T0pcMxAxbosMFv/ehgIU1WXmCoWPaOoGBdcIKjUve0gREJqwcG+TsS0cLV+86vy2KXB4Ot4Y+mNuD+Ryv7Nn0iI2tbMDqHJhaSMHwKW2jwKqNjkxvtB5dqdaojGEiCESYTmBsLzr94VMMmN4mkmbxJ8Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RCWsiT1Y; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2590CC4CEF7;
	Wed, 11 Feb 2026 13:49:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770817784;
	bh=LZF1863jORhY8KwuIJqX8dyW3HI+k5Hhk1bpPg6RqmQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=RCWsiT1YE/Ej3dFhGMA/2I87ePhA6EqeUlkev3xTahOYuR6RZRCRYv9bg7s3Vthrw
	 oOy7ML9QX5uQ5XHVXwFRNABg5wxvHvj4m0K9ksD55B9T9Y08VmvB8+rgJ2njH4pkv4
	 X3NFEK+xBjMv7XhLJXAP8iCSAetbwpTDHDrv21ZictS7jyTnSSyIU4jkqiofJQYaSh
	 R37shmMrxb4/fYRUR1NWIBubs53a1eyAcGF+ajuZO968tLuObvkNVK6Irqqk4VfmRT
	 ngS2Y9Uh32xmh9GC06THeYx2Hq19jPXofK+qTHaP0dsYBavf3zlJCR9cvoVwH8+Qgz
	 ZTzaeZ2ckAP2A==
Date: Wed, 11 Feb 2026 14:49:39 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Bhavik Sachdev <b.sachdev1904@gmail.com>
Cc: linux-man@vger.kernel.org, criu@lists.linux.dev, 
	Andrei Vagin <avagin@gmail.com>, Pavel Tikhomirov <ptikhomirov@virtuozzo.com>, 
	Jeff Layton <jlayton@kernel.org>, Miklos Szeredi <miklos@szeredi.hu>, 
	Josef Bacik <josef@toxicpanda.com>, Christian Brauner <brauner@kernel.org>
Subject: Re: [PATCH v1 06/10] man/man2/statmount.2: Document
 STATMOUNT_OPT_SEC_ARRAY
Message-ID: <aYyIAQxaZCHKwSDx@devuan>
References: <cover.1770671863.git.b.sachdev1904@gmail.com>
 <7d13e42ff9e236116366ba98773a9cecf097b211.1770671863.git.b.sachdev1904@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="qqtmcj7incr2zuyw"
Content-Disposition: inline
In-Reply-To: <7d13e42ff9e236116366ba98773a9cecf097b211.1770671863.git.b.sachdev1904@gmail.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5114-lists,linux-man=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[alejandro-colomar.es:url,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: F0881124F0D
X-Rspamd-Action: no action


--qqtmcj7incr2zuyw
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Bhavik Sachdev <b.sachdev1904@gmail.com>
Cc: linux-man@vger.kernel.org, criu@lists.linux.dev, 
	Andrei Vagin <avagin@gmail.com>, Pavel Tikhomirov <ptikhomirov@virtuozzo.com>, 
	Jeff Layton <jlayton@kernel.org>, Miklos Szeredi <miklos@szeredi.hu>, 
	Josef Bacik <josef@toxicpanda.com>, Christian Brauner <brauner@kernel.org>
Subject: Re: [PATCH v1 06/10] man/man2/statmount.2: Document
 STATMOUNT_OPT_SEC_ARRAY
Message-ID: <aYyIAQxaZCHKwSDx@devuan>
References: <cover.1770671863.git.b.sachdev1904@gmail.com>
 <7d13e42ff9e236116366ba98773a9cecf097b211.1770671863.git.b.sachdev1904@gmail.com>
MIME-Version: 1.0
In-Reply-To: <7d13e42ff9e236116366ba98773a9cecf097b211.1770671863.git.b.sachdev1904@gmail.com>

On 2026-02-10T02:47:39+0530, Bhavik Sachdev wrote:
> Document STATMOUNT_OPT_SEC_ARRAY flag and the corresponding fields
> introduced by it. This text is based this commit message [1].
>=20
> Retrieves only security options separated by null bytes.
>=20
> Link [1]:
> <https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commi=
t/?id=3Daefff51e1c2986e16f2780ca8e4c97b784800ab5>
>=20
> Signed-off-by: Bhavik Sachdev <b.sachdev1904@gmail.com>
> ---
>  man/man2/statmount.2 | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
>=20
> diff --git a/man/man2/statmount.2 b/man/man2/statmount.2
> index e47af22c3..b7acde8f4 100644
> --- a/man/man2/statmount.2
> +++ b/man/man2/statmount.2
> @@ -54,6 +54,8 @@ .SH SYNOPSIS
>  .B "    __u32  sb_source;"
>  .B "    __u32  opt_num;"
>  .B "    __u32  opt_array;"
> +.B "    __u32  opt_sec_num;"
> +.B "    __u32  opt_sec_array;"
>  .B "    char   str[];"
>  .B };
>  .EE
> @@ -117,6 +119,7 @@ .SS The mnt_id_req structure
>  STATMOUNT_FS_SUBTYPE	/* Want/got fs_subtype */
>  STATMOUNT_SB_SOURCE	/* Want/got sb_source */
>  STATMOUNT_OPT_ARRAY	/* Want/got opt_... */
> +STATMOUNT_OPT_SEC_ARRAY	/* Want/got opt_sec... */
>  .TE
>  .in
>  .P
> @@ -287,6 +290,15 @@ .SS The returned information
>  buffer that contains file system options separated by null bytes.
>  They can be iterated over the help of
>  .IR smbuf.opt_num .
> +.I smbuf.opt_sec_num

Missing .TP above this.  You could check patches with diffman-git(1) to
check that they look good.

See for example how it shows the effects of this patch:

	$ MANWIDTH=3D64 diffman-git HEAD
	<standard input>:109: warning: table wider than line length minus indentat=
ion
	<standard input>:111: warning: table wider than line length minus indentat=
ion
	--- HEAD^:man/man2/statmount.2
	+++ HEAD:man/man2/statmount.2
	@@ -48,6 +48,8 @@ SYNOPSIS
		  __u32  sb_source;
		  __u32  opt_num;
		  __u32  opt_array;
	+         __u32  opt_sec_num;
	+         __u32  opt_sec_array;
		  char   str[];
	      };
	=20
	@@ -93,6 +95,7 @@ DESCRIPTION
		  STATMOUNT_FS_SUBTYPE       /* Want/got fs_subtype */
		  STATMOUNT_SB_SOURCE        /* Want/got sb_source */
		  STATMOUNT_OPT_ARRAY        /* Want/got opt_... */
	+         STATMOUNT_OPT_SEC_ARRAY    /* Want/got opt_sec... */
	=20
	      In general, the kernel does not reject values in req.param
	      other than the above.  (For an exception, see EINVAL in
	@@ -218,7 +221,14 @@ DESCRIPTION
		     The offset to the location in the smbuf.str buffer
		     that contains file system options separated by null
		     bytes.  They can be iterated over the help of sm=E2=80=90
	-            buf.opt_num.
	+            buf.opt_num.  smbuf.opt_sec_num The number of secu=E2=80=90
	+            rity options set on the mount.
	+
	+     smbuf.opt_sec_array
	+            The offset to the location in the smbuf.str buffer
	+            that contains security options separated by null
	+            bytes.  They can be iterated over the help of sm=E2=80=90
	+            buf.opt_sec_num.
	=20
	 RETURN VALUE
	      On success, zero is returned.  On error, -1 is returned,

The diffman-git(1) script is part of the repository.  You can install
it with `make -R install`.  Or you can use it directly from src/bin/.


Cheers,
Alex

> +The number of security options set on the mount.
> +.TP
> +.I smbuf.opt_sec_array
> +The offset to the location in the
> +.I smbuf.str
> +buffer that contains security options separated by null bytes.
> +They can be iterated over the help of
> +.IR smbuf.opt_sec_num .
>  .SH RETURN VALUE
>  On success, zero is returned.
>  On error, \-1 is returned, and
> --=20
> 2.53.0
>=20
>=20

--=20
<https://www.alejandro-colomar.es>

--qqtmcj7incr2zuyw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmmMiPMACgkQ64mZXMKQ
wqm4mRAAvATsEvcJtvFGI8j8/68RFhd4S4zVQqq/rPaiEUIJbL1jlJ3THl/YqcPe
tXya5akJVsaKBRu7IJwFF/xn41NAdKwDz+pa3XanapRif7PQjsv0xguGNF62O50k
UySWoGN/oXF2Nn1RfW1a8DJUtqVEXk0eCkOnqRgz5YoRo+LLxYte2w/4HTQfp0dC
loLS4W2LPoMgA6OyYnGXUSEdpy4LGqB/yC6fxj9cYfFIf9JSWebW+3IRWFLj+u0W
qFi9/EmCoYomX//bEXn0gRm2HWfChpwIf5cpZdfo3/PYRVMRkK7lSP/dsbHN1xNl
6zQ0rR1n3/x/bTQJSfNEQYc0jryQ7xCtdoi81G2b926Q2VtvJJucgSHnLtS4DX7f
R3v38W2eKxBbakWsh0bMDDyep2Uojug58KQtImTttqM3x1xlBs2sC/qo4uizbVJ7
PMDcXN4djhheHYfgHqfp53044+VNZtzPLeIQmJ7aBeY4fayVbTJMqGD3aym35RhN
2Ds9IrUdH80OQz6hsuo8Cm9WHWmvN9ZUI/H1j5JWLQsZyJnCQ/cY+vONF/62hW6d
X9maYh4vzVPeq9Q1TXFN+kYYvJnruC7vGgEx4o644fx7P2/6+SP/3FTGVQAKCTHm
ix2mP5wnaYnLbHrMEbo6I3mEzwXSjxJFpKZaZp5cRy4fJwFm0oE=
=1R2k
-----END PGP SIGNATURE-----

--qqtmcj7incr2zuyw--

