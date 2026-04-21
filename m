Return-Path: <linux-man+bounces-5364-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ZcFxNp/z52nrDQIAu9opvQ
	(envelope-from <linux-man+bounces-5364-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 22 Apr 2026 00:01:03 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D42243FEEE
	for <lists+linux-man@lfdr.de>; Wed, 22 Apr 2026 00:01:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6D1083020ABB
	for <lists+linux-man@lfdr.de>; Tue, 21 Apr 2026 22:00:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 86C15346AE3;
	Tue, 21 Apr 2026 22:00:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EpbWQv8P"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BCA923D7F0
	for <linux-man@vger.kernel.org>; Tue, 21 Apr 2026 22:00:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776808846; cv=none; b=dBIHDC63r2LqHH8UIBYSHY9kfRSe8pwUsh2MpFZuux4Hivha41pKrpuqLF/3Nl4m7KezrH/IPp1Pm6gpxLFqU/f2XqYzKO4qzdbGxNWXV14dykyzdxgZebECly57GgjkFeVVx6QhcM8WQiv33NjHBiknmZPiYpcGB9nRDlZqrI0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776808846; c=relaxed/simple;
	bh=C4P5CWW7zZ+nKOI0csIBdKdj1Nv1t7lk4e3G/srv4f8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=oOIHbEpvX81IIEV9+VVJeEtOeI59bzn89mVbdc7QnWGDVELRbCBk9vPgAlAvttyK8elK3ekF2Fsef8MaJWQJkk6ICZlqkdblxP15RaXjWqqEOGbw0zvgYwC+VwBnBp+eyDuXodP2kvt/gxfC6949hifKBEd1/CM0KaeN8w8S8gc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EpbWQv8P; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 00110C2BCB4;
	Tue, 21 Apr 2026 22:00:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776808845;
	bh=C4P5CWW7zZ+nKOI0csIBdKdj1Nv1t7lk4e3G/srv4f8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=EpbWQv8PC0iu0UQDiJRtzdIO7aZBL4hLxFNjvrWH7PgAq20d1vn6Q9zvQ3zdHEq1J
	 O8zEOphuRMnhv1yfVTcwYZ0sf0WkffCkWglSMEqV+8G/oMf4rSOvznZT7ZByczjouY
	 MVT8UIsMRHsdwdvjGi2CzhQVB3Z6uJW0nX3Kh+Zenh+b7tLF5nlkKVPjPcdD0KP2Dy
	 qSUcjEJBafIOkdt8U8rwRYfGrDKUrOfE16D/j6dS91gJjtWLr4i+DgPAsbQz5DViRy
	 lwknls+/wWUooIuT22J51RbpZUbsDzyeQ2FEA65v3VsSxcyTNXP/IEy+gFi3HgVXD+
	 x41JSPhQGLubw==
Date: Wed, 22 Apr 2026 00:00:41 +0200
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?Q?G=C3=BCnther?= Noack <gnoack3000@gmail.com>
Cc: =?utf-8?Q?Micka=C3=ABl_Sala=C3=BCn?= <mic@digikod.net>, 
	linux-man@vger.kernel.org
Subject: Re: [PATCH v3 4/4] man/man2/landlock_restrict_self.2: Document ABI
 requirement for logging flags
Message-ID: <aefy5eMUhnHGw5gZ@devuan>
References: <20260421175842.6870-1-gnoack3000@gmail.com>
 <20260421175842.6870-5-gnoack3000@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="rj42icxbe2h3mvyl"
Content-Disposition: inline
In-Reply-To: <20260421175842.6870-5-gnoack3000@gmail.com>
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5364-lists,linux-man=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[linux-man];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,alejandro-colomar.es:url]
X-Rspamd-Queue-Id: 0D42243FEEE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--rj42icxbe2h3mvyl
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?Q?G=C3=BCnther?= Noack <gnoack3000@gmail.com>
Cc: =?utf-8?Q?Micka=C3=ABl_Sala=C3=BCn?= <mic@digikod.net>, 
	linux-man@vger.kernel.org
