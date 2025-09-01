Return-Path: <linux-man+bounces-3813-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BDABBB3EAFC
	for <lists+linux-man@lfdr.de>; Mon,  1 Sep 2025 17:40:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 503F8481AEE
	for <lists+linux-man@lfdr.de>; Mon,  1 Sep 2025 15:34:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 600A83064A6;
	Mon,  1 Sep 2025 15:28:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ryGTtdxa"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F5583064A4
	for <linux-man@vger.kernel.org>; Mon,  1 Sep 2025 15:28:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756740516; cv=none; b=uX2pTdR64IJhg9syZLi6m3zCHqshhCD9IfgwRhjQj13+I01V/e8GI3xAYjSLbDCH8BOHLsXW1C7rsyViOYL5dbzZo5mJ9zJK15djxW9vE8ym28H/qZeluVao9aVmo1WbOLlc3mTx26YpYDJTOita145er4XfUMJEWxQ85PBb0Is=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756740516; c=relaxed/simple;
	bh=W+d+pCp38sU/fWedlV1InY0Cw/Hm67GR/mDKXQeTHAc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jolNEBnT6f6qLATiZRoKlU7q7bkvtw4IuNnpasYaAV33qCl2JvDjE2ifTF6UC/OkjThzbBMGKa/mrvrxFGZXciBwRfaITKQIInZD1AgNXn/MlgyB1JcOLnYLGGVvfXkVrQ2Zqhon8DPCGJtK+QlbbL8EuD+Wf6bfFJQvgrfwtF8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ryGTtdxa; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E1E0FC4CEF1;
	Mon,  1 Sep 2025 15:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756740515;
	bh=W+d+pCp38sU/fWedlV1InY0Cw/Hm67GR/mDKXQeTHAc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ryGTtdxanRog03cjra5PUknhiDHODttxi6jvFJuMoIBl8a8A+fJcmeC2d74EYQBHY
	 6JNHw7L7CkgZ2zwkGBpPUu8wD4MehnbnjlaDUclDjulYtYxo4ghOR9f3oKhfdVhABy
	 3WnaF2DPplTB3RVXZtk8nHxmvF5/V7syCemM7jLx+2wO1yPWY61gphQbGFRNa3OEcT
	 jJ+EUUzpDeGWLmnU0cxVVLpUn4liuHPecDKRwTtHl2MrZPbhSL35ZFdrkPOjAJH8Lf
	 sAZphmCACIiC+ZgZEZqaU+Kmq/bZ8QGOqNscvdMc3KNl3dY8AADn90c2b937YiyzUA
	 Z6WOhxizDrqmA==
Date: Mon, 1 Sep 2025 17:28:30 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Adam Sampson <ats@offog.org>
Cc: Helge Kreutzmann <debian@helgefjell.de>, mario.blaettermann@gmail.com, 
	linux-man@vger.kernel.org
Subject: Re: Issue in man page fma.3
Message-ID: <nevbcbx5kj7ppaubsy6nbcdqotwt4lwh6rldkmk64ojsn66ytl@l64g4mwm6snh>
References: <aKsmR8KMxEjAmxGL@meinfjell.helgefjelltest.de>
 <cydmigk4amlt62bjeircdfzgjzajlsoaw6pje6z5te7fu4a7bd@upahclev5v3s>
 <y2ajz2ii551.fsf@offog.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="wkwasszqnbc3zx3h"
Content-Disposition: inline
In-Reply-To: <y2ajz2ii551.fsf@offog.org>


--wkwasszqnbc3zx3h
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Adam Sampson <ats@offog.org>
Cc: Helge Kreutzmann <debian@helgefjell.de>, mario.blaettermann@gmail.com, 
	linux-man@vger.kernel.org
Subject: Re: Issue in man page fma.3
References: <aKsmR8KMxEjAmxGL@meinfjell.helgefjelltest.de>
 <cydmigk4amlt62bjeircdfzgjzajlsoaw6pje6z5te7fu4a7bd@upahclev5v3s>
 <y2ajz2ii551.fsf@offog.org>
MIME-Version: 1.0
In-Reply-To: <y2ajz2ii551.fsf@offog.org>

Hi Adam,

