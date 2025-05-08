Return-Path: <linux-man+bounces-2869-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 65B26AB066E
	for <lists+linux-man@lfdr.de>; Fri,  9 May 2025 01:15:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 455AC9E72DA
	for <lists+linux-man@lfdr.de>; Thu,  8 May 2025 23:15:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 56CE222A4F4;
	Thu,  8 May 2025 23:15:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C5A2yn3u"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CA90215160;
	Thu,  8 May 2025 23:15:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746746119; cv=none; b=bTrKyHotukT1NGvogd19qPQhekYxgORZWqPdHSJbAYeEg8tUQuVctBKru+7whtYfkCVGeuRv1AHoYM2dhNWB5iclTWURqgP2ui0C4pqFc58o+31WY1rJCgfQMUmknt0vvm7N/7slGRT55Pq5QSHY8+F8GASN8pwFg6D8SLwE2l8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746746119; c=relaxed/simple;
	bh=j/J5G2M4Tjpz0KLbEjIWvq8j4Ttv4JwvO/ZUttkD/cM=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=FSudbYEZsoIDN3j0ZORUK7rHu/dIsYqMhHOO5r/Fbrf3VZi5sVQnH6Av0AUgShXKB8aYaj6YVGgSy8BRtjjjVzkqw2lH+cbTTfg/54BZ5WHSLVdBRGv4z8y2A8I8zOh+NwVFuzqy/OTOSB7uX/xhIhorKP9ih4F7qysCgXzAabg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C5A2yn3u; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A7B1FC4CEE7;
	Thu,  8 May 2025 23:15:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746746118;
	bh=j/J5G2M4Tjpz0KLbEjIWvq8j4Ttv4JwvO/ZUttkD/cM=;
	h=Date:From:To:Cc:Subject:From;
	b=C5A2yn3uP2/RSDnGxuvK2149R1tsa9hyTSJqH8t+EEOqDLRWsbk6+MRfgXwr2aFn2
	 Btcml9N8kOLUCDn41gQcQvzTHgD7yD4XWvW3hZ19N0tSp5c+gB0JcMRuiBZvvlpaaq
	 1nI5yX+UqJKoPIV3wgP0aCl6yxrsvHrOmNkCKMCj2bUd6DZVMIgLmIQT8HS6savv0G
	 0BBfhaSGR6zuVZ7jGZviI/jWWXMnqLgCF91/qCJIPVUv0y7cdNiGo4pH816M9b9hNm
	 ZHAt94Fz5G/ZQSA13WmcfSq6JTo4fYIagNn+kMi1BPsTIAGHcA4d3fJq4JFZ+FTHy9
	 1YvVCa/y+2JSA==
Date: Fri, 9 May 2025 01:15:06 +0200
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: linux-kernel@vger.kernel.org, libc-alpha@sourceware.org
Subject: man-pages-6.14 released
Message-ID: <uidtufql6ftz72im7w6zggeihwhuwgnpxwb7j46fbp6ryvzv4i@cwyp6ewepeob>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="te6szl43obedd5tr"
Content-Disposition: inline


--te6szl43obedd5tr
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: linux-kernel@vger.kernel.org, libc-alpha@sourceware.org
Subject: man-pages-6.14 released
MIME-Version: 1.0

Gidday!

I'm proud to announce:

	man-pages-6.14 - manual pages for GNU/Linux


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


Have a lovely night!
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
-pages-6.14 =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Released: 2025-05-09, Aldaya


New and rewritten pages
-----------------------

man2const/
	UFFDIO_MOVE.2const

man7/
	mctp.7


Newly documented interfaces in existing pages
---------------------------------------------

man2/
	fanotify_init.2
		FAN_REPORT_FD_ERROR
		FAN_REPORT_MNT
	fanotify_mark.2
		FAN_PRE_ACCESS
		FAN_MARK_MNTNS
		FAN_MNT_ATTACH, FAN_MNT_DETACH
	open_by_handle_at.2
		AT_HANDLE_CONNECTABLE
		AT_HANDLE_MNT_ID_UNIQUE

