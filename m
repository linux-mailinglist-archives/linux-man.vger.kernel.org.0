Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8F1F665CDB4
	for <lists+linux-man@lfdr.de>; Wed,  4 Jan 2023 08:38:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232799AbjADHim (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 4 Jan 2023 02:38:42 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40994 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229559AbjADHil (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 4 Jan 2023 02:38:41 -0500
Received: from mail-oa1-x36.google.com (mail-oa1-x36.google.com [IPv6:2001:4860:4864:20::36])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CBE9F192A6
        for <linux-man@vger.kernel.org>; Tue,  3 Jan 2023 23:38:39 -0800 (PST)
Received: by mail-oa1-x36.google.com with SMTP id 586e51a60fabf-12c8312131fso39219029fac.4
        for <linux-man@vger.kernel.org>; Tue, 03 Jan 2023 23:38:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=E21QBtUbLVaTuyN1/XTn7Fp5UvW8YVKhFtGtnjiMfF8=;
        b=CHfzwoNqYNHg8tEUML+EV6nPHtWwc3Ej0xPYlXBukWPTO5SsS0xvZvgogwh3l4zdMy
         UEw6hDG0r49eT4p+yks6wD46d99eAf5bQAtnU+AjB75OH1YqK4sCJKTXQyTLTBPFm70u
         QpWBR3DH5iTtM3BWnJF6SEpc6q4+2G86SmI11xeFvNdmUzItkohr1wvmwlSZFNS+H+lK
         v0XZCF8l9AFGIxXgjAde++Ai9kx9fFAAlMypKIujO1HS0ZwDbL2wgxhkpzO0qUAvcw+U
         C4abE57U121+Zaqfs+iM8qA583ivd6Tx5rsBfCqr/hwblIUGrSNQmyd+o6uMQKfNgmWb
         FE3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=E21QBtUbLVaTuyN1/XTn7Fp5UvW8YVKhFtGtnjiMfF8=;
        b=i2LYqY9AljMOStv2QF2QuRv45ulWUgJ0FHDwf5lACO340GZwrhK5gjB7QseyxO5Yd3
         JdT4HKtNTE7vn+mVjsG4EQWXfaB3dCHybnTzrIrq/jsJeJgj9Yaf2y2fpeXmUu0iEN4A
         nCVg9X6d4mPZr25Q0SsWX+zP/+VDZUnX8+k2UpTfCh8246DR18yKqatNc33h1/nZkOtC
         yd3KzcOIwBIcQWsn0xdDx+8DxbI92tdtZ8z9zOWApp5fxJ5TdldcvF0gfA2bYgdKuEoQ
         3eiTa3cbntjWXv2RTYb/os2uWN8ELxPFaoxTRB3/DHONu8ArX1e2nB8ixvM7WB3HQvr6
         9/aw==
X-Gm-Message-State: AFqh2kqGmhtD/PIthEVu0J4yQdr4gCqMT6Wak013DKE16FQxUnZuPlt0
        /juJC4AgjXonZTfgVfjWTd1rqWVCQr4=
X-Google-Smtp-Source: AMrXdXv4JHeJd8NTb2NIRJIDNl4D0ltDbQlCrPbO0aynyJbvzJaobBLzfdmlS9XXf5gO8kz0rwopIQ==
X-Received: by 2002:a05:6870:7d01:b0:151:327f:3da6 with SMTP id os1-20020a0568707d0100b00151327f3da6mr22513oab.58.1672817919073;
        Tue, 03 Jan 2023 23:38:39 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id l39-20020a05687106a700b0014fb4bdc746sm13712898oao.8.2023.01.03.23.38.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Jan 2023 23:38:38 -0800 (PST)
Date:   Wed, 4 Jan 2023 01:38:07 -0600
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH 1/9] ldconfig.8: Fix markup nits
Message-ID: <20230104073807.gcohk253vopp4ii3@illithid>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="acdksuy6jfkfobe4"
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


--acdksuy6jfkfobe4
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

* Drop stale FIXME annotation regarding commit ID for `-i` option.
* Rewrite synopses to use man(7) font macros instead of *roff font
  selection escape sequences.
* Drop redundant `PD` macro calls.
* Rewrite option list to use man(7) font macros instead of *roff font
  selection escape sequences.
* Use `TQ` macro to include multiple tags for options with long synonyms
  instead of comma notation.
* Break input lines after commas.
* Set multi-word parentheticals on their own input lines.
* Break input lines at phrase boundaries more often.
* Protect literals from automatic hyphenation with `\%` escape sequence.
* Use \~ escape sequence instead of quoted arguments at word
  boundaries in option synopses.

Signed-off-by: G. Branden Robinson <g.branden.robinson@gmail.com>
---
 man8/ldconfig.8 | 109 +++++++++++++++++++++++++++++++-----------------
 1 file changed, 71 insertions(+), 38 deletions(-)

diff --git a/man8/ldconfig.8 b/man8/ldconfig.8
index d608aaf56..0e74c1791 100644
--- a/man8/ldconfig.8
+++ b/man8/ldconfig.8
@@ -9,22 +9,29 @@
 .SH NAME
 ldconfig \- configure dynamic linker run-time bindings
 .SH SYNOPSIS
-.BR /sbin/ldconfig " [" \-nNvXV "] [" \-f " \fIconf\fP] [" \-C " \fIcache\=
fP] [" \-r " \fIroot\fP]"
-.IR directory \...
 .PD 0
