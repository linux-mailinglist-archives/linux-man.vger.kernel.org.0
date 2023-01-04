Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 05DE465CDB6
	for <lists+linux-man@lfdr.de>; Wed,  4 Jan 2023 08:39:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229559AbjADHjJ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 4 Jan 2023 02:39:09 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41068 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233315AbjADHjI (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 4 Jan 2023 02:39:08 -0500
Received: from mail-ot1-x32b.google.com (mail-ot1-x32b.google.com [IPv6:2607:f8b0:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 51590192AF
        for <linux-man@vger.kernel.org>; Tue,  3 Jan 2023 23:39:07 -0800 (PST)
Received: by mail-ot1-x32b.google.com with SMTP id e17-20020a9d7311000000b00678202573f1so20359071otk.8
        for <linux-man@vger.kernel.org>; Tue, 03 Jan 2023 23:39:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=nWRLPWmJYkVzOz0MzilGgm0j14NAIaEYavwdstb1L8Y=;
        b=GUVSAuXv13l0Rr7oJex7Wc7O0XYFj1DtcK/eJg4vIDxYv/rTz4IbI4VJ8zO1YF5amw
         hW0rRXgA8/EPIhf+j6d2qRxwpTMQ952wm4fEgAutmFXMEZnpW3ECXxL3gUuXvJlS3byA
         WLwOG/zDEGs8lFYkYjzoTP9RWYgg/FzJW3ox3F16G7Hc/Xp/HMqDpY+GQtXNO3nmx4C5
         XikXLDB9llAYlIDY4E/2mmlSD16cdMMoHPwKZQSCUsrZryWtwVHCbQuEjosEW9wRCfUT
         vPB0ZuDSJxA2V1Wd2gI9ADSMaSzVsh78ZTjENbcG/boPKgScRNzXAJ3NbpNefLmr18u4
         m0Bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=nWRLPWmJYkVzOz0MzilGgm0j14NAIaEYavwdstb1L8Y=;
        b=RPYeu5rq62TkbX8iFwf+0U5xkgVh/LWxzG8ljeWZ+VcPwkvU2ahUX9hzO6stCZYQYL
         MmIFQu1fmlrIxH7F5laMrNOhTZaYFBHV5qORMDCwHMARInZREuF4f0dEVou1GS8c0fFr
         Fu10JpJYFo8Udts/c8eKTMmtFF9jTXS+wB77DbmyGma9JZ9giKUtPsY01LShTaHI/Y/b
         knc3V3GYZLHCG0gpFBYBdo0m2kJww7o9+QtATDzaQY7VnXZ/Cm6RQM+CrjoLYuTvEHQk
         lgUgS8o6OSXiO10hOj0WzYp0B5qYDDx9okEVzutpi9uHPUdBtJxSks88eZjoFxzz9v9b
         JCTg==
X-Gm-Message-State: AFqh2krw84Gn1/26I1QiUinbZ3eE9Zh+Q+JIx1s1Wi40JQjPXubPExHY
        yKLw2sX8zZKNSLX+j6jCZTvgZHNYpPI=
X-Google-Smtp-Source: AMrXdXsuymeUGDGspJTkmo1jFLzSQ79UIgqXZVkpLGIUewxzDS3NBGx0ekJPi8+6mEJclGSU0oIrXQ==
X-Received: by 2002:a9d:1b2c:0:b0:678:217e:5836 with SMTP id l41-20020a9d1b2c000000b00678217e5836mr20295678otl.14.1672817946473;
        Tue, 03 Jan 2023 23:39:06 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id l16-20020a9d7090000000b006619533d1ddsm15592497otj.76.2023.01.03.23.39.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Jan 2023 23:39:06 -0800 (PST)
Date:   Wed, 4 Jan 2023 01:39:01 -0600
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH 3/9] ldconfig.8: Revise and update for glibc 2.32
Message-ID: <20230104073901.mtplspe5taaax3ih@illithid>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="bbqmu7jqpko23ma6"
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


--bbqmu7jqpko23ma6
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

* Recast summary description to identify relevance of libraries.
* Drop `-V` option from synopsis; it doesn't make any sense combined
  with the operation mode shown, and no other "get out quick" option,
  including its synonym `--version`, is documented in the synopsis.
* Clarify that the "links" manipulated by the program are symbolic.
* Discuss caching feature separately from symbolic link management.
* Comment out multiple paragraphs discussing libc4 and libc5 shared
  library support.  It was removed upstream in July; annotate commit.
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
 man8/ldconfig.8 | 192 +++++++++++++++++++++++++++++++++---------------
 1 file changed, 132 insertions(+), 60 deletions(-)

diff --git a/man8/ldconfig.8 b/man8/ldconfig.8
index 2e54cfad4..5e65f3d7c 100644
--- a/man8/ldconfig.8
+++ b/man8/ldconfig.8
@@ -7,13 +7,13 @@
 .\"   Change listed order of /usr/lib and /lib
 .TH ldconfig 8 (date) "Linux man-pages (unreleased)"
 .SH NAME
-ldconfig \- configure dynamic linker run-time bindings
+ldconfig \- configure library bindings used by run-time dynamic linker
 .SH SYNOPSIS
 .PD 0
 .\" TODO?: -c, --format, -i, --ignore-aux-cache, --print-cache,
 .\" --verbose, -V, --version, -?, --help, --usage
 .B /sbin/ldconfig
-.RB [ \-nNvXV ]
+.RB [ \-nNvX ]
 .RB [ \-C\~\c
 .IR cache ]
 .RB [ \-f\~\c
@@ -32,8 +32,10 @@ ldconfig \- configure dynamic linker run-time bindings
 .PD
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
@@ -51,50 +53,57 @@ and
 .I /usr/lib64
 are used for 64-bit libraries.
 .PP
-The cache is used by the run-time linker,
+It also maintains a cache
+used by the run-time linker,
 .I ld.so
 or
 .IR ld\-linux.so .
 .B \%ldconfig
 checks the header and filenames of the libraries it encounters when
 determining which versions should have their links updated.
-.PP
-.B \%ldconfig
-will attempt to deduce the type of ELF libraries
-(i.e.,
-libc5 or libc6/glibc)
-based on what C libraries,
-if any,
-the library was linked against.
-.\" The following sentence looks suspect
-.\" (perhaps historical cruft) -- MTK, Jul 2005
-.\" Therefore, when making dynamic libraries,
-.\" it is wise to explicitly link against libc (use \-lc).
-.PP
-Some existing libraries do not contain enough information
-to allow the deduction of their type.
-Therefore,
-the
-.I /etc/ld.so.conf
-file format allows the specification of an expected type.
-This is used
-.I only
-for those ELF libraries which we can not work out.
-The format
-is "dirname=3DTYPE",
-where TYPE can be libc4,
-libc5,
-or libc6.
-(This syntax also works on the command line.)
-Spaces are
-.I not
-allowed.
-Also see the
-.B \-p
-option.
+.\" Support for libc4 and libc5 dropped in
+.\" 8ee878592c4a642937152c8308b8faef86bcfc40 (2022-07-14) as "obsolete
+.\" for over twenty years".
+.\".PP
+.\".B \%ldconfig
+.\"will attempt to deduce the type of ELF libraries
+.\"(i.e.,
+.\"libc5 or libc6/glibc)
+.\"based on what C libraries,
+.\"if any,
+.\"the library was linked against.
+.\".\" The following sentence looks suspect
+.\".\" (perhaps historical cruft) -- MTK, Jul 2005
+.\".\" Therefore, when making dynamic libraries,
+.\".\" it is wise to explicitly link against libc (use \-lc).
+.\".PP
+.\"Some existing libraries do not contain enough information
+.\"to allow the deduction of their type.
+.\"Therefore,
+.\"the
+.\".I /etc/ld.so.conf
+.\"file format allows the specification of an expected type.
+.\"This is used
+.\".I only
+.\"for those ELF libraries which we can not work out.
+.\"The format
+.\"is "dirname=3DTYPE",
+.\"where TYPE can be libc4,
+.\"libc5,
+.\"or libc6.
+.\"(This syntax also works on the command line.)
+.\"Spaces are
+.\".I not
+.\"allowed.
+.\"Also see the
+.\".B \-p
+.\"option.
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
@@ -106,10 +115,7 @@ Other files will be ignored.
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
@@ -117,8 +123,26 @@ libfoo.so \-> libfoo.so.1 \-> libfoo.so.1.12
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
@@ -134,9 +158,9 @@ which is one of
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
@@ -146,6 +170,8 @@ Use
 .I cache
 instead of
 .IR /etc/ld.so.cache .
+Implies
+.BR \-i .
 .TP
 .BI \-f\~ conf
 Use
@@ -183,27 +209,29 @@ links are still updated.
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
@@ -211,26 +239,70 @@ Unless
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


--bbqmu7jqpko23ma6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmO1LRUACgkQ0Z6cfXEm
bc7MWxAAiXqQoveYdapaXnyAXDYdpT+SGENQys1FmSb63/61ZkbVMKdEaiocSnjP
CfCUztb6uf2bRGVQO8dRwANLi8sJ2qVwXjxrt69tB/G9WQw9XzHvyOvdK7DTZHg1
aJVCPexiaCKmWgsB6N6YsLqBQmM/viukCo9b2+nJVN3Pr/EKdHF656bI4SEFmjLS
S1RQj6mAHZ0GArMmdaihw08B49R6vatxsNVRT3YTgn1BY90ZHjFjyD5dPUJiLMzr
LkQStVWX6+mhyMYKXapRv/8uoZR2hsZ0gLvEzIcmCALaSOv50yLkUFbSXLJOcrUy
ypP9AziIn/YwNSt10/Fu4KVOYrdIgkrz3qwIE6o4WcS03tniZ+ycWz6DKEEI3KNb
RuLJk30Xe7+y7TDmG/FPiAlmm4HqfQsz5jv3WADeip2g9c+h5AQakIEfomR4DBhF
GN0VY3dNdHsQ4c5pSeKG9PjYPiPQreqUrXgRSppkM+kOekHz+5qY0cXIweU61FRt
CPk5/Wywa+B0Vj9ffJP3A26IiZAmj5RJXJgNLHc6K5pG5NSqTnHmxO6/qhS9mUEo
LCiuSQlj0vNCQ2KtNioHyTxgC2lbBpUjCDWkL6SfdRfdsK8Ec11Opygx/EQI2Yux
NuT7lucvcwW1AiOnw/6AGcDhJ6vepNnZ+1oOTbYaPh+cao4OF90=
=oqqt
-----END PGP SIGNATURE-----

--bbqmu7jqpko23ma6--
