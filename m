Return-Path: <linux-man+bounces-558-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A4BC8874C89
	for <lists+linux-man@lfdr.de>; Thu,  7 Mar 2024 11:37:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D63801C20D6B
	for <lists+linux-man@lfdr.de>; Thu,  7 Mar 2024 10:37:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0258385268;
	Thu,  7 Mar 2024 10:37:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Aa9vYluC"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B652A1E4B3
	for <linux-man@vger.kernel.org>; Thu,  7 Mar 2024 10:37:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709807859; cv=none; b=GmCiTbjsWCdFRKUmin8mIXf+szX5NcuAavC/x1go6hRpSKiBJLvVNxeL2Ao9fAKRFOS+RR7IZrYuNn/qjpypx+sh1dc2CbGfARnGQXlylaUCa7/RqC5I7OOVtq8X8JRro0KUXzC+kNgy4EPvLLtFRGzGX46ZiO5OcQcEPr6ciis=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709807859; c=relaxed/simple;
	bh=51gWQTy0kGsVVzIu6HiTj6Yip1c1IycdQwl5Rk3o4Z4=;
	h=Date:From:To:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Wk3VafW1GOZG+pGrSmYTVwShu7q9xiz0ao+rgleH8nIJD7uh0c0T4oh1ihzIBos0WBxd0NSAo+Gk6fdFWclBVJA8JiD9h2CeC7BHLZyTWRXgDRRhBw4mEANPbIZ0oH1aepgI8CXMWomFgUgyInr+m5K0DfnWDQgs3V9M1bdf/eo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Aa9vYluC; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 54E72C43390;
	Thu,  7 Mar 2024 10:37:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709807859;
	bh=51gWQTy0kGsVVzIu6HiTj6Yip1c1IycdQwl5Rk3o4Z4=;
	h=Date:From:To:Subject:References:In-Reply-To:From;
	b=Aa9vYluCHqd0lIeBn8MTpNkkkRukBVsSJJhNN8mHlXCLirX7nY1BKoQAqX0CxQjYx
	 d8imHk3jtMaRafNLwgAu6Rju2ZPQ6RXJuCyhQHQzdl7sR84cfeC0YIlnxRqsNu+ei3
	 uSTdKY6UNOGNat1v6dVUD6qkmjqRavx9seHQiWhpvv7jlqyBGXMjByhpuy0YoM/Y1p
	 /VJzabcf5AcdzbnRHhw12lYb+0S4jwd+fDqeUSpq7JahdKCR0mTrO+gRFAQFunVYHP
	 4bu+3OBal4iHooCTtAgxe/saV3sKWjCf3v+Z56tJpAax+G3EZGtbxgXiHWUkhFytf+
	 L+LSiY7PWW1JA==
Date: Thu, 7 Mar 2024 11:37:35 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Guillem Jover <guillem@hadrons.org>, linux-man@vger.kernel.org,
	Oskari Pirhonen <xxc3ncoredxx@gmail.com>
Subject: Re: Mail-Followup-To header (was: Order priority issues for special
 3type sub-section)
Message-ID: <ZemY8ArAtGdqScgX@debian>
References: <Zej60rSb9Ve5rRPy@thunder.hadrons.org>
 <ZekNZuR3nRczAIqX@debian>
 <ZekThJn_-AGkDyRb@dj3ntoo>
 <Zekhz_a9l5ZGwcAb@debian>
 <ZemK5ypK5ccm8w7S@fluorine>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="6/Qfso+D2XSD/Fqd"
Content-Disposition: inline
In-Reply-To: <ZemK5ypK5ccm8w7S@fluorine>


--6/Qfso+D2XSD/Fqd
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Thu, 7 Mar 2024 11:37:35 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Guillem Jover <guillem@hadrons.org>, linux-man@vger.kernel.org,
	Oskari Pirhonen <xxc3ncoredxx@gmail.com>
Subject: Re: Mail-Followup-To header (was: Order priority issues for special
 3type sub-section)

Hi Lennart,

On Thu, Mar 07, 2024 at 09:37:43AM +0000, Lennart Jablonka wrote:
> Quoth Alejandro Colomar:
> > I've found now why my MUAs don't include you in the reply.  I've seen
> > the following header in your message.  I don't know if this is something
> > you configured your MUA to send, or if it's an accident.  Please have a
> > look.
> >=20
> > Mail-Followup-To: Alejandro Colomar <alx@kernel.org>,
> >        Guillem Jover <guillem@hadrons.org>, linux-man@vger.kernel.org
>=20
> The Mail-Followup-To header field is good and useful.  And Mutt, for
> example, sends it by default, if you=E2=80=99re properly using `lists` and
> `subscribe`.  =E2=80=9CI=E2=80=99m subscribed to this list anyway, so you=
 need not send
> followups to me separately as well.=E2=80=9D

Hmm, it's interesting.  It messes with what's To and what's Cc, but it's
better than just replying to the list, which I hate because you never
know who's subscribed to it (e.g., most people in the groff@ mailing
list don't send me a copy of their responses, and I'm not subscribed to
the list; or in other lists, even if I'm subscribed to the list, I won't
read most stuff unless either the subject looks interesting or I'm To or
Cc).

> More people should use and honor it.

While I'll keep not using it, I'll honor it, now I understand it.  :)

> /me unignores mail-followup-to

Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>
Looking for a remote C programming job at the moment.

--6/Qfso+D2XSD/Fqd
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmXpmO8ACgkQnowa+77/
2zK6lQ/9F566W+8ELhN8MXJ2JljmTeSvICimcKlUE3C+WDRIhSYd/rkVuAwmBwQO
Dz+k52tGxFem0ZbDDAlKpfNWZUCE7EOXf5mEJt0huKSLrOW5Nofb8OGV4NKjoMkz
7cW8/Vgwycs96W0yn7hpo0XmQYHha/iaSvVgO4+Osc/g/gHAvCuDpwBjqQhigI29
hmiX/Y6xCtsSx2RqWx8lq3POQRCLp3RaGH4CwR4CBVQ5R+fwXIvyUZtlJEgC+7VG
rjfgjScVmHYbhLSiXeSUlskQHkZSUVdP+hn8VpmXo54GQKUQUL3+v10Ci+3hp1Z7
Vbchvm4axcw96Ao93ULux38zu4kQ9PBy++YdRh2vG0jfJ+NEVg7ld/SfR7wSUc+x
y5pUuljEDKnDDaOws9FafLSWOi5uunocsRd0ND7csfTPxZDgyuqpHuTkI6r6O1n0
+8JKK9nXdqSCFwuI688temKb+mCS1hIz23uB+08zeAqCsRhOQ0KT0Ff4tYlwx7xo
rl5llt1/l1JHja/K6Ay3eeoLSMRWpljmgWeY2B2Au33AVpD7EkjHB0EZZM0yMHnP
3CFxp5j4eiSQVWjq+15CbJVVpvhNF+00x7n+u81WatZYk63z8G+8eTOrIb4jlLP5
mC0dcQRYffRvMmOM93E4L6tP6i68g4gbZcarlhQ9vDQ9aPsLXRQ=
=wwGP
-----END PGP SIGNATURE-----

--6/Qfso+D2XSD/Fqd--

