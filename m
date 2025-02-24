Return-Path: <linux-man+bounces-2512-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E1F8A417D1
	for <lists+linux-man@lfdr.de>; Mon, 24 Feb 2025 09:52:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 954D416ACBD
	for <lists+linux-man@lfdr.de>; Mon, 24 Feb 2025 08:52:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BDC0323CEFF;
	Mon, 24 Feb 2025 08:52:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bX3mneWv"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 766DB23C393;
	Mon, 24 Feb 2025 08:52:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740387122; cv=none; b=gaz7fKJ9QtWH5SlWI4Rf6O/cxM0LnsKebtA6LgiDkwMeWcQ8X5nrTuBSp0jFqSrFeSZtbewpXbGIR+B9mQb517IYR42fLs/fa6fk5DlGbVwKgC7/3GGP+SKQU48+AjQGfd7yEoxHJXl4+zwul93ypI7kbAUoRMuhQhAAXr4MeJM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740387122; c=relaxed/simple;
	bh=YdATLbxhN6SeLn/k0sFLkaEqhB8IiyEZ0ZPVriwPRzk=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=R9rPoNh4uOFETHGjPswvvVGFNqlbIsgemCbNNEPl8OE3mCAMajuFPj1BpeQyaXipMZFwMmBk7jXq9qxBL9kEy2+nLAXgU3YPQ6RUrgiyqzX4NbPkfaEvX+i8PEKK3lXq0oNTWk9+H5JHNv+mxyl2qCSquclTEpCt41WfrEd4DxA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bX3mneWv; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 39C1CC4CED6;
	Mon, 24 Feb 2025 08:51:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740387122;
	bh=YdATLbxhN6SeLn/k0sFLkaEqhB8IiyEZ0ZPVriwPRzk=;
	h=Date:From:To:Cc:Subject:From;
	b=bX3mneWv3VHyTuqIjRJ28cW+GSVDzT7N9YOc9/PrXMxx6ya9MnS+ATjPzQ8eFIE6K
	 gwIW04bXMeazHzmsVCjCU8QCgAuYDucab6iLsAhHLTe0hznbIIJs7TuVkIlOVAMcGG
	 dMKPSnAwdPdgtI8zzb3PRg8+pBt+UWxTnNrWHtgaGzjdraxuaP3DNnIOsd/IwNJMVa
	 iI1s5QtvMH/B4LjJjxWdyjfDekambbKmrGpZA3hq3ZwCOyA0eeKTLuYawodWdo5RHc
	 /E3i5iC6KMtkEXFO0Y3Pt2QnQ/QHLTGYVlikYQGz5DLYEtqobzMR4EWXmuHcusR29s
	 hkwrGPULkjNxQ==
Date: Mon, 24 Feb 2025 09:51:53 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: linux-kernel@vger.kernel.org, libc-alpha@sourceware.org
Subject: man-pages-6.12 released
Message-ID: <ta6s4sbtejf7urbz6s74s6yycv3gqngv43dyen3cdyt4c254zl@uapykbw3wodv>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="exqob6wmqhi6n3ex"
Content-Disposition: inline


--exqob6wmqhi6n3ex
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: linux-kernel@vger.kernel.org, libc-alpha@sourceware.org
Subject: man-pages-6.12 released
MIME-Version: 1.0

Gidday!

I'm proud to announce:

	man-pages-6.12 - manual pages for GNU/Linux


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
-pages-6.12 =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Released: 2025-02-22, Venezia

	(Due to bad internet while traveling, there's been a 2-day delay
	 between the release date and the actual distribution of the
	 release.)


New and rewritten pages
-----------------------


Newly documented interfaces in existing pages
---------------------------------------------

man2/
	mbind.2
		MPOL_PREFERRED_MANY
	set_mempolicy.2
		MPOL_PREFERRED_MANY


New and changed links
---------------------


Removed pages
-------------


Removed links
-------------


Global changes
--------------

-  Build system:
   -  Use ifndef and :=3D instead of ?=3D (fixes regression introduced in
      6.11, which affected at least the version string).


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
Version:        6.12
Entered-date:   2025-02-24
Description:    Manual pages for GNU/Linux.  This package contains
                manual pages for sections 2, 3, 4, 5, and 7, and
                subsections of those.  Only a few pages are provided in
                sections 1, 6, and 8, and none in 9.
Keywords:       man pages
Maintained-by:  Alejandro Colomar <alx@kernel.org>
Primary-site:   http://www.kernel.org/pub/linux/docs/man-pages
                2.7M  man-pages-6.12.tar.gz
Copying-policy: several; the pages are all freely distributable as long as
                nroff source is provided
End

--=20
<https://www.alejandro-colomar.es/>

--exqob6wmqhi6n3ex
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAme8MykACgkQ64mZXMKQ
wqmPGRAApq5SfjV+bQUyWSPZ5cBGSztsdfPyNvFhGh8JOkdAxZiRuLQzZhYLHlL0
PmzXPMejvC0YmxYSDDlt8IOYK5Vp4QTP765WxArJSJDErZnDuHkmaafBaknzBkZ5
+kZB4zA0zN312GIcIu+3GpMCHYMyX8pyc4KnpYO2Bl/6x8dqvQBpDUoVUi9hayWy
T8evLlcaLZp2Ubepk8RUck3l5RrbKKu0/SW8ukU6t7XF1f2O3BJz5wt9ma2hSSf2
UDtEoaIzmAPYzM0xxFOTrv8/rAWy97Oo1uE/rt/+n7Nk4JcX1DfHcF6eVEgt91g1
13Q1yZlNXzPC+qth6DZZ9XmwK5j6c4JVZ6FJv++iJdmPcjfkqEV0oR/wemPuQA5I
1MkOAQ7taxRLOhNyBe1NXqYtQ0d8j+/uQvPTd+uecrC93myVc+OZDyJ7AG/Zy/Zl
kgi6JbC1z8H2bE9wwMLkeydOnig55NNvkcZUcPI3oDXNUPsOePE+4ZxBIzKBI2FK
H81uZpefVFG6Zy40hl84D4Dwptrgqy9a3irG2za95Wp9/kcGL5T41PJXCwohqByc
NV9oAgOyWAT4twg9uzctM/nwg39K8ajX3cbARGAbydSTlsNL1jSOXQBQLzvhIFtY
myBxPHs/z9QuDCOSb9YkgwhtYusZrR7Rp5SI8oae5wiAYqLm8sc=
=1F2B
-----END PGP SIGNATURE-----

--exqob6wmqhi6n3ex--

