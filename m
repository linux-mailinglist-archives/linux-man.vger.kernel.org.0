Return-Path: <linux-man+bounces-5220-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wGuSCsoYnmm7TQQAu9opvQ
	(envelope-from <linux-man+bounces-5220-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Tue, 24 Feb 2026 22:31:54 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8166018CCBD
	for <lists+linux-man@lfdr.de>; Tue, 24 Feb 2026 22:31:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 976F7301A719
	for <lists+linux-man@lfdr.de>; Tue, 24 Feb 2026 21:31:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F0CB6338904;
	Tue, 24 Feb 2026 21:31:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZCXzHXtY"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4C2E25524C
	for <linux-man@vger.kernel.org>; Tue, 24 Feb 2026 21:31:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771968698; cv=none; b=qbDLvvS2xlqawMDe5pJ+/J54Rpe4pEi97f61bdYhsTK1YbmnKWvhDM/iesvCybg3qlAA+gDAZJe7c51JOHr96kv9ek06RgdJp/5C9KIp+xzfCdazh2CAys6fX5rm3eNGWVEPPabgwY9HW19zN0zTR7JS6NFgtAIHvwplXkeb/bo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771968698; c=relaxed/simple;
	bh=ydnWTL4O74oDkvRKSeRWzIxwQUPycz4RaToPTSLY7Dw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=EaW8ynXGeQtSH+N4bKe9APdoD+K2utS1IJJo/LSYB2qkVOr0IZSecu3/4Nl822XFiHiGszEt8pLpb2Xmp2c3n+8KDDbwRHV65Zy+fGLobN/pLFyXcGYs9XpIo/68goQdVZop7j8zDmF5L5JoOVe4uLsRtjFB8PEmftWf+nST1XE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZCXzHXtY; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E074CC116D0;
	Tue, 24 Feb 2026 21:31:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771968698;
	bh=ydnWTL4O74oDkvRKSeRWzIxwQUPycz4RaToPTSLY7Dw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ZCXzHXtYF0R3/i+nTje856rp93U7TnFz9ghJ/eDrtIy+t971bvcURgp/0vnfJRtCl
	 /8NfCvIF0wjgluEcBTFVMVp9OdSB0cHdt3euHJ6Nj7d9SKJF+mlDelTC95gXwgMOOq
	 JSjWBA4/DVHfj1Cva5UdTopgxcss2NmvCh1B7NciRXpmj0bqwuT9kRopLxZDSyMFJq
	 KV7JyC8WzhhNqgSdMk3/2HaYqxutrJrVT0Xz/YlbS6IedESsfJzDsZtPfg74jUwGYF
	 29H3hG4iQvThvxSF+uWksfBc1WmT4gzvx7m3ib3M6coGNcLdH6k6v/qqqvmVIH2Y+a
	 vyYN7YPjngMcA==
Date: Tue, 24 Feb 2026 22:31:35 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Paul Eggert <eggert@cs.ucla.edu>
Cc: linux-man@vger.kernel.org
Subject: Re: QChar and QVoid for strchr(3), memchr(3), et al.
Message-ID: <aZ4YhDCzMOnokXH9@devuan>
References: <aZ2xBQcy7mMEXW_b@devuan>
 <67824728-313a-4f73-be2c-ad41697925b5@cs.ucla.edu>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="wkwlwzwexcyhe56d"
Content-Disposition: inline
In-Reply-To: <67824728-313a-4f73-be2c-ad41697925b5@cs.ucla.edu>
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
	TAGGED_FROM(0.00)[bounces-5220-lists,linux-man=lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[alejandro-colomar.es:url,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 8166018CCBD
X-Rspamd-Action: no action


--wkwlwzwexcyhe56d
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Paul Eggert <eggert@cs.ucla.edu>
Cc: linux-man@vger.kernel.org
Subject: Re: QChar and QVoid for strchr(3), memchr(3), et al.
Message-ID: <aZ4YhDCzMOnokXH9@devuan>
References: <aZ2xBQcy7mMEXW_b@devuan>
 <67824728-313a-4f73-be2c-ad41697925b5@cs.ucla.edu>
MIME-Version: 1.0
In-Reply-To: <67824728-313a-4f73-be2c-ad41697925b5@cs.ucla.edu>

Hi Paul,

On 2026-02-24T09:14:04-0800, Paul Eggert wrote:
> On 2026-02-24 06:28, Alejandro Colomar wrote:
> > -  In the SYNOPSIS, do you prefer QChar/QVoid or overload style?
> >=20
> > 	QChar *strchr(QChar *s, int c);
> >     vs
> > 	char *strnul(char *s);
> > 	const char *strnul(const char *s);
> One documents strchr, the other strnul.

D'oh!  Copy/paste error.  I forgot to replace the function name.

> And strchr and strnul do differ:
> strchr has an underlying obsolescent function, and strnul does not. This
> suggests strchr should be documented differently from strnul.

How would you document strchr(3)?


Have a lovely night!
Alex

--=20
<https://www.alejandro-colomar.es>

--wkwlwzwexcyhe56d
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmmeGLcACgkQ64mZXMKQ
wqkiwQ//SIdhjrgfUpMwSvQj3Qr6bUKsxF+y/vIyl559Jezgdv96JO3lk+uEKipw
hB2LYTTNlYHKHEgnSV9Hu6IWT5IRcgwstMad7jGbHY0rfs5nEfbPcHAU7Sh7uUub
204bB73Y/S9q21EhbXoPTp4s2aqQztgl/fcGQ+63Js5kuvNnHDy/S1/G1mjxeJg7
33EzS/kDO8mbP9JHdeAIHbf9kD4JmMuX6emeKCl0Q2ydaQWJJgfLdWAbHPmQG8/Q
6vYlfu8l//HsAb0p2qBIFZ+WX896+EH68xL05j16LcM+/FUNV+9T5nj3MEQtwMip
rOwkZc004Rtz4erd8Vv8VIo9zuwq0l6R+QONVTcLmyx4rYeGgHNhuW5/ocS1W9dv
9OZu+DN/j3stKXL9wf2FV/Db7VOqefG60OUDBI/EIIekZQupj1hitaCd843nD6ar
RSiV7Zi4uoK3LfyRK2M8m3EK40AsAbXYDy9PORsSbSTK8A8GcV1CDffaDqbvxHpu
KAGTneZjHEvVF58GVmri+tcMy6oVGbbQc366FQSOkhtqQrOCnAKFPYpUV/jH7aI/
/8mY1UAz83/jI4xAOMCpubtEIkD0dDgvsgEfkQ9cUL9bAL4gMX5bq5UrNNEdZpY+
UKRjTi5gJfgL7VuqfObChvUaK5EmvSqXtuydgb9GDKNlGjwx33Q=
=jEwe
-----END PGP SIGNATURE-----

--wkwlwzwexcyhe56d--

