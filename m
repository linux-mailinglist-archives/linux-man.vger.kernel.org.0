Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DC10D65B34B
	for <lists+linux-man@lfdr.de>; Mon,  2 Jan 2023 15:23:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230127AbjABOX4 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 2 Jan 2023 09:23:56 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58854 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231454AbjABOXx (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 2 Jan 2023 09:23:53 -0500
Received: from mail-oi1-x230.google.com (mail-oi1-x230.google.com [IPv6:2607:f8b0:4864:20::230])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1331B2F0
        for <linux-man@vger.kernel.org>; Mon,  2 Jan 2023 06:23:52 -0800 (PST)
Received: by mail-oi1-x230.google.com with SMTP id n8so18277624oih.0
        for <linux-man@vger.kernel.org>; Mon, 02 Jan 2023 06:23:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=0Hs5XiEBqDIVefxXLznVGoCJXSiGq22+C39iwiYzwHg=;
        b=KjRr1cJJnuaTM5cyZHAmTv/YetY5QUUaEXX6UBhq6UcdjKwi+ebGZ1y6yTav6lMM1a
         R+6zzekqgu0zm8H91DIPk/SCDn/65K9xNfycRQoTxsCzAHN7AefLGLAzIqEpDlw0ZUZZ
         nMF8U3vKek1RjqluA6wAy5toaQUkudTh7sM5AQIG1GkzQ1HB5fj+Ek2FuEPU4eAz1/XP
         w2xhnnc4Dc8NoYiKz14BPUb1zLLjTZ5iNKw0/TJBnzRsg4/0x6zVFwrxFHgZdRZ0WS3N
         KSviitlyozcP5kbKfpEdulHcf2j/iQz/Sxr+skZb6P//qzI6pM3edXTOUD3AZ6gJfxP3
         tz6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=0Hs5XiEBqDIVefxXLznVGoCJXSiGq22+C39iwiYzwHg=;
        b=NdNvYJlT/t+9Rb4MQGAEKwi1nFpqGXs+Y91FDYCAjj/66HQa8rxWJxNzq4E0fZR5R5
         pmowTras9jOVEbGBA3N1HWW+WCWVHAUNipF9qHaGHpi1fbUFBhOzWcFLwJCx3qnoO0HB
         2UPHxjXPtO8G8wkC7mITQ3qSNiWwB/ivLZ6DV2Tw1bPpmdEhgjqVOzs95GqJC0VExyKF
         zX5F38yco9neeMXk+4u65zmxlkCIy0nbepZC/HIcCt4mDpiGTwF1BwaffxlMqlOZZW3n
         N6eSoh01co1Vim/lVr7lNDqc3h8VmdBYHjqQqWWjKdytFHnQLSnDg3U/lHOvz1l4Y5T2
         9xrg==
X-Gm-Message-State: AFqh2ko5oMcSuAsETMaoV+UfOgm3+OR0wYH/TKGuAu1CI9WpEMRaafjX
        R4Hc5VBIuLgUE7L88X3b1CHrgJl+qdUClA==
X-Google-Smtp-Source: AMrXdXshxY++mn2QlRWhouqUIvRjKf3lKNrr4PvVWN5Y40oVsle25IuBYqynaYO5Mf7+AoXKumyazA==
X-Received: by 2002:a05:6808:13d2:b0:35e:ae18:9783 with SMTP id d18-20020a05680813d200b0035eae189783mr26116924oiw.8.1672669431238;
        Mon, 02 Jan 2023 06:23:51 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id d125-20020acab483000000b0035a921f2093sm12000212oif.20.2023.01.02.06.23.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Jan 2023 06:23:50 -0800 (PST)
Date:   Mon, 2 Jan 2023 08:23:49 -0600
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH 2/4] ldconfig.8: Revise and update.
Message-ID: <20230102142349.scfw6dopifjysqug@illithid>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="itihfazwqi66dyir"
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


--itihfazwqi66dyir
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Content:
* Recast summary description to identify relevance of libraries.
* Drop `-V` option from synopsis; it doesn't make any sense combined
  with the operation mode shown, and no other "get out quick" option,
  including its synonym `--version`, is documented in the synopsis.
* Clarify that the "links" manipulated by the program are symbolic.
* Clarify how ldconfig can be run by unprivileged users (probably for
  troubleshooting).
* Discuss caching feature separately.
* Comment out multiple paragraphs discussing libc4 and libc5 shared
  library support.  It was removed upstream in July.
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

Style:
* Set `TH` page title in lowercase, since the migration is underway.
* In synopses, set ellipses as separate "operands" to better suggest
  argument separation by white space.
