Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A3EAA6DC0D3
	for <lists+linux-man@lfdr.de>; Sun,  9 Apr 2023 19:16:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229463AbjDIRQq (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 9 Apr 2023 13:16:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43910 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229445AbjDIRQq (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 9 Apr 2023 13:16:46 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 854C830F8
        for <linux-man@vger.kernel.org>; Sun,  9 Apr 2023 10:16:43 -0700 (PDT)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 9D6EC50CC;
        Sun,  9 Apr 2023 19:16:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202211; t=1681060600;
        bh=W24uNitSBcM5w3AguqG8Hk8WBMy9bvPoJFISFubc5Tk=;
        h=Date:From:To:Cc:Subject:From;
        b=MFyjam64QiVK8C6QGiherbvoktyxBKulA7wFMEtlUfkUYDjvIFBoona820IxW0HMR
         Kp55poD4Uhi1YaiZt2R3ojlPyFwV4rKzFWs2btkQ0J3XiaypFXfyZ8EnzEt3sWQhqX
         /kqoSmUXBL8wfhf0dda3ardA4E0nq3HxgrlAmMFgz0j8FBZrL7AEU829SoX8BFKi93
         FuznTKwlyU5be3zpdemYon/JyNaq4dpyTB41fT/N76WJ7dL7XGYE4gIN9rw/GOD2AT
         QqjdyE27pWyDB6YounzAxIPKerbvhun0ZzYDinsmDnJveneqi6TTrw5sxqBeyv0Abi
         qFo0WprFt39nA==
Date:   Sun, 9 Apr 2023 19:16:39 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH] filesystems.5, erofs.5: add erofs documentation
Message-ID: <hpmjk4rzx2prznaxlb2gnc5vrnjmljxndsvxcsc22pliytevup@4lah64un5sht>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="n2kphhketznwbd2m"
Content-Disposition: inline
User-Agent: NeoMutt/20230407
X-Spam-Status: No, score=0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,RDNS_DYNAMIC,SPF_HELO_PASS,SPF_PASS
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--n2kphhketznwbd2m
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Modelled after tmpfs(5) =E2=80=92 there's a listing of mount options,
and a summary of limitations. The feature flags are described in
mkfs.erofs, and they're versioned and maintained upstream quite well
there, so no need to duplicate those, since you only care on image
creation.

The real value add is the mount options, but I cannot figure out
how device_id and fsid interact with the system at large,
so I just noted they're there.

State as of 6.3-rc5.

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man5/erofs.5       | 84 ++++++++++++++++++++++++++++++++++++++++++++++
 man5/filesystems.5 |  6 ++++
 2 files changed, 90 insertions(+)
 create mode 100644 man5/erofs.5

diff --git a/man5/erofs.5 b/man5/erofs.5
new file mode 100644
index 000000000..de5b56121
--- /dev/null
+++ b/man5/erofs.5
@@ -0,0 +1,84 @@
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
+32-byte compact with 16-bit UID/GID, 32-bit file size, and no file times,
+and 64-byte extended with 32-bit UID/GID, 64-bit file size,
+and a modification time
+.RI ( st_mtim ).
+.\" See fs/erofs/super.c:shmem_parse_options for options it supports.
+.SS Mount options
+.TP
+.BR user_xattr / nouser_xattr
+Controls whether
+.I user
+extended attributes are exposed.
+Defaults to yes
+.TP
+.BR acl / noacl
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
+.BR dax ", " dax =3D always | never
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
+Must be given as many times and in the same order as=20
+.B \-\-blobdev
+was to
+.BR mkfs.erofs (8).
+.\" Nominally there's a device_table feature and it somehow scans(?) for t=
hem,
+.\" cf. super.c:erofs_scan_devices(), but I haven't gotten it to work
+.TP
+.BR domain_id =3D \fIdid\fP ", " fsid =3D \fIid\fP
+Control CacheFiles on-demand read support.
+To be documented.
+.RE
+.IP
+.SH VERSIONS
+.B erofs
+images are versioed through the use of feature flags;
+these are listed in the
+.B \-E
+section of
+.BR mkfs.erofs (1),
+.SH NOTES
+The kernel must be configured with the
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
+in the kernel source.
diff --git a/man5/filesystems.5 b/man5/filesystems.5
index 3c15f14da..c9b0bf695 100644
--- a/man5/filesystems.5
+++ b/man5/filesystems.5
@@ -48,6 +48,12 @@ filesystems in the Linux kernel.
 See the kernel documentation for a comprehensive
 description of all options and limitations.
 .TP 10
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

--n2kphhketznwbd2m
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmQy8vcACgkQvP0LAY0m
WPG34Q/+IvZAOnhMeitS+96UvR4znCbjP5R8S8tkihTTYjsZ1zZPCQNLLnuyaJ3D
OAShgiKqbVQabl7MUqkWmmCYBz9qRIWYO79ub/j4C0+nnA9RJfyjbtvE9VkxsLt8
l+IwnzcqjH6xxnUdgEIGemYBsnMqduEeemARJPaTtE3mrHFW5PPzOFPf6U8w8Rv/
9NSHNm91EvgO4VppUMbsDEFzUuOd7JjeFYKYYwek303lZTBTdeWPmSuqEzjaz1IO
HQgOLLNL8CTUhay5FPrkKSjy3zMULpRIdqUSk9Bq9azAImzIN9cEJKIdW9uSNk4V
0GX4z3Tzer1JuLF5wuG+VjxxI81G6Y7UfoCNr4npXLPizBCs+4TOK+JG1fn4TCDf
oJChoT+0apgrUuOF57aSmqRvtK0b7KBIrfB+q9mf63Jrx2EpM5PSJV+fxKZPy4JQ
QZpR4KDN/ygmFv9tT9iY9RZjjyz8Ubk2plKY22leakSwPDuS3Jv2+D0k/43XLyvW
VltUCMJZ9BRteinGxJms8c1TiAlNgQBv8BigSYL+8AbEZQdVafLniI+qde7bMjO1
MoWrZ1xuVX98XULSkkQ7b0wn7x79oagc/xdbFrtWhxvJ4ZGGN9qE+KMh6rGdimr8
+msusILhLSGxtEkB9O9h+QLR4GfyUw4xtwYhrgRw60ugIgkbhJQ=
=Sgxr
-----END PGP SIGNATURE-----

--n2kphhketznwbd2m--
