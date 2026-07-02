Return-Path: <linux-man+bounces-5686-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id u2umGclPRmoVQgsAu9opvQ
	(envelope-from <linux-man+bounces-5686-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Thu, 02 Jul 2026 13:47:21 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id C8FFF6F6F91
	for <lists+linux-man@lfdr.de>; Thu, 02 Jul 2026 13:47:20 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=nJwpg5GD;
	spf=pass (mail.lfdr.de: domain of "linux-man+bounces-5686-lists+linux-man=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="linux-man+bounces-5686-lists+linux-man=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 93B07301D775
	for <lists+linux-man@lfdr.de>; Thu,  2 Jul 2026 11:47:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D4D8647CC97;
	Thu,  2 Jul 2026 11:47:06 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 98E2C366054
	for <linux-man@vger.kernel.org>; Thu,  2 Jul 2026 11:47:05 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782992826; cv=none; b=V73/og8dk2igjX9Pk73+a88bnlo/2q62LMwDKl10ZAVQr5f/weMn6yOtinfwtnD9Yg48lwddqhuhRRlOqa/4tdgiW47lrMdM9EGMORp6Zef6X+0r6k95xc7s0j/tiGh8+ScAipBoYDz497V+NmLubY2RrhIvLi4IWsugdmtJslo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782992826; c=relaxed/simple;
	bh=VmoXH0KaGIbvsXBRZYDk/Xak7hJmaTAp0fkDaU9X6LY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=O5apKgIlEaFXM71h1x0+/+uzP/8lsmHK8w2fc60oawxffNjY/+JpWLfm6Norxjfq3Dcq28qlKlNV0hStESB9KpMMf9tn6CijIMNpvtfjIYid9ycWwbRO6GevwzOB2aVplxWy3KJ7tCayqR/KB/3rSF61dZVsnuHhkYfxXeH/GRA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nJwpg5GD; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 443DD1F000E9;
	Thu,  2 Jul 2026 11:47:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782992825;
	bh=ETYYxKiEEw0qj80cY6tiVQwxzozIo0PevHGqT1Y9FDw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=nJwpg5GD1cKavIPal5p2UGhI64r3/FAXTgFnNCfFl0uG/m4HSD/cMQSWrUh8mkxQo
	 ZisEIFMKKbxPMkQwcLKkKu/We3wZKF7yGHYSKjmosMQD8fX541Cp4EoYD9IV8BZEl1
	 9/+pOr+X0Sn9WlHpQ9zWCZ0cQ5uYPznwMP6t09tcVXhyLsPYzYpGotr9awd4M82kw3
	 zTbpwuN58PhQfcOWeq22/Ja9d5ol5s+7jU0y1MOkibP+2Yp9Bpjkd4bfTr4idiKAQL
	 rgYlK3WUrshhM0CZETmx2GqMSEFO3hqG+UUsbWFImv49gbYJJtzC8dzsdJ357/scw5
	 ipfGRz9Mni+Bw==
Date: Thu, 2 Jul 2026 13:47:01 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Dorjoy Chowdhury <dorjoychy111@gmail.com>
Cc: linux-man@vger.kernel.org, brauner@kernel.org, jlayton@kernel.org
Subject: Re: [PATCH v2 2/2] man/man2/openat2.2: Document OPENAT2_REGULAR flag
Message-ID: <akZPkMmKbyKsn3Jh@devuan>
References: <20260426111707.36541-1-dorjoychy111@gmail.com>
 <20260426111707.36541-3-dorjoychy111@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="yrlw5khdausddnk4"
Content-Disposition: inline
In-Reply-To: <20260426111707.36541-3-dorjoychy111@gmail.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-6.76 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:dorjoychy111@gmail.com,m:linux-man@vger.kernel.org,m:brauner@kernel.org,m:jlayton@kernel.org,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FREEMAIL_TO(0.00)[gmail.com];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5686-lists,linux-man=lfdr.de];
	RCPT_COUNT_THREE(0.00)[4];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,vger.kernel.org:from_smtp,devuan:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C8FFF6F6F91


--yrlw5khdausddnk4
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Dorjoy Chowdhury <dorjoychy111@gmail.com>
Cc: linux-man@vger.kernel.org, brauner@kernel.org, jlayton@kernel.org
Subject: Re: [PATCH v2 2/2] man/man2/openat2.2: Document OPENAT2_REGULAR flag
Message-ID: <akZPkMmKbyKsn3Jh@devuan>
References: <20260426111707.36541-1-dorjoychy111@gmail.com>
 <20260426111707.36541-3-dorjoychy111@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20260426111707.36541-3-dorjoychy111@gmail.com>

Hi Dorjoy,

On 2026-04-26T17:14:26+0600, Dorjoy Chowdhury wrote:
> Signed-off-by: Dorjoy Chowdhury <dorjoychy111@gmail.com>

Thanks!  I've applied the patch, with some minor changes and removals in
the wording.  It's already pushed.


Have a lovely day!
Alex

> ---
>  man/man2/openat2.2 | 20 ++++++++++++++++++++
>  1 file changed, 20 insertions(+)
>=20
> diff --git a/man/man2/openat2.2 b/man/man2/openat2.2
> index f0770f3a0..ea3d9ac7b 100644
> --- a/man/man2/openat2.2
> +++ b/man/man2/openat2.2
> @@ -133,6 +133,20 @@ argument,
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
> +if it is a regular file.
> +If it is not a regular file,
> +.BR openat2 ()
> +fails with the error
> +.BR EFTYPE .
> +.RE
>  .TP
>  .I mode
>  This field specifies the
> @@ -471,6 +485,12 @@ and an escape from the root during path resolution w=
as detected.
>  contains
>  .BR RESOLVE_NO_XDEV ,
>  and a path component crosses a mount point.
> +.TP
> +.B EFTYPE
> +.I how.flags
> +contains
> +.B OPENAT2_REGULAR
> +flag and the path is not a regular file.
>  .SH STANDARDS
>  Linux.
>  .SH HISTORY
> --=20
> 2.53.0
>=20
>=20

--=20
<https://www.alejandro-colomar.es>

--yrlw5khdausddnk4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmpGT7QACgkQ64mZXMKQ
wqm5BA/9Ey6oSsPQyKik3y+igQNQUiSJmXmQMDZ2qplqZVwi1k1jDY3qfqt2WdrJ
jdcCoPZ55Z2d5IjsliFQZyv/Tg6hf5fTpFW+TnBypA8Mx2G6ryT3a2Cct8a15U/P
c6b1gY8W5rwmc9bpeZk75rNGOS2IMlWRXVkXLb6qQBpd4cjUGUwx+i27r36OmEeG
LIblTq6zh2gZgfLWtCPFN+dt631box7YZ+oLV0ysBSrJGPrTpc9/lLDZuwFnMHzt
ll4LPYifpPuRZeJY+fldQlpeOl5CJPHPCGbWj8Lv940gj0wA3xNLIHW/MFYkbqT/
4zPwe6AnAzFqyzRALh/q2E7R59cl0ZJN9lPxwY9kvqwO3oSdKhCufQdA9Cmosp/o
EwkQoBQJrsAA1+V7A5VYdX64FHZzdv8SKr5Qstp4crwoY1f95zvVEZ2hLBX55cdY
aewY1aRFb/7eDSwRDlQH1NrItGqjBlWITXvQ7pprFtyhjetlKrvC+38SyvAphpM6
b2dwGE7tE6wXj62kF9teqVlYkdjnWt8yKvWmjzY5p3//xbdYFo+ynCkzBfaiPg3w
/330XyXV3Go+iCD9xjI3e24XJthM3SquHipXdnaDb2Aldz5BJC2l3Wjn12EtGARX
siwb+Ur+wShvHjy8AxyzLU9FR2FY/eKU9kWqzu30C1KLQejX9j0=
=+2MK
-----END PGP SIGNATURE-----

--yrlw5khdausddnk4--

