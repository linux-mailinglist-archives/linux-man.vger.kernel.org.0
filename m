Return-Path: <linux-man+bounces-2584-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id ABC14A572F1
	for <lists+linux-man@lfdr.de>; Fri,  7 Mar 2025 21:30:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E6E8117511E
	for <lists+linux-man@lfdr.de>; Fri,  7 Mar 2025 20:30:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4213B2417C8;
	Fri,  7 Mar 2025 20:30:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CY9F7Sxf"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFA9621ABD9;
	Fri,  7 Mar 2025 20:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741379435; cv=none; b=hrN7fBumOrrZArUFFD6Kpz1umk8Bh5WvJPjLhVpGNOafUyNNNqTFei2G6cGWPS/9KOmSJNejVe0rFdDFNO0Waz1QuqzEFo87gOrt9dQ4S2h6V2nTBiPDIWyJgnSy0IFtUgOCvTc7Is0dZF5zYk/0N0TUS8V3wN8UBnY+Pu2Jb6k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741379435; c=relaxed/simple;
	bh=SVuDuYNTBECXXH1sbYaL0zTc87IaMkQffsuQN5iaKTs=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=bhhin854joIXl+9N9XD7p5F94Rk3n0/Hw1gKQzb67jWm3z1TDAaQcf3W5dtBqmHHWoMAEfIJQv/KdpYCXC+qeytz3AYAtep4Zqp4B24zGi694A8EiMpTK2hjVxwvJKfRaQmuO4A4n96gSaMVlyI5rjRHiFMM9kKwcGeCcKVaxi4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CY9F7Sxf; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 51F41C4CED1;
	Fri,  7 Mar 2025 20:30:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741379434;
	bh=SVuDuYNTBECXXH1sbYaL0zTc87IaMkQffsuQN5iaKTs=;
	h=Date:From:To:Cc:Subject:From;
	b=CY9F7SxfgJpE6zT8nvHm3iMBxHGrzrglgCcEu8vivaRKQPegwaQ0q8lRh4MTbXGbE
	 9scr/Bq8rIpv8q1ZyM3f/IYVKEqae5jiEb/IbxB1/hMa5CA6l5iXj6VnVG+Lq9+GAM
	 7wA/fu2fNeylRXLC20IhUBoLB1US52T7mgrQUvHGm+cb7KnYLerNQamJbfquJIb/vR
	 pNthMVe746XlcqwenybZkluCis53LAXH+m60XlU7s1SQTmrilIpPKdBHV5h3C5eOE4
	 0CxWy6v+kW1q95WxxOT++/9YC3bQsJlDggqC/u+8dxyUu74CNMTdUfIP83OS6JM+ip
	 v22iMmQd7xB1w==
Date: Fri, 7 Mar 2025 21:31:40 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: linux-kernel@vger.kernel.org, libc-alpha@sourceware.org
Subject: man-pages-6.13 released
Message-ID: <ft2zbwghk6hbnhlawjigckegrk3yekyeiudp43gafoububm5ma@mbkqcvh4idyf>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="hdgpghrjo6uausj2"
Content-Disposition: inline


--hdgpghrjo6uausj2
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: linux-kernel@vger.kernel.org, libc-alpha@sourceware.org
Subject: man-pages-6.13 released
MIME-Version: 1.0

Gidday!

I'm proud to announce:

	man-pages-6.13 - manual pages for GNU/Linux


Tarball download:
<https://www.kernel.org/pub/linux/docs/man-pages/>
Git repository:
<https://git.kernel.org/cgit/docs/man-pages/man-pages.git/>
Online PDF book:
<https://www.kernel.org/pub/linux/docs/man-pages/book/>

Thanks to all the contributors to this release (in BCC)!
And thanks to our sponsors!

	-  Adfinis		<https://adfinis.com/>
	-  Google		<https://opensource.google/>
	-  Hudson River Trading	<https://www.hudsonrivertrading.com/>
	-  Meta			<https://www.meta.com/>
	-  Red Hat		<https://www.redhat.com/>

Have a lovely day!
Alex