* Sort option flags in English lexicographic order.
* Typeset ellipses more attractively on troff devices.
* De-parenthesize content that seems important.
* Perform a Kemper notectomy.  That is, stop saying "note that"
  followed by some declarative statement.  This trope is all over Unix
  documentation and I even see it in ISO standards.  The latter doesn't
  serve to recommend it; as Dave Kemper has pointed out, everything we
  put in technical documentation should be worthy of note unless placed
  in a footnote, marked as "unnecessary on a first reading", or similar.
  It is the exception, not the rule.  If you feel the need to say "note
  that", consider what adjacent material you shouldn't be saying at all.
* Say "symbolic link" instead of "symlink".  (Should we add this to the
  man-pages(7) usage table?)
* When one sentence explains the previous, use a semicolon.
* Place the modifier "only" more carefully.
* Recast option descriptions to be in the imperative mood.
* Recast file descriptions to use the paragraph tag as the subject of
  the first sentence.

Markup:
* Add glibc Git repository commit IDs for several features (and one
  feature withdrawal).  Drop FIXME comments that apparently desired
  this.
* Annotate potential DoS attack on ldconfig(8).  (But you'd have to have
  write access to /etc/ld.so.conf or something it reads anyway.)
* Set literals used as arguments to `-c` option in bold, not italics.
* Rewrite synopses to use man(7) font macros instead of *roff font
  selection escape sequences.
* Drop redundant `PD` macro calls.
* Use `P` macro instead of `PP` (my preference; it's shorter).
* Use AT&T troff-compatible right-arrow special characters.
* Rewrite option list to use man(7) font macros instead of *roff font
  selection escape sequences.
* Use `TQ` macro to include multiple tags for options with long synonyms
  instead of comma notation.
* Break input lines after commas.
* Set multi-word parentheticals on their own input lines.
* Break input lines at phrase boundaries more often.
* Protect literals from automatic hyphenation with `\%` escape sequence.
---
 man8/ldconfig.8 | 292 ++++++++++++++++++++++++++++++++----------------
 1 file changed, 193 insertions(+), 99 deletions(-)

diff --git a/man8/ldconfig.8 b/man8/ldconfig.8
index d608aaf56..6f6e51008 100644
--- a/man8/ldconfig.8
+++ b/man8/ldconfig.8
@@ -5,146 +5,184 @@
 .\"
 .\" Modified, 6 May 2002, Michael Kerrisk, <mtk.manpages@gmail.com>
 .\"   Change listed order of /usr/lib and /lib
-.TH LDCONFIG 8 (date) "Linux man-pages (unreleased)"
+.TH ldconfig 8 (date) "Linux man-pages (unreleased)"
 .SH NAME
-ldconfig \- configure dynamic linker run-time bindings
+ldconfig \- configure library bindings used by run-time dynamic linker
 .SH SYNOPSIS
-.BR /sbin/ldconfig " [" \-nNvXV "] [" \-f " \fIconf\fP] [" \-C " \fIcache\=
fP] [" \-r " \fIroot\fP]"
-.IR directory \...
 .PD 0
-.PP
-.PD
+.\" TODO?: -c, --format, -i, --ignore-aux-cache, ,--print-cache,
+.\" --verbose, -V, --version, -?, --help, --usage
+.BR /sbin/ldconfig " [" \-nNvX "]
+.RB [ \-C
+.IR cache ]
+.RB [ \-f
+.IR conf ]
+.RB [ \-r
+.IR root ]
+.IR directory \~.\|.\|.
+.P
 .B /sbin/ldconfig
 .B \-l
 .RB [ \-v ]
-.IR library \...
-.PD 0
-.PP
-.PD
+.IR library \~.\|.\|.
+.P
 .B /sbin/ldconfig
 .B \-p
+.PD
 .SH DESCRIPTION
-.B ldconfig
-creates the necessary links and cache to the most recent shared
-libraries found in the directories specified on the command line,
+.B \%ldconfig
+creates the necessary symbolic links
+to the most recent shared libraries found in the directories
+specified on the command line,
 in the file
 .IR /etc/ld.so.conf ,
 and in the trusted directories,
 .I /lib
 and
-.I /usr/lib
-(on some 64-bit architectures such as x86-64,
+.IR /usr/lib .
+On some 64-bit architectures such as x86-64,
 .I /lib
 and
 .I /usr/lib
-are the trusted directories for 32-bit libraries, while
+are the trusted directories for 32-bit libraries,
+while
 .I /lib64
 and
 .I /usr/lib64
-are used for 64-bit libraries).
-.PP
-The cache is used by the run-time linker,
+are used for 64-bit libraries.
+.P
+It also maintains a cache
+used by the run-time linker,
 .I ld.so
 or
 .IR ld\-linux.so .
