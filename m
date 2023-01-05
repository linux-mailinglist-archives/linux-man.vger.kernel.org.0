Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6656A65F70E
	for <lists+linux-man@lfdr.de>; Thu,  5 Jan 2023 23:52:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236117AbjAEWw0 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 5 Jan 2023 17:52:26 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42550 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236454AbjAEWwN (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 5 Jan 2023 17:52:13 -0500
Received: from mail-oo1-xc2f.google.com (mail-oo1-xc2f.google.com [IPv6:2607:f8b0:4864:20::c2f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EC5FA71FFE
        for <linux-man@vger.kernel.org>; Thu,  5 Jan 2023 14:51:56 -0800 (PST)
Received: by mail-oo1-xc2f.google.com with SMTP id m23-20020a4abc97000000b004bfe105c580so57551oop.4
        for <linux-man@vger.kernel.org>; Thu, 05 Jan 2023 14:51:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4grDefUfLoaVR6pzHBy33Fxx7+zeSUQjJ0IELku9kho=;
        b=KKqpPqZt89WoATJqvzlbE6ZCt4aa4WFYHXDAlrPJdT5LXvMjs9qMFvx/i7hlpaGWhH
         Fs13oxoVtSRtWVUrGIDCipXLEt/B4V53lsSYpqNE2IQ6R/aj9D2TfmWINF9p6CIcQAEO
         YBwUFazcPZDBesm1nVgfKfvh6gWRQm6fK0jrnwImi7lTNhff+pt+I+pZprXX0zo1YCr3
         w2jPpLZDZ/uey02jFDmzKMWJSJx1qEVqt3RCuxPKeUsl4tTLrsRX9T+DbAJHia9c+Z9q
         WDPH/PUTkvVqinUGWmhXFIoSE46JdMidoR20fmJ0PFCOCJ7iM4NxuXBhUECY10Yllffj
         VEUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4grDefUfLoaVR6pzHBy33Fxx7+zeSUQjJ0IELku9kho=;
        b=MAhTH8qMlZqdWjOVWtLokD5PhAHTdEeGYpCJHB7xkIA77LRqHtqwgcig00GX2GQ0tN
         8YEFEu4hLg8nLm/crzNjesIbMLOxAIf5aFfSG4CEtm2K/dOwhZiaLJ2x0b94EAwZ9xSb
         PBVJErSxK7WE/EnxRgrDPq5MJM7EiDIpGn7UCOT8law/D/ERdG3mUw9c6ifwZ2TqxHp2
         jEOAfFdVlYwZq0gCf9VZMDjQhYYqpkAgFz85Dj6tT4xWzqo+A8WGhh6P5uQPAPQUOBLq
         Q1ZGcV2VfIUormOpC2uzORChh78aLti83mwqyAWkJ6hv/7ujLpSWtepB5q6xrt+ay08Z
         RHww==
X-Gm-Message-State: AFqh2kqJUy7B8pmM0P239IicpBlf/F9HEkP/acd4Urt8YR0x+SjFJp0Q
        S3UlsFpmnXt4l/SKAOJsV0H0hr9sXSo=
X-Google-Smtp-Source: AMrXdXujylIniShvgq9V74eS0WEx3QBbEEasK9n2ONWwh0jHSX2Sv6xqMFyoIhBJea8RMIayckpWAQ==
X-Received: by 2002:a05:6820:82c:b0:4a6:1542:ef5b with SMTP id bg44-20020a056820082c00b004a61542ef5bmr25665832oob.4.1672959116139;
        Thu, 05 Jan 2023 14:51:56 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id w36-20020a4a97a7000000b0049f5ce88583sm14999182ooi.7.2023.01.05.14.51.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Jan 2023 14:51:55 -0800 (PST)
Date:   Thu, 5 Jan 2023 16:51:54 -0600
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH v3 01/13] ldconfig.8: srcfix
Message-ID: <20230105225154.fs2i6gct66m5nehh@illithid>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="2emo5s36muityrpd"
Content-Disposition: inline
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--2emo5s36muityrpd
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

* Drop stale FIXME annotation regarding commit ID for `-i` option.
* Drop redundant `PD` macro calls.
* Break input lines after commas.
* Set multi-word parentheticals on their own input lines.
* Break input lines at phrase boundaries more often.
* Protect literals from automatic hyphenation with `\%` escape sequence.

Signed-off-by: G. Branden Robinson <g.branden.robinson@gmail.com>
---
 man8/ldconfig.8 | 74 +++++++++++++++++++++++++++++--------------------
 1 file changed, 44 insertions(+), 30 deletions(-)

diff --git a/man8/ldconfig.8 b/man8/ldconfig.8
index d608aaf56..0a4695e09 100644
--- a/man8/ldconfig.8
+++ b/man8/ldconfig.8
@@ -9,22 +9,20 @@
 .SH NAME
 ldconfig \- configure dynamic linker run-time bindings
 .SH SYNOPSIS
-.BR /sbin/ldconfig " [" \-nNvXV "] [" \-f " \fIconf\fP] [" \-C " \fIcache\=
fP] [" \-r " \fIroot\fP]"
-.IR directory \...
 .PD 0
+.BR /sbin/ldconfig " [" \-nNvXV "] [" \-f " \fIconf\fP] [" \-C " \fIcache\=
fP] [" \-r " \fIroot\fP]"
+.IR directory ...
 .PP