Subject: Re: [PATCH v3 4/4] man/man2/landlock_restrict_self.2: Document ABI
 requirement for logging flags
Message-ID: <aefy5eMUhnHGw5gZ@devuan>
References: <20260421175842.6870-1-gnoack3000@gmail.com>
 <20260421175842.6870-5-gnoack3000@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20260421175842.6870-5-gnoack3000@gmail.com>

Hi G=C3=BCnther,

On 2026-04-21T19:58:42+0200, G=C3=BCnther Noack wrote:
> Missed this on the earlier commit; we should mention since which
> Landlock version these flags are available.  Users can correlate this
> with the Landlock ABI version as it can be queried through
> landlock_create_ruleset(2).
>=20
> Signed-off-by: G=C3=BCnther Noack <gnoack3000@gmail.com>

I've applied patches 1,2,3.  I've amended them significantly, and this
one doesn't apply anymore.  Would you mind rebasing and using a format
similar to the one I used when amending patch 3?


Have a lovely night!
Alex

> ---
>  man/man2/landlock_restrict_self.2 | 2 ++
>  1 file changed, 2 insertions(+)
>=20
> diff --git a/man/man2/landlock_restrict_self.2 b/man/man2/landlock_restri=
ct_self.2
> index 1265ea2feb91..99288b582fea 100644
> --- a/man/man2/landlock_restrict_self.2
> +++ b/man/man2/landlock_restrict_self.2
> @@ -134,6 +134,8 @@ It can also be used with a
>  value of \-1 to mute subdomain logs
>  without creating a domain.
>  .P
> +These flags are available since Landlock ABI version 7.
> +.P
>  The following flag supports policy enforcement in multithreaded processe=
s:
>  .TP
>  .B LANDLOCK_RESTRICT_SELF_TSYNC
> --=20
> 2.53.0
>=20

--=20
<https://www.alejandro-colomar.es>

--rj42icxbe2h3mvyl
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmnn84gACgkQ64mZXMKQ
wqlYyxAAgrTyVXt/0nw7XEzIP/cy9i+8a9pm1/uMkwuO9cLNWOt4t9rBlJ9n4rwl
OyycttwAA25LwOgWJWqkni/5dwntDGZJXDN/KGD8Y9UFmAbiR9JfQavfTqZnAmuc
McoezkWQH5Bj0QAC1UvAd6yqpFmlVCu8IumvZTYjcQCjF8SVgGIk//CxwvE1fQwz
46SkBKDwl6RcRF9EunDfB7RJxer5TvdTW/wuZg074Im7FGQB2TwSgUFyLAx8401Q
aeOh5GGxgwvYADPF9uHhh3fvpoe8FaOw9Egi26won7o/4qtu5mVgDYQIjVpDi8v1
15h8k0UgveFux9qA15BHly5x9o6XsoPPVIWqtfh7iYdfHW1m/bLXqPUivRytnL/F
6dpaB0As1eoCJRhF0QHg89bIPt6zVJXOlr0v03pl5N1Fm3muC7Q1ujGfZJugQs5W
BYXntUKi1uNNGFTmyzcLCgQMERMEs7t/Q4TVhIaIUZ5qV+KlFKY6evA/P+Jd0GLc
YPwVyGXfCe7IrBICcq10gtRYPm8dCGfyBRY1dosszMv+yXr1iwbot1V8+Wa5s4oS
rL7NUuo5ETfDsRgrM8U3a0LG1lypCconBFpryffbf/IOcrqY6LB+3tGiKn7QFKS2
/jZ1tqqrImU0QF2NfFzhZneeSRT9gNREk2RaSP5VuJFKVO1XMuA=
=HioU
-----END PGP SIGNATURE-----

--rj42icxbe2h3mvyl--

