Return-Path: <linux-man+bounces-1707-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E99895F9FF
	for <lists+linux-man@lfdr.de>; Mon, 26 Aug 2024 21:51:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 10744284592
	for <lists+linux-man@lfdr.de>; Mon, 26 Aug 2024 19:51:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A4C5F132121;
	Mon, 26 Aug 2024 19:51:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZOKTNaMP"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60FEF198E9B
	for <linux-man@vger.kernel.org>; Mon, 26 Aug 2024 19:51:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724701890; cv=none; b=M6vKCFpHqmoAnbZ7n1+Rss/p7kzFDHwXWNBGV1tfUaZVSNNlzVoSzcvz3AuiOChcZr7Qa4T1yxcqDetHhb5OeuUNN62J9ZAdhsngZoPXmdjsyM+uOhwYHuRlKnS5Li5HJUXJ1Q1zqpdzcjQHOKK1ylLv9epcmSKUX0JtI5biROw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724701890; c=relaxed/simple;
	bh=JUeK2ZWDARuHTo3kOgPWWu0IhGQSPlri6LLUIZKOnCI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=bawJBEvVlSN5oyveV28HQT5C4YcVtEwwO/XO19vQmNkQ+qFF5DkZUoWwIzoYSlcf5qX1SbI82nwt5VbQryL5WSn5OUw3CGaF70bcZSkCbLokcs3IrRTzxhW+CdPtAwZXsSL/YB4kGi47q8nApAUxgeyKKuUHpfCqdjRDMlOm07k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZOKTNaMP; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 40C8DC4E68F;
	Mon, 26 Aug 2024 19:51:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724701889;
	bh=JUeK2ZWDARuHTo3kOgPWWu0IhGQSPlri6LLUIZKOnCI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ZOKTNaMPTDJjyvsjJ9gF28DTvU8RpgpAuU6vslWo99eWi1KJEhcysphbfgB6pX7Vo
	 vaCEF0rBQL0B/Eoga1PSHzO+u529k9NDcpY4pxhZRZWT2exH1cxfZnNfZouzvvG0dU
	 ZFKVWMqCRyTi2tWUB5vgTkKYbcQ1/sE5hGQbRc+umpLC4ceVFG1yF80h+cJwuF9rjZ
	 74DTkoKicQnGS7Oij28YCEGX/H0xJFI4cftDNi3hz92mVL9OetzfTpkN/P3+21abJ/
	 mese4CrNy38YlRby95FrZFPcNMTQGNY2oYUKzhYx9154jaNEYq8JwojWd4DDxDoAkk
	 LhK1KzhKfaMmg==
Date: Mon, 26 Aug 2024 21:51:27 +0200
From: Alejandro Colomar <alx@kernel.org>
To: enh <enh@google.com>
Cc: linux-man <linux-man@vger.kernel.org>
Subject: Re: fchmodat(2) does support AT_SYMLINK_NOFOLLOW now, no?
Message-ID: <22l25y4gk7qaersl4zfsyvvoxctkzs5ea5beiz44wmvbn7tg5i@q2yzq7zaj2b4>
References: <CAJgzZoon_Ewki=qGEPnzbSi7Tfu-i51cT529z3obiHeaP+WuuQ@mail.gmail.com>
 <akk6v6ddvxj2wr3eo32jw4frjqxvgygbbf7xsqrzdofu7gabko@r45j6x5blmfk>
 <CAJgzZooRNJbSe0fsYztsMKvb=C1FLU_cXQX9xtR9DPCavx6H7w@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="suntgv56be2o4y3d"
Content-Disposition: inline
In-Reply-To: <CAJgzZooRNJbSe0fsYztsMKvb=C1FLU_cXQX9xtR9DPCavx6H7w@mail.gmail.com>


--suntgv56be2o4y3d
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: enh <enh@google.com>
Cc: linux-man <linux-man@vger.kernel.org>
Subject: Re: fchmodat(2) does support AT_SYMLINK_NOFOLLOW now, no?
References: <CAJgzZoon_Ewki=qGEPnzbSi7Tfu-i51cT529z3obiHeaP+WuuQ@mail.gmail.com>
 <akk6v6ddvxj2wr3eo32jw4frjqxvgygbbf7xsqrzdofu7gabko@r45j6x5blmfk>
 <CAJgzZooRNJbSe0fsYztsMKvb=C1FLU_cXQX9xtR9DPCavx6H7w@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAJgzZooRNJbSe0fsYztsMKvb=C1FLU_cXQX9xtR9DPCavx6H7w@mail.gmail.com>

Hi Elliott,

On Mon, Aug 26, 2024 at 12:37:46PM GMT, enh wrote:
> looks like Linux 6.6...

Thanks for researching that!

> commit 475d4df82719225510625b4263baa1105665f4b3
> Merge: 511fb5bafed1 712143795327
> Author: Linus Torvalds <torvalds@linux-foundation.org>
> Date:   Mon Aug 28 11:25:27 2023 -0700
>=20
>     Merge tag 'v6.6-vfs.fchmodat2' of
> git://git.kernel.org/pub/scm/linux/kernel/git/vfs/vfs
>=20
>     Pull fchmodat2 system call from Christian Brauner:
>      "This adds the fchmodat2() system call. It is a revised version of t=
he
>       fchmodat() system call, adding a missing flag argument. Support for
>       both AT_SYMLINK_NOFOLLOW and AT_EMPTY_PATH are included.

Maybe we need to add a "C library/kernel differences" section?

	$ grep -rh '^\.SS ' man | sort | uniq -c | sort | tail
	      5 .SS glibc
	      7 .SS Authors and copyright conditions
	      8 .SS Address format
	     11 .SS Ioctls
	     11 .SS glibc notes
	     12 .SS Socket options
	     13 .SS /proc interfaces
	     15 .SS ISO/IEC\~8859 alphabets
	     51 .SS C library/kernel differences
	     99 .SS Program source

