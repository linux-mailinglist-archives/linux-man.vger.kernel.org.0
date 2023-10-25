Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 305637D7063
	for <lists+linux-man@lfdr.de>; Wed, 25 Oct 2023 17:08:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232469AbjJYPH3 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 25 Oct 2023 11:07:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37326 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234242AbjJYPH2 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 25 Oct 2023 11:07:28 -0400
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7ADD9128
        for <linux-man@vger.kernel.org>; Wed, 25 Oct 2023 08:07:25 -0700 (PDT)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0D0E1C433C8
        for <linux-man@vger.kernel.org>; Wed, 25 Oct 2023 15:07:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1698246444;
        bh=fhOdByZ3oKV3V1L12IzA4MaLl+a5fx/cyHIi93LaRRs=;
        h=Date:From:To:Subject:From;
        b=q457ruXRRDRHjRlvA1Rbq8Toy6ziTgC2c0b2a/SKs71/bznbfROfzeQBvAEhdUV0B
         n5ZqdsdxsHWYqRWxhvhwz1M3BWTjJ7wEqhW95+a46Y2iMEcl8NjOLzZStghRpTE+Q/
         cZuPMdSqTYio1QcPoevACaDVTQwaKZu3+6trGjEr9WwIx1uAdhKnQuq0Co1aMU95zv
         /xc/bMbjFfVV248qs6InHg2y0nIhuHjKnBRRrZAsZjA/VQFqlMB6cEAYF2liEDNmcL
         v8EF/2T2ELYjrIhxHcfkiKMC4BUauGZ1QihuXpBV/slX1Tdo9ff7DSaISbjFvWygFv
         F6FcV5UHWRZ8A==
Date:   Wed, 25 Oct 2023 17:07:22 +0200
From:   Alejandro Colomar <alx@kernel.org>
To:     linux-man@vger.kernel.org
Subject: [PATCH] man*/: ffix (Place short options after long options)
Message-ID: <ZTkvKoqSTD9VivQe@debian>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,HEXHASH_WORD,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This increases the chances that the paragraph will start in the same
line as the tag, wasting less vertical space.

The result seems visually better to me.

On Wed, Oct 25, 2023 at 09:11:03AM -0500, G. Branden Robinson wrote:
> I also like your suggestion that if we really want to economize on
> space, we could present a command's long option form before its short,
> old-style Unix synonym, which will work well when the short option (plus
> its argument, if any) fits within the space for the paragraph tag.  This
> might be a good idea for another reason; in GNU user space, the long
> option is the much more self-documenting form, and the single-character
> option name a kind of "expert mode" alternative.  As a general rule,
> when presenting technical material, one should not lead with "expert
> mode".

Cc: Ingo Schwarze <schwarze@openbsd.org>
Cc: "G. Branden Robinson" <branden@debian.org>
Signed-off-by: Alejandro Colomar <alx@kernel.org>
---
 man1/getent.1      | 20 ++++++++++----------
 man1/iconv.1       | 28 ++++++++++++++--------------
 man1/ldd.1         | 16 ++++++++--------
 man1/locale.1      | 28 ++++++++++++++--------------
 man1/localedef.1   | 16 ++++++++--------
 man1/pldd.1        |  8 ++++----
 man1/sprof.1       | 20 ++++++++++----------
 man8/iconvconfig.8 | 12 ++++++------
 man8/ldconfig.8    | 20 ++++++++++----------
 9 files changed, 84 insertions(+), 84 deletions(-)

diff --git a/man1/getent.1 b/man1/getent.1
index 4fcc27abf..6a599c676 100644
--- a/man1/getent.1
+++ b/man1/getent.1
@@ -325,41 +325,41 @@ .SH DESCRIPTION
 and display the result.
 .SH OPTIONS
 .TP
-.BI \-s\~ service
-.TQ
 .BI \-\-service\~ service
+.TQ
+.BI \-s\~ service
 .\" commit 9d0881aa76b399e6a025c5cf44bebe2ae0efa8af (glibc)
 Override all databases with the specified service.
 (Since glibc 2.2.5.)
 .TP
-.BI \-s\~ database : service
-.TQ
 .BI \-\-service\~ database : service
