Return-Path: <linux-man+bounces-5079-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cHFtFbY5i2neRgAAu9opvQ
	(envelope-from <linux-man+bounces-5079-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Tue, 10 Feb 2026 14:59:18 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D9F6911BA54
	for <lists+linux-man@lfdr.de>; Tue, 10 Feb 2026 14:59:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7729E300A74E
	for <lists+linux-man@lfdr.de>; Tue, 10 Feb 2026 13:56:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D1D9034C818;
	Tue, 10 Feb 2026 13:56:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XF9WEV7S"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96317344038
	for <linux-man@vger.kernel.org>; Tue, 10 Feb 2026 13:56:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770731795; cv=none; b=L15Z0D4uAHp/AsL5hr7ORjxX8byZUK27+9b7LQX7FapEgN/PuS1HWS7bqG00dpqZ5K0sLQlxV6jwbLAybU1y6f6JIZjgPZ8RDJi9y1JTFyU7MyZoqeJf8p/LMMZbD7paZ6DfZeFrMDEf3jpieotWl4tlTGydjhadQHkL7RXDTuE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770731795; c=relaxed/simple;
	bh=aHp6JqWopfzRb37atzjCnpj+0LJ7rBm4nvxGIuG0NAs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=B727dPucIPdwEMUG75UO/82gyLvymha99PINvq30zL97apKbOX8iMoQG7wD1ET6IOoKLv9nAh3UgUvK6wWD52GMFADAyJJqB8y3vpJZiWmjKAfl0wa18aNTKwG3WTHgwoDH4b1biihtZ/pjamd/QaV2ZtIfnmZ3pOD6R0bUjxLM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XF9WEV7S; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8B506C116C6;
	Tue, 10 Feb 2026 13:56:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770731795;
	bh=aHp6JqWopfzRb37atzjCnpj+0LJ7rBm4nvxGIuG0NAs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=XF9WEV7SYzmZM9UefUV9+6SxV0yknLdLcQA37fmxSYL7QAeBz6wWgsYyTSf+1pn9Z
	 3kw3s+W4Pe6obGh9VdrLXaQIlt6A8sIvew3f7VEHBwB8JDdR72NYWj2jMnjwlJNK7J
	 Ws6D5Yur0vXo0aAudaEfbmGxzXzZIf2K5VTDTDZzsWOUylB2wZgCLiecFsZV10sbvo
	 xtP/yo8cjVAZ0zhlwPtoMlx+VALfNxWBO3GPQAnh7CX26+zKA7x6gpZED3coQUG9GE
	 yckojuc5wHHH6kbskWyYOizBCbEl9Z7cdmd85zKMnCz5Mn+s4gviVCombzwHeG9Yxr
	 MolQG63Bn4TmA==
Date: Tue, 10 Feb 2026 14:56:32 +0100
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] FUTEX_WAIT.2const, FUTEX_WAIT_BITSET.2const,
 FUTEX_WAIT_REQUEUE_PI.2const: wfix
Message-ID: <aYs4yya9856dM03B@devuan>
References: <2ekfzlznhv7yld7dghj5rt7uvenp6uji5jrmfm6xoije6ycyny@tarta.nabijaczleweli.xyz>
 <aYphfw5rQFeW_txe@devuan>
 <aYpjGryOvNHkZ4R5@devuan>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="wtndhmndusfdoqsf"
Content-Disposition: inline
In-Reply-To: <aYpjGryOvNHkZ4R5@devuan>
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
	TAGGED_FROM(0.00)[bounces-5079-lists,linux-man=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	URIBL_MULTI_FAIL(0.00)[sea.lore.kernel.org:server fail,nabijaczleweli.xyz:server fail,alejandro-colomar.es:server fail];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[linux-man];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,nabijaczleweli.xyz:email]
X-Rspamd-Queue-Id: D9F6911BA54
X-Rspamd-Action: no action


--wtndhmndusfdoqsf
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] FUTEX_WAIT.2const, FUTEX_WAIT_BITSET.2const,
 FUTEX_WAIT_REQUEUE_PI.2const: wfix
Message-ID: <aYs4yya9856dM03B@devuan>
References: <2ekfzlznhv7yld7dghj5rt7uvenp6uji5jrmfm6xoije6ycyny@tarta.nabijaczleweli.xyz>
 <aYphfw5rQFeW_txe@devuan>
 <aYpjGryOvNHkZ4R5@devuan>
MIME-Version: 1.0
In-Reply-To: <aYpjGryOvNHkZ4R5@devuan>

Hi =D0=BD=D0=B0=D0=B1,

On 2026-02-09T23:44:37+0100, Alejandro Colomar wrote:
> On 2026-02-09T23:37:18+0100, Alejandro Colomar wrote:
> > On 2026-02-07T20:18:38+0100, =D0=BD=D0=B0=D0=B1 wrote:
> > > Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczlewel=
i.xyz>
> >=20
> > I see the same issue applying this patch.  I'm apt-get upgrading to see
> > if that's fixed.  I'll come back in a moment.
>=20
> Humm.  No new git version is available.  I don't know where the problem
> is coming from.  Would you mind trying your own patch?  If it works,
> I might need to report a bug to git(1).

I can apply patches from others, but for some reason, your patches can't
be applied.  :/

I still don't see anything obviously wrong in the patch below, so
I don't know why this is happening.


Have a lovely day!
Alex

