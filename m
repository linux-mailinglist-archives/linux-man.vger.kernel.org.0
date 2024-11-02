Return-Path: <linux-man+bounces-1835-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E8CED9BA2FB
	for <lists+linux-man@lfdr.de>; Sun,  3 Nov 2024 00:10:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CCC22282C33
	for <lists+linux-man@lfdr.de>; Sat,  2 Nov 2024 23:10:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8DF61170A30;
	Sat,  2 Nov 2024 23:10:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d6f6ZfaI"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D764158546
	for <linux-man@vger.kernel.org>; Sat,  2 Nov 2024 23:10:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730589018; cv=none; b=seYrTRtpWUW+ssInid5hksZAv/Gk9D+exqGyOkQQTIO9z9i11zyS1YmBFijbgvm4p93iWLKjD2s2bj0pVQ/8WuW2zBxnyjbRxWqNErgAIab/x/y7Ow/8+NRYNMX7gKPFQDOlgmHmWNOAc8UVpU251Y/ggQ174imFtrrI9tPF390=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730589018; c=relaxed/simple;
	bh=3x7+k3nLoeGMF3PXLfYumqe8KHl1kDr79ttibonf0h8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=IagO0NRG2kSvgwFRMnSEEHyniiqmTcKMBwjP5fb4mYo91wNn57gKUprTQ44if21lpo836N56gR24L0FBobe+wmoP/UuH88vP9wMQ6vPBQy3UVJMEMZ1REhBs3gLn0StXm47bi+uv1n+VIM/TdYMyAApiJwCwsAB/ysAft4vyB1g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d6f6ZfaI; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7AEA9C4CEC3;
	Sat,  2 Nov 2024 23:10:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730589017;
	bh=3x7+k3nLoeGMF3PXLfYumqe8KHl1kDr79ttibonf0h8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=d6f6ZfaIJ5jdJ02N2TIIw3voq0OZuP/AvueFrVdbeVFqIUNb7qCj9qajAwV0+BRJA
	 zQmutm7x1GnDM5xbWTQRhfdviHtrFzMn7mAdVe2kE0P4mg+Sh81gL+L4lcq2v/0LWw
	 OzB9fyVwuCQBDYV5ODZCwCxJB72Sol3sf37Oi3kiuqF/MX5/YJTUBweRjuw05786tK
	 /0gDMasGw4S9OEkqlJWLOtiQjP8GZbNaPPD6NRvaUeLMSD2xkSvgBoP1CFICtn/cUY
	 gAlX7Wxpcmw4xynJQzQQ36wwBATcFVs/nALTB/ElU91bgV+PtUwK8KatO+indug9G9
	 oWJTW9xkyzhKA==
Date: Sun, 3 Nov 2024 00:10:13 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org, branden@debian.org, cjwatson@debian.org
Cc: groff@gnu.org, Alejandro Colomar <alx@kernel.org>
Subject: [PATCH 0/3] Add mansect(1) program and manual page
Message-ID: <cover.1730588410.git.alx@kernel.org>
References: <CAP-5=fXo5XjxUXshm9eRX-hCcC5VWOv0C5LBZ3Z0_wQb+rdnsw@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ZayUbwMSQiS19Xnt"
Content-Disposition: inline
In-Reply-To: <CAP-5=fXo5XjxUXshm9eRX-hCcC5VWOv0C5LBZ3Z0_wQb+rdnsw@mail.gmail.com>
X-Mailer: git-send-email 2.39.5


--ZayUbwMSQiS19Xnt
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Sun, 3 Nov 2024 00:10:13 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org, branden@debian.org, cjwatson@debian.org
Cc: groff@gnu.org, Alejandro Colomar <alx@kernel.org>
Subject: [PATCH 0/3] Add mansect(1) program and manual page

Hi Branden, Colin,

I'm proposing the addition of this program to the Linux man-pages
repository, as a spin-off of the man_section() shell function that we
already have.  Eventually, we could move it to a separate repository, if
it is more appropriate.

Could you please review?  (And also give any opinions you have about
it.)  It originally supports man(7) only, but we probably can extend it
for mdoc(7) easily.

Here's the manual page, for ease of review:

	$ MANWIDTH=3D64 man man1/mansect.1 | cat
	mansect(1)          General Commands Manual         mansect(1)

	NAME
	     mansect  -  print  the  source code of sections of manual
	     pages

	SYNOPSIS
	     mansect section [file ...]

	DESCRIPTION
	     The mansect command prints the source code of the section
	     of the given manual=E2=80=90page files.  If no files  are  speci=E2=