+.TQ
+.BI \-s\~ database : service
 .\" commit b4f6f4be85d32b9c03361c38376e36f08100e3e8 (glibc)
 Override only specified databases with the specified service.
 The option may be used multiple times,
 but only the last service for each database will be used.
 (Since glibc 2.4.)
 .TP
-.B \-i
-.TQ
 .B \-\-no\-idn
+.TQ
+.B \-i
 .\" commit a160f8d808cf8020b13bd0ef4a9eaf3c11f964ad (glibc)
 Disables IDN encoding in lookups for
 .BR ahosts / getaddrinfo (3)
 (Since glibc-2.13.)
 .TP
-.B \-?
-.TQ
 .B \-\-help
+.TQ
+.B \-?
 Print a usage summary and exit.
 .TP
 .B \-\-usage
 Print a short usage summary and exit.
 .TP
-.B \-V
-.TQ
 .B \-\-version
+.TQ
+.B \-V
 Print the version number, license, and disclaimer of warranty for
 .BR getent .
 .SH EXIT STATUS
diff --git a/man1/iconv.1 b/man1/iconv.1
index 3319c1c03..14ee488b1 100644
--- a/man1/iconv.1
+++ b/man1/iconv.1
@@ -34,16 +34,16 @@ .SH DESCRIPTION
 encoding.
 .SH OPTIONS
 .TP
-.BI \-f\~ from-encoding
-.TQ
 .BI \-\-from\-code= from-encoding
+.TQ
+.BI \-f\~ from-encoding
 Use
 .I from-encoding
 for input characters.
 .TP
-.BI \-t\~ to-encoding
-.TQ
 .BI \-\-to\-code= to-encoding
+.TQ
+.BI \-t\~ to-encoding
 Use
 .I to-encoding
 for output characters.
@@ -66,42 +66,42 @@ .SH OPTIONS
 Characters that are outside of the target character set and cannot be
 transliterated are replaced with a question mark (?) in the output.
 .TP
-.B \-l
-.TQ
 .B \-\-list
+.TQ
+.B \-l
 List all known character set encodings.
 .TP
 .B \-c
 Silently discard characters that cannot be converted instead of
 terminating when encountering such characters.
 .TP
-.BI \-o\~ outputfile
-.TQ
 .BI \-\-output= outputfile
+.TQ
+.BI \-o\~ outputfile
 Use
 .I outputfile
 for output.
 .TP
-.B \-s
-.TQ
 .B \-\-silent
+.TQ
+.B \-s
 This option is ignored; it is provided only for compatibility.
 .TP
 .B \-\-verbose
 Print progress information on standard error when processing
 multiple files.
 .TP
-.B \-?
-.TQ
 .B \-\-help
+.TQ
+.B \-?
 Print a usage summary and exit.
 .TP
 .B \-\-usage
 Print a short usage summary and exit.
 .TP
-.B \-V
-.TQ
 .B \-\-version
+.TQ
+.B \-V
 Print the version number, license, and disclaimer of warranty for
 .BR iconv .
 .SH EXIT STATUS
diff --git a/man1/ldd.1 b/man1/ldd.1
index 1e115b9d7..87a2c9d34 100644
--- a/man1/ldd.1
+++ b/man1/ldd.1
@@ -114,26 +114,26 @@ .SH OPTIONS
 Print the version number of
 .BR ldd .
 .TP
-.B \-v
-.TQ
 .B \-\-verbose
+.TQ
+.B \-v
 Print all information, including, for example,
 symbol versioning information.
 .TP
-.B \-u
-.TQ
 .B \-\-unused
+.TQ
+.B \-u
 Print unused direct dependencies.
 (Since glibc 2.3.4.)
 .TP
-.B \-d
-.TQ
 .B \-\-data\-relocs
+.TQ
+.B \-d
 Perform relocations and report any missing objects (ELF only).
 .TP
-.B \-r
-.TQ
 .B \-\-function\-relocs
+.TQ
+.B \-r
 Perform relocations for both data objects and functions, and
 report any missing objects or functions (ELF only).
 .TP
