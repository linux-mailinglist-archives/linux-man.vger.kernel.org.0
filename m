Return-Path: <linux-man+bounces-5076-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OPJDBVpjiml6JwAAu9opvQ
	(envelope-from <linux-man+bounces-5076-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Mon, 09 Feb 2026 23:44:42 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B0F21152FC
	for <lists+linux-man@lfdr.de>; Mon, 09 Feb 2026 23:44:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id B5E783006938
	for <lists+linux-man@lfdr.de>; Mon,  9 Feb 2026 22:44:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A4417315760;
	Mon,  9 Feb 2026 22:44:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rFCPUJzl"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 666A3314A94
	for <linux-man@vger.kernel.org>; Mon,  9 Feb 2026 22:44:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770677077; cv=none; b=M3yVLwvTrYI16YnQtSN9IE4qAxbPqJpuquW9ZwEfDms1uG7PaTz6P6ZXNT1El/thD+Jn0fLDZqToAEKYEk0eibeqyUpC+qK9zzc2RumiGc+F9D/vKMYD5UUI6xIkh44c9+/IxFv4kY5PjzU1YA59c6oCMepzx5Pa5GMbuVbDBKM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770677077; c=relaxed/simple;
	bh=QYCbhxHjb6EkKotorqlegutiBQO8aNRguOYOsEFDvZU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZW94SSJyD6qe3sVWsPWVDY+t8xeBipVRN8h0Ijl3LFfEX4JyOcEs6QHq1XsrxzMEhEyACtxI+75OWnNKFmx6vgQSx/pH8VUjMr7gOx7ceOfpuQLUDOQJYAt4/oWGC+psXRjOAcYFSybKMC4FpWcgvu4p96wDMRZse2l57AZowqY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rFCPUJzl; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4EFB0C116C6;
	Mon,  9 Feb 2026 22:44:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770677077;
	bh=QYCbhxHjb6EkKotorqlegutiBQO8aNRguOYOsEFDvZU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=rFCPUJzlZUBu0X5z5O6bbIV1N8FLcPfFOuBYNL/djiNKHOwUHoC83i5uCMZAjh0P+
	 zw/0MUU1hYTFY7+OosJn2tz2S7pjehw6yCRBpFQYkya9/ZlpH0UNZbZ0UVSCmUVfpI
	 bgSSYOhZJIkwtuq7Eo5xLQBY8uK9/Urs2u60lhHZ5QAK6uxPpCkIfoJRqLJfMPXRlt
	 3Uw62d8UW10AUg7yA/1KrgQhXua5CFyn75fYYZMhSFNrV33Cm0V8FaPq7UI2qDvB1b
	 QqKHcySpxqAq43sHKmNpbivuUZwes73A8h9Ra9fq4RBOdOG6klwnZBoLyxGH+y2ZJW
	 TU8x1T46DayZA==
Date: Mon, 9 Feb 2026 23:44:33 +0100
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] FUTEX_WAIT.2const, FUTEX_WAIT_BITSET.2const,
 FUTEX_WAIT_REQUEUE_PI.2const: wfix
Message-ID: <aYpjGryOvNHkZ4R5@devuan>
References: <2ekfzlznhv7yld7dghj5rt7uvenp6uji5jrmfm6xoije6ycyny@tarta.nabijaczleweli.xyz>
 <aYphfw5rQFeW_txe@devuan>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="cjp2pnrnuzhl3lsz"
Content-Disposition: inline
In-Reply-To: <aYphfw5rQFeW_txe@devuan>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	TAGGED_FROM(0.00)[bounces-5076-lists,linux-man=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[linux-man];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[alejandro-colomar.es:url,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,nabijaczleweli.xyz:email]
X-Rspamd-Queue-Id: 3B0F21152FC
X-Rspamd-Action: no action


--cjp2pnrnuzhl3lsz
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] FUTEX_WAIT.2const, FUTEX_WAIT_BITSET.2const,
 FUTEX_WAIT_REQUEUE_PI.2const: wfix
Message-ID: <aYpjGryOvNHkZ4R5@devuan>
References: <2ekfzlznhv7yld7dghj5rt7uvenp6uji5jrmfm6xoije6ycyny@tarta.nabijaczleweli.xyz>
 <aYphfw5rQFeW_txe@devuan>
MIME-Version: 1.0
In-Reply-To: <aYphfw5rQFeW_txe@devuan>

On 2026-02-09T23:37:18+0100, Alejandro Colomar wrote:
> On 2026-02-07T20:18:38+0100, =D0=BD=D0=B0=D0=B1 wrote:
> > Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.=
xyz>
>=20
> I see the same issue applying this patch.  I'm apt-get upgrading to see
> if that's fixed.  I'll come back in a moment.

Humm.  No new git version is available.  I don't know where the problem
is coming from.  Would you mind trying your own patch?  If it works,
I might need to report a bug to git(1).


Cheers,
Alex

