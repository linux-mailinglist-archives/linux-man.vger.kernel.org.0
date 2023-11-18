Return-Path: <linux-man+bounces-95-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 917C77EFEC6
	for <lists+linux-man@lfdr.de>; Sat, 18 Nov 2023 10:42:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BEA131C2082B
	for <lists+linux-man@lfdr.de>; Sat, 18 Nov 2023 09:42:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 73EAF4F8B3;
	Sat, 18 Nov 2023 09:42:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GKITu7bm"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ED0C10944
	for <linux-man@vger.kernel.org>; Sat, 18 Nov 2023 09:42:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 46515C433C8;
	Sat, 18 Nov 2023 09:41:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700300524;
	bh=9QHvkwcjEa8yXysRU/9sK6zlLJqSqHHO8AlEpMdXtNE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=GKITu7bmtHw+qC854AxFqiBw6Ekq9XnbulNR8mc9svlYLEBWLx/aZJJunfH3+TMfh
	 Ok25hPw6QtpLnPb5YKRuKqlCrlg3HyiHjGa2pllx00N9hgsrXKY6zyXN6zEmdELCD0
	 mtejngvSxiErd1Jh4/uSuaHyp56JQ7b2AiS5VEn+v8SQoX0uNKQK7OUGQvWlwb0fst
	 Q9vUCPnpmfe/RCBuqxyOxSXWNfOT8uOmBiqN46cpwJ3XNf4xa3PDJdENZ4U6cGJ4xg
	 AHf2InrhUK+flo5ePCtRwkkgCAKY8Mmq3MYEwJhSGZ6tQHg6ewiQ8RoP+NuVPktaSI
	 AsVPAWf/nGL8Q==
Date: Sat, 18 Nov 2023 10:44:59 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Jonny Grant <jg@jguk.org>
Cc: linux-man <linux-man@vger.kernel.org>
Subject: NULL safety (was: strncpy clarify result may not be null terminated)
Message-ID: <ZViHm8HyxefeJ_SW@devuan>
References: <ZUo6btEFD_z_3NcF@devuan>
 <20231108021240.176996-1-mattlloydhouse@gmail.com>
 <ZUvilH5kuQfTuZjy@debian>
 <20231109031345.245703-1-mattlloydhouse@gmail.com>
 <ZUzPNydLkFPEvvsa@debian>
 <20231110160602.352085-1-mattlloydhouse@gmail.com>
 <fb0e2940-3446-4d44-95d7-f7be1f26096f@jguk.org>
 <bb41a959-eb58-4376-b2b7-6b6ad7a7dd5a@jguk.org>
 <ZVAB2S-IxKLABk_w@debian>
 <17ca7ec2-b542-4043-a311-bc0c2a7ddf78@jguk.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="mXMSMco+Oms9zCJg"
Content-Disposition: inline
In-Reply-To: <17ca7ec2-b542-4043-a311-bc0c2a7ddf78@jguk.org>


--mXMSMco+Oms9zCJg
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Sat, 18 Nov 2023 10:44:59 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Jonny Grant <jg@jguk.org>
Cc: linux-man <linux-man@vger.kernel.org>
Subject: NULL safety (was: strncpy clarify result may not be null terminated)

Hi Jonny,

On Fri, Nov 17, 2023 at 09:46:47PM +0000, Jonny Grant wrote:
> > Regarding other string-copying functions, NULL is not inherent to them,
> > so I'm not sure if they should have explicit NULL checks.  Why would
> > these functions receive a null pointer?  The main possibility is that
> > the programmer forgot to check some malloc(3) call, which should receive
> > a different treatment from a failed copy, normally.
>=20
> Perhaps it's just my point of view. In safety critical software I always =
do my best to ensure no code calls an API with the null pointer constant - =
when it's expecting a valid pointer. Given that the null pointer constant i=
s defined in the C standard, even if APIs have undefined behaviour if they =
require a pointer but are passed a NULL. So the converse is I make APIs che=
ck for NULL (if they require a valid pointer) and reject with an error. Cov=
ers all bases (there can be corrupt data files occurring that we can't anti=
cipate), so issues can be logged, and no core dump. I'd rather display a "U=
SB device error 51" message on a UI than suffer a core dump which turns off=
 a piece of safety critical equipment or sends it into a restart death loop.
>=20
> I recall you mentioned [[gnu::nonnull]] aka __attribute__((nonnull)) whic=
h is an optimizer hint the API will always be called with a valid pointer. =
There is also returns_nonnull.
>=20
> The difficulty is the optimizer will remove any NULL pointer constant che=
cks within those APIs (if there were any). The side effect is a useful comp=
iler warning, if the compiler figures out someone is passing NULL.
>=20
> So in a safety critical system we must wrap all such APIs, to put back in=
 the null pointer constant checks.

There's Clang's qualifier _Nonnull, which is not a hint to the
optimizer.  It is an attempt to have null correctness similar to how we
have const correctness.  It still has little support, even from Clang
itself.  It has some important problem: it applies to the pointer, not
to the pointee, but pointer qualifiers are discarded easily.  A better
design would make it a pointee qualifier.  Hopefully, this will some day
be there to end all NULL discussions.  Until then, yeah, NULL is a
dangerous part of the language.

Cheers,
Alex

--=20
<https://www.alejandro-colomar.es/>

--mXMSMco+Oms9zCJg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVYh5sACgkQnowa+77/
2zJNgw/8C22XYIJbAp7mqAssvAcubaXdp6s3nt+162ZxGmElQB6BAmle7koCzH+P
efGlN79+2q5bLjrkbvGDce6IZn78BSZ+R+vwgdHWgYtnHiXr1jHhKxrM+atAU1fH
HlZABACRgRRE915tM0450Sd0+GRY3THRhMDnSCfsOsnNq8shvkIWRaZO00eslMIU
1/TMruyP+2ublP/Ai/GQxxG3Ba6AFHO0UNJqLN0V+8rPqpBsXzIPunm1xNEJ8fNq
N07+Mm0eyFYck6TykpN7NhpzHlj2nYEMkJzrdBxJcHR5b4+2Lr/Ouj4+OG3+hCEm
r9c6bMmk0SDY1pGfCTtqxb+k8/7Uk1GjFNy6l/zcBJ06dd9e8DYdv0f6Z6VoasQ1
Lbkhp2YG1Wk55dGDZKUJjyLjTpm4Igl/g3JGyVXnzDvCHt6KC9M/A3joJVc/a5xn
aH+bMNWqPnWnfOagLQqNsE8lB4+3xy3JHyCpi/S61bY/+FYS845EjJxLc1Dc8whE
/658AOQdQs5awiWHVE1nlvTisrwy1HSrndl7mnIabBAv3VVZdpZijyvyBHVy4YQz
fB5Mv+LxomkADJFUGVxcAOM70W+rqmQSafg80c0ylY8ctrfAv56BjjDHkhC2p+Hk
/irSdXZLmS4lr+reCnfqWbA2Vi0slliPHauGuJpzRSNLhYV2cRY=
=6Uen
-----END PGP SIGNATURE-----

--mXMSMco+Oms9zCJg--