On Mon, Sep 01, 2025 at 04:06:34PM +0100, Adam Sampson wrote:
> Alejandro Colomar <alx@kernel.org> writes:
>=20
> >> Issue:    According to above, a domain error also occurs when I<z> is =
a NaN?
> > According to what exactly?  I don't understand this report.
>=20
> fma.3's RETURN VALUE section currently says:
>=20
> | If one of x or y is an infinity, the other is 0, and z is not a NaN, a
> | domain error occurs, and a NaN is returned.
> |
> | If one of x or y is an infinity, and the other is 0, and z is a NaN, a
> | domain error occurs, and a NaN is returned.
>=20
> But the ERRORS section only says a domain error occurs in the first
> case. If I'm understanding the glibc code for _FP_FMA in
> soft-fp/op-common.h correctly, it looks like it raises the error
> regardless of the value of z, so in both sections the "and z is ..."
> part could be removed, making the two sentences above identical?

Ahh, now I see.  The source code of the manual page says:

	.P
	.\" POSIX.1-2008 allows some possible differences for the following two
	.\" domain error cases, but on Linux they are treated the same (AFAICS).
	.\" Nevertheless, we'll mirror POSIX.1 and describe the two cases
	.\" separately.
	If one of
	.I x
	or
	.I y
	is an infinity, the other is 0, and
	.I z
	is not a NaN,
	a domain error occurs, and
	a NaN is returned.
	.\" POSIX.1 says that a NaN or an implementation-defined value shall
	.\" be returned for this case.
	.P
	If one of
	.I x
	or
	.I y
	is an infinity, and the other is 0, and
	.I z
	is a NaN,
	.\" POSIX.1 makes the domain error optional for this case.
	a domain error occurs, and
	a NaN is returned.

I think I'll keep that separate, as a reminder that this is weird.  If
anyone shows that all implementations that one would care about behave
the same, it would be a case for going to POSIX and asking them to
simplify the specification.  (And we could also simplify it, of course.)

For now, how about this diff?

	diff --git i/man/man3/fma.3 w/man/man3/fma.3
	index fa0562858..433f1e2ee 100644
	--- i/man/man3/fma.3
	+++ w/man/man3/fma.3
	@@ -107,8 +107,8 @@ .SH ERRORS
	 .P
	 The following errors can occur:
	 .TP
	-Domain error: \f[I]x * y + z\f[], \
	-or \f[I]x * y\f[] is invalid and \f[I]z\f[] is not a NaN
	+Domain error: \f[I]x * y + z\f[] \
	+or \f[I]x * y\f[] is invalid.
	 .\" .I errno
	 .\" is set to
	 .\" .BR EDOM .

Which does this:

	$ diffman-git=20
	--- HEAD:man/man3/fma.3
	+++ ./man/man3/fma.3
	@@ -58,8 +58,7 @@ ERRORS
	=20
		The following errors can occur:
	=20
	-       Domain error: x * y + z, or x * y is invalid and z is
	-       not a NaN
	+       Domain error: x * y + z or x * y is invalid.
		       An invalid floating-point exception (FE_IN=E2=80=90
		       VALID) is raised.


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--wkwasszqnbc3zx3h
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmi1u5gACgkQ64mZXMKQ
wqlwVBAAoSHF9cn5COZGka0EzJVZ5MNs8fzRA8ENqn8EqBE5onVrMbycRSwXbqFa
3+Cruv0jWSAfiWfmruzJvcFPoqct80mVeowHmomQsn81O/PPxZGKC+EaAb5NPK5r
saE8VqlghoFemqgL3J9SMS7UbJ20OaoP5pI7VZV3rTSB0YdDyYoBz51vNbqa5Jgo
YtkfOUp8EFbFF+6hwxuP9Gsq5MIJMvsd5lX3CQ7UqxGev6sXLS3viu+cRCsq/zdI
LEAtPvrCQnkg/pxxnnw/J3y+Sg2DmjjwLSStU840vjHw1Z6GHcF37NQfzoBBI7bY
mkN5vb1bAICmTKsyd6+NoqNumP4IZsmTFXnKEF0rw04byfWeFJq3h9Owc+kAxask
7ZEy1yOkWjQiHmrcHMzj9X4ShpjlETgFGzr64B7jTJkWFLFOvms3iXxBymtRcT33
aFgXLUIexQma4+Q4oC9SxJxoOEIwPL9rJWvI69TuGGsdy/1z+DUdHWW6wFv+mx4I
Jcm9z/fszCKOR8WVD4yWfa06zUMirjbFCC2ARHpsa2s9WVOi3BhEcK1GykfzXWzQ
4I4aJWz+Eisywkl9Dgjy1cJQrI3P6BOdGEY2TtMmU/gaWgnV96Q4W9YjheXlwD69
TQhXOryqW62qQR6S29KkuZgqyjwoW+J9yrlp9yz6c9Yz7Kadcz8=
=YZuK
-----END PGP SIGNATURE-----

--wkwasszqnbc3zx3h--