-.PD
 .B /sbin/ldconfig
 .B \-l
 .RB [ \-v ]
-.IR library \...
-.PD 0
+.IR library ...
 .PP
-.PD
 .B /sbin/ldconfig
 .B \-p
+.PD
 .SH DESCRIPTION
-.B ldconfig
+.B \%ldconfig
 creates the necessary links and cache to the most recent shared
 libraries found in the directories specified on the command line,
 in the file
@@ -37,7 +35,8 @@ and
 .I /lib
 and
 .I /usr/lib
-are the trusted directories for 32-bit libraries, while
+are the trusted directories for 32-bit libraries,
+while
 .I /lib64
 and
 .I /usr/lib64
@@ -47,13 +46,17 @@ The cache is used by the run-time linker,
 .I ld.so
 or
 .IR ld\-linux.so .
-.B ldconfig
+.B \%ldconfig
 checks the header and filenames of the libraries it encounters when
 determining which versions should have their links updated.
 .PP
-.B ldconfig
-will attempt to deduce the type of ELF libraries (i.e., libc5 or libc6/gli=
bc)
-based on what C libraries, if any, the library was linked against.
+.B \%ldconfig
+will attempt to deduce the type of ELF libraries
+(i.e.,
+libc5 or libc6/glibc)
+based on what C libraries,
+if any,
+the library was linked against.
 .\" The following sentence looks suspect
 .\" (perhaps historical cruft) -- MTK, Jul 2005
 .\" Therefore, when making dynamic libraries,
@@ -61,14 +64,18 @@ based on what C libraries, if any, the library was link=
ed against.
 .PP
 Some existing libraries do not contain enough information
 to allow the deduction of their type.
-Therefore, the
+Therefore,
+the
 .I /etc/ld.so.conf
 file format allows the specification of an expected type.
 This is used
 .I only
 for those ELF libraries which we can not work out.
 The format
-is "dirname=3DTYPE", where TYPE can be libc4, libc5, or libc6.
+is "dirname=3DTYPE",
+where TYPE can be libc4,
+libc5,
+or libc6.
 (This syntax also works on the command line.)
 Spaces are
 .I not
@@ -76,12 +83,12 @@ allowed.
 Also see the
 .B \-p
 option.
-.B ldconfig
+.B \%ldconfig
 should normally be run by the superuser as it may require write
 permission on some root owned directories and files.
 .PP
 Note that
-.B ldconfig
+.B \%ldconfig
 will only look at files that are named
 .I lib*.so*
 (for regular shared objects) or
@@ -89,9 +96,10 @@ will only look at files that are named
 (for the dynamic loader itself).
 Other files will be ignored.
 Also,
-.B ldconfig
-expects a certain pattern to how the symlinks are set up, like this
-example, where the middle file
+.B \%ldconfig
+expects a certain pattern to how the symlinks are set up,
+like this example,
+where the middle file
 .RB ( libfoo.so.1
 here) is the SONAME for the library:
 .PP
@@ -107,16 +115,19 @@ after an upgrade.
 .TP
 .BR \-c " \fIfmt\fP, " \-\-format=3D\fIfmt\fP
 (Since glibc 2.2)
