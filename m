Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CAA0A585019
	for <lists+linux-man@lfdr.de>; Fri, 29 Jul 2022 14:31:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233782AbiG2Mby (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 29 Jul 2022 08:31:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60380 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233008AbiG2Mby (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 29 Jul 2022 08:31:54 -0400
Received: from scc-mailout-kit-01.scc.kit.edu (scc-mailout-kit-01.scc.kit.edu [IPv6:2a00:1398:9:f712::810d:e751])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C9B5A7D1F0
        for <linux-man@vger.kernel.org>; Fri, 29 Jul 2022 05:31:51 -0700 (PDT)
Received: from hekate.asta.kit.edu ([2a00:1398:5:f401::77])
        by scc-mailout-kit-01.scc.kit.edu with esmtps (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
        (envelope-from <schwarze@usta.de>)
        id 1oHP9h-006tdL-6A; Fri, 29 Jul 2022 14:31:49 +0200
Received: from login-1.asta.kit.edu ([2a00:1398:5:f400::72])
        by hekate.asta.kit.edu with esmtp (Exim 4.94.2)
        (envelope-from <schwarze@usta.de>)
        id 1oHP9h-006veq-3J; Fri, 29 Jul 2022 14:31:49 +0200
Received: from schwarze by login-1.asta.kit.edu with local (Exim 4.92)
        (envelope-from <schwarze@usta.de>)
        id 1oHP9h-0002Af-2V; Fri, 29 Jul 2022 14:31:49 +0200
Date:   Fri, 29 Jul 2022 14:31:49 +0200
From:   Ingo Schwarze <schwarze@usta.de>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     g.branden.robinson@gmail.com, linux-man@vger.kernel.org
Subject: Re: man0, man3head (was: All caps .TH page title)
Message-ID: <YuPTNQZWk7hzir+W@asta-kit.de>
References: <1e1f9197-a013-0d6b-6bfa-853fe28102cf@gmail.com>
 <20220722021452.5k43or5uwj2eiouh@illithid>
 <7a94b352-9ae5-a823-72c4-c526a0cc0e66@gmail.com>
 <e4603be0-47f4-bc2b-b31e-52039ca63721@gmail.com>
 <YtxMD7ovz1Xy/cfq@asta-kit.de>
 <62937033-a3a7-05d0-fc68-a227e2b67bde@gmail.com>
 <Yt1dz0+xfRuyCcXo@asta-kit.de>
 <20220724154447.us3vsmicaw52v4j6@illithid>
 <YuFiT79dQz+nDgmO@asta-kit.de>
 <11110a04-f96b-0d32-53e3-adcce618c543@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <11110a04-f96b-0d32-53e3-adcce618c543@gmail.com>
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_NONE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alejandro,

Alejandro Colomar wrote on Fri, Jul 29, 2022 at 01:33:12PM +0200:

> BTW, Branden, you asked why would I use section 0 for header files 
> (although since the lists have been very hot these days, I won't care 
> finding the exact email).
> 
> I didn't inaugurate section 0 for that.
> I just followed existing practice.

I just looked at my forest (i.e., my collection of trees).

Version 3 AT&T UNIX contains these files in man/man0/:

 * a macro file "aa" setting adjustment mode, indentation,
   and something for page breaks and header or footer lines
 * a file "basinf", kind of a quick start guide for UNIX,
   mostly about logging in and out, but also containing
   some remarks about programming and text processing
 * a sed script "headrc", rather cryptic
 * the famous permuted "index" file that used to be printed
   together with the UNIX manuals
 * a file "intro" containing the title page, preface,
   and introduction for the manuals
 * a file "toc" containing the table of contents of the manuals,
   in the typical section-then-alphabetic order
 * an ed script "tocrc", rather cryptic
 * a file "xx", obviously intended as a template for writing
   a new manual page

The following systems use man/man0 for similar purposes:

 * v4, v6, PWB, v7, 32v, v8, v10, System III
 * 3BSD, 4.0BSD, 4.1BSD, 4.2BSD, 4.3BSD-Tahoe, 4.3BSD-Reno
 * 4.4BSD, 4.4BSD-Lite1, 4.4BSD-Lite2, NetBSD

The exact content varies, but it's always used for auxiliary files
like macros files, scripts, tools, and front matter.
Usage of man/man0 is especially extensive in v10, which
contains several man/man0 directories in various places
with several dozen files contained in them.

> But, considering our discussions about the topic, and 
> considering that I already changed CONFORMING TO to STANDARDS for 
> consistency across all manual pages in existence, I'll reconsider.
> 
> So, existing practice seems to be divided in:
> 
> - Putting header files' pages directly in man3 (e.g., string(3)).

That practice is deprecated in OpenBSD:

   $ uname -a
  OpenBSD isnote.usta.de 7.1 GENERIC.MP#613 amd64
   $ man string
  man: No entry for string in the manual.

The way to get this information looks like this now:

   $ man -k In=string.h
  bit_alloc, bit_clear, bit_decl, bit_ffc, bit_ffs, bit_nclear, bit_nset,
    bit_set, bit_test, bitstr_size(3) - bit-string manipulation macros
  bzero, explicit_bzero(3) - write zeroes to a byte string
  memccpy(3) - copy string until character found
  memchr, memrchr(3) - locate byte in byte string
  memcmp(3) - compare byte string
  memcpy(3) - copy bytes
  memmem(3) - locate a byte substring in a byte string
  memmove(3) - copy bytes
  memset(3) - write a byte to byte string
  stpcpy, stpncpy(3) - copy strings
  strcat(3) - concatenate two strings without bounds checking
  strchr, index(3) - locate first occurrence of a character in a string
  strcmp, strncmp(3) - compare strings
  strcoll, strcoll_l(3) - compare strings according to current collation
  strcpy(3) - copy a string without bounds checking
  strcspn(3) - span the complement of a string
  strdup, strndup(3) - save a copy of a string
  strerror, strerror_l, strerror_r(3) - get error message string
  strlcpy, strlcat(3) - size-bounded string copying and concatenation
  strlen, strnlen(3) - find length of a string
  strmode(3) - convert inode status information into a symbolic string
  strncat(3) - concatenate a string with part of another
  strncpy(3) - copy part of a string to another
  strpbrk(3) - locate multiple characters in string
  strrchr, rindex(3) - locate last occurrence of a character in a string
  strsep(3) - separate strings
  strsignal(3) - get signal description string
  strspn(3) - span a string
  strstr, strcasestr(3) - locate a substring in a string
  strtok, strtok_r(3) - string token operations
  strxfrm, strxfrm_l(3) - transform a string under locale
  timingsafe_bcmp, timingsafe_memcmp(3) - timing-safe byte sequence comparisons
  audio, audioctl(4) - device-independent audio driver layer

The reason for deprecating pages with names of the form "header_name(3)"
is less that we don't want non-function-name pages in section 3 and more
that we don't want manual pages for header files.

I don't think FreeBSD and NetBSD deprecated such pages though;
i still see lib/libc/string/string.3 in FreeBSD and NetBSD.

>    Done by Linux man-pages, and BSDs (see BSD's sysexits(3)).

OpenBSD deprecated sysexits(3) - the whole feature, not only the
name of the manual page.  The DESCRIPTION in our page starts as
follows:

     A few programs exit with the following non-portable error codes.
     Do not use them.

While i highly respect Eric Allman, IMHO inventing "sysexits"
was a bad idea.

>    I don't like the idea, especially if the page name doesn't have a
>    trailing '.h', since they live in different namespaces.
> 
> - Putting them in man3head.
>    Done by some Oracle OSes (at least for some versions).

Sounds like the least bad solution to me.

> - Putting them in man0.
>    Done exclusively by the posix man pages.
>    Not even something POSIX is responsible for, AFAIK,
>    since we create the pages from the HTML source,
>    which has noting to do with sections.
>    Debian for example, changes this (see below).
>    It seems to be the only place man0 is being used,
>    and I have control over it.

As explained above, man/man0 has traditionally been used for
something else.  The traditional use has lost much of its
importance during the last two decades and right now, it doesn't
seem likely to me that it might need to be revived, but still,
not clashing with it seems better if it can be avoided.

> - Putting them in man7.
>    Debian moves man0 pages to 7POSIX (but uses man7/).

I don't like that.  The "Miscellaneous Information Manual" (section 7)
is mostly intended to be user-facing pages like editline(7),
environ(7), glob(7), hier(7), man(7), packages(7), ports(7),
re_format(7), symlink(7), utf8(7).  Pages that are only interesting
for programmers are less welcome in section 7, even though a few
exceptions exist, for example operator(7).
Manual pages for C header files clearly need to be part of
the "Library Functions Manual" (section 3).

> Since there's much division, and I have complete control over one (or 
> even two if I can avoid Debian moving the pages to man7) of the 
> variants, I could help unify header files manual pages across Unix 
> systems by moving POSIX header file manual pages to man3head.
> 
> I would also move the only page in the Linux man pages that is in man0 
> (added recently by me; sysexits.h(0)) and the man3 header pages from the 
> Linux man-pages (such as string(3)) to man3head.
> 
> Maybe Debian also gives up modifying upstream pages, since I'll make it 
> really hard for them to "fix" man3type anyway (not on purpose, but 
> they'll need to come up with a script to modify the link pages).
> 
> That would leave us with the following situation:
> 
> - Most header file pages would be in man3head (Oracle, POSIX, Linux).

That all makes sense to me.

> - BSDs still have a few (maybe only one?) header page in man3: sysexits(3).

Don't worry about that one, it is utterly unimportant, and almost
nobody uses it.

> - Section 0 becomes desert, and maybe someone can give it a new use in 
> the future, if a new section is ever need.

As argued above, it might be best to not repurpose man/man0.

Yours,
  Ingo
