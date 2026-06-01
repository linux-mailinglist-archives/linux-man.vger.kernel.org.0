Return-Path: <linux-man+bounces-5640-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CDXSBG8EHmpRggkAu9opvQ
	(envelope-from <linux-man+bounces-5640-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Tue, 02 Jun 2026 00:15:11 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FD89625D19
	for <lists+linux-man@lfdr.de>; Tue, 02 Jun 2026 00:15:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 05B8A3028B59
	for <lists+linux-man@lfdr.de>; Mon,  1 Jun 2026 22:10:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EF8C11A6839;
	Mon,  1 Jun 2026 22:10:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qo+A90yF"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4A11360ED8
	for <linux-man@vger.kernel.org>; Mon,  1 Jun 2026 22:10:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780351852; cv=none; b=oHbxyhNDzHFj0CXRSpyZWbLyWQkQME9YMnW9W74G09ccUxewxErRSJEWl1ICzgVgMB7HHfFp7Q3rDTlkdXCk6IEGi1CgAEsskeVElJaqSifea9Z+7RkZI/H80Lrrnd5eq7HdN9/fjBeJO4GCKQSj0rWtdALHgbzPf1hYkoFlpek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780351852; c=relaxed/simple;
	bh=FByvamyeMORpluci6A+a3Q3D9yR2pBQDIuG+8KlAUt8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=dSVwPACwQhANfKpE/hmPRRF17T6e3vUZ3WRpnx/hkFUOrbsyJuxk6tmXdZNeiCe73IwIjnS1ODXJ1/imyy1lQ+jQswGEf0wx+Oc/IE1J+KpppQa+D8CS6Z8MD7l9HFRp7/TeywRgNPtStdmu4A9OpAHIWVJgZw90IIoFqY8LL/A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qo+A90yF; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 708061F00898;
	Mon,  1 Jun 2026 22:10:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780351851;
	bh=aNuXJ6U6SVgYH94YFdsBrWGK9bD/zvYSd4B884fXcHs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=Qo+A90yFEmihr4WHDBCQnO4N5IKVQKrz3694eTEc6O/hKqCIMsASvRcUgqarmVfBo
	 GJBdZMZwbUDY5fZ6v7p09dChKBskzbWA1KHVtpTIE1O6WB3UKYz9rVTWpVNCiUc46n
	 KHFhaT1fmN3VNVwxyEqSMCbgSRE1zggGydFbHXnMX0QM+U6XC+I6MxGRTyUYxQ9N94
	 2BA+18ng00xBaFwcBoqmGVCoZ0LAL15y9PSveiT2+ZqCXQxpLw1BUxDL5NHLIIE6qy
	 ZHdGkDA0XYYuKYjyvlOzISpCR4Pm8pmdWpFS48scYjWEfVB7v3qsa+PLn7VbuJrePv
	 ecJTtwp8m8m+Q==
Date: Tue, 2 Jun 2026 00:10:48 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Florian Weimer <fweimer@redhat.com>
Cc: Adhemerval Zanella Netto <adhemerval.zanella@linaro.org>, 
	libc-alpha@sourceware.org, linux-man@vger.kernel.org
Subject: Re: non-standard const-preserving string APIs
Message-ID: <ah4CutusqxigD5kW@devuan>
References: <agizh06CdDnhDvAB@devuan>
 <c57574d1-9031-4ae6-8cd1-0e74931b9af6@linaro.org>
 <agnIOfwI5KKGwS_I@devuan>
 <0c1e8b52-68d3-4be4-84aa-8ab5bdfee29a@linaro.org>
 <87h5nmo5cz.fsf@oldenburg.str.redhat.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="uqvmpb4taf4tbxc4"
Content-Disposition: inline
In-Reply-To: <87h5nmo5cz.fsf@oldenburg.str.redhat.com>
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-5640-lists,linux-man=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[linux-man];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,sourceware.org:url,alejandro-colomar.es:url]
X-Rspamd-Queue-Id: 5FD89625D19
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--uqvmpb4taf4tbxc4
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Florian Weimer <fweimer@redhat.com>
Cc: Adhemerval Zanella Netto <adhemerval.zanella@linaro.org>, 
	libc-alpha@sourceware.org, linux-man@vger.kernel.org