diff --git a/man1/locale.1 b/man1/locale.1
index db85098b1..2579dd19f 100644
--- a/man1/locale.1
+++ b/man1/locale.1
@@ -35,9 +35,9 @@ .SH DESCRIPTION
 option (or one of their long-format equivalents) is specified,
 the behavior is as follows:
 .TP
-.B \-a
-.TQ
 .B \-\-all\-locales
+.TQ
+.B \-a
 Display a list of all available locales.
 The
 .B \-v
@@ -45,9 +45,9 @@ .SH DESCRIPTION
 .B LC_IDENTIFICATION
 metadata about each locale to be included in the output.
 .TP
-.B \-m
-.TQ
 .B \-\-charmaps
+.TQ
+.B \-m
 Display the available charmaps (character set description files).
 To display the current character set for the locale, use
 \fBlocale \-c charmap\fR.
@@ -74,9 +74,9 @@ .SH DESCRIPTION
 .PP
 When arguments are supplied, the following options are meaningful:
 .TP
-.B \-c
-.TQ
 .B \-\-category\-name
+.TQ
+.B \-c
 For a category name argument,
 write the name of the locale category
 on a separate line preceding the list of keyword values for that category.
@@ -90,9 +90,9 @@ .SH DESCRIPTION
 .B \-k
 option.
 .TP
-.B \-k
-.TQ
 .B \-\-keyword\-name
+.TQ
+.B \-k
 For each keyword whose value is being displayed,
 include also the name of that keyword,
 so that the output has the format:
@@ -107,23 +107,23 @@ .SH DESCRIPTION
 .B locale
 command also knows about the following options:
 .TP
-.B \-v
-.TQ
 .B \-\-verbose
+.TQ
+.B \-v
 Display additional information for some command-line option and argument
 combinations.
 .TP
-.B \-?
-.TQ
 .B \-\-help
+.TQ
+.B \-?
 Display a summary of command-line options and arguments and exit.
 .TP
 .B \-\-usage
 Display a short usage message and exit.
 .TP
-.B \-V
-.TQ
 .B \-\-version
+.TQ
+.B \-V
 Display the program version and exit.
 .SH FILES
 .TP
diff --git a/man1/localedef.1 b/man1/localedef.1
index c59a9c8c5..34f04fcff 100644
--- a/man1/localedef.1
+++ b/man1/localedef.1
@@ -206,15 +206,15 @@ .SS Other options
 to look up aliases for locale names.
 There is no default aliases file.
 .TP
-.B \-c
-.TQ
 .B \-\-force
+.TQ
+.B \-c
 Write the output files even if warnings were generated about the input
 file.
 .TP
-.B \-v
-.TQ
 .B \-\-verbose
+.TQ
+.B \-v
 Generate extra warnings about errors that are normally ignored.
 .TP
 .B \-\-big\-endian
@@ -278,9 +278,9 @@ .SS Other options
 and
 .IR intcurrsym .
 .TP
-.B \-?
-.TQ
 .B \-\-help
+.TQ
+.B \-?
 Print a usage summary and exit.
 Also prints the default paths used by
 .BR localedef .
@@ -288,9 +288,9 @@ .SS Other options
 .B \-\-usage
 Print a short usage summary and exit.
 .TP
-.B \-V
-.TQ
 .B \-\-version
+.TQ
+.B \-V
 Print the version number,
 license,
 and disclaimer of warranty for
diff --git a/man1/pldd.1 b/man1/pldd.1
index 3a7c02b92..eb5e91bb3 100644
--- a/man1/pldd.1
+++ b/man1/pldd.1
@@ -19,17 +19,17 @@ .SH DESCRIPTION
 .BR dlopen (3).
 .SH OPTIONS
 .TP
-.B \-?
-.TQ
 .B \-\-help
+.TQ
+.B \-?
 Display a help message and exit.
 .TP
 .B \-\-usage
 Display a short usage message and exit.
 .TP
-.B \-V
-.TQ
 .B \-\-version
+.TQ
+.B \-V
 Display program version information and exit.
 .SH EXIT STATUS
 On success,
diff --git a/man1/sprof.1 b/man1/sprof.1
index 1f99bc932..b86735443 100644
--- a/man1/sprof.1
+++ b/man1/sprof.1
@@ -27,22 +27,22 @@ .SH OPTIONS
 The following command-line options specify the profile output
 to be produced:
 .TP