Would you mind preparing a patch?

Have a lovely day!
Alex

>       Adding this system call revision has been a longstanding request but
>       so far has always fallen through the cracks. While the kernel
>       implementation of fchmodat() does not have a flag argument the libc
>       provided POSIX-compliant fchmodat(3) version does. Both glibc and m=
usl
>       have to implement a workaround in order to support AT_SYMLINK_NOFOL=
LOW
>       (see [1] and [2]).
>=20
>       The workaround is brittle because it relies not just on O_PATH and
>       O_NOFOLLOW semantics and procfs magic links but also on our rather
>       inconsistent symlink semantics.
>=20
>       This gives userspace a proper fchmodat2() system call that libcs can
>       use to properly implement fchmodat(3) and allows them to get rid of
>       their hacks. In this case it will immediately benefit them as the
>       current workaround is already defunct because of aformentioned
>       inconsistencies.
>=20
>       In addition to AT_SYMLINK_NOFOLLOW, give userspace the ability to u=
se
>       AT_EMPTY_PATH with fchmodat2(). This is already possible with
>       fchownat() so there's no reason to not also support it for
>       fchmodat2().
>=20
>       The implementation is simple and comes with selftests. Implementati=
on
>       of the system call and wiring up the system call are done as separa=
te
>       patches even though they could arguably be one patch. But in case
>       there are merge conflicts from other system call additions it can be
>       beneficial to have separate patches"
>=20
>     Link: https://sourceware.org/git/?p=3Dglibc.git;a=3Dblob;f=3Dsysdeps/=
unix/sysv/linux/fchmodat.c;h=3D17eca54051ee28ba1ec3f9aed170a62630959143;hb=
=3Da492b1e5ef7ab50c6fdd4e4e9879ea5569ab0a6c#l35
> [1]
>     Link: https://git.musl-libc.org/cgit/musl/tree/src/stat/fchmodat.c?id=
=3D718f363bc2067b6487900eddc9180c84e7739f80#n28
> [2]
>=20
>     * tag 'v6.6-vfs.fchmodat2' of
> git://git.kernel.org/pub/scm/linux/kernel/git/vfs/vfs:
>       selftests: fchmodat2: remove duplicate unneeded defines
>       fchmodat2: add support for AT_EMPTY_PATH
>       selftests: Add fchmodat2 selftest
>       arch: Register fchmodat2, usually as syscall 452
>       fs: Add fchmodat2()
>       Non-functional cleanup of a "__user * filename"
>=20
> On Sun, Aug 25, 2024 at 5:52=E2=80=AFAM Alejandro Colomar <alx@kernel.org=
> wrote:
> >
> > Hi Elliott,
> >
> > On Fri, Aug 23, 2024 at 02:40:16PM GMT, enh wrote:
> > > subject says it all... the "This flag is not currently implemented."
> > > on the man page is wrong, i think?
> >
> > I guess it was right when the text was written in 2006.
> >
> > $ git blame --follow -- man/man2/chmod.2 | grep currently
> > 92f114db82 man2/chmod.2     (Michael Kerrisk   2014-02-21 08:35:27 +010=
0 207) This flag is not currently implemented.
> > $ git blame 92f114db82^ -- man2/fchmodat.2 | grep currently
> > a53b8cb2a0 (Michael Kerrisk  2006-05-02 00:05:06 +0000  99) This flag i=
s not currently implemented.
> >
> > That might perfectly have changed in the last 18 years.  :)
> >
> > Would you mind writing a small program and shell session that
> > demonstrates it?  It could be interesting for an EXAMPLES section.
> >
> >
> > Have a lovely day!
> > Alex
> >
> > --
> > <https://www.alejandro-colomar.es/>

--=20
<https://www.alejandro-colomar.es/>

--suntgv56be2o4y3d
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmbM3LgACgkQnowa+77/
2zJoIw//amnpmxO+GrAsn2oCk1DqLBBxPPCDLVLU4kLuHyjpPaxXG2tWkenXzdmR
96O0Rr7j45BzEg4GcKzF2CkCOWUUDDVtR7JwM8I65UscQq+uvesVnOSkxHA/wz2E
j2PmBXONuFYUJgUot3GVIktJv9Wvk+v7sd7bweCk1l9bUYUv5OENeZIW/nZUuiMf
Q6W1HPq9VQcLyTFLLsDwUADrtPNRg5TsL0AQMPHP52SqOKZ7znpLVmIB/rnbVOeB
ZLb0VlEx57YlDLqnkNakPRvXDCw0K8pU9F3vgwHGY/uqf2mdx6Lsx0v7UDhwkd8n
Oy0U4pov+iEfFiNE7O8d9MSdyHHM8g/j/J3TshFtUfIUXbMFJT+0i3YlbP/Jxv7e
WzSPA3xQUOU5BO/g+1rv9mMOkovZMdhBTlK8iHPuNP/KL6BXknH6A8rTKYLzXaVk
peUzBj4KixD7l51ssc5c2ZBO0sFBrWNzFtBkyWa2bRtrXki60gOKJdmhsFHPOkwQ
dpcyM/qEj7nLiw77tT5daz3jtJDE6Oky/UnhwjDaW+2PqYhVk+DEKIeSXhe1h+Wo
7IHulf6t+wVtqgiY0sNcOJBnc3wSmAIpKuhVXKRQhLvGlxwW8ghvo4Ylns26g7YZ
FuCJiPWn0D0S7Hdz+aURtz4c7nGWt6yYwnG7SVMl7sBE7BUtl6w=
=Y7e2
-----END PGP SIGNATURE-----

--suntgv56be2o4y3d--

