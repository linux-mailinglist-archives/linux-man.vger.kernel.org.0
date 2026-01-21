Return-Path: <linux-man+bounces-4891-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sAGZI0ztcGk+awAAu9opvQ
	(envelope-from <linux-man+bounces-4891-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 21 Jan 2026 16:14:20 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id F012559006
	for <lists+linux-man@lfdr.de>; Wed, 21 Jan 2026 16:14:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 9D9C0A43EB2
	for <lists+linux-man@lfdr.de>; Wed, 21 Jan 2026 14:54:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5E74848B373;
	Wed, 21 Jan 2026 14:41:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YXtgvSPP"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C9E949553F
	for <linux-man@vger.kernel.org>; Wed, 21 Jan 2026 14:41:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769006518; cv=none; b=qGT8FhEi35XOUW/XW82IlQ8SBGkKJTeuPMz1gnn0c/MDb6O4ApGYqvg2yXqR3mOJk7Ajgmp8Yh1IckNF3lDFqYDWTLleWD7KpUucRZCiuq/g3K2WCCWwLItso+rl07LZjH3TpIuPluSehDOFY+q3La8p7oDTY7hP5y74xRbWf8Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769006518; c=relaxed/simple;
	bh=appWuqNGY/GFbMzEFna0fxnURwnEA2v01s1eaBx3L8g=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=TKIqdt380ho2OgpB5ZSZaGq/U2QVIhJ2J8Y9sXHxJ+sAeB/vr6/l0AORg8Bjz6Es9r6ePBfwuQ0/niYqWjUq+K4zIaVtsVGcVl0PuzZktan7Lgi7xSJnxHFcNHVT5qgVqPaM3jEw5pthPhGgTXTDjdwDwH0gLa6VxIF11AXRBv0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YXtgvSPP; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CA59DC4CEF1;
	Wed, 21 Jan 2026 14:41:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769006517;
	bh=appWuqNGY/GFbMzEFna0fxnURwnEA2v01s1eaBx3L8g=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=YXtgvSPPIi546hHoeOs7hTupgi5vJNbSSXBp2I76gbt7q0DRlyAUtMZ/f2PZz/YFi
	 hi5BQXWQBpWiYygbGFucQRANsUQXn5YFm4bvlrL9beGmEWVRVgg93kIK8piQnFB7rc
	 FgIH0W13LgQ1Gbqq7VMfUTFFqi4Ema5+dFfpokYlC6sQK0Ac4pkykc3XJxJNNQZM0k
	 y/+ab844JgCFmryTYsXAlE15DsP6+lfWnNBn2ZobuSclceFQlm7vf8SaXJmHGub2nr
	 FtSXvLOzS39GK3skXudQ/BNIlPJTGp2gUzgo6yZS3Uns4pzjux3fBIxUvOFTk6RwNh
	 juUHsZ6DwsETw==
Date: Wed, 21 Jan 2026 15:41:54 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org, gcc@gcc.gnu.org
Subject: On restrict (a broken qualifier)
Message-ID: <aXDecr1b-ke8cN40@devuan>
References: <cover.1768822707.git.sethmcmail@pm.me>
 <d87c7800e0f556efefaf5972294fb6a149bf02d1.1768822707.git.sethmcmail@pm.me>
 <aW7aOgFHOdCSiwUH@devuan>
 <aW9xYhsFpNxlo3C5@McDaDebianPC>
 <aW96GgzoYUurH5FS@devuan>
 <aXBuVeyTXLZ67TmH@McDaDebianPC>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="d7nemtyoougwfqj2"
Content-Disposition: inline
In-Reply-To: <aXBuVeyTXLZ67TmH@McDaDebianPC>
X-Spamd-Result: default: False [-3.56 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-4891-lists,linux-man=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[kernel.org,quarantine];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCVD_COUNT_THREE(0.00)[4];
	DKIM_TRACE(0.00)[kernel.org:+];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	RCPT_COUNT_THREE(0.00)[3];
	TAGGED_RCPT(0.00)[linux-man];
	ASN(0.00)[asn:7979, ipnet:142.0.200.0/24, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[dfw.mirrors.kernel.org:rdns,dfw.mirrors.kernel.org:helo,alejandro-colomar.es:url,devuan:email]
X-Rspamd-Queue-Id: F012559006
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--d7nemtyoougwfqj2
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org, gcc@gcc.gnu.org
Subject: On restrict (a broken qualifier)
Message-ID: <aXDecr1b-ke8cN40@devuan>
References: <cover.1768822707.git.sethmcmail@pm.me>
 <d87c7800e0f556efefaf5972294fb6a149bf02d1.1768822707.git.sethmcmail@pm.me>
 <aW7aOgFHOdCSiwUH@devuan>
 <aW9xYhsFpNxlo3C5@McDaDebianPC>
 <aW96GgzoYUurH5FS@devuan>
 <aXBuVeyTXLZ67TmH@McDaDebianPC>
MIME-Version: 1.0
In-Reply-To: <aXBuVeyTXLZ67TmH@McDaDebianPC>

[CC +=3D gcc@]

Hi Seth,

On Wed, Jan 21, 2026 at 06:12:45AM +0000, Seth McDonald wrote:
[...]
> > We might need a qualifiers(7) manual page.  Especially, once their rules
> > are modified in ISO C2y.  Alternatively, we may need a new section
> > man3qual, with an intro(3qual) page talking about this, and then
> > const(3qual) and volatile(3qual) to document the usual qualifiers, plus
> > a restrict(3qual) documenting how irremediably broken that monster is,
> > and _Atomic(3qual) also documenting that qualifier (which I never really
> > understood well, and from what the committee is talking now, they don't
> > seem to like it either).
>=20
> I'd be down for a qualifiers(7) man page.  Don't know about a whole
> man3qual section though.  Unlike library functions (man3), constants
> (man3const), or types (man3type), which are all provided by GNU/Linux,
> qualifiers are a built-in language feature of C.

We have _Countof(3), _Maxof(3), and _Minof(3) manual pages for these
operators (which are also built-in language features (operators) of C.

And we have manual pages for attributes (man3attr).

man3qual would be smaller (the number of qualifiers is rather small),
but it would be consistent, I think.

> One could argue that
> GCC 'provides' them, but I don't think that means they should be
> documented as if they're a feature of GNU/Linux.

The fact that qualifiers are so widespread and unified today that
there's not much variance among implementations doesn't mean that there
aren't outliers.  Some implementations (dialects) of C still don't have
qualifiers; an example is Plan9's C compiler, which doesn't have const.

So, const is indeed a feature of GCC (among many others).

> Documenting them in
> the miscellaneous man7 instead conveys how they're important enough to
> document and are related to GNU/Linux, without implying that they're
> part of/provided by GNU/Linux (like other man3* sections).
>=20
> Btw, I'm curious as to why you say the restrict qualifier is broken.
> I'm yet to encounter much trouble with it, so I'd be interested in its
> flaws.

For a starter, it doesn't follow the usual qualifier rules; being a
qualifier on the pointer, it gets discarded immediately on lvalue
conversion.  It essentially behaves as an attribute with the syntax of
a qualifier.

Regarding the semantics, it's defined in terms of accesses, and thus it
is valid to declare two aliasing pointers as restrict as long as they
are not accessed.

	alx@devuan:~/tmp$ cat restrict.c=20
	int *f(int *restrict a, int *restrict b);

	int
	main(void)
	{
		int x;

		f(&x, &x);
	}

	int *
	f(int *restrict a, int *restrict b)
	{
		*a =3D 42;
		return b;
	}
	alx@devuan:~/tmp$ gcc -Wall -Wextra restrict.c=20
	restrict.c: In function =E2=80=98main=E2=80=99:
	restrict.c:8:11: warning: passing argument 1 to =E2=80=98restrict=E2=80=99=
-qualified parameter aliases with argument 2 [-Wrestrict]
	    8 |         f(&x, &x);
	      |           ^~  ~~

The program above is fine according to ISO C.  GCC diagnoses in this
case (it is a false positive), but doesn't diagnose on other cases.
Clang doesn't diagnose at all.  See below an example that is not
diagnosed by GCC either:

	alx@devuan:~/tmp$ cat restrict2.c=20
	int *f(int *restrict a, int **restrict b);

	int
	main(void)
	{
		int *x =3D &(int){0};

		f(x, &x);
	}

	int *
	f(int *restrict a, int **restrict b)
	{
		*a =3D 42;
		*b =3D a;
		return *b;
	}
	alx@devuan:~/tmp$ gcc -Wall -Wextra restrict2.c=20
	alx@devuan:~/tmp$ clang -Weverything restrict2.c=20
	alx@devuan:~/tmp$=20

This program is also fine according to ISO C.  Neither GCC nor Clang
emit any diagnostics; and they can't!  If they diagnosed this, they'd
have to diagnose on valid uses of strtol(3), and that would be
unacceptable.

But if compilers can't diagnose on the call f(x,&x) where f()'s
parameters are restrict, what stops one from passing aliasing pointers
to a function that really accesses its parameters?  The compiler can't
know what the function will do with them.  Thus, restrict results in
having more UB, and the optimizations it enables can make that UB even
more dangerous.

And unsurprisingly, the rationale for restrict was optimizations, not
diagnostics.  That's a bad idea.

restrict should eventually be replaced by an attribute (a qualifier
won't work).  Such an attribute should be defined only in terms of
aliasing of pointers, and not on accesses.  That would turn it into
a tool for diagnostics instead of a tool for optimization (while it
would still allow for optimizations in most cases), and that is a good
idea.


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es>

--d7nemtyoougwfqj2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmlw5awACgkQ64mZXMKQ
wqnYsg/8CusvSfM1IEpzAZunrMDS7MCNFI/AxUthdTgY2OptA9+0delD0B0/RjmI
oVq++Q6ibOpt6J/rLbbzWVg65LulQdzboRbfLQm7TxVrhDdiGGfjtCzrRn942xbu
1b5DTu3L2ay6RjE+hYDSVzgr17UXF9SFfjtrpN6zvAEzpKBnJiUt7hU21xfThMl/
YujMtGo1WGmrVBF2Is9aECC9eaLNkBaGQrT77bNPgqalyJP/t3BIPm4l0Jido/S1
6MkImKyfJ2MueSVriFrQJlIAoTZC6UVjvDaraXt7M3XpWtsnyf4VRt41dYSRZb20
BayibE26TzII5KMxSciZ8PwKQQ1NxZgomHto3dorj6tVNw2mxN1IxZK0END64QyY
EZDR8vP++HKrSENEgfSq2oEMdOG90WDsTpAXpxb/H0Kcri48ZFDTKkUMJUWIfyTG
ks2+4fGyWEoQMzlBQSJ1UseuIINMOi5Fu3nSsa2UwNTUrKPIWozK80okCJ9q60Vy
EuDDKnXQUNzo9kSERXezQnvcNtPFMCLETULHa6qmqmxn/vTXv76HnbrYVzcPxIn7
7VyzJ0lPq4Y916DzG3GceeIz1iK5xxoQAVYmhZRcQlliCztTRiCQ7Xk/8qMbDe2W
pCjPgah3zw1/lSzrglQKnyghrbGXSPNDhEPQb4uCi8yNVt5NMsw=
=POcs
-----END PGP SIGNATURE-----

--d7nemtyoougwfqj2--

