Return-Path: <linux-man+bounces-3122-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 56AC4AD4E62
	for <lists+linux-man@lfdr.de>; Wed, 11 Jun 2025 10:29:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F00043A4AA6
	for <lists+linux-man@lfdr.de>; Wed, 11 Jun 2025 08:28:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 82B7D236426;
	Wed, 11 Jun 2025 08:29:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JBR+TIm/"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43CFC17736
	for <linux-man@vger.kernel.org>; Wed, 11 Jun 2025 08:29:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749630557; cv=none; b=CFkjlX9n1Bxp1cX+LmH+uzmkI1GMDI08ODYVNAnSSb6pbiu1Ecot2Q3CEbod5UU/T/2VIEfA4dGsy/scPJ8DlWosj4L//W5ZdCgSDcemfO9SUixP2yRMNBXM+2kvch/Nau5q2JQ4AxM1U+CVRmmS3yzY6Wo/LiQccJyOhyptSbE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749630557; c=relaxed/simple;
	bh=bAKF1uTvvZvw2hMVvuDU5IxWPqvb4LbZww9pg13DZd0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=C9ofOMdH5ZE0FsSCp+Wf/0/d0O9HVue/SxgwQYFdoBaW1O0fQ4rK17BOqO6iuj00Sc8fkEx1nYw0bISn9hYTbhPWho3Lcx4LUbxU7z7axGGwF70RupjiocpbmzQTvZG8Mq968FbJAtX3l3h9N3/OueZ8p6xHqH5vvSuQw9Qgrs8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JBR+TIm/; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 30367C4CEEE;
	Wed, 11 Jun 2025 08:29:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749630556;
	bh=bAKF1uTvvZvw2hMVvuDU5IxWPqvb4LbZww9pg13DZd0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=JBR+TIm//aZ+skQRxU9dDAslktfvXDDNbEQ204LhfRUGk4L+MzhYhiC2drvAklCJ2
	 hMAb30TlENPvJ90MQY/w88ADIe/R8Wl17xa7b1q9IQMZm1n9VR4ZDPgItpmYHbJ4S1
	 N06ht/HuXVBgmDGsuVUFsIi5Eqwaznk77nI26WOX3Pzl31nOEYz4SEXyY2/RESCMkE
	 vgySbUem1hw5onv+Dn7djjgdw4k0RqGhzYY6wRLU6palZna3hSg9+VpyJ9wM4pb8gh
	 cV0r+s/DMh7xjDqmqB4RaJJf2h/t4cr6vu2MIR/jiTMsXQGbJovroE0oCF60qHtFsf
	 OiKRPXwf314HQ==
Date: Wed, 11 Jun 2025 10:29:12 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Carlos O'Donell <carlos@redhat.com>
Cc: Florian Weimer <fweimer@redhat.com>, linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man1/iconv.1: Mention that -c does not change exit
 status
Message-ID: <wyux4ypmponzcuu6cd4crdvx6h3jrahtg6l5du6no6dsyq2zcr@xwsmk2bzdqlp>
References: <87msamxso9.fsf@oldenburg.str.redhat.com>
 <fc73559f-e6bb-49b6-8ba1-b431b31d542d@redhat.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="dz6mhxkpivtymgjb"
Content-Disposition: inline
In-Reply-To: <fc73559f-e6bb-49b6-8ba1-b431b31d542d@redhat.com>


--dz6mhxkpivtymgjb
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Carlos O'Donell <carlos@redhat.com>
Cc: Florian Weimer <fweimer@redhat.com>, linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man1/iconv.1: Mention that -c does not change exit
 status
References: <87msamxso9.fsf@oldenburg.str.redhat.com>
 <fc73559f-e6bb-49b6-8ba1-b431b31d542d@redhat.com>
MIME-Version: 1.0
In-Reply-To: <fc73559f-e6bb-49b6-8ba1-b431b31d542d@redhat.com>

Hi Florian, Carlos,

On Thu, Jun 05, 2025 at 10:41:59AM -0400, Carlos O'Donell wrote:
> On 6/5/25 8:46 AM, Florian Weimer wrote:
> > And that input decoding failures are treated as errors.
> >=20
> > Exiting with status 0 is a POSIX conformance issue that was fixed
> > in glibc 2.41.
> >=20
> > Signed-off-by: Florian Weimer <fweimer@redhat.com>
>=20
> Confirmed 6cbf845fcdc76131d0e674cee454fe738b69c69d is the correct glibc
> git commit for this fix.
>=20
> Confirmed it was fixed in glibc 2.41 along with several other iconv fixes.
>=20
> Confirmed issue 8 contains the same language for -c and exit status must =
not change.
>=20
> Reviewed-by: Carlos O'Donell <carlos@redhat.com>

