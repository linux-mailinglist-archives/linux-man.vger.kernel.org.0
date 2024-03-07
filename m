Return-Path: <linux-man+bounces-557-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 163E9874C52
	for <lists+linux-man@lfdr.de>; Thu,  7 Mar 2024 11:24:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 486CD1C20CC4
	for <lists+linux-man@lfdr.de>; Thu,  7 Mar 2024 10:24:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B993E8526A;
	Thu,  7 Mar 2024 10:24:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mzci163u"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A22D85265
	for <linux-man@vger.kernel.org>; Thu,  7 Mar 2024 10:24:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709807056; cv=none; b=CJ2bXuq//j+yv3gjqrkMXCTRTKwjgoQuBrst70Ou/u0diSD9XNERiGi99ngI6/Uw332qK2Us27NXiiyeswrIyTSUTyPC/Z2+eNi9t211k/WqWv/yTRq0aZdXtOA6UwIw1QueTT+gXmpBv2FurAzwmNAJJAEKfVGArMGlvsY8cGo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709807056; c=relaxed/simple;
	bh=OsfQmKAXexzVG/m/nVyFbQyqpQcf/FZxJoHb8IC3CVg=;
	h=Date:From:To:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=axZ+6tiG8dUvrwHHQbl03XbIYPPvk9T3tNwW3w20diO5/W/u84jM/JKdexU4p+PEQoq3oUPwY3DyG/YF8enzBIbhpd1/PYf6g8wJ8i++lQ+kCQzYxuqfzQ2P7vKVbWnvtx2ZzLWGRkxx/exvVHUwxKJaKTgkOtYdTE3Ra5yTlsI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mzci163u; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4B3ADC433C7;
	Thu,  7 Mar 2024 10:24:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709807056;
	bh=OsfQmKAXexzVG/m/nVyFbQyqpQcf/FZxJoHb8IC3CVg=;
	h=Date:From:To:Subject:References:In-Reply-To:From;
	b=mzci163uBmG9TWJeUOMftcMG/ftQxUngsrumIpXaJK343+avCHOs5tqBT9tGdTI07
	 8Bm4jj4W3VgZY4DFrYQ4AaQLb+BSyEjJJrTzzrDbqqWm1AsRu679QtChTXw/Zv769V
	 Wg1BTGUpRhq9ivGXTfA7Lq+uINOvdW8JeKAK5vGdWaU8OvQJgvuYQ8VVp0iZDPBdhk
	 RppUmXlBzLeQgaxPyz/e3aMgoeHcXXFmXcLneG25zyIRF4jX8tPWmS3GBJerYkMzRw
	 vsXQoE5stZfBQyd9kc0v1qU5R8gQVpfp3litS66M73kHGomQIV0xvhfLd9wii5OVhs
	 bazjDO+McgWMQ==
Date: Thu, 7 Mar 2024 11:24:12 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Guillem Jover <guillem@hadrons.org>, linux-man@vger.kernel.org
Subject: Re: Order priority issues for special 3type sub-section
Message-ID: <ZemVzKM0HgbP-QPA@debian>
References: <Zej60rSb9Ve5rRPy@thunder.hadrons.org>
 <ZekNZuR3nRczAIqX@debian>
 <Zek9RRW28ZinfkxB@thunder.hadrons.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Cy5EyyohdzV/XdmM"
Content-Disposition: inline
In-Reply-To: <Zek9RRW28ZinfkxB@thunder.hadrons.org>


--Cy5EyyohdzV/XdmM
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Thu, 7 Mar 2024 11:24:12 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Guillem Jover <guillem@hadrons.org>, linux-man@vger.kernel.org
Subject: Re: Order priority issues for special 3type sub-section

On Thu, Mar 07, 2024 at 05:06:29AM +0100, Guillem Jover wrote:
> > I think projects shouldn't use their own subsection.  They should
> > instead use the same sections, in this case 3type, and use LIBRARY to
> > document the library needed to get the thing.
>=20
> I don't think this works as a general rule, because different projects
> might want to document things that live in different namespaces. For
> things that are going to be "enforced" to share the same namespace
> such as programs, or header files, then that's fine. But for function
> interfaces or language features, for example which might be the same
> on different implementations using sub-section makes sense to me. For
> example it seems it would be rather inappropriate to document perl's
> if(3perl) as if(3). :)

Hmmm, yeah, other languages live in other namespaces, so they do well
using their own subsection.

> > And in cases wher various projects offer the same page exact page, maybe
> > /etc/alternatives should decide.
>=20
> alternatives are supposed to be used for the same interface, not for
> conflicting and unrelated ones, in this case if these document stuff
> that is completely different then that would not seem appropriate.

But C libraries live in the same namespace as libc, so they do indeed
implement the same interface (hopefully; I hate it when a library
implements something different with the name of something already
existing) in a different library.

This is the case of libbsd.

Though I understand other systems that you support have different
rules, such as using 3m for libm stuff, so for supporting those systems,
I understand you prefer to stay in 3bsd.

> In this particular case, what I'll be doing is to remove the
> timeval(3bsd), timespec(3bsd) links everywhere, and stop installing
> the TIMEVAL_TO_TIMESPEC(3bsd) and TIMESPEC_TO_TIMEVAL(3bsd) on glibc
> based systems, and check on what others these are already provided,
> and install those there conditionally.

Good.

Have a lovely day!
Alex

>=20
> Thanks,
> Guillem

--=20
<https://www.alejandro-colomar.es/>
Looking for a remote C programming job at the moment.

--Cy5EyyohdzV/XdmM
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmXplcwACgkQnowa+77/
2zLQBQ//Z4iPhcBFvALXc1B89SjDTUM1ihu+D+NB2G2Ezrfmr0d7h4r4ekKaBVyu
CtSd/ILVfeuBCd6PgiH/pok12+lvz4GXg5i5QE3Y+WWg+MwtT1NhjMClP7SRerDC
C0+Q2ZUIBPQ7KM5NkxTDfATl5mnQ6hE3yL2lvNlCdTShTgWEkC+vZjS51u26/jsc
935kcLUViiw/nAuoSzdKfaHs0zWaRrymAZwvCWJkwYn3KkOCt5/q6YznYgAVzWAX
MKSGMvVFzAD8If4FpfmcdoSqRjbpbZaMboKxowx4XzCGHafSDVfk9n2CIeuU+OOm
0JcwM1m3dHpMiFUWZaOol9LOgWy7fbTywv88Vaf9wuSRuso7sw207JgxPXs/LyVj
fY2FNEuCSLrxZdWFDaxDrI+jLrP7to3OBxBaie7qKEaaY9kVP33hv33aUZTFZmV0
jm50yilaiNedzuXFzzrBolLIuuqsF/GvbwNaTvQM0zdTpx0mR4MCsDZkSmBmyhlX
Lez2z2WyXuaQbkXvR6gqQ2py0Adj8+r23CGGbfTHY/5hEgD8dhQrKLm18cM5FPAi
XzZTRDFsSDSYG9WMXkF+z1ImjWreYsFUiQ4/502RsQy6KZzce0vB3mOGURxirJJ7
tBaiD9yhK4eFGN26lfNXJeJsJeMlxBsdyqC4+n5i8bftT3yNmKw=
=qqSb
-----END PGP SIGNATURE-----

--Cy5EyyohdzV/XdmM--

