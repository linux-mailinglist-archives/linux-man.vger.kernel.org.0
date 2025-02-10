Return-Path: <linux-man+bounces-2379-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 26D75A2EA89
	for <lists+linux-man@lfdr.de>; Mon, 10 Feb 2025 12:06:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 54A98169006
	for <lists+linux-man@lfdr.de>; Mon, 10 Feb 2025 11:05:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 55BC11E47C2;
	Mon, 10 Feb 2025 11:03:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u+l/iov4"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14A351DED71
	for <linux-man@vger.kernel.org>; Mon, 10 Feb 2025 11:03:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739185387; cv=none; b=jKwU5rDO8jVjpU5O4Fyubswe0aZ6136QvyAkLpIsAHKuyyvgQuo9Mp9Z8otcpCqRPsDV0OHjxExwvoid9L3Dix4e1zvNPcR2efxsXJ1PeIJUjkD37ARxs9rTSI5HG8VuSgGD2Txey1AtMvw4nJ80Yo+hGjbcwsICfl/w2Ro6pMU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739185387; c=relaxed/simple;
	bh=gn+jHnGXdloC0h7h+xKwVrtEpMyaOT/pR8SL/QHR+8I=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=YGa9UyEezmBrTKMt/d7/VpvNRvvUoPAdR0eQWC3bzK2IEpuu6iZI0sOzl0mKwXD7QoEBPB9AYI9yZjFVvCqvvHWO95CdXLNIYqe6DsuuEkuWu9dkeof9i1gTU6I1j4d4yuSeDgY0QQJBKUu6WTGBFT1jAUPlYC59n57TgOlUelY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u+l/iov4; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B2445C4CED1;
	Mon, 10 Feb 2025 11:03:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739185386;
	bh=gn+jHnGXdloC0h7h+xKwVrtEpMyaOT/pR8SL/QHR+8I=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=u+l/iov4l7qxBFRBTk+T0lduq7uf3h0ajFmVvSbRh6uYCtM2LNMHYZxmvRzwYz7py
	 cv18IoyncuPiirHwnoStE4N57wfsh2BzfYOz+/X5SYJUTraYg12xsM8Y5Hj4/XAN+D
	 UPS5J2CadVmihVe/C77WjCUje+f4TyFp2lMym5ynI4cOFbDyxcGf4PJp0Sv9QV2XNF
	 AMsc5T3IZkJwJ9xGDEdEYE0mWZAYsYUD/I3WZww6WaMzxdhTVOg6ix5O2SyEV2HaMk
	 NEqwDKC67GUCTyAVMgFh78QKjxteiGXASMZLeL29DUsRP6MJpG5MJCni0h5ptyxkvT
	 vNRVX1NcN4prA==
Date: Mon, 10 Feb 2025 12:03:42 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Boris Pigin <boris.pigin@gmail.com>
Cc: linux-man@vger.kernel.org, sam@gentoo.org
Subject: Re: man-page-6.10 make share/mk/src/sh.mk:16: *** unterminated call
 to function 'shell': missing ')'
Message-ID: <uvn4vqmdrmsamjjf7n36dtiqndrvbjmipja3iihr4ulcafmqh2@qjo6w36av6wn>
References: <38f900b3-28f2-4854-bec3-5b79759eb5b6@gmail.com>
 <ytgxskuvjqldvv4amftqx27t4fh7lpw32nwyirjdxkeazduyxo@vfi5tfoa72h6>
 <26a527c3-f7dd-470d-8b19-c6ac45a33e7a@gmail.com>
 <eb65be1e-b885-442d-806e-ca209576ccbc@gmail.com>
 <5ajfvthbrexcmjd4trqvfaitnqrvfkyiabhvanm3gwga4y6g7l@qqrdmg6rd2qe>
 <8058a323-1d7c-4af8-b030-8ad69999751b@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="3a2jmvrm5imegcok"
Content-Disposition: inline
In-Reply-To: <8058a323-1d7c-4af8-b030-8ad69999751b@gmail.com>


--3a2jmvrm5imegcok
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Boris Pigin <boris.pigin@gmail.com>
Cc: linux-man@vger.kernel.org, sam@gentoo.org
Subject: Re: man-page-6.10 make share/mk/src/sh.mk:16: *** unterminated call
 to function 'shell': missing ')'
