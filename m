Return-Path: <linux-man+bounces-5225-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ILSIAao1nmmbUAQAu9opvQ
	(envelope-from <linux-man+bounces-5225-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 25 Feb 2026 00:35:06 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E73518E286
	for <lists+linux-man@lfdr.de>; Wed, 25 Feb 2026 00:35:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6545F3051CBD
	for <lists+linux-man@lfdr.de>; Tue, 24 Feb 2026 23:35:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9E0EB363C55;
	Tue, 24 Feb 2026 23:35:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fnoXSiSj"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 619B6363C4E
	for <linux-man@vger.kernel.org>; Tue, 24 Feb 2026 23:35:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771976102; cv=none; b=oSahhgygbuS4vyqksHnIaNLGGvM9zEbb0guJ+NQvT7hAX+PbbcJ8/yxu/mJJ2/u+dvVTiYQegS//bEyzmU6H3IsYc8NyZMqYermUFWVUIhWesDQBPxRKm6+HgFG1uOUohDkbmC3ICixVZS7D7EA4TdoxW3rfskitj66mQDp2tBc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771976102; c=relaxed/simple;
	bh=Fj4DsHWGeAz6fzi0egTXpDIy7RNt0GxwXKkffpsHXec=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=IN5LaE4BxvTRbUAemP7OucKfH0eJVoz5KP/QvGlvcxtF7IWat9mOJEopBSazz9GSPXc5vfJvvPl4ZczaX0mPw22Uz7HMGIcpXSosNisyM5dF93tdgoqkuY4a188TipR9mhGZPaAAumAaURJs3cI5x20BSXirAaqHNjLmfXliueQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fnoXSiSj; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4C850C116D0;
	Tue, 24 Feb 2026 23:35:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771976102;
	bh=Fj4DsHWGeAz6fzi0egTXpDIy7RNt0GxwXKkffpsHXec=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=fnoXSiSj98/LWl8OSv04hEPO6TivM88j93n3sozZxVJuTt8xU0GhIle1epuWin0WV
	 uPrLQUZ9VkKzorCtL21fOqhKQblSuG/LYveC2HXNsSqI41oweVmIIbsCxvpwRnklMn
	 3PYc5jkE4nD2Pcw5AZWIdRYwIbIZxiLC44bOIJ8fRsbJRJRmLqXU7GFE+FLrcMh07p
	 uF9kQ3ryQGZPnXfElC8qe8D8FJoMdabthf8TM5axjyHoh/GleNuaCssfmu00o2tD8D
	 cOsq2oyIW+juuxBvFJnFANcZXiIozfQZEZd1TE9SbpxBfWJ2+qa6qTT6OizaWUIdFO
	 uNGwiHoRhoXAQ==
Date: Wed, 25 Feb 2026 00:34:58 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Paul Eggert <eggert@cs.ucla.edu>
Cc: linux-man@vger.kernel.org
Subject: Re: QChar and QVoid for strchr(3), memchr(3), et al.
Message-ID: <aZ40B_03Qigx680z@devuan>
References: <aZ2xBQcy7mMEXW_b@devuan>
 <67824728-313a-4f73-be2c-ad41697925b5@cs.ucla.edu>
 <aZ4YhDCzMOnokXH9@devuan>
 <c66fb0f4-5814-4979-a556-b480c5222ba8@cs.ucla.edu>
 <aZ4uoYdrTOidHhmh@devuan>
 <ba68e79b-c86c-4cd1-b826-fd67f0cd0878@cs.ucla.edu>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="qr6oq2ybp74swg7t"
Content-Disposition: inline
In-Reply-To: <ba68e79b-c86c-4cd1-b826-fd67f0cd0878@cs.ucla.edu>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	TAGGED_FROM(0.00)[bounces-5225-lists,linux-man=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 4E73518E286
X-Rspamd-Action: no action


--qr6oq2ybp74swg7t
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Paul Eggert <eggert@cs.ucla.edu>
Cc: linux-man@vger.kernel.org
Subject: Re: QChar and QVoid for strchr(3), memchr(3), et al.
Message-ID: <aZ40B_03Qigx680z@devuan>
References: <aZ2xBQcy7mMEXW_b@devuan>
 <67824728-313a-4f73-be2c-ad41697925b5@cs.ucla.edu>
 <aZ4YhDCzMOnokXH9@devuan>
 <c66fb0f4-5814-4979-a556-b480c5222ba8@cs.ucla.edu>
 <aZ4uoYdrTOidHhmh@devuan>
 <ba68e79b-c86c-4cd1-b826-fd67f0cd0878@cs.ucla.edu>
MIME-Version: 1.0
In-Reply-To: <ba68e79b-c86c-4cd1-b826-fd67f0cd0878@cs.ucla.edu>

Hi Paul,

On 2026-02-24T15:19:14-0800, Paul Eggert wrote:
> On 2026-02-24 15:05, Alejandro Colomar wrote:
> > > > How would you document strchr(3)?
> > > I'd do what the standard does rather than reinvent this particular wh=
eel.
> > So, you'd use QChar?
>=20
> Yes. As confusing as QChar/QVoid is, it'd likely be more confusing overall
> for us to invent our own notation.

Hmmmm, okay.  I see conflicting opinions (others prefer C++-like
overload notation).  I think I prefer QChar/QVoid, but am not convinced
of which to use.

Whichever we use, we need to distinguish cases like strnul(3) from cases
like strchr(3).  I think I'd do it like this:

	strchr(3)
	SYNOPSIS
		#include <string.h>

		QChar *strchr(QChar *s, int c);

		#undef strchr
		char *strchr(const char *s, int c);

The above documents that you can #undef the macro, which provides the
function with the different prototype.  And then strnul(3) would only
have the QChar prototype, as there's no function.

	strnul(3)
	SYNOPSIS
		#include <string.h>

		QChar *strnul(QChar *s);

What do you think?

> Whichever notation we use, we need to
> explain the business with void * arguments anyway.

Hmmm, yeah, this and other corner cases lead me to think QChar/QVoid
would be better.  It would allow me to write a manual page describing
those.  And I expect people will eventually get used to that syntax;
it's a matter of time.


Have a lovely night!
Alex

--=20
<https://www.alejandro-colomar.es>

--qr6oq2ybp74swg7t
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmmeNZwACgkQ64mZXMKQ
wqlwfxAAtLg/4U6ahnOplNcthCatlZl6kTgqJYKSfLs3SlUhsMW96GohhEpQdDIT
umbZ6lozN8MwTYxekBnTPkCl85X9JsiMUYJpsx339nJ3ivCMrNPwBbDF8oURuZ23
fIxtVoH/mNqihksetb1FuLS5IE6RCdO/NqPNqiAw2dIep/dumNjIQrzdEETkt/Cw
1urqzYK+Fl3JHTF+0FoSxgZwsAND3QwzhjFjTl8RgqXX84YZKbJYeYhvL/tEkbrL
vo+pEjSiCMpsZr/cM0JGSSlP14iaixp8NF4jt8aqSERXxdvy2VIiDaqoc9SsJQGm
LnERbfUcDr7W+XcFFmr2zuZwbsuUArF8tclOvsJzTojpFGmlMbpVtfTp+xpaHJcQ
v2nM+6XOA8nOL6SAAbg1aEyFq1Nf9ueiFYFF1jqXp6cZ04S4kIqnIaFId1HyG6uu
Mu2fFV0Ft+Mbrltice5SAw86pfHhizv9hwCEFRVVDNODKaBYf6lMN3krnBTnVyIK
9pxD+McJ6syuOhV2N9V826A6rYy2B7LMMKM6aDZNDey4GsSKsICRt9N1kB/E5p1s
8CfF0I7cD5uxceygbQqVH5S3EAoGVz+jH7A5R6408u1lMLacv7YAVF46EDbljtdl
SZH6zd8GncX1RdvW2cd9B4dgCPNHph7PeIXZoo4Ry6oAHejTkkg=
=wVbd
-----END PGP SIGNATURE-----

--qr6oq2ybp74swg7t--

