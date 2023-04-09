Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 10E146DC1E9
	for <lists+linux-man@lfdr.de>; Mon, 10 Apr 2023 00:27:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229480AbjDIW1L (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 9 Apr 2023 18:27:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42812 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229445AbjDIW1K (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 9 Apr 2023 18:27:10 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id EE68FB1
        for <linux-man@vger.kernel.org>; Sun,  9 Apr 2023 15:27:07 -0700 (PDT)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id A3DC25C98;
        Mon, 10 Apr 2023 00:27:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202211; t=1681079225;
        bh=UReZt404l33kzTlWMBPrpEsLimAzFer3vK79F1bcHAA=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=EW7YCXCT8pEy/D097cgszY8J1/3bprO9jTfhgKsLg2wKWg4jIlf1s08SasYf3Xkyg
         Nkleq3ezAAw7cHhlq62FJxyL2GcUHx/kCvQg8SNN66Yp2cGBJ8BXlPvNbOUQ1YctW1
         +SaD+rFpLk15gciA/jmYYnvqUcl5lzKyw1FvCr+wbVOpWyjFPvZQVtlOM+uXr+fmf2
         KXM49Kh7R4qo6bxuhiLeBeBiD3V+pHOGOyrjWo96ez2BKZ80gmlYJbbzUPcQxUi2xW
         JxSkVLKthOpiJjDt8ndzt5s+OQHbJwa9ak0MG05k9u/0rZd1EAJ3//KcvJ4CwDgXO7
         NUNNTJDfxLxCg==
Date:   Mon, 10 Apr 2023 00:27:04 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: Re: [PATCH] filesystems.5, erofs.5: add erofs documentation
Message-ID: <z4p3ky24whjkpqhsnn723fj7cjqn5yb46h2jdqkwth27o7tf4s@ggz3jtz2uz2s>
References: <hpmjk4rzx2prznaxlb2gnc5vrnjmljxndsvxcsc22pliytevup@4lah64un5sht>
 <8be1b8f7-39d2-2135-1f55-5d05b7fe4d03@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="iujl3uh4o3yfnaar"
Content-Disposition: inline
In-Reply-To: <8be1b8f7-39d2-2135-1f55-5d05b7fe4d03@gmail.com>
User-Agent: NeoMutt/20230407
X-Spam-Status: No, score=0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,RDNS_DYNAMIC,SPF_HELO_PASS,SPF_PASS
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--iujl3uh4o3yfnaar
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi!

On Sun, Apr 09, 2023 at 11:43:05PM +0200, Alejandro Colomar wrote:
> Applying: filesystems.5, erofs.5: add erofs documentation
> /home/alx/src/linux/man-pages/man-pages/.bare.git/worktrees/master/rebase=
-apply/patch:65: trailing whitespace.
> Must be given as many times and in the same order as=20
> warning: 1 line adds whitespace errors.
Fixed.

> On 4/9/23 19:16, =D0=BD=D0=B0=D0=B1 wrote:
> > +There are two inode formats:
> > +32-byte compact with 16-bit UID/GID, 32-bit file size, and no file tim=
es,
> > +and 64-byte extended with 32-bit UID/GID, 64-bit file size,
> > +and a modification time
> > +.RI ( st_mtim ).
> The above is a bit difficult to parse due to the ands and commas.
> How about a list (.IP \[bu] 3) with the two entries or something
> like that?
Opted for .br and \[bu], .IP gets too tall and sparse and for my taste;
feel free to editorialise it to the .IP spelling tho.

> > +Defaults to yes
=2E

> > +.BR domain_id =3D \fIdid\fP ", " fsid =3D \fIid\fP
> You could use .TQ:
>=20
> .TP
> .BR domain_id =3D \fIdid\fP
> .TQ
> .BR fsid =3D \fIid\fP
>=20
> (similarly above in dax, acl, and user_xattr)
Applied.

> > +.B erofs
> > +images are versioed through the use of feature flags;
> s/ioe/ione/
Applied.

> > +these are listed in the
> > +.B \-E
> > +section of
> > +.BR mkfs.erofs (1),
> > +.SH NOTES
> You could use the CONFIGURATION section for this.  :)
Had it in NOTES because that's where tmpfs.5 has its
  In order for user-space tools and applications to create tmpfs
  filesystems, the kernel must be configured with the CONFIG_TMPFS
  option.

Moved to CONFIGURATION, you might want to move it in tmpfs.5 too.

> > +The kernel must be configured with the
> > +.B CONFIG_EROFS_FS
> > +option to mount EROFS filesystems.

> > +.I Documentation/filesystems/erofs.txt
> > +in the kernel source.
> I prefer saying Linux rather than kernel.
Also applied, but note that tmpfs.5 also spells it "kernel" in both
equivalent hunks.

> > --- a/man5/filesystems.5
> > +++ b/man5/filesystems.5
> > @@ -48,6 +48,12 @@ filesystems in the Linux kernel.
> >  See the kernel documentation for a comprehensive
> >  description of all options and limitations.
> >  .TP 10
> Bruh, still have pages that specify the indentation...
> Would you mind sending a patch that removes these in fs(5),
> or in all the pages you feel like, if you want?
Too drunk to evaluate all of them rn, killed the one in filesystems.5.

Scissor-patch below.

Best,
-- >8 --
Subject: [PATCH v2] filesystems.5, erofs.5: add erofs documentation,
 clean up indent

Modelled after tmpfs(5) =E2=80=92 there's a listing of mount options,
and a summary of limitations. The feature flags are described in
mkfs.erofs, and they're versioned and maintained upstream quite well
there, so no need to duplicate those, since you only care on image
creation.

The real value add is the mount options, but I cannot figure out
how device_id and fsid interact with the system at large,
so I just noted they're there.

State as of 6.3-rc5.

Also, remove explicit .TP indent in filesystems.5 since we're already
touching this hunk: all entries sans iso9660 and Reiserfs fall within
the default prevailing indent, so no need to specify a wide one.

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man5/erofs.5       | 95 ++++++++++++++++++++++++++++++++++++++++++++++
 man5/filesystems.5 |  8 +++-
 2 files changed, 102 insertions(+), 1 deletion(-)
 create mode 100644 man5/erofs.5

diff --git a/man5/erofs.5 b/man5/erofs.5
new file mode 100644
index 000000000..933e830b8
--- /dev/null
+++ b/man5/erofs.5
@@ -0,0 +1,95 @@
+.\" Copyright (c) 2016 by Michael Kerrisk <mtk.manpages@gmail.com>
+.\"
+.\" SPDX-License-Identifier: Linux-man-pages-copyleft
+.\"
+.TH erofs 5 (date) "Linux man-pages (unreleased)"
+.SH NAME
+erofs \- the Enhanced Read-Only File System
+.SH DESCRIPTION
+.B erofs
+is a create-once read-only filesystem,
+with support for compression and a multi-device backing store.
+.PP
+There are two inode formats:
+.br
+\[bu] 32-byte compact with 16-bit UID/GID, 32-bit file size, and no file t=
imes,
+and
+.br
+\[bu] 64-byte extended with 32-bit UID/GID, 64-bit file size,
+and a modification time
+.RI ( st_mtim ).
+.\" See fs/erofs/super.c:shmem_parse_options for options it supports.
+.SS Mount options
+.TP
+.B user_xattr
+.TQ
+.B nouser_xattr
+Controls whether
+.I user
+extended attributes are exposed.
+Defaults to yes.
+.TP
+.B acl
+.TQ
+.B noacl
+Controls whether POSIX
+.BR acl (5)s
+are exposed.
+Defaults to yes.
+.TP
+.BR cache_strategy =3D disabled | readahead | readaround
+Cache allocation for compressed files:
+never, if reading from start of file, regardless of position.
+Defaults to
+.BR readaround .
+.TP
+.BR dax
+.TQ
+.BR dax =3D always | never
+Direct Access control.
+If
+.B always
+and the source device supports DAX, uncompressed non-inlined files
+will be read directly, without going through the page cache.
+.B dax
+is a synonym for
+.BR always .
+Defaults to unset, which is equivalent to
+.BR never .
+.TP
+.BR device =3D \fIblobdev\fP
+Add extra device holding some of the data.
+Must be given as many times and in the same order as
+.B \-\-blobdev
+was to
+.BR mkfs.erofs (1).
+.\" Nominally there's a device_table feature and it somehow scans(?) for t=
hem,
+.\" cf. super.c:erofs_scan_devices(), but I haven't gotten it to work
+.TP
+.BR domain_id =3D \fIdid\fP
+.TQ
+.BR fsid =3D \fIid\fP
+Control CacheFiles on-demand read support.
+To be documented.
+.RE
+.IP
+.SH VERSIONS
+.B erofs
+images are versioned through the use of feature flags;
+these are listed in the
+.B \-E
+section of
+.BR mkfs.erofs (1),
+.SH CONFIGURATION
+Linux must be configured with the
+.B CONFIG_EROFS_FS
+option to mount EROFS filesystems.
+There are sub-configuration items that restrict the availability
+of some of the parameters above.
+.SH SEE ALSO
+.BR mkfs.erofs (1),
+.BR fsck.erofs (1),
+.BR dump.erofs (1)
+.PP
+.I Documentation/filesystems/erofs.txt
+in the Linux source.
diff --git a/man5/filesystems.5 b/man5/filesystems.5
index 3c15f14da..ba795f956 100644
--- a/man5/filesystems.5
+++ b/man5/filesystems.5
@@ -47,7 +47,13 @@ short description of the available or historically avail=
able
 filesystems in the Linux kernel.
 See the kernel documentation for a comprehensive
 description of all options and limitations.
-.TP 10
+.TP
+.B erofs
+is the Enhanced Read-Only File System, stable since Linux 5.4.
+.\" commit 47e4937a4a7ca4184fd282791dfee76c6799966a moves it out of staging
+See
+.BR erofs (5).
+.TP
 .B ext
 is an elaborate extension of the
 .B minix
--=20
2.30.2

--iujl3uh4o3yfnaar
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmQzO7gACgkQvP0LAY0m
WPHooBAAoVNOp3NibO1c5IukLVCfzTIu/O74zmUjwe3Eyh3K5PC2/L16/keCfCP2
8czG4RjHjPgUFLu/yPiF/HlvW72KRnsWqJFoydM1I6LB6ziPXjP0vM4JAbnX8uZ/
z5nSyyYsYXIbexn5g9TymV7PcFWUobZhae6bQ2rKfBohihajoH0tPwfup8CMAgBs
0/aOpU2D5F5uErmvGdU04LzyKCDJM/mMyqIZ2O7AjrO2otx2yZFoUnMXdll+Lvbh
EWOUMDf/mh+toesApF6k5fNUW+UthwohLIJbx84zs5fBIGL/k0YrPfb1zOXyikzD
hBrHT3/bJfJeKNv9J8UMqHox96vU9r5e3YfC6H1x/4ETiMThcSQD/poDiPN0lP66
/X+G7QrJACG+AnosCZWmKA7Bh+qwcGScbHuqMQYnDWu5G4oj4yLLZoeMgUeFvMjJ
iQjU85PsKn9xE08EctxNwEcjg5DHaD5eslzQCuicWiNf9VAAolnEAKT4srCbrcLY
DPE52yPSC0LfGVfN0xKBBoWT1SqJlQyxJldBdSbFKSwEFYXzTsL8rRht+RQ1qMBZ
E3waeC1S1KtCETLNV4kn81J3DAQZpFcKQhfYL9pzmQaCUHBFzXCbJWLJ/PMOsYEp
Ol0mV1dI2eokaABpI9pySuXP2+CrZUPOXka4eeE6RNfW+TrxbC8=
=sGs0
-----END PGP SIGNATURE-----

--iujl3uh4o3yfnaar--