References: <38f900b3-28f2-4854-bec3-5b79759eb5b6@gmail.com>
 <ytgxskuvjqldvv4amftqx27t4fh7lpw32nwyirjdxkeazduyxo@vfi5tfoa72h6>
 <26a527c3-f7dd-470d-8b19-c6ac45a33e7a@gmail.com>
 <eb65be1e-b885-442d-806e-ca209576ccbc@gmail.com>
 <5ajfvthbrexcmjd4trqvfaitnqrvfkyiabhvanm3gwga4y6g7l@qqrdmg6rd2qe>
 <8058a323-1d7c-4af8-b030-8ad69999751b@gmail.com>
MIME-Version: 1.0
In-Reply-To: <8058a323-1d7c-4af8-b030-8ad69999751b@gmail.com>

Hi Boris,

On Mon, Feb 10, 2025 at 09:56:40AM +0100, Boris Pigin wrote:
> Hi Alex,
>=20
> as my email was rejected by the mailing list due to containing HTML part
> here is the second try.

[...]

> =C2=A0=E2=95=AD=E2=94=80 =F0=9F=90=BA borisp@blacksun=C2=A0 bash 5.2.37=
=C2=A0 =F0=9F=95=9109:50:38=C2=A0 =F0=9F=96=BF ~/test/man-pages-6.10 =F0=9F=
=A7=AC
> =F0=9F=93=A6 =F0=9F=90=BE14
> =C2=A0=E2=95=B0 $ make -version
> GNU Make 4.2.1
> Built for x86_64-pc-linux-gnu
> Copyright (C) 1988-2016 Free Software Foundation, Inc.
> License GPLv3+: GNU GPL version 3 or later
> <http://gnu.org/licenses/gpl.html>
> This is free software: you are free to change and redistribute it.
> There is NO WARRANTY, to the extent permitted by law.

This seems to be the problem.  I hadn't used such an old version of
make(1) in a long time.  I've been able to reproduce the problem in a
Docker container with Debian Buster.

	root@b3cfb66d7016:/# wget https://kernel.org/pub/linux/docs/man-pages/man-=
pages-6.10.tar.gz >/dev/null 2>&1
	root@b3cfb66d7016:/# ls
	bin   dev  home  lib64			media  opt   root  sbin  sys  usr
	boot  etc  lib	 man-pages-6.10.tar.gz	mnt    proc  run   srv	 tmp  var
	root@b3cfb66d7016:/# tar xf man-pages-6.10.tar.gz=20
	root@b3cfb66d7016:/# rm man-pages-6.10.tar.gz=20
	root@b3cfb66d7016:/# ls
	bin   dev  home  lib64		 media	opt   root  sbin  sys  usr
	boot  etc  lib	 man-pages-6.10  mnt	proc  run   srv   tmp  var
	root@b3cfb66d7016:/# cd man-pages-6.10/
	root@b3cfb66d7016:/man-pages-6.10# make | wc -l; echo $?
	/man-pages-6.10/share/mk/src/sh.mk:16: *** unterminated call to function '=
shell': missing ')'.  Stop.
	0
	0
	root@b3cfb66d7016:/man-pages-6.10# cat /etc/os-release=20
	PRETTY_NAME=3D"Debian GNU/Linux 10 (buster)"
	NAME=3D"Debian GNU/Linux"
	VERSION_ID=3D"10"
	VERSION=3D"10 (buster)"
	VERSION_CODENAME=3Dbuster
	ID=3Ddebian
	HOME_URL=3D"https://www.debian.org/"
	SUPPORT_URL=3D"https://www.debian.org/support"
	BUG_REPORT_URL=3D"https://bugs.debian.org/"
	root@b3cfb66d7016:/man-pages-6.10# make -v
	GNU Make 4.2.1
	Built for x86_64-pc-linux-gnu
	Copyright (C) 1988-2016 Free Software Foundation, Inc.
	License GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.ht=
ml>
	This is free software: you are free to change and redistribute it.
	There is NO WARRANTY, to the extent permitted by law.

It seems to be a make(1) bug?  (Or maybe a simpler, older
specification.)  It is caused by the '#' in the string.  make(1)
probably interprets it as the start of a comment.

The problem also triggers in another place:

	CPP_HAS_ALREADY_D_FORTIFY_SOURCE :=3D \
		$(shell \
			$(CPP) -dM - -Wno-error </dev/null \
			| $(GREP) '#define _FORTIFY_SOURCE ' >/dev/null \
			&& $(ECHO) yes \
			|| $(ECHO) no; \
		)

It's surprising that I haven't triggered issues with old make(1) before.
I have now tried 6.9.1 there, and it works (I see some pages reporting
issues, but the makefile does work).