Thanks for the patch and the review!  I've applied the patch and review
tag.
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3Db76a6fb88c3155de5ddb5fc42787aa3ee142b166>

>=20
> > ---
> >   man/man1/iconv.1 | 7 ++++++-
> >   1 file changed, 6 insertions(+), 1 deletion(-)
> >=20
> > diff --git a/man/man1/iconv.1 b/man/man1/iconv.1
> > index 2c8ae0d29..111ff9e89 100644
> > --- a/man/man1/iconv.1
> > +++ b/man/man1/iconv.1
> > @@ -55,6 +55,8 @@ is appended to
> >   .IR to-encoding ,
> >   characters that cannot be converted are discarded and an error is
> >   printed after conversion.
> > +(Characters that cannot be decoded are treated as an error with
> > +or without this flag.)

I've amended this to break the line in a more appropriate place:

+(Characters that cannot be decoded are treated as an error
+with or without this flag.)

See man-pages(7):

$ MANWIDTH=3D72 man man-pages | sed -n '/Use semantic newlines/,/^$/p'
   Use semantic newlines
     In the source of a manual page, new sentences should be started on
     new lines, long sentences should be split  into  lines  at  clause
     breaks  (commas,  semicolons, colons, and so on), and long clauses
     should be split at phrase boundaries.  This convention,  sometimes
     known as "semantic newlines", makes it easier to see the effect of
     patches, which often operate at the level of individual sentences,
     clauses, or phrases.


Have a lovely day!
Alex

> >   .IP
> >   If the string
> >   .B //TRANSLIT
> > @@ -73,8 +75,11 @@ transliterated are replaced with a question mark (?)=
 in the output.
> >   List all known character set encodings.
> >   .TP
> >   .B \-c
> > -Silently discard characters that cannot be converted instead of
> > +Discard characters that cannot be converted instead of
> >   terminating when encountering such characters.
> > +.\" glibc commit 6cbf845fcdc76131d0e674cee454fe738b69c69d
> > +POSIX requires that this option does not change
> > +the exit status of the program.
> >   .TP
> >   .BI \-\-output=3D outputfile
> >   .TQ
> >=20
> > base-commit: 3c2e9ebe2d5ea15a47c1669f75b280cea42a6f8b
> >=20
> >=20
>=20
>=20
> --=20
> Cheers,
> Carlos.
>=20

--=20
<https://www.alejandro-colomar.es/>

--dz6mhxkpivtymgjb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmhJPlgACgkQ64mZXMKQ
wqlbCBAApZ0iq3ECLrwUuhUJnLvv7LU2040ph+498p8WAZHID5ZBL2XVIDNjggL/
cUEuUYqJ1rrta7wiI2Q4DMRZiFILHal5v3TOFi5qUw6PZ3X+NDfpuRe/7xR3R276
yccKuYLukg3QrTJinizDF+nuYJtXTb/r0pxRuH9qLa7x+IbVUh44f5t/f36XltbH
7K9U80YtOeC6u3QCN4bpyzhwxuBf78x+UnSEqBSO/SPWfZ4z30/eg6GjEz63Upvp
wbCf7ws7U7JO+k9R5WISuzj5tYifJnlV/MUdhZuvPS8r0Jhlkftz29S067mJflKt
jwlbVZ951A1zvmQyypaSKtZz9h8U7eeRqbtLmiIxYyAdjHMBewu9ru+VySkt17jw
ka2rgh7Ryh05D8gYM6C+WG4rshOtXVksQcafpJRb2dBQ/4fpKgVdrh4U3XZzR208
to3nux50rQaTLGQcMy0A6HVK5aW6qQpZya8jqq70NlRI6DY5E+abVVQJ1j6ZFSSU
qBf6qj0np8l8ZIsmZ7T/8MXqEu52AB2zNP1GSpv2jMZ97SBkPl7fBVRXEIrwDGBW
VH4Xs3XMOBHeztLk21zzSaXZUcZkJB/ae13y+YGk5xkLvruBtnD1Bd/IDsVJzJ8H
baDmExnhvxCCHj0sZqnNCRC9q3QTvjdWiti8seQBD3bATkgYYy8=
=mhb5
-----END PGP SIGNATURE-----

--dz6mhxkpivtymgjb--

