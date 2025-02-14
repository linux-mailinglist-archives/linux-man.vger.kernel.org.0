Return-Path: <linux-man+bounces-2443-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id CBA1BA366A6
	for <lists+linux-man@lfdr.de>; Fri, 14 Feb 2025 21:06:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 45DBD188DFD5
	for <lists+linux-man@lfdr.de>; Fri, 14 Feb 2025 20:06:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CEDC7191F60;
	Fri, 14 Feb 2025 20:05:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j01qO56w"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87F4D1519AB;
	Fri, 14 Feb 2025 20:05:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739563558; cv=none; b=eh1tvB/2GtVTx+Peo2qppmzTVAtssn48XjaXKaxNbpPCyZX/POV6/buyQjREr7uWpjSjmTDsvNrOAxnxiYNCgiM6c/kNUzb2kZuEVfdyfDPSDDes5AS+mj7Q+Yv7ma747VX8JlEaCbiGKIW/jDm5rcVP+Dyy/+gerxy3EZPIivs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739563558; c=relaxed/simple;
	bh=PChn1wIDIGZdyjDjMni+OfJNftup79fqOnyNzjhYVas=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=UrDLOXyhtsEG/RLFelMufvt9OF3a5/90+igxmNN0m+X8CezE76/TpnUaRSsTMRqJDxtpXj4meqhzT2WctobXh0Ig/OaU7irrNSMSQItelqChmSimoHdUrJhgnRDKN9nasjZXU5/9x4sngqfDXOKAmrb8/YVsrloRvdvbMYUzfR8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j01qO56w; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ADBB4C4CED1;
	Fri, 14 Feb 2025 20:05:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739563558;
	bh=PChn1wIDIGZdyjDjMni+OfJNftup79fqOnyNzjhYVas=;
	h=Date:From:To:Cc:Subject:From;
	b=j01qO56w3RHuJaZzRszhgVLi0gzlA2d+ObTCAUVN0f5Q7lyweLXuhI5co9Ellulx0
	 ZLsUr5RGyTu+j/w9DXRFL50ff87e1FCpRm4tAA+0zV8ZPKG3/+NnRr63bI6rflqQWz
	 EefL24eyIpsVbQjZX8HnUMFbTZHPCbiZrMErWaCvNPbADAoydyTZaMW5y7OWWsbsE2
	 3Tw34XfikH4krFhFMJ36LO2aNUVYVnB/10MIBu9HFRfBgr/n3ZMVzU7Blwk9er0kPM
	 oe7j4HSBEOGw1GpnxqE59o/NFNV+y7739M7KdwAFMvaHRKri+rw70tkqioTCibdFDD
	 bUKoMHSVKOh3g==
Date: Fri, 14 Feb 2025 21:06:30 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: linux-kernel@vger.kernel.org, libc-alpha@sourceware.org
Subject: man-pages-6.11 released
Message-ID: <frz5e2i7dv3kpl3mqxnkrrl5v54bjvw77fev6szkrggtx2ztxh@oyfvhx7zfm4u>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="zczpraieiqiv4bnu"
Content-Disposition: inline


--zczpraieiqiv4bnu
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: linux-kernel@vger.kernel.org, libc-alpha@sourceware.org
Subject: man-pages-6.11 released
MIME-Version: 1.0

Gidday!

I'm proud to announce:

	man-pages-6.11 - manual pages for GNU/Linux

!! THERE ARE BREAKING CHANGES !!  Packagers, please have a look at the
list of breaking changes.  You can find them below, or in the
<./Changes> file in the git repository.

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
-pages-6.11 =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Released: 2025-02-14, Aldaya


New and rewritten pages
-----------------------

man7/
	pathname.7


Newly documented interfaces in existing pages
---------------------------------------------


New and changed links
---------------------


Removed pages
-------------


Removed links
-------------


Global changes
--------------

-  Build system:
   -  [Breaking change!]
      Require the user to pass '-R' to make(1).  This is necessary to be
      able to do the following change.  When GNU make(1) releases a new
      version, it will not be necessary to pass -R, but in current
      versions of make(1) it is necessary.

   -  [Breaking change!]
      Use '?=3D' assignments instead of ':=3D', to support setting make(1)
      variables in the environment.  Now one can do this:

	$ export prefix=3D/usr
	$ make -R
	$ sudo make install -R

      (The -R is only necessary in GNU make(1) versions prior to the
       yet-unreleased 4.5.)

   -  Escape '#' in regexes, to support old versions of GNU make(1).
      This fixes a regression in man-pages-6.10, which caused issues in
      users with an old-enough version of GNU make(1), such as the one
      present in Debian old-old-stable.

   -  Fix duplicate overview-panel entries in the PDF book.

-  CONTRIBUTING.d/:
   -  Add C coding style guide.

-  RELEASE:
   -  Document the production of the book.

-  man/:
   -  Refresh bpf-helpers(7) from Linux v6.13.


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
Version:        6.11
Entered-date:   2025-02-14
Description:    Manual pages for GNU/Linux.  This package contains
                manual pages for sections 2, 3, 4, 5, and 7, and
                subsections of those.  Only a few pages are provided in
                sections 1, 6, and 8, and none in 9.
Keywords:       man pages
Maintained-by:  Alejandro Colomar <alx@kernel.org>
Primary-site:   http://www.kernel.org/pub/linux/docs/man-pages
                2.7M  man-pages-6.11.tar.gz
Copying-policy: several; the pages are all freely distributable as long as
                nroff source is provided
End

--=20
<https://www.alejandro-colomar.es/>

--zczpraieiqiv4bnu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmevokUACgkQ64mZXMKQ
wqk3PBAAobRTZziLZVkyk5wA8EfkNXfkU5kJFhulorGJWg7UehG6NlqgRoqE9m4c
WTy7e8pEswRX9mH8+Y/EUnO7cndM9p+b2ze6XQa64v4Ngsgr2ORpWJhA22xn3Ta3
o+LDRvp8p00s60N5XtnS4XIEtct2AcB3fMlIUe7Eb9DXy6nvV+zFQ4QFaqDI2KvJ
sPU+2rQtDkT2Qg6f3q6T/sDPcJQON1w1uekF+t19hDbS1cmFpIuZ7Y5PTNTASXQ4
MHRrLwvE+K017FOGWMfDOfIPDZEsxy6XkDtykI1EsUjkkkRUUdlxmnKf8k9iSsUq
hlmvs6m2ktUUpOgNpANpXbLvtuACuATaro3ayV52hHSrGbUd9sgb6tnYeKGQEiCm
WvO6UZXyjfz9O5GH1BU7rTR1QcxITDZGg5W7UkQwsaW1fK9aVGhgjAyk7Ya/Ff6Q
ziY602u6o6ZgslRGv5Pf0BSFJOU/uEpC4Y2/GpbcO92hUnW4dk/wgaJKWDPcWGwG
j0oT+DMOsLKbkpvr8rrjYmScQCHjHp8tHfZwEBuaJblzUZ4iR1LqeWcwY/iGCKHp
PQ2uHbvUwP9eqqmF7tKLZq/Gmqr2PjgdeASTzmfvSNM/12Vta3mVUnILQLHGN0BP
rpyOnkOV3dQmIOAX4iSQKPsE6Zpuizmz80513YxD3jxUodki204=
=XZbt
-----END PGP SIGNATURE-----

--zczpraieiqiv4bnu--

