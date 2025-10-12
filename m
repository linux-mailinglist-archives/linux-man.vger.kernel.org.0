Return-Path: <linux-man+bounces-4100-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 81FEEBCFE00
	for <lists+linux-man@lfdr.de>; Sun, 12 Oct 2025 02:02:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id DBF1F3400B4
	for <lists+linux-man@lfdr.de>; Sun, 12 Oct 2025 00:02:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8409928FD;
	Sun, 12 Oct 2025 00:02:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VVEFbJeE"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4033D1FDA
	for <linux-man@vger.kernel.org>; Sun, 12 Oct 2025 00:02:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760227337; cv=none; b=E70NQtPXXRvYlq3T9NjTojTx6g4DmHShwU/wW6qEUbdQeOUNLwq9HFnaEYKpe12FYoB88CRZ9XTrDxYmylWrbeWSh4z1WaA5rx4SCJWAtZ3LgkVcDB+1OUZKsH4Wk7wHk9i5oTit+RsUeSxOrng8HSoIcRVeprEYkAJzljFdEOI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760227337; c=relaxed/simple;
	bh=q17sMpI5GH8r9ar91JvRKWDhd/UBEnv7rxMb3ggO5LU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=BsCOq37qUogFLJmeith6kZ+32eEJaDo3gDmX205igRcf3HloBV2oolJqi+R/jLlKs3YwTU8Oy5+irGWBLgaJfCskIT++N8dNG5zGQ1uJUj5KaITSxDGXaBAN0EFEnOr45IuoEE9nGYaAMWjHR9Q4sBI+Pc+vMYEYXBkg7iL6wFI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VVEFbJeE; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B71B8C4CEF4;
	Sun, 12 Oct 2025 00:02:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760227336;
	bh=q17sMpI5GH8r9ar91JvRKWDhd/UBEnv7rxMb3ggO5LU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=VVEFbJeEGGPC3YlQUB3s/A4GiQTGYspPuELPIdRAOk1+Clwdec2I31gSddOpF0GcR
	 9NpQ1pfYKNlO8VyCQebIRbGjkaTsfIb8VcpwWkN8JulY9LJmNv3d682WOf5g2sM5Ck
	 mP1Lf56598dzio9yS4dSQfACSFbdzRGgnY0O2gZ3xN0esDyfPXrExp8PaPUcxlYT9f
	 qQHGUpLK5xGN/2Rxv8O7ORU1xjEXBbR2Nw6tfaiIaok44kfyx+/jugq7Gfb+5RmLGk
	 KZOI/q6UJMfIVYnz2SD1KHSsdmWpggyoiO4bgps2hplU7033AusvojFQ9SVJvyxzeq
	 1FDwqZZGiBFrQ==
Date: Sun, 12 Oct 2025 02:02:13 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Collin Funk <collin.funk1@gmail.com>
Cc: Sertonix <sertonix@posteo.net>, linux-man@vger.kernel.org
Subject: Re: swab.3: mention UB when from and to overlap
Message-ID: <yhsxo53mgu5pjfubjhuoeur2hcoyrof6rogh2neldclh6ji2gs@hx6lh7qguphi>
References: <DDFUAR7OXZ38.3SGS6R89CDDMD@posteo.net>
 <875xclm599.fsf@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="xuayqtgpdfxx4vbt"
Content-Disposition: inline
In-Reply-To: <875xclm599.fsf@gmail.com>


--xuayqtgpdfxx4vbt
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Collin Funk <collin.funk1@gmail.com>
Cc: Sertonix <sertonix@posteo.net>, linux-man@vger.kernel.org
Subject: Re: swab.3: mention UB when from and to overlap
Message-ID: <yhsxo53mgu5pjfubjhuoeur2hcoyrof6rogh2neldclh6ji2gs@hx6lh7qguphi>
References: <DDFUAR7OXZ38.3SGS6R89CDDMD@posteo.net>
 <875xclm599.fsf@gmail.com>
MIME-Version: 1.0
In-Reply-To: <875xclm599.fsf@gmail.com>

Hi Sertonix, Collin,