>=20
>=20
> Cheers,
> Alex
>=20
> > ---
> >  man/man2const/FUTEX_WAIT.2const            | 10 +---------
> >  man/man2const/FUTEX_WAIT_BITSET.2const     | 10 +---------
> >  man/man2const/FUTEX_WAIT_REQUEUE_PI.2const | 10 +---------
> >  3 files changed, 3 insertions(+), 27 deletions(-)
> >=20
> > diff --git man/man2const/FUTEX_WAIT.2const man/man2const/FUTEX_WAIT.2co=
nst
> > index 7d6681c1c..94cf4a997 100644
> > --- man/man2const/FUTEX_WAIT.2const
> > +++ man/man2const/FUTEX_WAIT.2const
> > @@ -102,20 +102,12 @@ .SH ERRORS
> >  See
> >  .BR futex (2).
> >  .TP
> > -.B EAGAIN
> > +.BR EAGAIN " or " EWOULDBLOCK
> >  The value pointed to by
> >  .I uaddr
> >  was not equal to the expected value
> >  .I val
> >  at the time of the call.
> > -.IP
> > -.BR Note :
> > -on Linux, the symbolic names
> > -.B EAGAIN
> > -and
> > -.B EWOULDBLOCK
> > -(both of which appear in different parts of the kernel futex code)
> > -have the same value.
> >  .TP
> >  .B EFAULT
> >  .I timeout
> > diff --git man/man2const/FUTEX_WAIT_BITSET.2const man/man2const/FUTEX_W=
AIT_BITSET.2const
> > index be40d57c6..5f165adb4 100644
> > --- man/man2const/FUTEX_WAIT_BITSET.2const
> > +++ man/man2const/FUTEX_WAIT_BITSET.2const
> > @@ -147,21 +147,13 @@ .SH ERRORS
> >  See
> >  .BR futex (2).
> >  .TP
> > -.B EAGAIN
> > +.BR EAGAIN " or " EWOULDBLOCK
> >  .RB ( FUTEX_WAIT_BITSET )
> >  The value pointed to by
> >  .I uaddr
> >  was not equal to the expected value
> >  .I val
> >  at the time of the call.
> > -.IP
> > -.BR Note :
> > -on Linux, the symbolic names
> > -.B EAGAIN
> > -and
> > -.B EWOULDBLOCK
> > -(both of which appear in different parts of the kernel futex code)
> > -have the same value.
> >  .TP
> >  .B EFAULT
> >  .I timeout
> > diff --git man/man2const/FUTEX_WAIT_REQUEUE_PI.2const man/man2const/FUT=
EX_WAIT_REQUEUE_PI.2const
> > index 0ac1cebe5..4fa1520f6 100644
> > --- man/man2const/FUTEX_WAIT_REQUEUE_PI.2const
> > +++ man/man2const/FUTEX_WAIT_REQUEUE_PI.2const
> > @@ -72,20 +72,12 @@ .SH ERRORS
> >  See
> >  .BR futex (2).
> >  .TP
> > -.B EAGAIN
> > +.BR EAGAIN " or " EWOULDBLOCK
> >  The value pointed to by
> >  .I uaddr
> >  was not equal to the expected value
> >  .I val
> >  at the time of the call.
> > -.IP
> > -.BR Note :
> > -on Linux, the symbolic names
> > -.B EAGAIN
> > -and
> > -.B EWOULDBLOCK
> > -(both of which appear in different parts of the kernel futex code)
> > -have the same value.
> >  .TP
> >  .B EFAULT
> >  .I uaddr2
> > --=20
> > 2.39.5
>=20
>=20
>=20
> --=20
> <https://www.alejandro-colomar.es>



--=20
<https://www.alejandro-colomar.es>

--cjp2pnrnuzhl3lsz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmmKY1EACgkQ64mZXMKQ
wqmX6xAAqVjZcNbSIXTet8e/dkLV3FCOGL+pgbd+UTNUnhvoK2SY5Z+SeQ9XeSXS
KakkGVUDHp3ae+/BIWugWehliKIuEbylHjVAGugMXDrbOYK0N7q0QDaaVIRxK3jU
txlAXFZbTzP0QYLbFeo6QC4QFUGUYcwzhBDO9+dj+MWSg8VwV13nH/JzPIa2nHcp
8SQV68Pk6BjoQ6LKtTU6iRtm/zHyBAYpZN8Uy+oCYJeK4e8oTtIbkaV2qruK3F43
SZBZ4cXh2uQsjrrbxrF8KrHL7fDGFhasLJ6kb6ga2qOFZvCsBRxyCFnN5XKdVpSX
bt+HR0Eq6B12oMSy0NbImCxZN5nr+LJ/VEF5csoSeq12XTf4X6ZVuCjaOb6qEPKi
B7WoydtAwTRD6mlCOTc0BWpTlU2Gj1PX4qRvKDlBTasqVAGaEYKKr9q/v6AhM0bj
8txVJjSldPWeDs75TAFfd5axCll+B/au72LZmHiw8ht4zuFtmznq6N8axlc+Olre
pq6vSxpEnv0eHR2RzxgcQUb+0hZXlRGC0PlVTYkj1SqbUbt904t/w9EAffOZRa8t
dIrqnW8jIMagwBKAzrM9CZAtANdGAY3hgHtGxNpj3WVnxVtgIFXnENNmPbMaTh2/
Ymx+xsvFJ+i6jz/vBFBvCeduPOUkElyM6seAjosYK1a0agFKivE=
=EqKB
-----END PGP SIGNATURE-----

--cjp2pnrnuzhl3lsz--