-.B ldconfig
+.B \%ldconfig
 checks the header and filenames of the libraries it encounters when
 determining which versions should have their links updated.
-.PP
-.B ldconfig
-will attempt to deduce the type of ELF libraries (i.e., libc5 or libc6/gli=
bc)
-based on what C libraries, if any, the library was linked against.
-.\" The following sentence looks suspect
-.\" (perhaps historical cruft) -- MTK, Jul 2005
-.\" Therefore, when making dynamic libraries,
-.\" it is wise to explicitly link against libc (use \-lc).
-.PP
-Some existing libraries do not contain enough information
-to allow the deduction of their type.
-Therefore, the
-.I /etc/ld.so.conf
-file format allows the specification of an expected type.
-This is used
-.I only
-for those ELF libraries which we can not work out.
-The format
-is "dirname=3DTYPE", where TYPE can be libc4, libc5, or libc6.
-(This syntax also works on the command line.)
-Spaces are
-.I not
-allowed.
-Also see the
-.B \-p
-option.
-.B ldconfig
-should normally be run by the superuser as it may require write
-permission on some root owned directories and files.
-.PP
-Note that
-.B ldconfig
-will only look at files that are named
+.\" Support for libc4 and libc5 dropped in
+.\" 8ee878592c4a642937152c8308b8faef86bcfc40 (2022-07-14) as "obsolete
+.\" for over twenty years".
+.\".P
+.\".B \%ldconfig
+.\"will attempt to deduce the type of ELF libraries (i.e., libc5 or libc6/=
glibc)
+.\"based on what C libraries, if any, the library was linked against.
+.\".\" The following sentence looks suspect
+.\".\" (perhaps historical cruft) -- MTK, Jul 2005
+.\".\" Therefore, when making dynamic libraries,
+.\".\" it is wise to explicitly link against libc (use \-lc).
+.\".P
+.\"Some existing libraries do not contain enough information
+.\"to allow the deduction of their type.
+.\"Therefore, the
+.\".I /etc/ld.so.conf
+.\"file format allows the specification of an expected type.
+.\"This is used
+.\".I only
+.\"for those ELF libraries which we can not work out.
+.\"The format
+.\"is "dirname=3DTYPE", where TYPE can be libc4, libc5, or libc6.
+.\"(This syntax also works on the command line.)
+.\"Spaces are
+.\".I not
+.\"allowed.
+.\"Also see the
+.\".B \-p
+.\"option.
+.B \%ldconfig
+is normally run by the superuser
+since it may require write permission
+on some root-owned directories and files.
+.RI \%\(lq ldconfig\~\-p \(rq
+can be run without such privileges.
+.P
+.B \%ldconfig
+will look only at files that are named
 .I lib*.so*
 (for regular shared objects) or
 .I ld\-*.so*
 (for the dynamic loader itself).
 Other files will be ignored.
 Also,
-.B ldconfig
-expects a certain pattern to how the symlinks are set up, like this
-example, where the middle file
-.RB ( libfoo.so.1
-here) is the SONAME for the library:
-.PP
+.B \%ldconfig
+expects a certain pattern to how the symbolic links are set up,
+as in the following.
+.P
 .in +4n
 .EX
-libfoo.so \-> libfoo.so.1 \-> libfoo.so.1.12
+libfoo.so \(-> libfoo.so.1 \(-> libfoo.so.1.12
 .EE
 .in
-.PP
-Failure to follow this pattern may result in compatibility issues
-after an upgrade.
+.P
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
+.P
+.B ldconfig
+maintains an auxiliary cache file that helps it to avoid re-reading
+libraries that have not changed since the last time it was run.
 .SH OPTIONS
 .TP
-.BR \-c " \fIfmt\fP, " \-\-format=3D\fIfmt\fP
+.BI \-c\~ fmt
+.TQ
+.BI \-\-format=3D fmt
 (Since glibc 2.2)
+.\" 45eca4d141c047950db48c69c8941163d0a61fcd
 Cache format to use:
-.IR old ,
-.IR new ,
+.BR old ,
+.BR new ,
 or
-.IR compat .
-Since glibc 2.32, the default is
-.IR new .
+.BR \%compat .
+Since glibc 2.32,
 .\" commit cad64f778aced84efdaa04ae64f8737b86f063ab
-Before that, it was
-.IR compat .
+the default is
+.BR new .
+Before that,
+it was
+.BR \%compat .
 .TP
 .BI "\-C " cache
 Use
 .I cache
 instead of
 .IR /etc/ld.so.cache .
+Implies
+.BR \-i .
 .TP
 .BI "\-f " conf
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
 (Since glibc 2.2)
 Library mode.
-Manually link individual libraries.
-Intended for use by experts only.
+Interprets each operand as a libary name and configures its links.
+Intended for use only by experts.
 .TP
 .B \-n
-Process only the directories specified on the command line.
-Don't process the trusted directories,
+Process only the directories specified on the command line;
+don't process the trusted directories,
 nor those specified in
 .IR /etc/ld.so.conf .
 Implies
@@ -154,50 +192,106 @@ Implies
 Don't rebuild the cache.
 Unless
 .B \-X
-is also specified, links are still updated.
+is also specified,
+links are still updated.
 .TP
-.BR \-p ", " \-\-print\-cache
-Print the lists of directories and candidate libraries stored in
-the current cache.
+.B \-p
+.TQ
+.B \-\-print\-cache
+Report the libraries stored in the cache and exit.
 .TP
 .BI "\-r " root
 Change to and use
 .I root
 as the root directory.
 .TP
-.BR \-v ", " \-\-verbose
-Verbose mode.
-Print current version number, the name of each directory as it
-is scanned, and any links that are created.
-Overrides quiet mode.
+.B \-\-usage
+Report a terse usage message and exit.
+.TP
+.B \-v
+.TQ
+.B \-\-verbose
+Operate verbosely;
+for each library,
+report the current version number,
+the name of each directory as it is scanned,
+and any links that are created.
 .TP
-.BR \-V ", " \-\-version
-Print program version.
+.B \-V
+.TQ
+.B \-\-version
+Report program version information and exit.
 .TP
 .B \-X
 Don't update links.
 Unless
 .B \-N
-is also specified, the cache is still rebuilt.
+is also specified,
+the cache is still rebuilt.
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
-Run-time linker/loader.
+is the run-time linker/loader.
 .TP
 .I /etc/ld.so.conf
-File containing a list of directories, one per line,
-in which to search for libraries.
+.RS
+contains containing a list of directories,
+one per line,
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
+.P
+.\" commit 8e115d80b07f17a11690c108918f847846a752da
+Since glibc\~2.3.4,
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
+.P
+.\" commit ab1d521db39bf4371c7db96e8a0fcd4857ee70ed
+In glibc\~2.4,
+a
+.B \%hwcap
+directive was introduced,
+.\" commit 31563b68410ff8e9490c5aafca31ec71b38f87a5
+but it is no longer supported as of glibc\~2.32.
+.RE
 .TP
 .I /etc/ld.so.cache
-File containing an ordered list of libraries found in the directories
+contains an ordered list of libraries found in the directories
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


--itihfazwqi66dyir
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmOy6PUACgkQ0Z6cfXEm
bc6faA/+O681z0GUhE9gF4de/NWyJMmLK6/nbLbXXaUN76jz/x98tr4pfGxA/3GA
jX78p1HRJRgVixy7TVcz2wQUkSzk+xZPxaHaQcFZWgP9cZsZRNV6dsraCENt/Qa2
KPV2mcUgPCW7HIV/wF2M9ggXtycgud/jbD4w+CEz+bX5GGD5ey1zRo9evQzikINj
o4ltq3uH4lEc513teDBfoU07kJRAmZhob5owqIUC4hgFRQhhpDlUUVPICmNvSjnO
+S4X1nHr4q4UL/6Z21sD9L2QY8WOFmulmL8EDtTg1f8uU5rI3ZOFh0f9O7JcUJBw
jj0dFvmRhlZJHjA6XS6N39JvBYnMdrf6UG+U1xX96vKLW62JMIJKO1K7mlGJkuju
rbCtN02vtV5lHnoUvtleOVyGJyTvF2cngtgNOvkVtr6/rs4N7rEgIvD1tZkjzYcL
YkDMsjYxeTY80xuk8C3G6NeL/HYzWVLISBhEjYXvGJZLuyITgx31N1qe3jbpYU/5
B16S0x7kbSgOGL7c4QAIJZbB0wnrkw80w6HjKn6E/1mWSfulxnjLPNaWsoNoGvI0
qXLV7yC7zl7Zl06QwpJh7KXvGiOlqJHxS+DY4MhxRz5wDyOWgSKhHDQSUJALm595
CNTwW/c4Cfrguse40FgbtkhbrA89JqINMXbwyjyMMk7SKcbBjSI=
=R+JY
-----END PGP SIGNATURE-----

--itihfazwqi66dyir--
