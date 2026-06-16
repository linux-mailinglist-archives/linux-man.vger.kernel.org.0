Return-Path: <linux-man+bounces-5655-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id /ZdaCoy8MWqApgUAu9opvQ
	(envelope-from <linux-man+bounces-5655-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Tue, 16 Jun 2026 23:13:48 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 91921695607
	for <lists+linux-man@lfdr.de>; Tue, 16 Jun 2026 23:13:47 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="Bzwr1UA/";
	spf=pass (mail.lfdr.de: domain of "linux-man+bounces-5655-lists+linux-man=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="linux-man+bounces-5655-lists+linux-man=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5015231DEF78
	for <lists+linux-man@lfdr.de>; Tue, 16 Jun 2026 21:11:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A5BA73A6EF0;
	Tue, 16 Jun 2026 21:11:53 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81B1330FF1D
	for <linux-man@vger.kernel.org>; Tue, 16 Jun 2026 21:11:52 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781644313; cv=none; b=P+c+BL5g2QOIA8L64F/DRddrQszvzedgjya+VbD8l7r0M4EFG9lxZew9s3LDDftS0Zuwbhtv+Amyj22As5/7WZ9WVQ4v0bjBgZXGlCbsn2lRT6NXwgT5u2UB6NYC0KYXuOtVe0QRQ4KCqIINPoVvPWjZQqnMkiQDBe6+6YqKaCs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781644313; c=relaxed/simple;
	bh=mnYIq3fsc+8UOtiRu6ooTnSbdD0fFaMQbWcEbRXXR/4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=GBNff6b2grCDDhJl5iPYOAEFhCBq2NU3W+Ypm4ukQZ8wwGhapVoulcM32x872YvStqjV8wqnn4SFctMODY53ZFN+j5Ij62YTAZiZy3P5DZVsBxq5ZuM1IJKmtT6OSi1RVxy/cwQOa6cyjDWfuna82jt8KX8bPtrSDXuv6Qxl6YM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bzwr1UA/; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 317EB1F000E9;
	Tue, 16 Jun 2026 21:11:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781644312;
	bh=Sbn7b3EvoIloLlpkA0MerNidhod12NG8oWsUuS3wCLE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=Bzwr1UA/sxtmTtlixGGUzDlav7L19oU8Zd3dAu8v0KWaoPwN8nllr9SNbuLYChAAM
	 lSCB1Fe5nwfc2z/nZMSTNqpZ7i1yqhRCsDvq+/ouvB7GD+EKrj9U9W2mWFQy9Qmjcn
	 ecYG5TGf/Vv8nyDhKTPhrw0Mi37YFApGn2INuv+ZrpoP5d0XzZYtshn8BRINmBCoeq
	 sQKChswxyqZ0fVzgE0edffCiIj6ctyN3E3fofPpoDb+33x2+U3yyQNuAWhAndbi5LG
	 NubbeXN07fVfmkGfDntJGiVqE0N9yHJqhld0CrwtDuuu51/hhtRGhWEe7ojbMqrHO8
	 DkIOOxNpg2x3Q==
Date: Tue, 16 Jun 2026 23:11:48 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Joseph Myers <josmyers@redhat.com>
Cc: libc-alpha@sourceware.org, gcc@gcc.gnu.org, linux-man@vger.kernel.org
Subject: Re: _ISOCxx_SOURCE
Message-ID: <ajG7DCFNQPXb11nr@devuan>
References: <ai1DVieT3gTr4J5S@devuan>
 <c357346a-ecd1-761e-47c4-5c1357b32c59@redhat.com>
 <ajBpIbEH_7KkJrld@devuan>
 <b22b20d8-b4bb-ce86-7865-87ac4ed7df25@redhat.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="7gwqmdlnx3wumzyl"
Content-Disposition: inline
In-Reply-To: <b22b20d8-b4bb-ce86-7865-87ac4ed7df25@redhat.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-6.76 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-5655-lists,linux-man=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_RECIPIENTS(0.00)[m:josmyers@redhat.com,m:libc-alpha@sourceware.org,m:gcc@gcc.gnu.org,m:linux-man@vger.kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,alejandro-colomar.es:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 91921695607


--7gwqmdlnx3wumzyl
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Joseph Myers <josmyers@redhat.com>
Cc: libc-alpha@sourceware.org, gcc@gcc.gnu.org, linux-man@vger.kernel.org
Subject: Re: _ISOCxx_SOURCE
Message-ID: <ajG7DCFNQPXb11nr@devuan>
References: <ai1DVieT3gTr4J5S@devuan>
 <c357346a-ecd1-761e-47c4-5c1357b32c59@redhat.com>
 <ajBpIbEH_7KkJrld@devuan>
 <b22b20d8-b4bb-ce86-7865-87ac4ed7df25@redhat.com>
MIME-Version: 1.0
In-Reply-To: <b22b20d8-b4bb-ce86-7865-87ac4ed7df25@redhat.com>

Hi Joseph,

On 2026-06-16T16:02:44+0000, Joseph Myers wrote:
> On Mon, 15 Jun 2026, Alejandro Colomar wrote:
>=20
> > Hi Joseph,
> >=20
> > On 2026-06-15T17:20:17+0000, Joseph Myers wrote:
> > > On Sat, 13 Jun 2026, Alejandro Colomar via Gcc wrote:
> > >=20
> > > > I was reviewing the feature_test_macros(7) page, and found the
> > > > documentation of the _ISOC{99,11,23,...}_SOURCE macros to be incorr=
ect.
> > > > And thinking about fixing that led me to think that the design of t=
hose
> > > > macros is less than ideal.
> > >=20
> > > Users should normally use -std=3D options with the compiler to get ma=
tching=20
> > > language and library features.  These feature test macros are mainly =
for=20
> > > niche cases with old compilers.  So I don't think any new user-facing=
=20
> > > design for them should be added (the C23 and later ones already use t=
he=20
> > > newer __GLIBC_USE style of conditionals in the header implementation).
> >=20
> > Makes sense.  Should I document that users should avoid setting them
> > directly (and that they should use the corresponding compiler flag)?
>=20
> Indeed.

Thanks!  Will do.

>  Also, users are probably using a compiler defaulting to=20
> -std=3Dgnu23 or -std=3Dgnu11 so the older _ISOC99_SOURCE and _ISOC11_SOUR=
CE=20
> are doubly irrelevant for that reason.

I was also wondering...

If one uses a modern GCC with an old glibc (which doesn't know C23),
then, using -std=3Dc23 will be problematic: the compiler will enable C23
language mode, but the library will entirely and silently ignore
_ISOC23_SOURCE, because it doesn't know about it, thus falling back to
C89 mode (I guess), and thus will for example enable things like
gets(3).

If the way to pass the language version from the compiler to the libc
were through a single macro, then the library would be able to at least
diagnose, and/or turn on the latest dialect it knows about.

Is there any limitation of which libc versions are supported by modern
GCC?  Is this a bug?


Have a lovely night!
Alex

>=20
> --=20
> Joseph S. Myers
> josmyers@redhat.com
>=20

--=20
<https://www.alejandro-colomar.es>

--7gwqmdlnx3wumzyl
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmoxvA4ACgkQ64mZXMKQ
wqkzVQ/+NJ8hHaPbImtle/t+FAP4aY37eY0Id5tuI/VsAZb1WLmHFeTgscifC6D8
suY/vCbVFh6SPtc2wwutVRUo68ZpqsedYG5nMCYdpeIyNePO1xhEnq1aHI7xl2iB
StirtfyhAz0kBI0Uri0mJSLzkXf6AUXNMtZgIacDUU1ICMGCGr022ufKVu3FP502
PDAVBmmJA4YZgxcJNtfv/6hIkFJ2MXKAU0P9VgqhrbYPlLGJEP+jfQfJUVoX7fvi
efa+miGrve6pIQxhRvEaLTP1xLUdTfel3LYkHRbPACHMGWwqiXsry5++1j4S4Gx4
05Otgp4g4Yok4OwZxG+6PG3tM3qVWzW0qPeuxrqTgspqCAtbfk3CklPUmOLOzMka
MD91kNrGw1H1FXzUDcGf+aXoQW+qvtNy6DnKNAlTyPyyh8dmk05VJeLVki1ZJF+c
zNGN4iFWuTuD7wyXq3SrzK+S4ZniqDAKypL52ueaeaxc6s+h3et4Q6HBzqH0HMFB
yTnMCxTCU8GqEpLqp4IzWQsrB3lxmyGRDCCpoQzuv9sHxfoIelf41uUKarTasKj3
zSJtvH2IR7PXkEL7UZ3ZNDQPnXCfPuZYvR24easWqm+/MiYmTzupq2mHvs7G8v6o
22CLg6QlXgT0e656Kb6ioC5TdUvYMjzEhqIWKmXNnokkbpgd39U=
=8oAN
-----END PGP SIGNATURE-----

--7gwqmdlnx3wumzyl--