Subject: Re: non-standard const-preserving string APIs
Message-ID: <ah4CutusqxigD5kW@devuan>
References: <agizh06CdDnhDvAB@devuan>
 <c57574d1-9031-4ae6-8cd1-0e74931b9af6@linaro.org>
 <agnIOfwI5KKGwS_I@devuan>
 <0c1e8b52-68d3-4be4-84aa-8ab5bdfee29a@linaro.org>
 <87h5nmo5cz.fsf@oldenburg.str.redhat.com>
MIME-Version: 1.0
In-Reply-To: <87h5nmo5cz.fsf@oldenburg.str.redhat.com>

Hi Florian,

On 2026-06-01T13:41:16+0200, Florian Weimer wrote:
> > I will try to take a look, but I recall from previous weekly calls
> > that Florian has raised objection that this does not solve the
> > overflow issue (not without further extra changes).
>=20
> <https://inbox.sourceware.org/libc-alpha/lhums05zjuh.fsf@oldenburg.str.re=
dhat.com/>
>=20
> > I am not sure if he still keep his objection, nor if it is would a
> > blocker for this new api.
>=20
> I still think we should fix it.  Maybe rename the =E2=80=9Cdone=E2=80=9D =
variable in the
> vfprintf internals to =E2=80=9Cssize_t=E2=80=9D, and then gradually fix t=
he compilation
> failures, investigating whether the change is correct in context.  We
> need to add some early bailout in case INT_MAX is crossed for the
> non-aprintf case.

Would you mind at least confirming whether the current patches are OK
modulo the EOVERFLOW issue?  It's the first time I touch many of these
files (e.g., abilist files), and I'd appreciate if you reviewed it so
that I can forget about that part.


Have a lovely night!
Alex

>=20
> Thanks,
> Florian
>=20

--=20
<https://www.alejandro-colomar.es>

--uqvmpb4taf4tbxc4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmoeA2cACgkQ64mZXMKQ
wqmV1A/9HPXHAj7mvCCvPIHUs0asnqLzQri3Deo7YpEHBQR+Sut2wF1mhYndscfc
n+InDmrJdXHzSVmKZV9yRrWOUAuEAeDPkULINhAqKQ+0wv1nsgq++ddkxA9ZWy6w
gUQMlMp5K6Za5TimGzqJm+0WbHiZmdhsDmarSrCRG9HsZJFxJPxAnvg9OyRhjKF6
zp5wH8XnHHmGbpydm+DFpdbFh823A+uiAmyciDDaUHyuYnSQhedyrRRP6A696ZN/
Q7f1rl+WdDXor3iPHJ725BywFvH37qFo4QfL/MLn0xpqnfPxaMsmT8CiEkzr/05+
rT9ZmnrY03uokYssayV3jcnydBmlkpnD5HbPM3ULPqPlM00U2g6yKCTmKVKs3NAt
NUFrZIo3L0nLoGyBjpRMyQdVku792ZFHk+wczVPDSJ3YP8OM9BcJQX8y/sZ4Q3Y8
b+FnX+1k0KUCAR4aVlMtSbHwysFDbpG64RHYJVwVI0NwSp6H4Kfp4BhXbochs2q7
rM5dhGxT29IpVYkiJ5l65yOOb73NJUMAQpx9MaenJLljf5SSUE3ErpdnxJYLH6M6
yLtFGnfX8jUJPebMlNM3lWyXnbn6UzpJAHKeki4yDu/6xq1Ppg3R7c0U1f8VcK0N
PQ3MnJcNqQYXZcVRac4NeGKwrm1ISAqiAPCBll3wCKt/sx5zvBE=
=1GB5
-----END PGP SIGNATURE-----

--uqvmpb4taf4tbxc4--

