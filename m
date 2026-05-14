Return-Path: <linux-man+bounces-5505-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WFoJHB8/BmqmggIAu9opvQ
	(envelope-from <linux-man+bounces-5505-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Thu, 14 May 2026 23:31:11 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C731F547135
	for <lists+linux-man@lfdr.de>; Thu, 14 May 2026 23:31:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A2BA4305E362
	for <lists+linux-man@lfdr.de>; Thu, 14 May 2026 21:29:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 11FA03CD8BF;
	Thu, 14 May 2026 21:29:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nwVyXoqu"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C80B93CEB87
	for <linux-man@vger.kernel.org>; Thu, 14 May 2026 21:29:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778794183; cv=none; b=LJDBa40m6hTDQvlVcv9POBjm/bd6d9RgH6tyvUgWnJTgOvIhNHsouWqhM+U5k5Xgnr+be8hpgIuy7YCXQnytVoY6qfmcIvLzYAxlUDmFNe4NZ+SAmudZPa9krJaj2MchkKxfIdQ83WlHw7p0chxlFCrE+aJeeYUwcdwghvXmTMY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778794183; c=relaxed/simple;
	bh=FNl+loQVNU1MXHYF6OcSUhncbAZncoDFbkx9OQylipQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fTtH7APtlqzg6iJwlZfD78vKOXjhBWKwipqfKjmit8Sth+GzyyuvcA/f8LrpGIlZwk/pStGUy3ncNKXDmAwdBfV/3wvs095r3jXbEG6yXZkTAqNh4kDhm4MF1GYn1opsTosvzOV+SRMZv0y24wbf15d9Y6fDj9IcpNVaGE2Zl4w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nwVyXoqu; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B6B81C2BCB3;
	Thu, 14 May 2026 21:29:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778794183;
	bh=FNl+loQVNU1MXHYF6OcSUhncbAZncoDFbkx9OQylipQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=nwVyXoquF9Dm0OovIO6wX2FFh/JUVr9TNaVS5ZxUCVSkBoX82oj/zY6srp/jvoHhe
	 6UcVo8g6PhWVhQGuTGY5sQwdMLhOX3NqqwxD8hfjUSUMxKZAapwEwmRG36Nt3dK2ak
	 8ceP3PgwYVKpZlTcad8NtBijmWWBVO25FTTL7ZISFirEzNjH4bu+isKVaGBvOE8d87
	 dH0mC0ZIp7wpj7WGxXUHZVBfzYTR+Fa97ivc3z4LcJ77/YQruGS3nDMMJSWc77U17Q
	 5yLGtr91ot0x4W1URvSjGnVkOeI6S2Z3LsHCKjquO3OFwsttPcVl3PmqBhkNSizii0
	 f/lyT5+RDnS5A==
Date: Thu, 14 May 2026 23:29:40 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Kalevi Kolttonen <kalevi@kolttonen.fi>
Cc: linux-man@vger.kernel.org
Subject: Re: reallocarray() is now part of POSIX
Message-ID: <agY88e74EJ72Vli7@devuan>
References: <agY7IsrJiFZdAreh@14-5A-FC-31-E8-67>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="k7m4ybj4wnk23okl"
Content-Disposition: inline
In-Reply-To: <agY7IsrJiFZdAreh@14-5A-FC-31-E8-67>
X-Rspamd-Queue-Id: C731F547135
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	TAGGED_FROM(0.00)[bounces-5505-lists,linux-man=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[linux-man];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Action: no action


--k7m4ybj4wnk23okl
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Kalevi Kolttonen <kalevi@kolttonen.fi>
Cc: linux-man@vger.kernel.org
Subject: Re: reallocarray() is now part of POSIX
Message-ID: <agY88e74EJ72Vli7@devuan>
References: <agY7IsrJiFZdAreh@14-5A-FC-31-E8-67>
MIME-Version: 1.0
In-Reply-To: <agY7IsrJiFZdAreh@14-5A-FC-31-E8-67>

On 2026-05-15T00:14:10+0300, Kalevi Kolttonen wrote:
> Hello!

Hi!

> The man page for 'reallocarray' claims this function
> is not standardized. However, it is now part of POSIX.

You probably have an old version of the manual page.  The current manual
page documents POSIX.1-2024:

	$ man -w reallocarray \
		| MANWIDTH=3D64 xargs mansectf STANDARDS \
		| head -n11;
	malloc(3)           Library Functions Manual          malloc(3)

	STANDARDS
	     malloc()
	     free()
	     calloc()
	     realloc()
		    C23, POSIX.1=E2=80=902024.

	     reallocarray()
		    POSIX.1=E2=80=902024.

This was documented in
b9ebd195 (2025-07-20; "man/man3/malloc.3: STANDARDS, HISTORY, BUGS: Clarify=
 (non)conformance of realloc{,array}(3)").

That commit was part of man-pages-6.15:

	$ git describe --contains b9ebd195
	man-pages-6.15~1

Which was released 10 months ago:

	tag man-pages-6.15
	Tagger: Alejandro Colomar <alx@kernel.org>
	Date:   2025-07-20 23:49:35 +0200

	man-pages-6.15 - manual pages for GNU/Linux
	-----BEGIN PGP SIGNATURE-----

	iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmh9ZKwACgkQ64mZXMKQ
	wqnjPQ//db5f+yZ+Ew9mueXt7Mw8EY918/wGuiMZC31M/lNSywpFrczzsG+SLyMv
	QJwdK4ZJG62j5zA3eiFonpSsApxFPGb8aZhFlH/IjN5V0ilpxOKa9YfGKx150fi0
	l+uMNRl4dV3lK3EavOcHHClPwQDQ2qOxt+WTksMHGOusr2/y+MyMcHEkXkvQfQDr
	GeLvBumPLoxMM1tieGoXdSn6dx39eQAqQB1H/LhFejR+OX+bpVVfcDUWzH2HNXo4
	UaUxKMgY1QfFVy1Azjm45Zt/uz2br/PFJ4NdfawpNT/3qN9L3egTQeyMuSlOQZnI
	c8MGi0D2VIotvyGmewCKSta2Wx8VpTe9BY/iB+Afdt9urUkj+A6EPpacVOFJbWxG
	nMjIYJsEDhrwvjIwliC5YD6CIEmXYRk/xYmd4QXKu+82EAc1ttd5+aFdiAP8e1DL
	m77hABRDINTwFTQ5rq5VuSL9WqYhYSVzoM5rf3Y/AzyUaqeg/6peqSY8aMuDVc5X
	zXbrDK86/iDBPYiFIbNxS5iy/rlROxL1/UVzVSmmp+u5/u6tGkpBCDvPSoaP4XfW
	xzjwYsEJroTHtJ/X2f/Gib6Aovo5Cyut2t7Y0z1wbocJKWn0FlKHbNnPLFsxKr6B
	t8fzPTQql83qlvNqPJKQEPR+ZSshnZvWcRMwP3PUxq1LsApAWkA=3D
	=3D1+GK
	-----END PGP SIGNATURE-----


Have a lovely night!
Alex

> FreeBSD 15 man page says:
>=20
>   reallocarray() conforms to IEEE Std 1003.1-2024 (=E2=80=9CPOSIX.1=E2=80=
=9D).
>=20
> br,
> KK
>=20

--=20
<https://www.alejandro-colomar.es>

--k7m4ybj4wnk23okl
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmoGPr0ACgkQ64mZXMKQ
wqnA8Q//eg/Z0zqc+Iin2K3rIHOV/SiUDAiUDEaMPLdm6biE5OFRg2PVN7F1A/S6
dMvKFWmV5KwAOh/rHfCAFvmBqorhY+uNXLVyJtvh/PcDZBcgzi+bdyIkUIlGNPhG
WFtOhv0+XvSSuBDrFhta5xdlKbZJaSw8skuwXSqeulRXUtf7Q2CPTwW9ShbludeD
HOx4XEg2Iaxm2/HnWHA+ajkxRLrFfkWY+bQRFpP29i4zpLxKUrLRZ0zny2nqqmtW
gIxlFIHwYx+SiF4+HheTry6NtTz6VXwDfRhIKRTFMjy+AYIL4M1n43Ua+5mZIW4p
SGvARSlR2fzAhVLOFBE0WrAAqVr3oaJu3d0TqqbZQgXm3lwJMAZhPiqwkcgwREhg
oKo8nH6FXypktZwd1IKP6T2lDeTVLK542mmpDSqQWrXodkw4pA4nG7mJMJHQsGZ+
wuht/dux2W4aQRrAfnLsEP2+vKQ2NwG1O01fqy/nYT6DjvwimMyQfAfinJVd7yZk
jFT/4ztusn/zHiyHmkZ3XK3Vm77KfwAJ6HfSg9fmkriG/fN4ROYNOZRO436vb/HY
a6kp66cpJO6N/eTjaoFZ2WCPF4C/7m/HAuKwBTZPZxNAMvfG/XLtr3rJlZ61oAMx
yDpGanFc2RlWTBWLK5S/Mk0UVwzoqavPA/d1U9yD9KB9R5p6Ugg=
=8mLA
-----END PGP SIGNATURE-----

--k7m4ybj4wnk23okl--

