Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1527665B34C
	for <lists+linux-man@lfdr.de>; Mon,  2 Jan 2023 15:24:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232479AbjABOYC (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 2 Jan 2023 09:24:02 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58872 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232572AbjABOYC (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 2 Jan 2023 09:24:02 -0500
Received: from mail-oa1-x32.google.com (mail-oa1-x32.google.com [IPv6:2001:4860:4864:20::32])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E927C313
        for <linux-man@vger.kernel.org>; Mon,  2 Jan 2023 06:24:00 -0800 (PST)
Received: by mail-oa1-x32.google.com with SMTP id 586e51a60fabf-15027746720so18699110fac.13
        for <linux-man@vger.kernel.org>; Mon, 02 Jan 2023 06:24:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=NAZsJdzbQRh1xaJoWzz6uqrP/PqM7p7MoHBpiAnp8+I=;
        b=PN0u3dP932T0lASikfWAWSDb+ykvYnTvnVFwBp3QLnWsWkWDYKVvp/PIR3G+/OgUSe
         3nPvRYTSd29mxUB3q8T9Ik0vP9n0sql+yK1f0AgKyxizr+9MMgYViGhgon6HumSNrVJQ
         h4ZUz2ex6BsWz5htT+bABzGCrwpN+83W59fkK+DkpYnPdRRXV4fGR7MfsNbxPqr0EXlc
         Eg6nJssZ5SAw7mWzgpB0cXgkDIXBNJrMTmahrOVZx3f+pTalS+lyC5fg36MEw48x0cKA
         tWmidFFGOtychrUAsIJEnpQW7C3ksiu61ObQEtkiQo+fHYv4ZSykhle7Z81B7EozvFu8
         /NBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=NAZsJdzbQRh1xaJoWzz6uqrP/PqM7p7MoHBpiAnp8+I=;
        b=hh56yPnYvonFdR7YnlMznffEUHfgLuYKtIa6Rx3SA7kfVBO1djtuIzGdA0PEEsJKbw
         jmuza9L8ZP2nQglH98QIuM64iyvNxFAJBoDlxq1eLcPNH5ct+9Jbts15oITV9dPDGBZH
         z5gFYHpWBYMyUGlqGHMxlIUaxDrrCy9C+X+UUZ8T7WMDDND38sh01WlyaVH8pwy9+SxZ
         pozq9A/G3A7LM9IM5Kirojr60a4JA8WESV3j2vb522eiXRsvRFr5bjR1X35LGYlr5es7
         wJFp/RzzzUd74kLLdqUZzcVCk7B6zGsgvqUIOYzSEMAjS9s5H+vZxB4oe83xqL9cXAxh
         VDAQ==
X-Gm-Message-State: AFqh2kpY9mobxrwXClU9mEh8ZJ60zVNzmmPsXgIDnPwqMlDj/dR/ciS+
        W4zFvOE0RLm16PbHojEFqeM5AYT179+nLA==
X-Google-Smtp-Source: AMrXdXufulQD0uw55SIG3t1KljSzstnCZDO8TvjdkyGf/mKDpveWmAgxzSkh8tuNNbQsyGLzPr8pTQ==
X-Received: by 2002:a05:6870:ec9e:b0:14c:4a30:8dfd with SMTP id eo30-20020a056870ec9e00b0014c4a308dfdmr20716272oab.16.1672669439843;
        Mon, 02 Jan 2023 06:23:59 -0800 (PST)
Received: from illithid (ip68-12-97-90.ok.ok.cox.net. [68.12.97.90])
        by smtp.gmail.com with ESMTPSA id w19-20020a056870339300b001435fe636f2sm13032030oae.53.2023.01.02.06.23.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Jan 2023 06:23:59 -0800 (PST)
Date:   Mon, 2 Jan 2023 08:23:58 -0600
From:   "G. Branden Robinson" <g.branden.robinson@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH 3/4] libc.7: Revise.
Message-ID: <20230102142358.wp5e4bawqx2o2e6d@illithid>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="akew4pk6ybpwo77c"
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


--akew4pk6ybpwo77c
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Content:
* Define the term "standard C library".
* Say who's responsible for standardizing it.
* Move material describing structure glibc from intro(3) to here and
  recast in more detail.
* Update example filespec for libc.so.6.

Style:
* Set `TH` page title in lowercase, since the migration is underway.
* Say "GNU/Linux distributions" instead of "Linux distributions".
* Tighten wording.

Markup:
* Use typographer's quotation marks instead of '"' for quotation.
* Hyperlink "the GNU C Library" correctly.
* Use `P` instead of `PP` paragraphing macro.
* Add hyphenation breaks to URLs and the new unwieldy ISO WG identifier.
---
 man7/libc.7 | 157 ++++++++++++++++++++++++++++++++--------------------
 1 file changed, 98 insertions(+), 59 deletions(-)

diff --git a/man7/libc.7 b/man7/libc.7
index 12c79dc11..f5cda54ef 100644
--- a/man7/libc.7
+++ b/man7/libc.7
@@ -3,95 +3,134 @@
 .\"
 .\" SPDX-License-Identifier: Linux-man-pages-copyleft
 .\"
-.TH LIBC 7 (date) "Linux man-pages (unreleased)"
+.TH libc 7 (date) "Linux man-pages (unreleased)"
 .SH NAME
 libc \- overview of standard C libraries on Linux
 .SH DESCRIPTION
-The term "libc" is commonly used as a shorthand for
-the "standard C library",
-a library of standard functions that can be used by all C programs
-(and sometimes by programs in other languages).
-Because of some history (see below), use of the term "libc"
-to refer to the standard C library is somewhat ambiguous on Linux.
+The term \(lqlibc\(rq is commonly used as a shorthand for
+the
+.IR "standard C library" ,
+a collection of functions,
+data types,
+constants,
+and global variables \" like errno
+defined by ISO/IEC JTC1/\:SC22/\:WG14 and POSIX.1
+(the Austin Group)
+and used by practically all programs written in C.
+.I libc
+refers to any library that implements a significant portion of the
+published standard interface.
 .SS glibc
-By far the most widely used C library on Linux is the GNU C Library
+The standard libc most popularly used with the Linux kernel is
 .UR http://www.gnu.org\:/software\:/libc/
+the GNU C Library
 .UE ,
-often referred to as
+widely called
 .IR glibc .
-This is the C library that is nowadays used in all
-major Linux distributions.
-It is also the C library whose details are documented
+This implementation is nowadays used
+in all major GNU/Linux distributions.
+Its details are documented
 in the relevant pages of the
+Linux
 .I man-pages
-project (primarily in Section 3 of the manual).
-Documentation of glibc is also available in the glibc manual,
-available via the command
-.IR "info libc" .
-Release 1.0 of glibc was made in September 1992.
+project,
+primarily in section 3 of the manual.
+glibc also offers a manual of its own in Texinfo format,
+browsable at the command line with
+.RI \(lq "info libc" \(rq.
+.P
+glibc is organized into three
+.I dynamic shared objects
+(DSOs):
+.I libc
+itself,
+.I libm
+for mathematical functions,
+and
+.I librt
+for real-time extensions
+(historically POSIX.1b).
+.P
+Version 1.0 of glibc was released in September 1992.
 (There were earlier 0.x releases.)
-The next major release of glibc was 2.0, at the beginning of 1997.
-.PP
-The pathname
-.I /lib/libc.so.6
-(or something similar) is normally a symbolic link that
-points to the location of the glibc library,
-and executing this pathname will cause glibc to display
-various information about the version installed on your system.
+The next major release of glibc was 2.0
+at the beginning of 1997.
+.P
+The file
+.IR /lib/libc.so.6 ,
+.IR /lib/x86_64\-linux\-gnu/libc.so.6 ,
+or similar
+is normally a symbolic link to the glibc library.
+Execute it to display information about the version installed on your
+system.
 .SS Linux libc
-In the early to mid 1990s, there was for a while
+In the early to mid-1990s,
 .IR "Linux libc" ,
-a fork of glibc 1.x created by Linux developers who felt that glibc
-development at the time was not sufficing for the needs of Linux.
-Often, this library was referred to (ambiguously) as just "libc".
+a fork of glibc\~1,
+was maintained by Linux developers
+who felt that glibc development at the time
+did not meet the Linux user community's needs.
+Often,
+this library was referred to,
+simply and ambiguously,
+as \(lqlibc\(rq.
 Linux libc released major versions 2, 3, 4, and 5,
-as well as many minor versions of those releases.
-Linux libc4 was the last version to use the a.out binary format,
-and the first version to provide (primitive) shared library support.
-Linux libc 5 was the first version to support the ELF binary format;
-this version used the shared library soname
+along with many minor updates.
+Linux libc\~4 was the last to use the
+object file format called \(lqa.out\(rq,
+and the first on Linux to provide (primitive) shared library support.
+Linux libc\~5 was the first on Linux to support ELF object code;
+it employed the
+.I soname
+(shared object name)
 .IR libc.so.5 .
 For a while,
-Linux libc was the standard C library in many Linux distributions.
-.PP
-However, notwithstanding the original motivations of the Linux libc effort,
-by the time glibc 2.0 was released (in 1997),
+Linux libc was the standard C library in many GNU/Linux distributions.
+.P
+Notwithstanding the original motivations of the Linux libc effort,
+by the time glibc 2.0 was released,
 it was clearly superior to Linux libc,
-and all major Linux distributions that had been using Linux libc
-soon switched back to glibc.
-To avoid any confusion with Linux libc versions,
-glibc 2.0 and later used the shared library soname
-.IR libc.so.6 .
-.PP
+and all major distributions that had been using Linux libc
+soon switched (back) to glibc.
+To avoid confusion with Linux libc versioning,
+glibc 2.0 and later use the soname
+.I libc.so.6
+on Linux systems to indicate their status as successors
+to Linux libc\~5.
+.P
 Since the switch from Linux libc to glibc 2.0 occurred long ago,
 .I man-pages
 no longer takes care to document Linux libc details.
-Nevertheless, the history is visible in vestiges of information
-about Linux libc that remain in a few manual pages,
-in particular, references to
+Nevertheless,
+vestiges of this history linger in comments
+about Linux libc in a few manual pages\(em\
+in particular,
+references to
 .I libc4
 and
 .IR libc5 .
 .SS Other C libraries
-There are various other less widely used C libraries for Linux.
-These libraries are generally smaller than glibc,
-both in terms of features and memory footprint,
-and often intended for building small binaries,
-perhaps targeted at development for embedded Linux systems.
+Other,
+less widely used,
+C libraries for Linux exist.
+They are generally smaller than glibc
+in terms of features and memory footprint,
+and are often intended for building small binaries,
+such as those targetting embedded systems.
 Among such libraries are
-.UR http://www.uclibc.org/
+.UR http://www\:.uclibc\:.org/
 .I uClibc
 .UE ,
-.UR http://www.fefe.de/dietlibc/
-.I dietlibc
+.UR http://www\:.fefe\:.de/\:dietlibc/
+.I \%diet\%libc
 .UE ,
 and
-.UR http://www.musl\-libc.org/
-.I "musl libc"
+.UR http://www\:.musl\-libc\:.org/
+.I musl libc
 .UE .
-Details of these libraries are covered by the
+Details of these are offered by
 .I man-pages
-project, where they are known.
+where known.
 .SH SEE ALSO
 .BR syscalls (2),
 .BR getauxval (3),
--=20
2.30.2


--akew4pk6ybpwo77c
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEh3PWHWjjDgcrENwa0Z6cfXEmbc4FAmOy6P0ACgkQ0Z6cfXEm
bc4MrQ//Sn1/RHJvyjj6YBzj0vTZY8b1hZ42kqn5TfBSorD/+6IwnCipV8GpfwNW
28Ybo7IckFagQ9zB90qB58KqUGvh9haAUt9oAd4hSLddJc5BRXzBFG9Ihc0rhJrR
K/G5pRUKsg//x4jgkSZs5sCkdP3KxOeHPBhFrEFnkFWcwNy+PS6ejunUsQdZCRUp
NXGCHIYHRq2ew8kMW9BbE1dcguL02y6/mzT0kf6p+lQYtUjXbfeUyDQRsGT87QNL
B+t43J5ieiSXCwzVMzMQ9Tz3vQRlL1SPWb09U+1JXaTnQa0KKMW6LlqDbfAy50qi
MlJMRekWkVIVH9jsdTzYNTyLNZmIQkHFbtBHVB0KhQFpq+Z6d2jQAMk58d8HATS5
QjEtYuY52gp7+adGMlc86Cr8R6vr0Cn4pT0F8uWj85fksKB3WdXitIrOcNfOzdlB
ON5iIARFmONIDBLMqXWGYSaq0ptt/F++5p2ufXmnfq2mTVwgZ1XFTA7Nx/AY+Zud
ZPbMm/VTmKCcnbjbKdGBjgz6zsCIjDhg45hgoB+JwdTWJc0TxOmCYOz/e5eEJAul
23PoHBkuH3V1UgNsh1fr9ZgjkNXl3OWsk/yvzvwzvIHGx+/eFe5elHg6incZXUau
WYbP5G7Lj2NMRc4uOEaIHawFbJFKhyof6jktAljvnyw0+YFw9Co=
=oDeA
-----END PGP SIGNATURE-----

--akew4pk6ybpwo77c--
