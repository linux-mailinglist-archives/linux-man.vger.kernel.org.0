Return-Path: <linux-man+bounces-2448-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 35FB2A373BD
	for <lists+linux-man@lfdr.de>; Sun, 16 Feb 2025 11:04:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E861816E7DB
	for <lists+linux-man@lfdr.de>; Sun, 16 Feb 2025 10:04:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 500751624EC;
	Sun, 16 Feb 2025 10:04:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m0ftwhTq"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F4A778F35
	for <linux-man@vger.kernel.org>; Sun, 16 Feb 2025 10:04:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739700257; cv=none; b=FhkRGezbyN/J5h0tN/xUU8OscG7Bur+zNmZ4cc94MFtyoBNePDVHMeg5QSzNRH7UtGhWZBtTsEhvKpwwKHWg4qmkcx5EKPNeZ6i2N42n4cYrUTCDiztEbbLUsFP93Gh/cNBgjiMglOgU5znmsM3CqQMmrqtKzzR5Xvf6vbTsBjU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739700257; c=relaxed/simple;
	bh=XkETi0FAAfw3VWEdJDJad55dPkiHI/mDdbCv8ydFPWU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=PKUhe9MbLYh5v+DSEAnt+WNuNcLOpeJxI091BY33F1KdDjqo5hLZuYOr0bQyZeI+HwvJ2IadIF/xzt2NEOJWihBAGtqD8oK0DnCLeoJ7+w1y+RxKzpVhfigPESg97YTQI9EQmqfqsCgg7RlZySKt6Zifu4iXoajtuIGfJ/Sz7uY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m0ftwhTq; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AF7B7C4CEDD;
	Sun, 16 Feb 2025 10:04:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739700253;
	bh=XkETi0FAAfw3VWEdJDJad55dPkiHI/mDdbCv8ydFPWU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=m0ftwhTq1fX6N/vc6bu29qde54KtQKaMg/MBNkiVBMN3baTKmqnM+wIiQVh8sLRV2
	 HCwzirAb+qtGXfyuaFTxE/d4prC7pstRE18nk76tpGWDDd+x8Q7nAmf6Tkdzfx3UR0
	 gsS84M4cSYW2Po1Sw3CXChwWmlW4MvlKYGKDYqkucB3uykzoLSjtxcIKJDHgHGj81D
	 sv4pUV5pi2aOBARrUZgerBnYj85gJvkwhlZAFgV1b6PGCvjhjUVHF89SDhZZJQFHFs
	 +Gga0mCz3TFCJbDwkx63Q34Z6Rn2D0BOUzJ++I8IxoNHWaXMPwiBo3IHz/PvHKA0ir
	 95HNRH/MNT35w==
Date: Sun, 16 Feb 2025 11:04:53 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Askar Safin <safinaskar@zohomail.com>
Cc: Carlos O'Donell <carlos@redhat.com>, linux-man@vger.kernel.org
Subject: Re: [PATCH v2] man/man3/getcwd.3: say more clear that syscall can
 return "(unreachable)", but modern glibc wrapper cannot
Message-ID: <b3zts3ur477auupq5nhv4efdqljtbjh644exvs2xxfsvwcpgbq@dwgzjuygkk3a>
References: <20250214125023.2798287-1-safinaskar@zohomail.com>
 <20250216061828.2277971-1-safinaskar@zohomail.com>
 <ddabfiggfra3fb2bxwkms4wiwp764m3nzp3g6cdzaja4b3nkvw@jzcn4kgc7ltx>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="oja5fptigoszqbvb"
Content-Disposition: inline
In-Reply-To: <ddabfiggfra3fb2bxwkms4wiwp764m3nzp3g6cdzaja4b3nkvw@jzcn4kgc7ltx>


--oja5fptigoszqbvb
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Askar Safin <safinaskar@zohomail.com>
Cc: Carlos O'Donell <carlos@redhat.com>, linux-man@vger.kernel.org
Subject: Re: [PATCH v2] man/man3/getcwd.3: say more clear that syscall can
 return "(unreachable)", but modern glibc wrapper cannot