On Sat, Oct 11, 2025 at 03:40:34PM -0700, Collin Funk wrote:
> "Sertonix" <sertonix@posteo.net> writes:
>=20
> > The current swab.3 page doesn't seem to mention anything about what
> > happens when from and to overlap. In POSIX any overlap is UB.
> >
> > glibc handles cases when from =3D=3D to but it will choke when for exam=
ple
> > from =3D=3D to+1. I am uncertain if from =3D=3D to is meant to be a fea=
ture.
> >
> > If it is, would it be possible to mention that overlap is only safe when
> > from =3D=3D to and it's glibc (not eg. musl)? If it's not intended woul=
d it
> > be possible to include the same information as in POSIX?
>=20
> The prototype uses restrict for both pointers which is how you tell the
> C compiler that two objects will not overlap.

As Collin says, 'restrict' is there to document this.

The 'restrict' keyword (theoretically, a qualifier, but it works more
like an attribute) is difficult to explain (and the wording of the
standard to describe it is quite difficult to follow).  However, the
core idea is simple: nothing should overlap such a pointer.

There are exceptions, such as the case when a function doesn't access
such a pointer.  That's why strtol(3) is declared as

     long strtol(const char *restrict s, char **restrict endp, int base);

even though one can (and usually do) call it as strtol(s, &s, 0), where
's' is indeed aliased by another pointer (*endp).  That's because *endp
is never accessed within strtol(3).

This is somewhat unfortunate, as it doesn't allow the compiler to
diagnose bad calls to restrict functions, as the compiler isn't able to
know if the pointer is accessed or not, and thus it doesn't know if
the call is valid or not.  One could use the [[gnu::access()]] attribute
to give the compiler some extra information, which would allow it to
diagnose.

const-correct-ness would also help, but precisely, strtol(3) can't be
const-correct, because of the issue with pointers to pointers to const.
A better API would be a const-generic macro:

     long strtol(QChar *restrict s, QChar **restrict endp, int base);

(See the C23 standard for the meaning of QChar.)  When designing new
APIs, we should make sure to not make this mistake.  But with old APIs,
we're stuck with this problem.  I'm working on a replacement of
strtol(3), which would allow adding a diagnostic in the compiler.  It
would trigger on valid uses of strtol(3), but people will be able to
either switch to the new API, or turn off the diagnostic.

> But maybe it is better to be friendly to those new to see and state it
> explicitly? Alex will know better than I.

I hope we don't.  That would require a CAVEATS section in too many
pages.

	$ grep -rl '\<restrict\>' man | wc -l
	156

While the detail about strtol(3) is tricky, and could be worthy of
documentation (most likely), the general idea behind 'restrict' is
quite easy to understand, IMO, and I think documenting it in plain
English would be too much.  Especially, since 'restrict' is a C99
keyword, so I expect it to be more or less common knowledge.


Have a lovely night!
Alex

--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--xuayqtgpdfxx4vbt
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmjq7/8ACgkQ64mZXMKQ
wqnAfw//SgSU9f+CLgckjEhvmDbTFa3DMB76Cpx9dmkmRAFDIKLWPdrf/OzIHDRv
f02upMnfo7iQ6BTyOYz14J5gpNqJU/QBEQmBl5V7lV/pUTeesou0O9z0y7dIAcP+
oVRFwUv2DSBnK4ZMUj0++KiGN8Ws37CIepojGoS6JIGMHgcBCjazkMoGUkRwE6ZI
q7TYZnde4CrFkcUjr5t6ePc706JXtJ2rEwVOGaLBiJm05IYCs2cumTtuz6CYbPjO
BziND4ObjolvTOIl3In6mgH7J16wLb46DFMnSJFmiEaxaZUpfv21iA13BO4QPQGT
tOlO8l7GvXCtg18SRTZmUcR6Uc3/R9uBe2rpaALcDJC+ovlAeDvI0VLiwZh9dnBR
cQ1GQN6PTffCljpadbs9GUR7+PpDPqAD4HTyrQzbdYnmYf+E5/X+d1p8rlyedJnZ
uR3+fRxiY4HQ7d3GkZWgQ6XOOOyyuFDHuQ3BheXymgSxY5LZmL7zMgacB8qux/mK
1WYDEa5We+TtJgywlaN+7ooRrS3RyH9YkyNd6gUBZpAJwK3gPsFapHy1tZ2vpQJV
bCPgdz0PKMiFnatOx4KMCWwG9p/2kbRXJnyZ6mTjMgu7CcoNc1DsjcamHxV2iunp
lz61eudjUPE24o+UOoIVKykAM0IQCbK44WavRsa0+6cUBy2Go/8=
=t8FJ
-----END PGP SIGNATURE-----

--xuayqtgpdfxx4vbt--

