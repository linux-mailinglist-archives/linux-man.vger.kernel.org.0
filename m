Return-Path: <linux-man+bounces-5403-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wN/dHV/87Gl0eAAAu9opvQ
	(envelope-from <linux-man+bounces-5403-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Sat, 25 Apr 2026 19:39:43 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id AB4544670BA
	for <lists+linux-man@lfdr.de>; Sat, 25 Apr 2026 19:39:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 61CD0300E3B0
	for <lists+linux-man@lfdr.de>; Sat, 25 Apr 2026 17:39:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8986F3537D9;
	Sat, 25 Apr 2026 17:39:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YMG2wukx"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D00C2AE78
	for <linux-man@vger.kernel.org>; Sat, 25 Apr 2026 17:39:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777138780; cv=none; b=QBv8CSU3LaFwBlwco1kcxgCiG+6EEWObTfoaDJwRld/BlFxb/gnhTZyc0PC/NhNWB4M3nwL2BSRuyjwxSg3CtNredkk0UfvoU58LufzWWycq9oqlEEijfhDA9/hIfX7nNfuBhOYk1EIBqjGtmlH5acf/kIau3nxWQP/3JRY3Xs0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777138780; c=relaxed/simple;
	bh=F61X6Vv1j3vE6mBsHrzrwtovVK8NJeYqloYhCl4etqg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Kg7H0mwAcRU1tPY0XDfWCEqwVfKEbjjwBTEJX9j015v9NCWMDNYr6fYxIdwgiaW4Y8Zn8GVRIxSnanpjGw4x9+7QiGOFMmIh2tHRxXs1G+lCyS4YX6MFU3vNC0FVpwpcHuiPkOd0VpOVXKmDmNbdoxDvlt8tfqa/gS2R1kRrX2M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YMG2wukx; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E4F0AC2BCB0;
	Sat, 25 Apr 2026 17:39:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777138779;
	bh=F61X6Vv1j3vE6mBsHrzrwtovVK8NJeYqloYhCl4etqg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=YMG2wukxMZduQDY8tewr3Y4WyMcRgowooERVn4rguya9uOByINzEoaIePDleBMLmE
	 uUnLiuv+mi2dpNosJFPHTTp4dtBcLihZMq3NPvoND/X+UaEfqNTvxWeZQUz2E2shbw
	 9JUWK7yFysPbHgNTJf1YNlOpHnsSBePaUnZBbx55S7R5xuDqrvOHgpg4dn67K9lXIW
	 DV1AfkUUjUGJQ/7pB9ljiCJzzDUosgBHnnPIKWwprJNL7RcYh64wJnurDmxVXnp9vB
	 UHNKVYkqf+/ZGbFRccV26idc8IIKyqTJIIrQLCs8ayShC0mbpnqCHVhDoBKvRWCRCM
	 Z2FgN67BJsNIw==
Date: Sat, 25 Apr 2026 19:39:36 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Dorjoy Chowdhury <dorjoychy111@gmail.com>
Cc: linux-man@vger.kernel.org, brauner@kernel.org, jlayton@kernel.org
Subject: Re: [PATCH 1/1] man/man2/openat2.2: Document OPENAT2_REGULAR flag
Message-ID: <aez7bEeb7eceg5rI@devuan>
References: <20260425134048.62616-1-dorjoychy111@gmail.com>
 <20260425134048.62616-2-dorjoychy111@gmail.com>
 <aezULCZu3eZhdUaq@devuan>
 <CAFfO_h7eZdMUdgYhYc3pEYnYCWK=q6qFis0UmuK=4oh90ADRDQ@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="gcumdkmjcrfvuihl"
Content-Disposition: inline
In-Reply-To: <CAFfO_h7eZdMUdgYhYc3pEYnYCWK=q6qFis0UmuK=4oh90ADRDQ@mail.gmail.com>
X-Rspamd-Queue-Id: AB4544670BA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
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
	TAGGED_FROM(0.00)[bounces-5403-lists,linux-man=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,alejandro-colomar.es:url]


--gcumdkmjcrfvuihl
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Dorjoy Chowdhury <dorjoychy111@gmail.com>
Cc: linux-man@vger.kernel.org, brauner@kernel.org, jlayton@kernel.org
Subject: Re: [PATCH 1/1] man/man2/openat2.2: Document OPENAT2_REGULAR flag
Message-ID: <aez7bEeb7eceg5rI@devuan>
References: <20260425134048.62616-1-dorjoychy111@gmail.com>
 <20260425134048.62616-2-dorjoychy111@gmail.com>
 <aezULCZu3eZhdUaq@devuan>
 <CAFfO_h7eZdMUdgYhYc3pEYnYCWK=q6qFis0UmuK=4oh90ADRDQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAFfO_h7eZdMUdgYhYc3pEYnYCWK=q6qFis0UmuK=4oh90ADRDQ@mail.gmail.com>

Hey Dorjoy,

On 2026-04-25T21:07:04+0600, Dorjoy Chowdhury wrote:
> > > +.BR openat2 ()
> > > +fails with the error
> > > +.BR EFTYPE .
> >
> > Hmmm, this error code is new to me.
> >
> >         alx@devuan:~$ errno EFTYPE
> >         alx@devuan:~$ echo $?
> >         1
> >         alx@devuan:~$ man 3 errno | grep EFTYPE
> >         alx@devuan:~$ grepc EFTYPE /usr/include/
> >         alx@devuan:~$
> >
> > I don't see it documented, nor defined under </usr/include>.
> > Is this error code available in user space?
> > Is it a new error code?
> >
>=20
> Yes. This is a new error code added in the patch series i.e., if the
> path is not a regular file, then this new error code is returned from
> the system call. Does the new error code need to be included anywhere
> else for man pages?

Yes, it should be documented in the errno(3) manual page.

It should also be added to glibc's <errno.h>, of course.

However, that can be done after the code has been merged to Linus's
tree.  But you could write the documentation for errno(3) already.


Cheers,
Alex

--=20
<https://www.alejandro-colomar.es>

--gcumdkmjcrfvuihl
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmns/FEACgkQ64mZXMKQ
wqnqvA//cL5/2iFHdFrQ/9r5NpmOwIRVqWGHdU2l9wAdPkFa3DHiw89UIAip9On9
hZHODglgYOS6Y3G7s9LS72XnVjj9V6BFkW5hODdBMJjj9E7b9us4RDc1RyN6C81W
wnGKpFKrQBGslPPcnM1L5jE4CJjgeC89qJmK3u9ETVbgL5YppeXi7Hw3wNNQyv22
CFnmAz9Fe84sByNDwpBnnW+VrvFqkl+4y9+wGF9yHkfzH0AVNDWF1SqZeHHoGMI8
BMLRT5PqYDR2Rf+bveVGgonN/BSOiEgdFR8hpdtT8q6O1w5wlQ5DdS2h4+W+GfLl
IKGuGhFvWe3boskMxhWoM/JmVwuz4jWqOiBfsTflmmbEa6LUcbk7gKr+7Yyj2dmo
btmR4wGx7beiND+RUasd6cCc8OQIuPUXpjxgRAyGqS7RtP2uJSmSMMbkKIhw8GNY
Y8o4c19PSqn3AlTFjr6PsxatlSsNK6aCleEbTWOiK7+8M+PP+PS2WNB2LQT6j/g1
GnR6CttIYGXSHZG9NAZ9nRwFqEy7BdJsMJNQhx0MfSjVDPMeRPG++JnKUss7DRsj
fqzPGtZjXzuvrwjLGNbkGxFd65m3h9g5TKVx+B5NfoJ+tPRBVXtSVkwDMDePJJpv
OPHLTY9S7Av3xhsOQD664j7cSKJCKrQhZE9Z4+HP4pdS9RuSNJE=
=K6pl
-----END PGP SIGNATURE-----

--gcumdkmjcrfvuihl--