References: <20250214125023.2798287-1-safinaskar@zohomail.com>
 <20250216061828.2277971-1-safinaskar@zohomail.com>
 <ddabfiggfra3fb2bxwkms4wiwp764m3nzp3g6cdzaja4b3nkvw@jzcn4kgc7ltx>
MIME-Version: 1.0
In-Reply-To: <ddabfiggfra3fb2bxwkms4wiwp764m3nzp3g6cdzaja4b3nkvw@jzcn4kgc7ltx>

On Sun, Feb 16, 2025 at 11:00:56AM +0100, Alejandro Colomar wrote:
> Hi Askar, Carlos,
>=20
> On Sun, Feb 16, 2025 at 06:18:28AM +0000, Askar Safin wrote:
> > I verified using expirement that modern glibc wrapper getcwd actually n=
ever returns "(unreachable)".
> > Also I have read modern glibc sources for all 3 functions documented he=
re.
> > All they don't return "(unreachable)".
> > Also I changed "pathname" to "pathnames".
> >=20
> > Now let me describe my expirement. I compiled this C source:
> >=20
> > =3D=3D=3D
> > #include <sys/syscall.h>
> > #include <unistd.h>
> > #include <stdio.h>
> >=20
> > int
> > main (void)
> > {
> >   char buf[1000];
> >   if(syscall(SYS_getcwd, buf, sizeof(buf)) =3D=3D -1)
> >     {
> >       perror ("SYS_getcwd");
> >     }
> >   else
> >     {
> >       printf ("SYS_getcwd: %s\n", buf);
> >     }
> >   if(getcwd(buf, sizeof(buf)) =3D=3D NULL)
> >     {
> >       perror ("getcwd");
> >     }
> >   else
> >     {
> >       printf ("getcwd: %s\n", buf);
> >     }
> >   return 0;
> > }
> > =3D=3D=3D
> >=20
> > to a binary /tmp/a and run the following command:
> >=20
> > $ sudo unshare --mount bash -c 'set -e; mkdir /tmp/dir; mount -t tmpfs =
tmpfs /tmp/dir; cd /tmp/dir; umount -l .; /tmp/a'
> >=20
> > The output was:
> >=20
> > SYS_getcwd: (unreachable)/
> > getcwd: No such file or directory
>=20
> Thanks!  I prefer if we show a continuous shell session, which is easier
> to follow than code mixed with explanations.  So I would add the
> following (and indented, to show it's code; that also makes it easier to
> keep the #include lines in git(1)):
>=20
> 	alx@devuan:~/tmp$ cat getcwd.c;
> 	#include <unistd.h>
> 	#include <stdio.h>
> 	#include <sys/syscall.h>
>=20
> 	int
> 	main(void)
> 	{
> 		char  buf[1000];
>=20
> 		if (syscall(SYS_getcwd, buf, sizeof(buf)) =3D=3D -1)
> 			perror("SYS_getcwd");
> 		else
> 			printf("SYS_getcwd: %s\n", buf);
>=20
> 		if (getcwd(buf, sizeof(buf)) =3D=3D NULL)
> 			perror("getcwd");
> 		else
> 			printf("getcwd: %s\n", buf);
>=20
> 		return 0;
> 	}
> 	alx@devuan:~/tmp$ gcc -Wall -Wextra -o /tmp/getcwd getcwd.c;
> 	alx@devuan:~/tmp$ sudo unshare --mount bash;
> 	root@devuan:/home/alx/tmp# set -e;
> 	root@devuan:/home/alx/tmp# mkdir /tmp/dir;
> 	root@devuan:/home/alx/tmp# mount -t tmpfs tmpfd /tmp/dir/;
> 	root@devuan:/home/alx/tmp# cd /tmp/dir/;
> 	root@devuan:/tmp/dir# umount -l .;
> 	root@devuan:/tmp/dir# /tmp/getcwd;
> 	SYS_getcwd: (unreachable)/
> 	getcwd: No such file or directory
> 	root@devuan:/tmp/dir# exit;
> 	exit
>=20
> I have also adapted the example program to the C coding style of the
> project:
> <https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/tree/CONTRIB=
UTING.d/style/c>
>=20
> >=20
> > Signed-off-by: Askar Safin <safinaskar@zohomail.com>
>=20
> Please add a line for Carlos:
>=20
> 	Cc: Carlos O'Donell <carlos@redhat.com>

Oh, and please add two entries for the links provided by Carlos.
They'll be useful too:

	Link: <https://sourceware.org/bugzilla/show_bug.cgi?id=3D18203>
	Link: <https://sourceware.org/git/gitweb.cgi?p=3Dglibc.git;h=3D52a713fdd0a=
30e1bd79818e2e3c4ab44ddca1a94>
>=20
> > ---
> >=20
> > Changes since v1:
> > - I added that old glibc versions are buggy, too
> > - Added sources for my expirement to commit message (and did small twea=
ks to commit message)
> >=20
> >  man/man3/getcwd.3 | 7 +++++--
> >  1 file changed, 5 insertions(+), 2 deletions(-)
> >=20
> > diff --git a/man/man3/getcwd.3 b/man/man3/getcwd.3
> > index 685585a60..97e3c766f 100644
> > --- a/man/man3/getcwd.3
> > +++ b/man/man3/getcwd.3
> > @@ -245,8 +245,11 @@ process (e.g., because the process set a new files=
ystem root using
> >  without changing its current directory into the new root).
> >  Such behavior can also be caused by an unprivileged user by changing
> >  the current directory into another mount namespace.
> > -When dealing with pathname from untrusted sources, callers of the
> > -functions described in this page
> > +When dealing with pathnames from untrusted sources, callers of the
>=20
> As Carlos said, I prefer if this patch doesn't include the change
> s/pathname/&s/.  That would reduce the diff.
>=20
> Thanks for the help with this, Carlos!
>=20
> > +functions described in this page (until glibc 2.27)
> > +or raw
>=20
> I think it would be more appropriate to say 's/or raw/or the raw/'.
>=20
> > +.BR getcwd ()
> > +system call
>=20
> Other than those minor comments, I think this LGTM.  Please address
> those, and I'll take the patch.
>=20
> Carlos do you have any further comments?
>=20
>=20
> Have a lovely day!
> Alex
>=20
> >  should consider checking whether the returned pathname starts
> >  with '/' or '(' to avoid misinterpreting an unreachable path
> >  as a relative pathname.
> > --=20
> > 2.39.5
> >=20
> >=20
>=20
> --=20
> <https://www.alejandro-colomar.es/>



--=20
<https://www.alejandro-colomar.es/>

--oja5fptigoszqbvb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmexuEUACgkQ64mZXMKQ
wqm4HA/+LD2Kjzk3cIjtqSJB0h4cqc9R2XLQC+uaHu0MTGX5SGfxa6tudwpaDexT
/Ij0myylP8yLztcXbLtHj1AsxHp2C32nI4jDIujh7WBoKv7nO4cTQECPPE+uM5FC
F4rcBLaRKf7cJDdz6c1TKpds6zQJZqRkFbYjGOTgJJMnJpv1gtDMORjjSyhSKu9W
WlEd0lc0JZ1VeL2vsnqt62EF9lXSgKPkxqrGfVmNSURnkiU/wgc/GNerMweKygiL
bfRYDwQdCzmlfSCph+lOeAaJrcZU5od+7prxAQBHiW8RR9xv/41JhxOn0L70dOGm
f4IvnGL+rZDNHT7dO7m3eDowzykICYH2pzdwhwcUbwEowpNv8iqEvPHnJPNdZ+ZR
4KKIMrTs8TBTgFJ5gzN70i+P9xbi4srft5JNBNq3WY2fcphX6GzYBrv+22lRyzRv
5C9dVJvq7WLubKbabrl3+/a+8OO72CZDEOZQtPg5FwAB36+73trrOEZvvTyoqklk
sUuPrlhtiyBPT8/xDmfrssI0ll7zBrk5OkvKc9i9hxnAS6kjxpekXrhKuzTR0vlU
5l0DmWcjferovoq6o1EWZY+Or597uVzjNTidcd3JlrNdpja5PU6aappmEQsCM9jq
uCUyPqgwvhWTNq/czUWH+Z0TdH7/WK6+eQKD3YRpVUWM+CC0Z2E=
=+kgz
-----END PGP SIGNATURE-----

--oja5fptigoszqbvb--