=80=90
	     fied, the standard input is used.

	     section is a basic regular expression.

	     The TH line is unconditionally printed.

	     The  output of this program is suitable for piping to the
	     groff(1) pipeline.

	EXAMPLES
	     $ man =E2=80=90w strtol strtoul | xargs mansect =E2=80=99\(NAME\|SEE =
ALSO\)=E2=80=99
	     .TH strtol 3 2024=E2=80=9007=E2=80=9023 "Linux man=E2=80=90pages 6.9.=
1"
	     .SH NAME
	     strtol, strtoll, strtoq - convert a string to a long integer
	     .SH SEE ALSO
	     .BR atof (3),
	     .BR atoi (3),
	     .BR atol (3),
	     .BR strtod (3),
	     .BR strtoimax (3),
	     .BR strtoul (3)
	     .TH strtoul 3 2024=E2=80=9007=E2=80=9023 "Linux man=E2=80=90pages 6.9=
=2E1"
	     .SH NAME
	     strtoul, strtoull, strtouq - convert a string to an unsigned long int=
eger
	     .SH SEE ALSO
	     .BR a64l (3),
	     .BR atof (3),
	     .BR atoi (3),
	     .BR atol (3),
	     .BR strtod (3),
	     .BR strtol (3),
	     .BR strtoumax (3)

	SEE ALSO
	     lexgrog(1), groff(1), man(1)

	Linux man=E2=80=90pages (unrelea... (date)                  mansect(1)


What do you think of it?

Have a lovely night!
Alex

Alejandro Colomar (2):
  src/bin/mansect, mansect.1: Add program and its manual page
  scripts/bash_aliases: man_section(), man_lsfunc(), man_lsvar(): Use
    mansect(1)

Vincent Lefevre (1):
  signal.7: Better description for SIGFPE

 man/man1/mansect.1   | 61 ++++++++++++++++++++++++++++++++++++++++++++
 man/man7/signal.7    |  2 +-
 scripts/bash_aliases | 38 +++++----------------------
 src/bin/mansect      | 33 ++++++++++++++++++++++++
 4 files changed, 101 insertions(+), 33 deletions(-)
 create mode 100644 man/man1/mansect.1
 create mode 100755 src/bin/mansect

--=20
2.39.5


--ZayUbwMSQiS19Xnt
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmcmsVUACgkQnowa+77/
2zLK6Q/9F8ETbEYltd4PbGfD9f+Zm+dHYpOpmvs2/lZvEp9K1IcmMBrHB37WT99B
FAQcU2b7yDj+afWyH29UNwAQM6ye4jtvoG+pqtAZCvNBWpgZIWBSxUZd+C7Ydv1v
Hg+1WVdusEje7296QFMZfNpUHbYQQjxbNfu3QRe5oaLuhAVRasLN1bq1ZEDprD8n
BYbr3Puuilm8ctfwToFe0z2iholCN7KxmZAfdxE5gNLL+PI//NTaZ6Fc23O992Qh
3AwboK6Byhht6qaCDjag0VeI4eoKTmTnCpV/dT91+Y1OwsT5lTRRgAnQBGbIrfYc
XCs4QOHDJWIUvFe7FG5WLScNqqVF+i8SSSmR8+eegEDsF7HPeX9huJTNtI9oV8n/
6H+kHL//giqDd0zu/ZGP4H1axsVqwAkdFdt19Q7uFsgVbpUispd0pJ8/w09YBpFl
ZyQsz4gsYU/ZgRKHkHnAvQsCnvR0vbkcWrjT6eDx0gycjkFUOhm1vbhQdzcOTHtJ
qD6bK0rpYCqpyqrvaV3v/sikvPuD5pSafWHr/OVDOmhwBb4/8B0lfgFKHLhzMy1K
rf6DuBQXhTNKHKy/JIZygd2JJnSXhjiluuF7qd8DcUIyipOJBcF7MbnUxtmmq+Wf
+EWsbOj8Q3Cf5Oxuf0Q5yEpROHB/wBu7TsWFsBh3fKIbp/JREhk=
=RkY2
-----END PGP SIGNATURE-----

--ZayUbwMSQiS19Xnt--

