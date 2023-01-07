Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 43EE3660D71
	for <lists+linux-man@lfdr.de>; Sat,  7 Jan 2023 10:55:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230439AbjAGJy4 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 7 Jan 2023 04:54:56 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47994 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231896AbjAGJy0 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 7 Jan 2023 04:54:26 -0500
Received: from mail-ot1-x336.google.com (mail-ot1-x336.google.com [IPv6:2607:f8b0:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 32A34840A0
        for <linux-man@vger.kernel.org>; Sat,  7 Jan 2023 01:54:25 -0800 (PST)
Received: by mail-ot1-x336.google.com with SMTP id p17-20020a9d6951000000b00678306ceb94so2301134oto.5
        for <linux-man@vger.kernel.org>; Sat, 07 Jan 2023 01:54:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=XDBemVTUBmmJqYEH0cw3ytrt5a7Z4p/5b+gofa2Vu0U=;
        b=GT93C07D3ayV9r+3UolUVrkHVoUosirIZPlOr80IaO2TbHak54STnrRunLVNdRM9g3
         VC4BScESUNr2oesETA7cFCjdTnUNrS2mfjW7JYP/naytu1mr1LfSaxlfD4E9AE8EDoSW
         uToSXzuaceuVprkPyLK4ni9zxV7qngV64obhb0f5nwcI0pMpmu+JIseNpd7l2TWV0mB9
         Y68Qbc3UBPADMlHVQ9YzUXnAoL6qDtuOfPI9x0eUCZHvI7cFY7S/5fh6YYgZgFfU7VCc
         jntZi8D7qhNTsZ6Hrn+zG4CXiTajsVytY/jIYL5SsKMJcEziA8jy0A96l/tH0AMACGDe
         BhDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=XDBemVTUBmmJqYEH0cw3ytrt5a7Z4p/5b+gofa2Vu0U=;
        b=XqZRNdbu39LHDS5nrOHWw13APT7+d8lHZTS23xiGa8yhvJ3+KJw+YWm6B5i9fql1Ma
         lueC4PzjYcAKjxSN6rl6nIZtu4McmSLszeikG9ExEZk0MkQ/Ia93LG6hXKTXXR8j5EuN
         My5ebvYy7c+MApmp0mPTc6IvEi+LyqbZ0NDJystZMifBOcs6P8tenx/cKQnNrWn3lWza
         OstfCbJeZIUTCMZBBJMrOPP0DVHlQiBT32fhWYhTYZ6KTsKxP1gS8MWOE6lZNTM751GJ
         TiLF6+p8v8viwIQdAhuIG/igFCaHk0ziGyUPELMCTg0IVbwWw9H/oBcG43YHhgqcvLK7
         axGA==
X-Gm-Message-State: AFqh2krb2L34pm42acMBMLsOruysH0xU/70eqxCGIO8MX0RCJZuY8RRm
        5n++1ZUirN9G3mD9J3J/XpikEE3lciM=
X-Google-Smtp-Source: AMrXdXtjva4jAl+NR/uGwIQzNKvgwwJ4q2wyaz9DCOPJnZf9EupsMQ+syjQZCnMqEU8AQXuxFPwG2g==
X-Received: by 2002:a05:6830:1f23:b0:678:281e:f0 with SMTP id e3-20020a0568301f2300b00678281e00f0mr31295514oth.5.1673085264454;
        Sat, 07 Jan 2023 01:54:24 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id v20-20020a05683018d400b00670641eb272sm1658489ote.20.2023.01.07.01.54.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 07 Jan 2023 01:54:24 -0800 (PST)
Date:   Sat, 7 Jan 2023 03:54:22 -0600
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH v4 02/10] ldconfig.8: Revise and update for glibc 2.32
Message-ID: <20230107095422.44loq4pzsfjktvpz@illithid>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="e5gjgxy5bsdes4mg"
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


--e5gjgxy5bsdes4mg
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


--e5gjgxy5bsdes4mg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmO5QU4ACgkQ0Z6cfXEm
bc5adQ//W1BCjrJ/vrpMgUzS7GMXmzVzxE9lixMAF+NtV6O2AoP8isaoc2HxEyeQ
PTRw35HffJKeuGZKuEt05v0rm0o3ypqUikiiWfM15DqPTfPPCUDqRxCVhyVDm5Xk
CetJW+8su3L/IBulFE/7yPlXFRctyGKa/WWB5bEJgF9Ki1n6bTgyx93xRNMCUyDk
WQogEJlxv5m9bf97lC+gvoPm/NJ/iiG2VlSDgCs80YJwwawW/tWMEk9FsBDXqr+E
T2FQagmwydlwJgZEOZ0ssDFMPoHr+4cmlQ9sbxk+6oJmG9Ohjn+6IDCCzBvE7AYE
S4UVZlYv3TfLtQ7OTdfHhloaA27yJWW2HWBDF3fzrgAenh6+7W8ec/IkzoDJrh4T
Zy0qrdGNHAah3VsRi95sxP2VlWso1YLZtMsHpa/pMj2a/SY7JXqpvuTZJcnW75rp
80PP5TCZ2ZGZ96N5WxCmp6V4tf2B1PHe70HuKgM5RYj70WH6MQAapHEKEeVBrQFN
ofMS1v3igC6ggWbkcFuSC3eJhvKUCwOOhXj/ZtvvzfCUc2si2MavDde8PHKL+uU0
cEOtETlunAdEHAnlZKnrD3GC4iV73z+TW0TGM+Qvnd8l8dKJaEDh/pSclYIIFUY/
aQipTcOLkraviRTCl1XjdTr1u8yVXZRcZIWYzuLYqsZ7DqthvWQ=
=L+x4
-----END PGP SIGNATURE-----

--e5gjgxy5bsdes4mg--