You are receiving this message either because:

        a)  (BCC) You contributed to this release.

        b)  You are subscribed to <linux-man@vger.kernel.org>,
            <linux-kernel@vger.kernel.org>, or
            <libc-alpha@sourceware.org>.

        c)  (BCC) I have information (possibly inaccurate) that you are
            the maintainer of a translation of the manual pages, or are
            the maintainer of the manual pages set in a particular
            distribution, or have expressed interest in helping with
            man-pages maintenance, or have otherwise expressed interest
            in being notified about man-pages releases.
            If you don't want to receive such messages from me, or you
            know of some other translator or maintainer who may want to
            receive such notifications, send me a message.

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D Changes in man=
-pages-6.13 =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Released: 2025-03-06, Vinar=C3=B2s


New and rewritten pages
-----------------------


Newly documented interfaces in existing pages
---------------------------------------------

man7/
        landlock.7
                Landlock ABI v6
                LANDLOCK_SCOPE_ABSTRACT_UNIX_SOCKET
                LANDLOCK_SCOPE_SIGNAL


New and changed links
---------------------


Removed pages
-------------


Removed links
-------------


Global changes
--------------

-  Build system:
   -  PDF book:
      -  Add support for UNIX V10 sources.
   -  Makefiles:
      -  Don't pass an escaped # to grep(1).  Use a trick to work with
         both new and old systems.  This fixes a regressions in the
         build system from man-pages-6.11, which was itself introduced
         while fixing a regression introduced in man-pages-6.10.


Changes to individual files
---------------------------

The manual pages and other files in the repository have been improved
beyond what this changelog covers.  To learn more about changes applied
to individual pages, or the authors of changes, use git(1).


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D Linux Software=
 Map =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D

Begin4
Title:          Linux man-pages
Version:        6.13
Entered-date:   2025-03-06
Description:    Manual pages for GNU/Linux.  This package contains
                manual pages for sections 2, 3, 4, 5, and 7, and
                subsections of those.  Only a few pages are provided in
                sections 1, 6, and 8, and none in 9.
Keywords:       man pages
Maintained-by:  Alejandro Colomar <alx@kernel.org>
Primary-site:   http://www.kernel.org/pub/linux/docs/man-pages
                2.7M  man-pages-6.13.tar.gz
Copying-policy: several; the pages are all freely distributable as long as
                nroff source is provided
End


--=20
<https://www.alejandro-colomar.es/>

--hdgpghrjo6uausj2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmfLV6sACgkQ64mZXMKQ
wqm/AA/9EW05HjY1DlHLp8dPNe+t32hFgxb8/NNejqN0uVSDGg6JztIZhh/cq1JS
rd3o8P6EIWaAp1+LJCCprbY2UW2yqC4J3vUnM+g63jQbMKrj66lLTemCfcH/lT8u
oYKdLUbB+WqEWOlgt3gZ8/7LtOhZ9/RJy65BCtAPND7fuP4tG2lyS7r38g4FGcGl
BuULjihTDOqsDkHuxwWDJonZGquRuB5C7mSZshttEgSw02Sin7Ofy1/V6OMwnErc
S8Ni2dCtGvtitThFpJbbEnsZK3tITO3M/KkPclpk4izmSgYy7nYxHYHGdTMTCA8Q
/oFFeu0TtIfj+c2lkI0YBkTfg5gU7XfulfcprEkWt8Rs0oGBP+B6oamo5fz6PbRH
lMnqmzrhw+pTcJI7Krw1fbGtN/Khgh7KxNoB1LJHUapyGPcKOERu5/c4GMS6orOZ
lOqRLPX0aZbhUJv7ZJlOvZhXiwmJOt1RkVD0yoAbf1YAsjKJ6HiHR0QTSp9uoxvi
MmonRlqXwRslQrGIjeLSFU5Rx9x0gruKphwwxKKsXls3jj0PscyRHnprdW/YhmWt
6KXNuqF1Tn4aNe5GqdHIZ+TmbfmEFPZJ+k2ivS1NC3GCcO2TBDrqzj8NxuHVIZ2m
com9FQk9ke/wkov8rQnBew/2UJdGRCU9o71e5+WkkMm1POUsfcM=
=nsWt
-----END PGP SIGNATURE-----

--hdgpghrjo6uausj2--