+.\" commit 45eca4d141c047950db48c69c8941163d0a61fcd
 Cache format to use:
 .IR old ,
 .IR new ,
 or
-.IR compat .
-Since glibc 2.32, the default is
+.IR \%compat .
+Since glibc 2.32,
+the default is
 .IR new .
 .\" commit cad64f778aced84efdaa04ae64f8737b86f063ab
-Before that, it was
-.IR compat .
+Before that,
+it was
+.IR \%compat .
 .TP
 .BI "\-C " cache
 Use
@@ -129,11 +140,10 @@ Use
 .I conf
 instead of
 .IR /etc/ld.so.conf .
-.\" FIXME glibc 2.7 added -i
 .TP
 .BR \-i ", " \-\-ignore\-aux\-cache
 (Since glibc 2.7)
-.\"             commit 27d9ffda17df4d2388687afd12897774fde39bcc
+.\" commit 27d9ffda17df4d2388687afd12897774fde39bcc
 Ignore auxiliary cache file.
 .TP
 .B \-l
@@ -154,7 +164,8 @@ Implies
 Don't rebuild the cache.
 Unless
 .B \-X
-is also specified, links are still updated.
+is also specified,
+links are still updated.
 .TP
 .BR \-p ", " \-\-print\-cache
 Print the lists of directories and candidate libraries stored in
@@ -167,8 +178,9 @@ as the root directory.
 .TP
 .BR \-v ", " \-\-verbose
 Verbose mode.
-Print current version number, the name of each directory as it
-is scanned, and any links that are created.
+Print current version number,
+the name of each directory as it is scanned,
+and any links that are created.
 Overrides quiet mode.
 .TP
 .BR \-V ", " \-\-version
@@ -178,7 +190,8 @@ Print program version.
 Don't update links.
 Unless
 .B \-N
-is also specified, the cache is still rebuilt.
+is also specified,
+the cache is still rebuilt.
 .SH FILES
 .\" FIXME Since glibc-2.3.4, "include" directives are supported in ld.so.c=
onf
 .\"
@@ -189,7 +202,8 @@ is also specified, the cache is still rebuilt.
 Run-time linker/loader.
 .TP
 .I /etc/ld.so.conf
-File containing a list of directories, one per line,
+File containing a list of directories,
+one per line,
 in which to search for libraries.
 .TP
 .I /etc/ld.so.cache
--=20
2.30.2


--2emo5s36muityrpd
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmO3VIoACgkQ0Z6cfXEm
bc6w0A/+OOdQajRdD1GB1Hblm9vWSTw+wwJhJnSr/YTQs2z8BZ/BrfMWCWikBeGO
J5T1BHCt5LKE7ICmSjztHPLubRuM/132WY7cB2KXfHMQGObmMmIVWV3poj262roc
qlHven+qV8Auld4j67ECaSMuVxqxWDZ93Xugxq8tWYi7BfXyZN6WvP6NTQdjMsXF
DE9x/IAMDghaQw/Ez6I9mVoh1oUCpcnfAXh1x35P0/QhAkVoksSWASp8dIMhIIGP
Vu3QhedCFunYEztjTi12uHIw2DbUwSxfmbylklLZBu8nrDn04l4Fr2ZkWGrwL+30
RH/sCCwKl1XflN36A66ZukrQS31eiF7HtDWppJFAVKT6XvmTY8IwXLAFV4zqyIEy
jmtXXD69sEBWUT2yYT8j227ysOb2xYPSwzp6GbAmfr4FNgjTnhsxux3iqXYUoTbj
N4xz3m9L33lKHz3322OiUnQybbGyLXNsFgsqOuQ9aobjbxjGiffn4vUHh8xXlheC
X57ljFN0jzG1myLUCMC2WcIVg7BaJUjmT9xytRO1fz9xqqGwxE6ASkQ2mgUty3sj
S873IY5V14VKFBW+rl/1/lKYZ6nd0Hpusf98LcYRD9mSDSQwl2RDTqoscKVxFPsO
XpPyxwnD796kK3w9aZ2ighdhJ7i9f5RL2WD6n7PSE0RpsHdUWy4=
=55ux
-----END PGP SIGNATURE-----

--2emo5s36muityrpd--
