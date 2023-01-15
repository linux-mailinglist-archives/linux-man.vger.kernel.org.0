Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7C06566AF7F
	for <lists+linux-man@lfdr.de>; Sun, 15 Jan 2023 06:43:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230501AbjAOFnd (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 15 Jan 2023 00:43:33 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49042 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230447AbjAOFna (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 15 Jan 2023 00:43:30 -0500
Received: from mail-ot1-x332.google.com (mail-ot1-x332.google.com [IPv6:2607:f8b0:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 69269E3B5
        for <linux-man@vger.kernel.org>; Sat, 14 Jan 2023 21:43:28 -0800 (PST)
Received: by mail-ot1-x332.google.com with SMTP id cc13-20020a05683061cd00b00684b8cf2f4dso6265380otb.12
        for <linux-man@vger.kernel.org>; Sat, 14 Jan 2023 21:43:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=FxU5Kvd65OzxBVlD/KZXI2qjZUWRUczuxkOO+W8Zxfw=;
        b=mlt4f7t30mjjveJQg2SMt7Rr5zPSkx0H8X5AvWLd6p3NddkP2bnJDlqV33qBDxrRdR
         oR6EC7UZ2FRdB7kqQcaCc6kdHGiNvxfWfPE6DGk/74ptcoFWrc5S2HQoh7lbWD1Qby6t
         QmnYzg5C+7yRWXblPdnWjLQgXHVldfums3gJfK1yp2cIYX6bChhUNcUTH5n8pPszrQOt
         yW+QdoFPedDC7m7S5KOExTj446BJwIdVwfssGariS4lzfC+af9RQlHvcj6PJ2oXz5QKz
         stoyLWjyFCUFw5YLEc3N7uXM/JND6hcz8aS6ebufW2vT2hUvEnjFihzCy15OpuggtgBm
         /CAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=FxU5Kvd65OzxBVlD/KZXI2qjZUWRUczuxkOO+W8Zxfw=;
        b=uDnDRCrfE6VGNGTV/Gv3x9aSCPRnsgbo0LZNVVBTJ6oP5nKkHI3W6ATL1Eh4ET+9LB
         O0CZTycyy6EcfCq9sxBFi2VlzNDCMUUT5xefGI6UHn6XhxMHNsCYDBWfz9O7X/R+ji5K
         uBZHGU8Eg4sgqWdNPuH3PXQQF8ZqMLKgqoeM/hVy5QEsTccxtcIAadQnWM+gFuEhbsPu
         uVqmp3rxji0LkKBZo5sE5F1LtqbVft9XcxRqNBqAw9Lgo/+4nJLPlQ4sIsK2uDX203kH
         Ux2VzYsbu5tKNTthOwgmVwja9193jslwz44zyOI1s/RQb8LGNquH/3PYRixIyhGFpTCW
         KUzQ==
X-Gm-Message-State: AFqh2koMCaTd5J7MchVvqX2PycHrvTY8t/VPuAJzT7Rm3MdO9++81Wfx
        wlwSP6QwLCC87bnj+q2v8IK0VuvG9eM=
X-Google-Smtp-Source: AMrXdXsFrBeFTl8kI+GYnZe88GgMyj9CoYm/LTFuNizYZCBGvCNmLxcsEaEa5xhMXhaaudCoFXEe2w==
X-Received: by 2002:a9d:6f81:0:b0:671:4b44:8344 with SMTP id h1-20020a9d6f81000000b006714b448344mr40870018otq.28.1673761407673;
        Sat, 14 Jan 2023 21:43:27 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id bv10-20020a0568300d8a00b00684e09b43bdsm1387270otb.13.2023.01.14.21.43.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 14 Jan 2023 21:43:27 -0800 (PST)
Date:   Sat, 14 Jan 2023 23:43:25 -0600
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH v5 1/6] ldconfig.8: Revise and update for glibc 2.32
Message-ID: <20230115054325.aoriwvvpuhhcmvct@illithid>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="oo7xhvub2eofyd7t"
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


--oo7xhvub2eofyd7t
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

* Recast summary description to identify relevance of libraries.
* Drop `-V` option from synopsis; it doesn't make any sense combined
  with the operation mode shown, and no other "get out quick" option,
  including its synonym `--version`, is documented in the synopsis.
* Clarify that the "links" manipulated by the program are symbolic.
* Discuss caching feature separately from symbolic link management.
* Clarify how ldconfig can be run by unprivileged users (probably for
  troubleshooting).
* Recast example of shared library linkage chain and motivate the
  existence for each link or file.  Define term "soname" and present it
  in lowercase like other Linux man-pages, instead of full caps.
* Document auxiliary cache file, which apparently has been described
  nowhere but a source comment in the original commit 15 years ago.
* Document that `-C` implies `-i`.  See elf/ldconfig.c:162.
* Clarify how `-l` option works (a little).
* Drop mention of "quiet mode", which does not seem to exist.
* Be explicit that `-p`/`--print-cache` option exits early; i.e., it
  doesn't undertake ldconfig's primary function.
* Document `--usage` and `-?`/`--help` options.
* Clarify what `-v`/`--verbose` does.
* Clarify that `-V`/`--version` exits early.
* Expand description of "ld.so.conf" file to discuss "include" and
  "hwcap" features.  Describe these as "directives" (though the latter
  died upstream in glibc 2.32 before we got around to documenting it).
  Document ld.so.conf's comment syntax.
* Document handling of leading spaces and empty lines in ld.so.conf.
* Document location of auxiliary cache file.

Signed-off-by: G. Branden Robinson <g.branden.robinson@gmail.com>
---
 man8/ldconfig.8 | 121 +++++++++++++++++++++++++++++++++++++-----------
 1 file changed, 95 insertions(+), 26 deletions(-)

diff --git a/man8/ldconfig.8 b/man8/ldconfig.8
index 36b891dab..5b671f0a1 100644
--- a/man8/ldconfig.8
+++ b/man8/ldconfig.8
@@ -7,12 +7,12 @@
 .\"   Change listed order of /usr/lib and /lib
 .TH ldconfig 8 (date) "Linux man-pages (unreleased)"
 .SH NAME
-ldconfig \- configure dynamic linker run-time bindings
+ldconfig \- configure library bindings used by run-time dynamic linker
 .SH SYNOPSIS
 .SY /sbin/ldconfig
 .\" TODO?: -c, --format, -i, --ignore-aux-cache, --print-cache,
 .\" --verbose, -V, --version, -?, --help, --usage
-.RB [ \-nNvVX ]
+.RB [ \-nNvX ]
 .RB [ \-C\~\c
 .IR cache ]
 .RB [ \-f\~\c
@@ -31,8 +31,10 @@ ldconfig \- configure dynamic linker run-time bindings
 .YS
 .SH DESCRIPTION
 .B \%ldconfig
-creates the necessary links and cache to the most recent shared
-libraries found in the directories specified on the command line,
+creates the necessary symbolic links
+to the most recent versions of the shared libraries
+found in the directories
+specified on the command line,
 in the file
 .IR /etc/ld.so.conf ,
 and in the trusted directories,
@@ -50,7 +52,8 @@ and
 .I /usr/lib64
 are used for 64-bit libraries.
 .PP
-The cache is used by the run-time linker,
+It also maintains a cache
+used by the run-time linker,
 .I ld.so
 or
 .IR ld\-linux.so .
@@ -61,8 +64,11 @@ determining which versions should have their links updat=
ed.
 .\" 8ee878592c4a642937152c8308b8faef86bcfc40 (2022-07-14) as "obsolete
 .\" for over twenty years".
 .B \%ldconfig
-should normally be run by the superuser as it may require write
-permission on some root owned directories and files.
+is normally run by the superuser
+since it may require write permission
+on some root-owned directories and files.
+.RI \%\(lq ldconfig\~\-p \(rq
+can be run without such privileges.
 .PP
 .B \%ldconfig
 will look only at files that are named
@@ -74,10 +80,7 @@ Other files will be ignored.
 Also,
 .B \%ldconfig
 expects a certain pattern to how the symbolic links are set up,
-like this example,
-where the middle file
-.RB ( libfoo.so.1
-here) is the SONAME for the library:
+as in the following.
 .PP
 .in +4n
 .EX
@@ -85,8 +88,26 @@ libfoo.so \-> libfoo.so.1 \-> libfoo.so.1.12
 .EE
 .in
 .PP
-Failure to follow this pattern may result in compatibility issues
-after an upgrade.
+The name
+.B libfoo.so
+is used when preparing object code that uses shared libraries.
+.B libfoo.so.1
+is the
+.I soname
+(shared object name)
+used at run time,
+by which object code locates its shared library dependencies.
+.B libfoo.so.1.12
+is the shared library.
+This practice enables upward-compatible upgrades of shared libraries;
+a change in the version number after the soname indicates that no
+\(lqbreak\(rq in the ABI
+(application binary interface)
+has occurred.
+.PP
+.B ldconfig
+maintains an auxiliary cache file that helps it to avoid re-reading
+libraries that have not changed since the last time it was run.
 .SH OPTIONS
 .TP
 .BI \-c\~ fmt
@@ -102,9 +123,9 @@ which is one of
 or
 .BR \%compat .
 Since glibc 2.32,
+.\" commit cad64f778aced84efdaa04ae64f8737b86f063ab
 the default is
 .BR new .
-.\" commit cad64f778aced84efdaa04ae64f8737b86f063ab
 Before that,
 it was
 .BR \%compat .
@@ -114,6 +135,8 @@ Use
 .I cache
 instead of
 .IR /etc/ld.so.cache .
+Implies
+.BR \-i .
 .TP
 .BI \-f\~ conf
 Use
@@ -151,27 +174,29 @@ links are still updated.
 .B \-p
 .TQ
 .B \-\-print\-cache
-Print the lists of directories and candidate libraries stored in
-the current cache.
+Report the libraries stored in the cache and exit.
 .TP
 .BI \-r\~ root
 Change to and use
 .I root
 as the root directory.
 .TP
+.B \-\-usage
+Report a terse usage message and exit.
+.TP
 .B \-v
 .TQ
 .B \-\-verbose
-Verbose mode.
-Print current version number,
+Operate verbosely;
+for each library,
+report the current version number,
 the name of each directory as it is scanned,
 and any links that are created.
-Overrides quiet mode.
 .TP
 .B \-V
 .TQ
 .B \-\-version
-Print program version.
+Report program version information and exit.
 .TP
 .B \-X
 Don't update links.
@@ -179,26 +204,70 @@ Unless
 .B \-N
 is also specified,
 the cache is still rebuilt.
+.TP
+.B \-?
+.TQ
+.B \-\-help
+Report a usage message and exit.
 .SH FILES
-.\" FIXME Since glibc-2.3.4, "include" directives are supported in ld.so.c=
onf
-.\"
-.\" FIXME Since glibc-2.4, "hwcap" directives are supported in ld.so.conf
-.PD 0
 .TP
 .I /lib/ld.so
 is the run-time linker/loader.
 .TP
 .I /etc/ld.so.conf
+.RS
 contains a list of directories,
 one per line,
-in which to search for libraries.
+in which to search for libraries;
+or a multi-word
+.I directive
+further configuring the run-time linker/loader.
+A number sign
+.RB ( # )
+introduces a comment that extends to the end of the line;
+this character is thus not supported in directives or directory names.
+Leading spaces are removed.
+Empty lines are ignored.
+.PP
+Since glibc\~2.3.4,
+.\" commit 8e115d80b07f17a11690c108918f847846a752da
+a directive in the form
+.RS
+.EX
+include\~\c
+.I filename\~\c
+\&.\|.\|.
+.EE
+.RE
+is supported;
+each
+.I filename
+is recursively opened and read.
+.\" XXX: ...with no detection of cycles!
+.I filename
+can be a
+.BR glob (3)
+pattern.
+This feature enables libraries or packages to manage shared library
+placement in a modular way.
+.PP
+In glibc\~2.4,
+.\" commit ab1d521db39bf4371c7db96e8a0fcd4857ee70ed
+a
+.B \%hwcap
+directive was introduced,
+but it is no longer supported as of glibc\~2.32.
+.\" commit 31563b68410ff8e9490c5aafca31ec71b38f87a5
+.RE
 .TP
 .I /etc/ld.so.cache
 contains an ordered list of libraries found in the directories
 specified in
 .IR /etc/ld.so.conf ,
 as well as those found in the trusted directories.
-.PD
+.TP
+.I /var/cache/ldconfig/aux\-cache
+is the auxiliary cache.
 .SH SEE ALSO
 .BR ldd (1),
 .BR ld.so (8)
--=20
2.30.2


--oo7xhvub2eofyd7t
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmPDkn0ACgkQ0Z6cfXEm
bc58KA/9EbxyyXjILxQYvzHkTFFEIzITs1u7qN8HwJzorfngGKbYBP8YkqnC5H48
yOe3met1SMh6j1easdbPqdThT6r/dX9qzYJyYfGf3P/2fsE0fcWrOgzFCDbPpu/W
5CT+WZSB2OkdWYGHVgpEjvh79OuhsyqVhMnXFfEEu39B3YlqljJVoLKRBwFQgeGp
TfvGr6nfYMnPNOHP8dFQPH+kGH+xlsM3U42orEh4eMERxMzN8cYYqtqf+9T8JIyw
XSro8XsgrIl25aO6RZbsHuhs2cfxIODKCKmDNZgDlE5J6R6isD0iHY9VQk2AB5MM
Lrk3KlSHCV+QuE+181sXMfM0Dj+aeurCde4TsRCVev8asUZ9e54z/XfGYuj8FDop
TU0NX294QRh+C5Fe6+yO8mO34zzyxwtZCpHTZ6I3Td3mbLzbRUc4nVKJV/3oTTov
T0UbfXE6vCC12E7eTq2Q4Q7bmoiCtolHVi93QoayUDarHJYJAgPwLXObS8rVDil1
0URayuidH7AOT25CrDNrOz65eck8ExKzMVyev+OBf5B/w001XifO8rEljvtUYL+i
fdIc82+NbvCrKIDmLxUFiSR6mYWH+jn/I3b2KDsh3f6Zpg3Dxi58mdnvGqoi6KKr
BymM6/yIYi5LwRQRJ7XCuan3ebj4LmaQ5U6HfjtUN6c9++QVWcs=
=Pv/j
-----END PGP SIGNATURE-----

--oo7xhvub2eofyd7t--