> > > ---
> > >  man/man2const/FUTEX_WAIT.2const            | 10 +---------
> > >  man/man2const/FUTEX_WAIT_BITSET.2const     | 10 +---------
> > >  man/man2const/FUTEX_WAIT_REQUEUE_PI.2const | 10 +---------
> > >  3 files changed, 3 insertions(+), 27 deletions(-)
> > >=20
> > > diff --git man/man2const/FUTEX_WAIT.2const man/man2const/FUTEX_WAIT.2=
const
> > > index 7d6681c1c..94cf4a997 100644
> > > --- man/man2const/FUTEX_WAIT.2const
> > > +++ man/man2const/FUTEX_WAIT.2const
> > > @@ -102,20 +102,12 @@ .SH ERRORS
> > >  See
> > >  .BR futex (2).
> > >  .TP
> > > -.B EAGAIN
> > > +.BR EAGAIN " or " EWOULDBLOCK
> > >  The value pointed to by
> > >  .I uaddr
> > >  was not equal to the expected value
> > >  .I val
> > >  at the time of the call.
> > > -.IP
> > > -.BR Note :
> > > -on Linux, the symbolic names
> > > -.B EAGAIN
> > > -and
> > > -.B EWOULDBLOCK
> > > -(both of which appear in different parts of the kernel futex code)
> > > -have the same value.
> > >  .TP
> > >  .B EFAULT
> > >  .I timeout
> > > diff --git man/man2const/FUTEX_WAIT_BITSET.2const man/man2const/FUTEX=
_WAIT_BITSET.2const
> > > index be40d57c6..5f165adb4 100644
> > > --- man/man2const/FUTEX_WAIT_BITSET.2const
> > > +++ man/man2const/FUTEX_WAIT_BITSET.2const
> > > @@ -147,21 +147,13 @@ .SH ERRORS
> > >  See
> > >  .BR futex (2).
> > >  .TP
> > > -.B EAGAIN
> > > +.BR EAGAIN " or " EWOULDBLOCK
> > >  .RB ( FUTEX_WAIT_BITSET )
> > >  The value pointed to by
> > >  .I uaddr
> > >  was not equal to the expected value
> > >  .I val
> > >  at the time of the call.
> > > -.IP
> > > -.BR Note :
> > > -on Linux, the symbolic names
> > > -.B EAGAIN
> > > -and
> > > -.B EWOULDBLOCK
> > > -(both of which appear in different parts of the kernel futex code)
> > > -have the same value.
> > >  .TP
> > >  .B EFAULT
> > >  .I timeout
> > > diff --git man/man2const/FUTEX_WAIT_REQUEUE_PI.2const man/man2const/F=
UTEX_WAIT_REQUEUE_PI.2const
> > > index 0ac1cebe5..4fa1520f6 100644
> > > --- man/man2const/FUTEX_WAIT_REQUEUE_PI.2const
> > > +++ man/man2const/FUTEX_WAIT_REQUEUE_PI.2const
> > > @@ -72,20 +72,12 @@ .SH ERRORS
> > >  See
> > >  .BR futex (2).
> > >  .TP
> > > -.B EAGAIN
> > > +.BR EAGAIN " or " EWOULDBLOCK
> > >  The value pointed to by
> > >  .I uaddr
> > >  was not equal to the expected value
> > >  .I val
> > >  at the time of the call.
> > > -.IP
> > > -.BR Note :
> > > -on Linux, the symbolic names
> > > -.B EAGAIN
> > > -and
> > > -.B EWOULDBLOCK
> > > -(both of which appear in different parts of the kernel futex code)
> > > -have the same value.
> > >  .TP
> > >  .B EFAULT
> > >  .I uaddr2
> > > --=20
> > > 2.39.5
> >=20
> >=20
> >=20
> > --=20
> > <https://www.alejandro-colomar.es>
>=20
>=20
>=20
> --=20
> <https://www.alejandro-colomar.es>



--=20
<https://www.alejandro-colomar.es>

--wtndhmndusfdoqsf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmmLOQ8ACgkQ64mZXMKQ
wqmgPg//VLNtL77g767IugmtYOk2sVGZMCeuja9me2ri53o4xYe/oQjM+OF8Y3RL
7vAAsX4MxEc5yVNB8XVQiuMhpOg4yGcYh518HWqOB8fQQT1g3jX3AccvHK4nVxYW
B0HBCE2THXXqluau1JZ26WFzkwjffUShp91q/U1Iq1eM2KvtlRzDkR7//fhWSiWV
X4xGX8qiKQBWT6Lb3mc7xhXjt7rfyMsc4W+ES6dul7puHhn1O1/VBH29EvSJsdPX
qlben4IgTefaqKqdDkbomoPY/ogHw6/XxaXHQJRRbxM8RU/1TWmiz6UutHmOV/ub
yIp3gaOwK7By/FhJB52jVgg+lS4Q8eb+YUz+aW5O/AaYEw8T2vBZ+9gY7ZILusMq
x+Z/MfohbABd3OUKj9EXXjf4RzwuQGquQDbn1cEo6ErZsrj6I+E/4NyrfP+DtT4P
qLfj/rJ30UnzTRqx+4o2Gk5VJPdZCeblrvp3IT/tEaLROT1LHA5pb2R4tr3/+/2u
CrBQerPVhVfA4UCy64sk1qwtp6TsZlSNpDXdtSEIAeR3xJv/NhndyzIZ9Yh4o6yu
0cwtGvxByzmSCKRnboHlt50OJZ3kOu0kDEVm6LPmqbIzxYEBtKJ34eSfioYQY0W8
2PosGv3bD3b/8dJoa/wrRvGLZLYiLjrMP7e/seLPdO/wDlFeImk=
=V2ZG
-----END PGP SIGNATURE-----

--wtndhmndusfdoqsf--