-.B \-c
-.TQ
 .B \-\-call\-pairs
+.TQ
+.B \-c
 Print a list of pairs of call paths for the interfaces exported
 by the shared object,
 along with the number of times each path is used.
 .TP
-.B \-p
-.TQ
 .B \-\-flat\-profile
+.TQ
+.B \-p
 Generate a flat profile of all of the functions in the monitored object,
 with counts and ticks.
 .TP
-.B \-q
-.TQ
 .B \-\-graph
+.TQ
+.B \-q
 Generate a call graph.
 .PP
 If none of the above options is specified,
@@ -50,17 +50,17 @@ .SH OPTIONS
 .PP
 The following additional command-line options are available:
 .TP
-.B \-?
-.TQ
 .B \-\-help
+.TQ
+.B \-?
 Display a summary of command-line options and arguments and exit.
 .TP
 .B \-\-usage
 Display a short usage message and exit.
 .TP
-.B \-V
-.TQ
 .B \-\-version
+.TQ
+.B \-V
 Display the program version and exit.
 .SH STANDARDS
 GNU.
diff --git a/man8/iconvconfig.8 b/man8/iconvconfig.8
index 95cfcdb03..edd42388d 100644
--- a/man8/iconvconfig.8
+++ b/man8/iconvconfig.8
@@ -40,9 +40,9 @@ .SH OPTIONS
 Do not search the system default gconv directory,
 only the directories provided on the command line.
 .TP
-.BI \-o\~ outputfile
-.TQ
 .BI \-\-output= outputfile
+.TQ
+.BI \-o\~ outputfile
 Use
 .I outputfile
 for output instead of the system default cache location.
@@ -58,17 +58,17 @@ .SH OPTIONS
 and the cache would be written to
 .IR foo/usr/lib/gconv/gconv\-modules.cache .
 .TP
-.B \-?
-.TQ
 .B \-\-help
+.TQ
+.B \-?
 Print a usage summary and exit.
 .TP
 .B \-\-usage
 Print a short usage summary and exit.
 .TP
-.B \-V
-.TQ
 .B \-\-version
+.TQ
+.B \-V
 Print the version number, license, and disclaimer of warranty for
 .BR iconv .
 .SH EXIT STATUS
diff --git a/man8/ldconfig.8 b/man8/ldconfig.8
index 2f974ad7d..01862b55c 100644
--- a/man8/ldconfig.8
+++ b/man8/ldconfig.8
@@ -89,9 +89,9 @@ .SH DESCRIPTION
 after an upgrade.
 .SH OPTIONS
 .TP
-.BI \-c\~ fmt
-.TQ
 .BI \-\-format= fmt
+.TQ
+.BI \-c\~ fmt
 (Since glibc 2.2)
 .\" commit 45eca4d141c047950db48c69c8941163d0a61fcd
 Use cache format
@@ -121,9 +121,9 @@ .SH OPTIONS
 instead of
 .IR /etc/ld.so.conf .
 .TP
-.B \-i
-.TQ
 .B \-\-ignore\-aux\-cache
+.TQ
+.B \-i
 (Since glibc 2.7)
 .\" commit 27d9ffda17df4d2388687afd12897774fde39bcc
 Ignore auxiliary cache file.
@@ -148,9 +148,9 @@ .SH OPTIONS
 is also specified,
 links are still updated.
 .TP
-.B \-p
-.TQ
 .B \-\-print\-cache
+.TQ
+.B \-p
 Print the lists of directories and candidate libraries stored in
 the current cache.
 .TP
@@ -159,18 +159,18 @@ .SH OPTIONS
 .I root
 as the root directory.
 .TP
-.B \-v
-.TQ
 .B \-\-verbose
+.TQ
+.B \-v
 Verbose mode.
 Print current version number,
 the name of each directory as it is scanned,
 and any links that are created.
 Overrides quiet mode.
 .TP
-.B \-V
-.TQ
 .B \-\-version
+.TQ
+.B \-V
 Print program version.
 .TP
 .B \-X
-- 
2.42.0