I've pushed a fix to the contrib branch, and will try to make a new
release in a few days.
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3Da0d5f1961dfd8eb3af2b0ece845448a42c492ae0>

	commit a0d5f1961dfd8eb3af2b0ece845448a42c492ae0 (HEAD -> contrib, alx/cont=
rib)
	Author: Alejandro Colomar <alx@kernel.org>
	Date:   Mon Feb 10 11:56:01 2025 +0100

	    share/mk/: Escape '#' in regexes
	   =20
	    GNU make(1) 4.2 seems to be interpreting those characters as the start
	    of a comment, so we need to escape them.  That seems to calm those old
	    versions of make(1), and doesn't affect negatively the newer ones, and
	    doesn't negatively affect grep(1) either.
	   =20
	    Fixes: 35a780a99bd8 (2024-07-20; "share/mk/: CPPFLAGS: Only define _FO=
RTIFY_SOURCE if it's not already defined")
	    Fixes: 2130162900ab (2024-11-03; "share/mk/, etc/shellcheck/: lint-sh:=
 Add target to lint shell scripts")
	    Reported-by: Boris Pigin <boris.pigin@gmail.com>
	    Cc: Sam James <sam@gentoo.org>
	    Signed-off-by: Alejandro Colomar <alx@kernel.org>

	diff --git a/share/mk/configure/build-depends/cpp/cpp.mk b/share/mk/config=
ure/build-depends/cpp/cpp.mk
	index 594215892..65da77f84 100644
	--- a/share/mk/configure/build-depends/cpp/cpp.mk
	+++ b/share/mk/configure/build-depends/cpp/cpp.mk
	@@ -19,7 +19,7 @@ CPP ?=3D $(CC) $(CFLAGS_) -E
	 CPP_HAS_ALREADY_D_FORTIFY_SOURCE :=3D \
		$(shell \
			$(CPP) -dM - -Wno-error </dev/null \
	-               | $(GREP) '#define _FORTIFY_SOURCE ' >/dev/null \
	+               | $(GREP) '\#define _FORTIFY_SOURCE ' >/dev/null \
			&& $(ECHO) yes \
			|| $(ECHO) no; \
		)
	diff --git a/share/mk/src/sh.mk b/share/mk/src/sh.mk
	index 487eaf14d..05c9e0449 100644
	--- a/share/mk/src/sh.mk
	+++ b/share/mk/src/sh.mk
	@@ -14,7 +14,7 @@ include $(MAKEFILEDIR)/configure/directory_variables/src=
=2Emk
	=20
	=20
	 BIN_sh :=3D $(shell $(FIND) $(SRCBINDIR) -type f \
	-               | $(XARGS) $(GREP) -l '^#!/bin/\(sh\|bash\)\>' \
	+               | $(XARGS) $(GREP) -l '^\#!/bin/\(sh\|bash\)\>' \
			| $(SORT))
	=20

Thanks for the report!


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--3a2jmvrm5imegcok
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmep3Q4ACgkQnowa+77/
2zJttxAAljn3ZdMajfbbYtfNS02DlXKPLR0lQMXLCXOOjPSrZxyqZb7YYAfe1ijN
5wNn5YuLBvydTODd4pDI/hazSv9Zs6puyPUCHY6tKq+7UyOuLRlRPjsFTLGL0BSv
HvP3YiMZYdOWfcguBUHBe64HR4PvL+ZGk6UYY9LMa5iDcXKCsC3B+dEryuXrONxS
KijB71TfUySLssEpGbs4V9g5yAQSe2wjLWvVN7QhtUvJ+eYHbqnoT8XYsENpLxO6
v5XoawlHsDcz0jhoZvQy7sPj6oGJz8SaCwnXcm6bECRZGf3og4B40yDmua/6aoWa
iYk3HkVFUh5om8WvacaGiD9Y24EGgSeskHg2BeAbP5cNgPdHhPE1//6M6x6cKaVm
AJ1j+iiO7QLGjpEXYibnZ+/M114WnXN3O3O2ZHapEUe4lRlkqFbbfmmEMhDUunX1
PM9DlVNf18dx+dr1Uy0rQn3a2Wl4Cxc2kBiPKwVXP/unVNgkaZb6o2PrkIEFiph5
4DCIqI6vH2vcXlHTjrLB+5c7UhT5/7MtBvBJJDTylYP2zc56EzZKy+Y0wep+DpHO
QIVMmi6wWp3CLOuwnrnmUA1x5B+mYlwCJ3JVAaUGhfa6EIHXsYV2pfddqtAdMa7t
KFf/t24Eld0YNVO4Sx7knLj2BZZDpAwYKCwd0f4vqyrH6wNDXt0=
=oZ1z
-----END PGP SIGNATURE-----

--3a2jmvrm5imegcok--