man2const/
	TIOCLINUX.2const
		TIOCL_SELCHAR
		TIOCL_SELWORD
		TIOCL_SELLINE
		TIOCL_SELPOINTER
		TIOCL_SELCLEAR
		TIOCL_SELMOUSEREPORT

man3/
	abs.3
		uabs(3)
		ulabs(3)
		ullabs(3)
		uimaxabs(3)

man7/
	fanotify.7
		FAN_DENY_ERRNO()
		FAN_REPORT_FD_ERROR
		FAN_PRE_ACCESS
		FAN_RESPONSE_INFO_AUDIT_RULE
		FAN_REPORT_MNT
		FAN_MNT_ATTACH, FAN_MNT_DETACH
		FAN_EVENT_INFO_TYPE_MNT


New and changed links
---------------------

man3/
	uabs.3					(abs(3))
	ulabs.3					(abs(3))
	ullabs.3				(abs(3))
	uimaxabs.3				(abs(3))


Global changes
--------------

-  CREDITS, *
   -  Move in-source contribution records to a new CREDITS file, and
      update copyright notices to be uniform across the project.

-  man/
   -  Use GNU forward declarations of parameters for sizes of array
      parameters.
   -  \fX =3D> \f[X]
   -  Use 'path' instead of 'pathname' for parameters.

-  Release tarball
   -  The size of the release tarball is around 0.1 MiB smaller, thanks
      to having moved contribution records to the new CREDITS file, and
      having simplified (and unified) copyright notices.


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
Version:        6.14
Entered-date:   2025-05-09
Description:    Manual pages for GNU/Linux.  This package contains
                manual pages for sections 2, 3, 4, 5, and 7, and
                subsections of those.  Only a few pages are provided in
                sections 1, 6, and 8, and none in 9.
Keywords:       man pages
Maintained-by:  Alejandro Colomar <alx@kernel.org>
Primary-site:   http://www.kernel.org/pub/linux/docs/man-pages
                2.6M  man-pages-6.14.tar.gz
Copying-policy: several; the pages are all freely distributable as long as
                nroff source is provided
End

--=20
<https://www.alejandro-colomar.es/>

--te6szl43obedd5tr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmgdOvkACgkQ64mZXMKQ
wqkkxA/+JZrLdSANw8DeuKRS9+CHwslImCVUokCQGmLMqSDNjffhOzThZVewKm7Q
Ul8SaqO4ZhfzRMMlwz9tjqQRMIZ1DEQOcfBNFM+8wCMBP1VgdTj8dFuVbpqMnwGB
jQrZF3JMank6DntQ97lXPiBceLFbg+vAdUKCAK9dDcrvQFpjWlXq7cQQiDhvgxhc
e0lVcZ5boWLP0HNAaiZJjVb/CG92t6mT+ccHlC4NbTzYTAjPnoJcqubmYNB6+RGw
Sc1uquT14I3qIOLnzMlkMzJI3lGepI6SIjb8cv43nepVYL6Ayo876E1eo9Crsl/f
fbq66f0mkf2CHfJ2ijOEsAyursvIUQDqDLxutCK0YeCFGCeiLjwJhDnXvStTNcmE
W9p4CDgKWk7K9vM1MMHJ4ACcfiM468c7GWL6ifo3yvmsbIR+uiDY+/JaKPExNLne
7bOS9uHBdqjcMWYQUQyc5aSXD1eoPTtqxaJiYBTb97G+NlcF8b93ZOlnV5+Mjth9
viibLSXLIY4+8qpe4uiXC7mklIeB/WE+gaPxBQu7Z16plAAsTg8CCjZTkiJNEW6I
YHgE1jwLSSjgDqCg9fBknZTc6NXKr9G1vr5l39xv5JcyCnFLT+t48Li+opJQK0gr
xe/INyZvty19uMCCwIZOdjnq0mR9uYqkwduPUG7rlv22FaV+Fn8=
=2u16
-----END PGP SIGNATURE-----

--te6szl43obedd5tr--

