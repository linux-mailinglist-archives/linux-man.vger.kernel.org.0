Return-Path: <linux-man+bounces-5466-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4IjlARH3/GkTVwAAu9opvQ
	(envelope-from <linux-man+bounces-5466-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Thu, 07 May 2026 22:33:21 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 721614EEA87
	for <lists+linux-man@lfdr.de>; Thu, 07 May 2026 22:33:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 6B6C3305663B
	for <lists+linux-man@lfdr.de>; Thu,  7 May 2026 20:28:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6526F4E3790;
	Thu,  7 May 2026 20:23:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pFyqmxWT"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6DB54921A0
	for <linux-man@vger.kernel.org>; Thu,  7 May 2026 20:23:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778185385; cv=none; b=lY+7f+ly8VVG82n9kt/QVGxeIQOLdEzaNh/kSHJD6igWG3hWUQl8rkNWHoZVZnW9nuBrJDJzs7auWyspZUOtxB4ro4OmEvkAIp3NnC08cxAt0lHYUd7eFIgLk8vApq6rcc68xioZMvLVWFD05x3TziLy3je6Bs1E1X/KfpG+C60=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778185385; c=relaxed/simple;
	bh=dTdjYKqvDwZKN1vdTK4UPbiHvIe/MHHeWSCicUJi/o8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=EFjZJF57HsRdYj4AP6E6VxQQrxKBD4zMRxNz96e7Zf/ULcNj/GHWD9BuVMrkzrg3mXNdnLSUVnk5GatW+fINUuFk3tA5ohz8n4WWM2glDSFAaWTXSkDC/Oyjt8y788DWOeZBVq0t3OfoJZEgRPL7qFyAIHILj+Bec+JYQA3YU4U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pFyqmxWT; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 658AEC2BCB2;
	Thu,  7 May 2026 20:23:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778185385;
	bh=dTdjYKqvDwZKN1vdTK4UPbiHvIe/MHHeWSCicUJi/o8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=pFyqmxWTAwzc00DKYLW3DpXdgFl5xWg4eAWnDggEgT+1cGmrhtD9TUCVEYwmEB4M7
	 mP51PQRQRuxxor33VDHvzFHlqjuji7m49z9isFu2bE0tEfhAxl826lW2d52I/ifqYt
	 TXleOb+KgoRB3jEn+LV9d0TeNAxVCs+W7IipPXm8U3jc9p34l2l6OOno2yEvrydkNd
	 okaYbFYDPloDZ/jmyiu6K0UfHuDvccdG6jQg33qPFAHKqXQn/PNkqXw+37rz8xbY5F
	 uXmEBWI5gmVOON0LpsM59pXd2KHxT868RZeIwQHXoQmj3lC2A2+ePhSoFTN8P7B2W6
	 gpgzm79PEzHRg==
Date: Thu, 7 May 2026 22:23:01 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Douglas McIlroy <douglas.mcilroy@dartmouth.edu>
Cc: linux-man <linux-man@vger.kernel.org>, kleink <kleink@netbsd.org>, 
	Garrett Wollman <wollman@freebsd.org>
Subject: Re: mkstemp(3)
Message-ID: <afzrREof611q7MIX@devuan>
References: <CAKH6PiUk2L35i4i4TYkEP5VWH8DWodgRDLqUTSRQ27MB20HRhA@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="uu5ul5yk6eiw4a6j"
Content-Disposition: inline
In-Reply-To: <CAKH6PiUk2L35i4i4TYkEP5VWH8DWodgRDLqUTSRQ27MB20HRhA@mail.gmail.com>
X-Rspamd-Queue-Id: 721614EEA87
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5466-lists,linux-man=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_ALL(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~]
X-Rspamd-Action: no action


--uu5ul5yk6eiw4a6j
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Douglas McIlroy <douglas.mcilroy@dartmouth.edu>
Cc: linux-man <linux-man@vger.kernel.org>, kleink <kleink@netbsd.org>, 
	Garrett Wollman <wollman@freebsd.org>
Subject: Re: mkstemp(3)
Message-ID: <afzrREof611q7MIX@devuan>
References: <CAKH6PiUk2L35i4i4TYkEP5VWH8DWodgRDLqUTSRQ27MB20HRhA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAKH6PiUk2L35i4i4TYkEP5VWH8DWodgRDLqUTSRQ27MB20HRhA@mail.gmail.com>

Hi Doug,

On 2026-05-07T13:22:44-0400, Douglas McIlroy wrote:
> The synopses of mkstemp(3) that I have seen, e.g. in ubuntu 13.3.0,
> say incorrectly that it is declared in <stdlib.h>.

That's conforming to POSIX.

	$ MANWIDTH=3D64 man 3posix mkstemp | head -n20
	MKSTEMP(3POSIX)    POSIX Programmer=E2=80=99s Manual    MKSTEMP(3POSIX)

	PROLOG
	     This manual page is part of the POSIX Programmer=E2=80=99s Manual.
	     The  Linux  implementation  of  this  interface may differ
	     (consult the corresponding Linux manual page  for  details
	     of  Linux  behavior),  or  the interface may not be imple=E2=80=90
	     mented on Linux.

	NAME
	     mkstemp =E2=80=94=E2=80=94 create a unique file

	SYNOPSIS
	     #include <stdlib.h>

	     int mkstemp(char *template);

	DESCRIPTION
	     Refer to mkdtemp().

<https://pubs.opengroup.org/onlinepubs/9799919799/functions/mkdtemp.html>

> It is not in gcc's
> <stdlib.h>, and should not be, because stdlib.h is part of the C
> standard and mkstemp is a construct of Unix, not C. (It returns a file
> descriptor.)

It really is in <stdlib.h>.

	alx@devuan:~$ grepc mkstemp /usr/include/
	/usr/include/stdlib.h:extern int mkstemp (char *__template) __nonnull ((1)=
) __wur;
	/usr/include/stdlib.h:#   define mkstemp mkstemp64

However, it is hidden behind preprocessor macros that enable it only
when POSIX extensions are enabled:

	$ man -w mkstemp | MANWIDTH=3D64 xargs mansectf SYNOPSIS | cat;
	mkstemp(3)          Library Functions Manual         mkstemp(3)

	SYNOPSIS
	     #include <stdlib.h>

	     int mkstemp(char *template);
	     int mkostemp(char *template, int flags);
	     int mkstemps(char *template, int suffixlen);
	     int mkostemps(char *template, int suffixlen, int flags);

	 Feature   Test   Macro   Requirements   for  glibc  (see  fea=E2=80=90
	 ture_test_macros(7)):

	     mkstemp():
		 _XOPEN_SOURCE >=3D 500
		     || /* glibc >=3D 2.12: */ _POSIX_C_SOURCE >=3D 200809L
		     || /* glibc <=3D 2.19: */ _SVID_SOURCE || _BSD_SOURCE

	     mkostemp():
		 _GNU_SOURCE

	     mkstemps():
		 /* glibc >=3D 2.19: */ _DEFAULT_SOURCE
		     || /* glibc <=3D 2.19: */ _SVID_SOURCE || _BSD_SOURCE

	     mkostemps():
		 _GNU_SOURCE

	Linux man=E2=80=90pages 6.18=E2=80=9016... 2026=E2=80=9002=E2=80=9008     =
           mkstemp(3)

This is, because as you say, ISO C doesn't allow that identifier to be
declared in <stdlib.h>.

I guess the reason this is in <stdlib.h> is due to Historical
Reasons (TM).

Interestingly, the function first appeared in 4.3BSD, but it had no
header: the user had to declare it manually.  Later, in 4.4BSD, it was
provided in <unistd.h> (which is the usual header where you'd expect
it).  I don't see the function in POSIX.1-1990, so I guess SysVr4 didn't
have it yet.

Later, in POSIX.1-2001, it already appears in <stdlib.h>.  So, at some
point, people decided to move it there.  POSIX doesn't say anything
about the move, though.

FreeBSD provides it in both.
Here's the commit that added it to <stdlib.h>:

	commit 3ecc48e2ea69c322abc93ef02f1b7eadac73b774
	Author: Garrett Wollman <wollman@FreeBSD.org>
	Date:   2002-09-21 02:03:58 +0000

	    Use new visibility macros.  Reorder some disordered declarations.  Add
	    new 1003.1-2001 declarations, commented out in cases where we do not
	    implement the function.  Note that strtoq() and strtouq() are slated
	    for deletion in 6.0.  (2 of 5)

While the <unistd.h> declaration comes from 4.4BSD-Lite:

	commit 59deaec541ae8baaa58daf6c5a2196ea7de180c3
	Author: Rodney W. Grimes <rgrimes@FreeBSD.org>
	Date:   1994-05-24 09:57:34 +0000

	    BSD 4.4 Lite Include Sources

It doesn't tell much.  NetBSD has some more information:

	commit 9b9e2550519f0e7c0cb730c9c3c95137dc14c314
	Author: kleink <kleink@NetBSD.org>
	Date:   1998-06-01 20:10:15 +0000

	    * Further name space protection reorganization: distinguish between va=
rious
	      issues of the XPG.
	    * Move setkey() prototype from <unistd.h> to this file. (XPG4)
	    * Move mkstemp(), mktemp(), ttyslot() and valloc() prototypes from <un=
istd.h>
	      to this file. (XPG4.2)

So, the point where it was moved seems to have been XPG4v2 (which was
later repackaged as SUSv1).  I don't know why XPG4v2 decided to move the
prototype from <unistd.h> to <stdlib.h>.  I've CCed kleink, in case it
knows (and remembers).


Have a lovely night!
Alex

>=20
> Doug McIlroy

--=20
<https://www.alejandro-colomar.es>

--uu5ul5yk6eiw4a6j
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmn89J8ACgkQ64mZXMKQ
wqkxQw/8C8hDxkBgcM2Z01JrAtIAfyGXnkBzso/M/MueYroFuWzWI6wqqRhUjF/D
+w/DQnfXK2vF5OpJbc2qDdoEiBrBBLuYJnodWeGcZlAjZLxRV60xOMgCRsexJQWh
zlSC+28yK13e8UTSbqEh73CEmHksByaXIDg//3rJ8qdjyXmejubhRcQGw8OerHLJ
RhaRY9bRrveBoA3hdhz9DAuVBwpz/+ttL8LKR/WSnir8JTF/Bz9h+BJqPk1F6Gf5
5J3dnqCevVGAMMxaHYgCIiwoHEgVCoDvBu9ip05aC0S3eazrZEauKk6lhOI1C/OQ
/3ZqA9gliK47JTcRclMrHbA9E+vB+WGy5pnoi14T0SzqdYKs/aJV4P65r7D/grmF
TCQqphR1adAbxdd6BEdUKvBA0D/gEn8UlEZ7i0J5VXca43mWoTwMxeYa2+Elu7VT
nscffgqcjd2rJWCHqeRmLdJLllzEr9AyKD3UMmWQfeBYjflLZ5gNaBKqrsF8nYot
QTw89e51J0huI+wloXRmYbKTBLDPTDub5W6dzO0ZwP/E+qzezkbscXsKudwViyX/
UReI0pt7jkmHsotamYXSAfL2k6u94liVX78y8bFB6f8sOfLkoisYt2B5+2tHdKRV
LHFakOP1aCnUVdQUe8dsSeDbFXl6E9lq/m/k1SRZ1PQ1ItY2sGA=
=bFHk
-----END PGP SIGNATURE-----

--uu5ul5yk6eiw4a6j--

