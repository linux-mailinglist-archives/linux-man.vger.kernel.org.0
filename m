Return-Path: <linux-man+bounces-159-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DE917F7A19
	for <lists+linux-man@lfdr.de>; Fri, 24 Nov 2023 18:11:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C528F28183E
	for <lists+linux-man@lfdr.de>; Fri, 24 Nov 2023 17:11:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E437733CCB;
	Fri, 24 Nov 2023 17:11:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m3I8oZO+"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A8CB82D61F
	for <linux-man@vger.kernel.org>; Fri, 24 Nov 2023 17:11:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F08D6C433C7;
	Fri, 24 Nov 2023 17:11:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700845905;
	bh=6gMeY8UlmneCybH2y7QhOQv7I9W9e8NfKSFGN+P/0ZI=;
	h=Date:From:To:Cc:Subject:From;
	b=m3I8oZO+WXMwXh0snHiU3NOMK/jLiV2CvIMvM/0JND4N4+WFDo1BtHw5LhvJq5A+7
	 hn2hD52fVdvOxCWCEluuB6EVdDZS5LLwNTDhX0JPbCeQ6SGgI66nKIkYN+yOb9H16n
	 aa95we00MQU0/gjhbbt58SYQU2LoHdilwunVjn/3G7Nst/RrjVYrAwtxIqoz/a2bb4
	 yuorJuZk8fzVWdJ96vjrwt3i4qWT19LTPIqWJFHycNOj/JQon3h333m8JKIiXWo+qI
	 xmGxTWkMDI55lowgciyM6ncxAJ/1BApVjvRh9g9rR71vRBqDan/94qzdxW5xgZ09u1
	 Lfzj8FPvC13qA==
Date: Fri, 24 Nov 2023 18:11:35 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: Jonny Grant <jg@jguk.org>, Elliott Hughes <enh@google.com>,
	Deri James <deri@chuzzlewit.myzen.co.uk>
Subject: Online PDF of the Linux man-pages @ git HEAD
Message-ID: <ZWDZTY-jjJg9wkCw@debian>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="bdITLoXuaqXiRICl"
Content-Disposition: inline


--bdITLoXuaqXiRICl
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Fri, 24 Nov 2023 18:11:35 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: Jonny Grant <jg@jguk.org>, Elliott Hughes <enh@google.com>,
	Deri James <deri@chuzzlewit.myzen.co.uk>
Subject: Online PDF of the Linux man-pages @ git HEAD

Hi,

I've set up a githooks(5) to generate a PDF book, running the script
contributed by gropdf(1)'s Deri James from within the hook, every time I
`git push` the main branch to my server.

You can find the book here:

<https://www.alejandro-colomar.es/share/dist/man-pages/git/HEAD/man-pages-H=
EAD.pdf>

The pages there don't have a "last modified" date, nor a version.  They
are pristine from git HEAD, so they contain the "(date)" and
"Linux man-pages (unreleased)" placeholders.  The file is suffixed -HEAD
to indicate that it is the state of git HEAD (or was, when downloaded;
if you don't remove it soon without renaming, then you're on your own).

I'm not sure if I should fill the placeholders with the date and
version, by running `make dist`, and then generating the book from the
generated tarball.  Since that's more work for the server, I didn't do
it, but it probably shouldn't be much work, since `make dist` reuses
files (which would have the effect that each page would show a different
version, at the last commit that modified the page).  For a HEAD PDF, I
don't think that's problematic.  If anyone would be interested in that,
feel free to ask for it.

The name of the file is -HEAD, and not -<version>, to have a more stable
URI.  I don't think we should be changing the URI for every commit.  Any
opinions?

In case anyone is curious, here's how:

	$ cat hooks/post-update
	#!/bin/sh

	test "$1" =3D "refs/heads/main" || exit 0;

	cd /srv/src/alx/linux/man-pages/man-pages/;

	unset $(git rev-parse --local-env-vars);
	git fetch srv			>/dev/null;
	git reset srv/main --hard	>/dev/null;

	sh <<__EOF__ &
		</dev/null \
		scripts/LinuxManBook/build.sh 2>/dev/null \
		| sponge /srv/www/share/dist/man-pages/git/HEAD/man-pages-HEAD.pdf \
		>/dev/null 2>&1
	__EOF__

BTW, I'm having trouble making git(1) not wait for it to finish, so if
you have any ideas, they're welcome!


Cheers,
Alex

--=20
<https://www.alejandro-colomar.es/>

--bdITLoXuaqXiRICl
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVg2UcACgkQnowa+77/
2zJBTRAAp0VsKTAI0j4+OLElKHchx0c2YuKK7UBPL+F9kHaxykxptMKQFR1a8NMI
9Mxe5NpQG80YjtrWNEl7blTMd01k99Dxtacxr6pwrhIBwuDLsqa8hDTkCP9llcv1
qlk6pNGHis6je/Tu5vbfVqEhgn/eS4ogRNa6um61B6ooFlxOJ8tMIoJHZ8629Uwm
zuY9qzYmdpSqRfCy+vLDDA5M72XDzJ3nCRUOhdEwRXkw05vNuWQjGuTyX8ft8Gop
WB0BxxHwpLdOwmloG3lmN4wvR+k0GXn1B1PCanLlHLDpCEOJsFS7p7ZCcEdSX4XU
baYniONLoGMH5pe6ZmiA4tjL1i3cTyIJvFZ7VIaEXvsTmVkHteJZ8/AblmkFvFd0
jOEyuf+FqBNNkefe5Y8gRc/IfGeheyEqpYztNWf4SwvEl0YKtu07Ra0/asnaQAnw
RQC13RR93e1WerHS3dm6yzJy6HHt9ZGXB4pLfEmfmo2bj+/X8Mw19yqsqr6QyGw0
aT7z8uO2+ZBhLHJSqSaD/h7p3yvcv46bY6tKraAkbIQHeUkDSPskOVnw0EmBQNFB
7dFDhkALh7udqvS7hNS3T5n735Rpo+FBRkEQTPHxoX0ovUc9f9V6ubqe7wKTFlmc
B7zQ/O6JdlEzKmt+rjgVRXNHs99sGDms6NaxM3CBbsQh0wLy6vQ=
=7Uk9
-----END PGP SIGNATURE-----

--bdITLoXuaqXiRICl--