+.\" TODO?: -c, --format, -i, --ignore-aux-cache, --print-cache,
+.\" --verbose, -V, --version, -?, --help, --usage
+.B /sbin/ldconfig
+.RB [ \-nNvXV ]
+.RB [ \-f
+.IR conf ]
+.RB [ \-C
+.IR cache ]
+.RB [ \-r
+.IR root ]
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
@@ -37,7 +44,8 @@ and
 .I /lib
 and
 .I /usr/lib
-are the trusted directories for 32-bit libraries, while
+are the trusted directories for 32-bit libraries,
+while
 .I /lib64
 and
 .I /usr/lib64
@@ -47,13 +55,17 @@ The cache is used by the run-time linker,
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
@@ -61,14 +73,18 @@ based on what C libraries, if any, the library was link=
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
@@ -76,12 +92,12 @@ allowed.
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
@@ -89,9 +105,10 @@ will only look at files that are named
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
@@ -105,35 +122,41 @@ Failure to follow this pattern may result in compatib=
ility issues
 after an upgrade.
 .SH OPTIONS
 .TP
-.BR \-c " \fIfmt\fP, " \-\-format=3D\fIfmt\fP
+.BI \-c\~ fmt
+.TQ
+.BI \-\-format=3D fmt
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
-.BI "\-C " cache
+.BI \-C\~ cache
 Use
 .I cache
 instead of
 .IR /etc/ld.so.cache .
 .TP
-.BI "\-f " conf
+.BI \-f\~ conf
 Use
 .I conf
 instead of
 .IR /etc/ld.so.conf .
-.\" FIXME glibc 2.7 added -i
 .TP
-.BR \-i ", " \-\-ignore\-aux\-cache
+.B \-i
+.TQ
+.B \-\-ignore\-aux\-cache
 (Since glibc 2.7)
-.\"             commit 27d9ffda17df4d2388687afd12897774fde39bcc
+.\" commit 27d9ffda17df4d2388687afd12897774fde39bcc
 Ignore auxiliary cache file.
 .TP
 .B \-l
@@ -154,31 +177,40 @@ Implies
 Don't rebuild the cache.
 Unless
 .B \-X
-is also specified, links are still updated.
+is also specified,
+links are still updated.
 .TP
-.BR \-p ", " \-\-print\-cache
+.B \-p
+.TQ
+.B \-\-print\-cache
 Print the lists of directories and candidate libraries stored in
 the current cache.
 .TP
-.BI "\-r " root
+.BI \-r\~ root
 Change to and use
 .I root
 as the root directory.
 .TP
-.BR \-v ", " \-\-verbose
+.B \-v
+.TQ
+.B \-\-verbose
 Verbose mode.
-Print current version number, the name of each directory as it
-is scanned, and any links that are created.
+Print current version number,
+the name of each directory as it is scanned,
+and any links that are created.
 Overrides quiet mode.
 .TP
-.BR \-V ", " \-\-version
+.B \-V
+.TQ
+.B \-\-version
 Print program version.
 .TP
 .B \-X
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
@@ -189,7 +221,8 @@ is also specified, the cache is still rebuilt.
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


--acdksuy6jfkfobe4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmO1LN8ACgkQ0Z6cfXEm
bc4T/A/+PNFp4q5yaVO+tRhiPB1vYp4/+JGbRZyT1tU2OIfZAEUvCnpW3wbJ0juo
vtZ6XwHmH8e8h2XobKh9eqFobrwgRQzOVUZiBK95cqRQ2rw+HnxuQZEBiq1vWSWC
e1w+lMbW9Xga/HhzCa99g4KodOETRnARMYmePzmTYkF9hqb3GJCf56w49wFgdrNR
kai82G3rFTLzQjdTYLUaL+SCv3T2LYPQZZVZoxkfo5Lo3rUBZrBB9yFKxapjGbmo
lPhjIoACvs5g9K/DuJzAJmVur3QxWYMDnAy0JSRZ9kKoLx3xIRJL+Qx8Ilb8HDfX
VGFNHHf5/obqMK1x+T3sUwzVRfxd9Gaag1jbdhqjXLx/DhU7ZI0Ph1vj39kyDZ0m
eTDywnYz0gL10KfLgpm8VgRbEll1Skhg/0P/brbpKPsg1eUKfVMCVP9E29LTMgcO
gfLTkMtK5WQ+UX27IM75JqCvOGDpRkBWuVi0QXeVF/aaiDzMbu1onGb/fB0Iek+a
2QuRa24WgiVhQm09OyH+DzHOP2ASB8ix45zk2SZu+qaVmOYZk//tGPMkkP1prEOu
ovHsc1Ugin8y76UcbE0ywxaHA5UGKf3BBN+BHIgKfE8czxN+l2mNYYvXyJn3AvTH
cMEuhS4ODJdaCtvw+MquR30qaoFUuWCx+4IX1NDKxScWTMP7dFo=
=KR75
-----END PGP SIGNATURE-----

--acdksuy6jfkfobe4--
