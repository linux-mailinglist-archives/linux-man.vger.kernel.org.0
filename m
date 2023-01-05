Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8197465F712
	for <lists+linux-man@lfdr.de>; Thu,  5 Jan 2023 23:52:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236302AbjAEWwv (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 5 Jan 2023 17:52:51 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42684 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235821AbjAEWwt (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 5 Jan 2023 17:52:49 -0500
Received: from mail-oa1-x2f.google.com (mail-oa1-x2f.google.com [IPv6:2001:4860:4864:20::2f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A11B25881E
        for <linux-man@vger.kernel.org>; Thu,  5 Jan 2023 14:52:48 -0800 (PST)
Received: by mail-oa1-x2f.google.com with SMTP id 586e51a60fabf-1442977d77dso44641134fac.6
        for <linux-man@vger.kernel.org>; Thu, 05 Jan 2023 14:52:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ZAEajg3kwSiS7NoNNX8ylYIJsZ7B+OvjfEFtQgi9NTA=;
        b=UMnOUckV84skhTmwyEL81E2CF1EgtoDmIJs2xXl/0GrQQsx5HJS9m/MkOye0hmxzTV
         +HdDQmDqzGX0wkFSR7cZpLkQsjpDTSlNdJUPuYh4f9PAt4gwTHSc3LCJP3OgwqAqWNPZ
         huHVUldxMbUdTv2w9Jb6xVERF7Y/7aC7BcSt7XL11yzpr3+rF6vTRGl4RUTsUkhubvCv
         wkOmRxgQangMACtI2tvmrqFmmUs2dFWVPGcvB8i/wVauxxjIUv+KoYcHqpiaf2bYErh2
         8QoGQ9bpegC/BksHukOYuW9MI4JtrncYeiV0w3vcLHLLWlIKQ8kTBRuebYI88vHI6bwd
         rH0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ZAEajg3kwSiS7NoNNX8ylYIJsZ7B+OvjfEFtQgi9NTA=;
        b=bX9W6ZiN/TnrUB0UXMAn3M37434KWYLaEd5S1g8vZotrV+3f9VPvRoYP9vQ7kucyDN
         1Nii4muCzMHsmM7GGBMeuoOYM/XfQmIxpeEVY8scuTfFggy6YduC6FQi2R2EDWwg7cz+
         Yhj3/YbF18cSBuA7J+Uvq+rLrtswi/hWPrl56BgX/cd/5M/Q4h7Y84oG6+CTR12LlBVh
         pV5RfGv7H9WCvMRGqNUo3P7pl3znF6EMWjeLwsSmDCYZDb+GLq9Lsw5eydaJl6/GHyG4
         fpVtMrDo+wdL7NiuoLRk8svKnuK7ChM6cg9WCCcITh9tsJA9bLWHwp2/yhhA771KgwKo
         tEVA==
X-Gm-Message-State: AFqh2ko0e7U/TOvba2ZA62+2PMYTLkC47w2o7fiInCTDjv7X2A4Kv5bu
        THOTLsEj6aozQBaP6BTtIYd2pI/T+Nc=
X-Google-Smtp-Source: AMrXdXtNo9JPJZrKhFn4o8CUGP7ckmul5CiYjE0untPoVKegkZ3umO4+4yCntYlzDZUOsqLBP8RSMQ==
X-Received: by 2002:a05:6870:9e94:b0:14f:75cc:c7ae with SMTP id pu20-20020a0568709e9400b0014f75ccc7aemr30485216oab.54.1672959167849;
        Thu, 05 Jan 2023 14:52:47 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id r16-20020a056870179000b0014813cc4a51sm13410278oae.29.2023.01.05.14.52.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Jan 2023 14:52:47 -0800 (PST)
Date:   Thu, 5 Jan 2023 16:52:46 -0600
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH v3 05/13] ldconfig.8: Revise and update for glibc 2.32
Message-ID: <20230105225246.uid2pwwivc6testz@illithid>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="a7yvfkyrp6dty7p6"
Content-Disposition: inline
X-Spam-Status: No, score=1.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,RCVD_IN_SBL_CSS,SPF_HELO_NONE,SPF_PASS autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Level: *
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--a7yvfkyrp6dty7p6
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
index de2b7a5c3..3f4f1e6b2 100644
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
@@ -50,50 +52,57 @@ and
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
@@ -105,10 +114,7 @@ Other files will be ignored.
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
@@ -116,8 +122,26 @@ libfoo.so \-> libfoo.so.1 \-> libfoo.so.1.12
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
@@ -133,9 +157,9 @@ which is one of
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
@@ -145,6 +169,8 @@ Use
 .I cache
 instead of
 .IR /etc/ld.so.cache .
+Implies
+.BR \-i .
 .TP
 .BI \-f\~ conf
 Use
@@ -182,27 +208,29 @@ links are still updated.
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
@@ -210,26 +238,70 @@ Unless
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


--a7yvfkyrp6dty7p6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmO3VL4ACgkQ0Z6cfXEm
bc7PGw/8DtQC8sAPEBF7vZ4vEgy9amOS/pgp0Wxa/1o2SDwwmu0Ji80ckEtOCDqZ
MvvuY/QqVmxdeZU49XpfW03ORSWsw/j4SDm9LkSLRU2bvOz1PyZsEDaR7zU6VYmF
ykS9IU4Gylg4hruuxyK0jQz/bK7/YZWAa7fQ2WxsrVpfdEfcePqkOiJJvvWXCI61
XwNefFTrMQM9mPPXHcLxXuFGr7J/IlDY60w50IqEgdztn2cdBzcSkRnzFViZ6ob7
WxHBYpVLudM5UqA7JXxztc1TOf3utEITWHpcs+fZa0QiVQQ+yBtxaxj69C17vncs
f4mFQHgB0CGmCEDEoR1yoZwXqAduLj/bl9kY4fF7vl3wYWELlxllOzecqy33EoPO
8jSo1uPcAfMageidJ1HeV0sCrrkiPGzvxPDAN+cy/IbHHYA71NMszbr/5LUD7tA4
agLpGRCv9jEobLNoH1Qyjk3ebNlfH0wNGcCICsQnHdHekTPAiz5ZOXtoryYJ4y+/
4WMJqxSqhC9EXPXPtm8xJ8jy2/JYe2mbfkFY6aALIxzMO4eqSvd9kXK6esKqCqmn
LZ1rF7FImmFYaAHNSeEvsQnYTjhV2lIk+KzB/vu28CCNXA84ImiV2Kmuji1IlNFK
y3tgU33TBVSrXTvJUacGqbNoibJK8WL7j92QYzypLjpVW0Q96sM=
=aaBX
-----END PGP SIGNATURE-----

--a7yvfkyrp6dty7p6--
