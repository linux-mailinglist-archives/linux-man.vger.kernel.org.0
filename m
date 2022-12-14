Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0B04A64C102
	for <lists+linux-man@lfdr.de>; Wed, 14 Dec 2022 01:04:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229820AbiLNAD7 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 13 Dec 2022 19:03:59 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34602 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237034AbiLNADu (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 13 Dec 2022 19:03:50 -0500
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8F3676373
        for <linux-man@vger.kernel.org>; Tue, 13 Dec 2022 16:03:47 -0800 (PST)
Received: by mail-wm1-x32a.google.com with SMTP id b24-20020a05600c4a9800b003d21efdd61dso7952322wmp.3
        for <linux-man@vger.kernel.org>; Tue, 13 Dec 2022 16:03:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MUHre3CsD735HP5L2KRPBOj2jTFepK9cM87Xgs1KOjM=;
        b=Yf2WDYsgkTnNvJTXfRUrlXC9uNA8afSnCeqbMbC38JLqA2PYCi6pHMQFOE/gWcWviB
         iX5icnUXRotKpWkMg6a73TiKjPdcfsG/QmAcZPvU5Rq6ml+gjdXEjqfu7efK+ca8+hUh
         jWXfOs3DoHk0zK4ySRXMZjgsdoWFl+NDAXKx7hl6cI7bjbcQ+r1dkspKm6b+ddcNYriE
         AwsqTk8G9YTYNJ0TWy4YbK3i/cH9jaBJiQ43XUEJZsPFNfO8vpZbcOhGn4A6liQNA1xQ
         0YHPZ2VvBfdhj8KRMgzEFAdRoAcMvtEZg565ey5b4Pdv9lYMzzgGf9Bl+J6oNTyd/BDn
         Ox/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MUHre3CsD735HP5L2KRPBOj2jTFepK9cM87Xgs1KOjM=;
        b=OG/LzxBizIq4wtlQSkErg84vaNYihUm2DkZBA7YAvXXY+A2H2f8xGxk2D3PIKovjpL
         qzgdUDfidlMy4IzCpV2oDvuLah6L/AgeqD0DxalBp22WWd0U7rBg68+Ek2lAKL6fQTyd
         lz9cktpmr0Cec7/LD8pJ4SrYwBnuel+Hu+EQv7DSwnnvNjLJZMI9Pt3DU5Mz7BjZvwgQ
         dD877fXLvQ6LpfKJaKaaaPxe2z3WXSaV0JFLclzoTLGlle0xqgCH3bCFNdhuGcI88JB5
         VbBh2tEFQGq2kj3p7zuxA1Eohkh78JOApHemUfxweeSEaR25lIrhnXrMT9TG7UodzScP
         rgzA==
X-Gm-Message-State: ANoB5pl4MNR0qL+B+HNtIbNrhQ9sbQyYD99PzWhlWb7UUu9fr7kdiamW
        X5M3wVJuXGnE83yDz4E1zcw/47P0MeQ=
X-Google-Smtp-Source: AA0mqf7yl73lZU6RL+QgO4CSfj7Qd3eA64eJtSoamsNGMA/e1cntXDnHeuwWp64oX1iSTYUtBPzwoA==
X-Received: by 2002:a05:600c:35c6:b0:3cf:fc0b:3358 with SMTP id r6-20020a05600c35c600b003cffc0b3358mr17446742wmq.2.1670976225945;
        Tue, 13 Dec 2022 16:03:45 -0800 (PST)
Received: from asus5775.alejandro-colomar.es ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id m17-20020a05600c3b1100b003c6b7f5567csm4885489wms.0.2022.12.13.16.03.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Dec 2022 16:03:45 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
X-Google-Original-From: Alejandro Colomar <alx@kernel.org>
To:     linux-man@vger.kernel.org
Cc:     Alejandro Colomar <alx@kernel.org>,
        Martin Sebor <msebor@redhat.com>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Douglas McIlroy <douglas.mcilroy@dartmouth.edu>,
        Jakub Wilk <jwilk@jwilk.net>
Subject: [PATCH v3 1/1] strcpy.3: Rewrite page to document all string-copying functions
Date:   Wed, 14 Dec 2022 01:03:40 +0100
Message-Id: <20221214000341.39846-2-alx@kernel.org>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221212230044.86105-1-alx@kernel.org>
References: <20221212230044.86105-1-alx@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This is an opportunity to use consistent language across the
documentation for all string-copying functions.

It is also easier to show the similarities and differences between all
of the functions, so that a reader can use this page to know which
function is needed for a given task.

Many functions that are inferior to another one, have been marked as
deprecated, notwithstanding the deprecation status in C libraries or
any standards.  Alternatives have been given in the same page, with
reference implementations.

Cc: Martin Sebor <msebor@redhat.com>
Cc: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Douglas McIlroy <douglas.mcilroy@dartmouth.edu>
Cc: Jakub Wilk <jwilk@jwilk.net>
Signed-off-by: Alejandro Colomar <alx@kernel.org>
---
 man3/strcpy.3 | 1058 +++++++++++++++++++++++++++++++++++++++++++++----
 1 file changed, 970 insertions(+), 88 deletions(-)

diff --git a/man3/strcpy.3 b/man3/strcpy.3
index 74c3180ae..e04a7b149 100644
--- a/man3/strcpy.3
+++ b/man3/strcpy.3
@@ -1,48 +1,767 @@
-.\" Copyright (C) 1993 David Metcalfe (david@prism.demon.co.uk)
+.\" Copyright 2022 Alejandro Colomar <alx@kernel.org>
 .\"
-.\" SPDX-License-Identifier: Linux-man-pages-copyleft
-.\"
-.\" References consulted:
-.\"     Linux libc source code
-.\"     Lewine's _POSIX Programmer's Guide_ (O'Reilly & Associates, 1991)
-.\"     386BSD man pages
-.\" Modified Sat Jul 24 18:06:49 1993 by Rik Faith (faith@cs.unc.edu)
-.\" Modified Fri Aug 25 23:17:51 1995 by Andries Brouwer (aeb@cwi.nl)
-.\" Modified Wed Dec 18 00:47:18 1996 by Andries Brouwer (aeb@cwi.nl)
-.\" 2007-06-15, Marc Boyer <marc.boyer@enseeiht.fr> + mtk
-.\"     Improve discussion of strncpy().
+.\" SPDX-License-Identifier: BSD-3-Clause
 .\"
 .TH strcpy 3 (date) "Linux man-pages (unreleased)"
+.\" ----- NAME :: -----------------------------------------------------/
 .SH NAME
-strcpy \- copy a string
+stpcpy,
+strcpy, strcat,
+stpecpy, stpecpyx,
+strlcpy, strlcat,
+strscpy,
+stpncpy,
+strncpy,
+ustr2stp,
+strncat,
+mempcpy
+\- copy strings and character sequences
+.\" ----- LIBRARY :: --------------------------------------------------/
 .SH LIBRARY
+.TP
+.BR stpcpy (3)
+.TQ
+.BR strcpy "(3), \c"
+.BR strcat (3)
+.TQ
+.BR stpncpy (3)
+.TQ
+.BR strncpy (3)
+.TQ
+.BR strncat (3)
+.TQ
+.BR mempcpy (3)
 Standard C library
 .RI ( libc ", " \-lc )
+.TP
+.BR stpecpy "(3), \c"
+.BR stpecpyx (3)
+Not provided by any library.
+.TP
+.BR strlcpy "(3), \c"
+.BR strlcat (3)
+Utility functions from BSD systems
+.RI ( libbsd ", " \-lbsd )
+.TP
+.BR strscpy (3)
+Not provided by any library.
+It is a Linux kernel internal function.
+.\" ----- SYNOPSIS :: -------------------------------------------------/
 .SH SYNOPSIS
 .nf
 .B #include <string.h>
+.fi
+.\" ----- SYNOPSIS :: (Null-terminated) strings -----------------------/
+.SS Strings
+.nf
+// Chain-copy a string.
+.BI "char *stpcpy(char *restrict " dst ", const char *restrict " src );
 .PP
-.BI "char *strcpy(char *restrict " dest ", const char *restrict " src );
+// Copy/concatenate a string.
+.BI "char *strcpy(char *restrict " dst ", const char *restrict " src );
+.BI "char *strcat(char *restrict " dst ", const char *restrict " src );
+.PP
+// Chain-copy a string with truncation.
+.BI "char *stpecpy(char *" dst ", char " past_end "[0], \
+const char *restrict " src );
+.PP
+// Chain-copy a string with truncation and SIGSEGV on UB.
+.BI "char *stpecpyx(char *" dst ", char " past_end "[0], \
+const char *restrict " src );
+.PP
+// Copy/concatenate a string with truncation and SIGSEGV on UB.
+.BI "size_t strlcpy(char " dst "[restrict ." sz "], \
+const char *restrict " src ,
+.BI "               size_t " sz );
+.BI "size_t strlcat(char " dst "[restrict ." sz "], \
+const char *restrict " src ,
+.BI "               size_t " sz );
+.PP
+// Copy a string with truncation.
+.BI "ssize_t strscpy(char " dst "[restrict ." sz "], \
+const char " src "[restrict ." sz ],
+.BI "               size_t " sz );
+.fi
+.\" ----- SYNOPSIS :: Null-padded character sequences --------/
+.SS Null-padded character sequences
+.nf
+// Zero a fixed-width buffer, and
+// copy a string with truncation into a character sequence.
+.BI "char *stpncpy(char " dst "[restrict ." sz "], \
+const char *restrict " src ,
+.BI "               size_t " sz );
+.PP
+// Zero a fixed-width buffer, and
+// copy a string with truncation into a character sequence.
+.BI "char *strncpy(char " dest "[restrict ." sz "], \
+const char *restrict " src ,
+.BI "               size_t " sz );
+.PP
+// Chain-copy a null-padded character sequence into a string.
+.BI "char *ustr2stp(char *restrict " dst ", \
+const char " src "[restrict ." sz ],
+.BI "               size_t " sz );
+.PP
+// Concatenate a null-padded character sequence into a string.
+.BI "char *strncat(char *restrict " dst ", const char " src "[restrict ." sz ],
+.BI "               size_t " sz );
+.fi
+.\" ----- SYNOPSIS :: Measured character sequences --------------------/
+.SS Measured character sequences
+.nf
+// Chain-copy a measured character sequence.
+.BI "void *mempcpy(void *restrict " dst ", \
+const void " src "[restrict ." len ],
+.BI "               size_t " len );
+.fi
+.PP
+.RS -4
+Feature Test Macro Requirements for glibc (see
+.BR feature_test_macros (7)):
+.RE
+.PP
+.BR stpcpy (3),
+.BR stpncpy (3):
+.nf
+    Since glibc 2.10:
+        _POSIX_C_SOURCE >= 200809L
+    Before glibc 2.10:
+        _GNU_SOURCE
+.fi
+.PP
+.BR mempcpy (3):
+.nf
+    _GNU_SOURCE
 .fi
 .SH DESCRIPTION
-The
-.BR strcpy ()
-function copies the string pointed to by
-.IR src ,
-including the terminating null byte (\(aq\e0\(aq),
-to the buffer pointed to by
-.IR dest .
-The strings may not overlap, and the destination string
-.I dest
-must be large enough to receive the copy.
-.I Beware of buffer overruns!
-(See BUGS.)
+.\" ----- DESCRIPTION :: Terms (and abbreviations) :: -----------------/
+.SS Terms (and abbreviations)
+.\" ----- DESCRIPTION :: Terms (and abbreviations) :: string (str) ----/
+.TP
+.IR "string " ( str )
+is a sequence of zero or more non-null characters followed by a null byte.
+.\" ----- DESCRIPTION :: Terms (and abbreviations) :: null-padded character seq
+.TP
+.IR "character sequence " ( ustr )
+is a sequence of zero or more non-null characters.
+A program should never usa a character sequence where a string is required.
+However, with appropriate care,
+a string can be used in the place of a character sequence.
+.RS
+.TP
+.I null-padded character sequence
+Character sequences can be contained in fixed-width buffers,
+which contain padding null bytes after the character sequence,
+to fill the rest of the buffer
+without affecting the character sequence;
+however, those padding null bytes are not part of the character sequence.
+.\" ----- DESCRIPTION :: Terms (and abbreviations) :: measured character sequence
+.TP
+.I measured character sequence
+Character sequence delimited by its length.
+.RE
+.\" ----- DESCRIPTION :: Terms (and abbreviations) :: length (len) ----/
+.TP
+.IR "length " ( len )
+is the number of non-null characters in a string or character sequence.
+It is the return value of
+.I strlen(str)
+and of
+.IR "strnlen(ustr, sz)" .
+.\" ----- DESCRIPTION :: Terms (and abbreviations) :: size (sz) -------/
+.TP
+.IR "size " ( sz )
+refers to the entire buffer
+where the string or character sequence is contained.
+.\" ----- DESCRIPTION :: Terms (and abbreviations) :: end -------------/
+.TP
+.I end
+is the name of a pointer to the terminating null byte of a string,
+or a pointer to one past the last character of a character sequence.
+This is the return value of functions that allow chaining.
+It is equivalent to
+.IR &str[len] .
+.\" ----- DESCRIPTION :: Terms (and abbreviations) :: past_end --------/
+.TP
+.I past_end
+is the name of a pointer to one past the end of the buffer
+that contains a string or character sequence.
+It is equivalent to
+.IR &str[sz] .
+It is used as a sentinel value,
+to be able to truncate strings or character sequences
+instead of overrunning the containing buffer.
+.\" ----- DESCRIPTION :: Copy, concatenate, and chain-copy ------------/
+.SS Copy, concatenate, and chain-copy
+Originally,
+there was a distinction between functions that copy and those that concatenate.
+However, newer functions that copy while allowing chaining
+cover both use cases with a single API.
+They are also algorithmically faster,
+since they don't need to search for the end of the existing string.
+However, functions that concatenate have a much simpler use,
+so if performance is not important,
+it can make sense to use them for improving readability.
+.PP
+To chain copy functions,
+they need to return a pointer to the
+.IR end .
+That's a byproduct of the copy operation,
+so it has no performance costs.
+Functions that return such a pointer,
+and thus can be chained,
+have names of the form
+.RB * stp *()
+or
+.RB * memp *(),
+since it's also common to name the pointer just
+.IR p .
+.PP
+Chain-copying functions that truncate
+should accept a pointer to one past the end of the destination buffer,
+and have names of the form
+.RB * stpe *().
+This allows not having to recalculate the remaining size after each call.
+.\" ----- DESCRIPTION :: Truncate or not? -----------------------------/
+.SS Truncate or not?
+The first thing to note is that programmers should be careful with buffers,
+so they always have the correct size,
+and truncation is not necessary.
+.PP
+In most cases,
+truncation is not desired,
+and it is simpler to just do the copy.
+Simpler code is safer code.
+Programming against programming mistakes by adding more code
+just adds more points where mistakes can be made.
+.PP
+Nowadays,
+compilers can detect most programmer errors with features like
+compiler warnings,
+static analyzers, and
+.BR \%_FORTIFY_SOURCE
+(see
+.BR ftm (7)).
+Keeping the code simple
+helps these overflow-detection features be more precise.
+.PP
+When validating user input,
+however,
+it makes sense to truncate.
+Remember to check the return value of such function calls.
+.PP
+Functions that truncate:
+.IP \(bu 3
+.BR stpecpy (3)
+is the most efficient string copy function that performs truncation.
+It only requires to check for truncation once after all chained calls.
+.IP \(bu
+.BR stpecpyx (3)
+is a variant of
+.BR stpecpy (3)
+that consumes the entire source string,
+to catch bugs in the program
+by forcing a segmentation fault (as
+.BR strlcpy (3bsd)
+and
+.BR strlcat (3bsd)
+do).
+.IP \(bu
+.BR strlcpy (3bsd)
+and
+.BR strlcat (3bsd)
+are designed to crash if the input string is invalid
+(doesn't contain a terminating null byte).
+.IP \(bu
+.BR strscpy (3)
+reports an error instead of crashing (similar to
+.BR stpecpy (3)).
+.IP \(bu
+.BR stpncpy (3)
+and
+.BR strncpy (3)
+also truncate, but they don't write strings,
+but rather null-padded character sequences.
+.\" ----- DESCRIPTION :: Null-padded character sequences --------------/
+.SS Null-padded character sequences
+For historic reasons,
+some standard APIs,
+such as
+.BR utmpx (5),
+use null-padded character sequences in fixed-width buffers.
+To interface with them,
+specialized functions need to be used.
+.PP
+To copy strings into them, use
+.BR stpncpy (3).
+.PP
+To copy from an unterminated string within a fixed-width buffer into a string,
+ignoring any trailing null bytes in the source fixed-width buffer,
+you should use
+.BR ustr2stp (3)
+or
+.BR strncat (3).
+.\" ----- DESCRIPTION :: Measured character sequences -----------------/
+.SS Measured character sequences
+The simplest character sequence copying function is
+.BR mempcpy (3).
+It requires always knowing the length of your character sequences,
+for which structures can be used.
+It makes the code much faster,
+since you always know the length of your character sequences,
+and can do the minimal copies and length measurements.
+.BR mempcpy (3)
+copies character sequences,
+so you need to explicitly set the terminating null byte if you need a string.
+.PP
+The following code can be used to
+chain-copy from a measured character sequence into a string:
+.PP
+.in +4n
+.EX
+p = mempcpy(p, foo\->ustr, foo\->len);
+*p = \(aq\e0\(aq;
+.EE
+.in
+.PP
+The following code can be used to
+chain-copy from a measured character sequence into an unterminated string:
+.PP
+.in +4n
+.EX
+p = mempcpy(p, bar\->ustr, bar\->len);
+.EE
+.in
+.PP
+In programs that make considerable use of strings or character sequences,
+and need the best performance,
+using overlapping character sequences can make a big difference.
+It allows holding subsequences of a larger character sequence.
+while not duplicating memory
+nor using time to do a copy.
+.PP
+However, this is delicate,
+since it requires using character sequences.
+C library APIs use strings,
+so programs that use character sequences
+will have to take care of differentiating strings from character sequences.
+.\" ----- DESCRIPTION :: String vs character sequence -----------------/
+.SS String vs character sequence
+Some functions only operate on strings.
+Those require that the input
+.I src
+is a string,
+and guarantee an output string
+(even when truncation occurs).
+Functions that concatenate
+also require that
+.I dst
+holds a string before the call.
+List of functions:
+.IP \(bu 3
+.PD 0
+.BR stpcpy (3)
+.IP \(bu
+.BR strcpy "(3), \c"
+.BR strcat (3)
+.IP \(bu
+.BR stpecpy "(3), \c"
+.BR stpecpyx (3)
+.IP \(bu
+.BR strlcpy "(3bsd), \c"
+.BR strlcat (3bsd)
+.IP \(bu
+.BR strscpy (3)
+.PD
+.PP
+Other functions require an input string,
+but create a character sequence as output.
+These functions have confusing names,
+and have a long history of misuse.
+List of functions:
+.IP \(bu 3
+.PD 0
+.BR stpncpy (3)
+.IP \(bu
+.BR strncpy (3)
+.PD
+.PP
+Other functions operate on an input character sequence,
+and create an output string.
+Functions that concatenate
+also require that
+.I dst
+holds a string before the call.
+.BR strncat (3)
+has an even more misleading name than the functions above.
+List of functions:
+.IP \(bu 3
+.PD 0
+.BR ustr2stp (3)
+.IP \(bu
+.BR strncat (3)
+.PD
+.PP
+And the last one,
+operates on an input character sequence
+to create an output character sequence.
+But because it asks for the length,
+and a string is by nature composed of a character sequence of the same length
+plus a terminating null byte,
+a string is also accepted as input.
+Function:
+.IP \(bu 3
+.BR mempcpy (3)
+.\" ----- DESCRIPTION :: Functions :: ---------------------------------/
+.SS Functions
+.\" ----- DESCRIPTION :: Functions :: stpcpy(3) -----------------------/
+.TP
+.BR stpcpy (3)
+This function copies the input string into a destination string.
+The programmer is responsible for allocating a buffer large enough.
+It returns a pointer suitable for chaining.
+.IP
+An implementation of this function might be:
+.IP
+.in +4n
+.EX
+char *
+stpcpy(char *restrict dst, const char *restrict src)
+{
+    return mempcpy(dst, src, strlen(src));
+}
+.EE
+.in
+.\" ----- DESCRIPTION :: Functions :: strcpy(3), strcat(3) ------------/
+.TP
+.BR strcpy (3)
+.TQ
+.BR strcat (3)
+These functions copy the input string into a destination string.
+The programmer is responsible for allocating a buffer large enough.
+The return value is useless.
+.IP
+.BR stpcpy (3)
+is a faster alternative to these functions.
+.IP
+An implementation of these functions might be:
+.IP
+.in +4n
+.EX
+char *
+strcpy(char *restrict dst, const char *restrict src)
+{
+    stpcpy(dst, src);
+    return dst;
+}
+
+char *
+strcat(char *restrict dst, const char *restrict src)
+{
+    stpcpy(dst + strlen(dst), src);
+    return dst;
+}
+.EE
+.in
+.\" ----- DESCRIPTION :: Functions :: stpecpy(3), stpecpyx(3) ---------/
+.TP
+.BR stpecpy (3)
+.TQ
+.BR stpecpyx (3)
+These functions copy the input string into a destination string.
+If the destination buffer,
+limited by a pointer to one past the end of it,
+isn't large enough to hold the copy,
+the resulting string is truncated
+(but it is guaranteed to be null-terminated).
+They return a pointer suitable for chaining.
+Truncation needs to be detected only once after the last chained call.
+.BR stpecpyx (3)
+has identical semantics to
+.BR stpecpy (3),
+except that it forces a SIGSEGV if the
+.I src
+pointer is not a string.
+.IP
+These functions are not provided by any library,
+but you can define them with the following reference implementations:
+.IP
+.in +4n
+.EX
+/* This code is in the public domain. */
+char *
+stpecpy(char *dst, char past_end[0],
+        const char *restrict src)
+{
+    char *p;
+
+    if (dst == past_end)
+        return past_end;
+
+    p = memccpy(dst, src, \(aq\e0\(aq, past_end \- dst);
+    if (p != NULL)
+        return p \- 1;
+
+    /* truncation detected */
+    past_end[\-1] = \(aq\e0\(aq;
+    return past_end;
+}
+
+/* This code is in the public domain. */
+char *
+stpecpyx(char *dst, char past_end[0],
+         const char *restrict src)
+{
+    if (src[strlen(src)] != \(aq\e0\(aq)
+        raise(SIGSEGV);
+
+    return stpecpy(dst, past_end, src);
+}
+.EE
+.in
+.\" ----- DESCRIPTION :: Functions :: strlcpy(3bsd), strlcat(3bsd) ----/
+.TP
+.BR strlcpy (3bsd)
+.TQ
+.BR strlcat (3bsd)
+These functions copy the input string into a destination string.
+If the destination buffer,
+limited by its size,
+isn't large enough to hold the copy,
+the resulting string is truncated
+(but it is guaranteed to be null-terminated).
+They return the length of the total string they tried to create.
+These functions force a SIGSEGV if the
+.I src
+pointer is not a string.
+.IP
+.BR stpecpyx (3)
+is a faster alternative to these functions.
+.\" ----- DESCRIPTION :: Functions :: strscpy(3) ----------------------/
+.TP
+.BR strscpy (3)
+This function copies the input string into a destination string.
+If the destination buffer,
+limited by its size,
+isn't large enough to hold the copy,
+the resulting string is truncated
+(but it is guaranteed to be null-terminated).
+It returns the length of the destination string, or
+.B \-E2BIG
+on truncation.
+.IP
+.BR stpecpy (3)
+is a simpler and faster alternative to this function.
+.RE
+.\" ----- DESCRIPTION :: Functions :: stpncpy(3) ----------------------/
+.TP
+.BR stpncpy (3)
+This function copies the input string into
+a destination null-padded character sequence in a fixed-width buffer.
+If the destination buffer,
+limited by its size,
+isn't large enough to hold the copy,
+the resulting character sequence is truncated.
+Since it creates a character sequence,
+it doesn't need to write a terminating null byte.
+It returns a pointer suitable for chaining,
+but it's not ideal for that.
+Truncation needs to be detected only once after the last chained call.
+.IP
+If you're going to use this function in chained calls,
+it would be useful to develop a similar function
+that accepts a pointer to one past the end of the buffer instead of a size.
+.IP
+An implementation of this function might be:
+.IP
+.in +4n
+.EX
+char *
+stpncpy(char *restrict dst, const char *restrict src,
+        size_t sz)
+{
+    char  *p;
+
+    bzero(dst, sz);
+    p = memccpy(dst, src, \(aq\e0\(aq, sz);
+    if (p == NULL)
+        return dst + sz;
+
+    return p \- 1;
+}
+.EE
+.in
+.\" ----- DESCRIPTION :: Functions :: ustr2stp(3) ---------------------/
+.TP
+.BR ustr2stp (3)
+This function copies the input character sequence
+contained in a null-padded wixed-width buffer,
+into a destination string.
+The programmer is responsible for allocating a buffer large enough.
+It returns a pointer suitable for chaining.
+.IP
+A truncating version of this function doesn't exist,
+since the size of the original character sequence is always known,
+so it wouldn't be very useful.
+.IP
+This function is not provided by any library,
+but you can define it with the following reference implementation:
+.IP
+.in +4n
+.EX
+/* This code is in the public domain. */
+char *
+ustr2stp(char *restrict dst, const char *restrict src,
+         size_t sz)
+{
+    char  *end;
+
+    end = memccpy(dst, src, \(aq\e0\(aq, sz)) ?: dst + sz;
+    *end = \(aq\e0\(aq;
+
+    return end;
+}
+.EE
+.in
+.\" ----- DESCRIPTION :: Functions :: strncpy(3) ----------------------/
+.TP
+.BR strncpy (3)
+This function is identical to
+.BR stpncpy (3)
+except for the useless return value.
+Due to the return value,
+with this function it's hard to correctly check for truncation.
+.IP
+.BR stpncpy (3)
+is a simpler alternative to this function.
+.IP
+An implementation of this function might be:
+.IP
+.in +4n
+.EX
+char *
+strncpy(char *restrict dst, const char *restrict src,
+        size_t sz)
+{
+    stpncpy(dst, src, sz);
+    return dst;
+}
+.EE
+.in
+.\" ----- DESCRIPTION :: Functions :: strncat(3) ----------------------/
+.TP
+.BR strncat (3)
+Do not confuse this function with
+.BR strncpy (3);
+they are not related at all.
+.IP
+This function concatenates the input character sequence
+contained in a null-padded wixed-width buffer,
+into a destination string.
+The programmer is responsible for allocating a buffer large enough.
+The return value is useless.
+.IP
+.BR ustr2stp (3)
+is a faster alternative to this function.
+.IP
+An implementation of this function might be:
+.IP
+.in +4n
+.EX
+char *
+strncat(char *restrict dst, const char *restrict src,
+        size_t sz)
+{
+    ustr2stp(dst + strlen(dst), src, sz);
+    return dst;
+}
+.EE
+.in
+.\" ----- DESCRIPTION :: Functions :: mempcpy(3) ----------------------/
+.TP
+.BR mempcpy (3)
+This function copies the input character sequence,
+limited by its length,
+into a destination character sequence.
+The programmer is responsible for allocating a buffer large enough.
+It returns a pointer suitable for chaining.
+.IP
+An implementation of this function might be:
+.IP
+.in +4n
+.EX
+void *
+mempcpy(void *restrict dst, const void *restrict src,
+        size_t len)
+{
+    return memcpy(dst, src, len) + len;
+}
+.EE
+.in
+.\" ----- RETURN VALUE :: ---------------------------------------------/
 .SH RETURN VALUE
-The
-.BR strcpy ()
-function returns a pointer to
-the destination string
-.IR dest .
+The following functions return
+a pointer to the terminating null byte in the destination string.
+.IP \(bu 3
+.PD 0
+.BR stpcpy (3)
+.IP \(bu
+.BR ustr2stp (3)
+.PD
+.PP
+The following functions return
+a pointer to the terminating null byte in the destination string,
+except when truncation occurs;
+if truncation occurs,
+they return a pointer to one past the end of the destination buffer
+.RI ( past_end ).
+.IP \(bu 3
+.BR stpecpy (3),
+.BR stpecpyx (3)
+.PP
+The following function returns
+a pointer to one after the last character
+in the destination character sequence;
+if truncation occurs,
+that pointer is equivalent to
+a pointer to one past the end of the destination buffer.
+.IP \(bu 3
+.BR stpncpy (3)
+.PP
+The following function returns
+a pointer to one after the last character
+in the destination character sequence.
+.IP \(bu 3
+.BR mempcpy (3)
+.PP
+The following functions return
+the length of the total string that they tried to create
+(as if truncation didn't occur).
+.IP \(bu 3
+.BR strlcpy (3bsd),
+.BR strlcat (3bsd)
+.PP
+The following function returns
+the length of the destination string, or
+.B \-E2BIG
+on truncation.
+.IP \(bu 3
+.BR strscpy (3)
+.PP
+The following functions return the
+.I dst
+pointer,
+which is useless.
+.IP \(bu 3
+.PD 0
+.BR strcpy (3),
+.BR strcat (3)
+.IP \(bu
+.BR strncpy (3)
+.IP \(bu
+.BR strncat (3)
+.PD
+.\" ----- ATTRIBUTES :: -----------------------------------------------/
 .SH ATTRIBUTES
 For an explanation of the terms used in this section, see
 .BR attributes (7).
@@ -54,73 +773,236 @@ .SH ATTRIBUTES
 l l l.
 Interface	Attribute	Value
 T{
-.BR strcpy ()
+.BR stpcpy (),
+.BR strcpy (),
+.BR strcat (),
+.BR stpecpy (),
+.BR stpecpyx ()
+.BR strlcpy (),
+.BR strlcat (),
+.BR strscpy (),
+.BR stpncpy (),
+.BR strncpy (),
+.BR ustr2stp (),
+.BR strncat (),
+.BR mempcpy ()
 T}	Thread safety	MT-Safe
 .TE
 .hy
 .ad
 .sp 1
+.\" ----- STANDARDS :: ------------------------------------------------/
 .SH STANDARDS
-POSIX.1-2001, POSIX.1-2008, C89, C99, SVr4, 4.3BSD.
-.SH NOTES
-.SS strlcpy()
-Some systems (the BSDs, Solaris, and others) provide the following function:
+.TP
+.BR strcpy "(3), \c"
+.BR strcat (3)
+.TQ
+.BR strncpy (3)
+.TQ
+.BR strncat (3)
+POSIX.1‐2001, POSIX.1‐2008, C89, C99, SVr4, 4.3BSD.
+.TP
+.BR stpcpy (3)
+.\" This function was added to POSIX.1-2008.
+.\" Before that, it was not part of
+.\" the C or POSIX.1 standards, nor customary on UNIX systems.
+.\" It first appeared at least as early as 1986,
+.\" in the Lattice C AmigaDOS compiler,
+.\" then in the GNU fileutils and GNU textutils in 1989,
+.\" and in the GNU C library by 1992.
+.\" It is also present on the BSDs.
+.TQ
+.BR stpncpy (3)
+.\" This function was added to POSIX.1-2008.
+.\" Before that, it was a GNU extension.
+.\" It first appeared in glibc 1.07 in 1993.
+POSIX.1-2008.
+.TP
+.BR strlcpy "(3bsd), \c"
+.BR strlcat (3bsd)
+Functions originated in OpenBSD and present in some Unix systems.
+.TP
+.BR mempcpy (3)
+This function is a GNU extension.
+.TP
+.BR strscpy (3)
+Linux kernel internal function.
+.TP
+.BR stpecpy "(3), \c"
+.BR stpecpyx (3)
+.TQ
+.BR ustr2stp (3)
+Not defined by any standards nor libraries.
+.\" ----- CAVEATS :: --------------------------------------------------/
+.SH CAVEATS
+Don't mix chain calls to truncating and non-truncating functions.
+It is conceptually wrong
+unless you know that the first part of a copy will always fit.
+Anyway, the performance difference will probably be negligible,
+so it will probably be more clear if you use consistent semantics:
+either truncating or non-truncating.
+Calling a non-truncating function after a truncating one is necessarily wrong.
 .PP
+Some of the functions described here are not provided by any library;
+you should write your own copy if you want to use them.
+See STANDARDS.
+.\" ----- BUGS :: -----------------------------------------------------/
+.SH BUGS
+All concatenation
+.RB (* cat ())
+functions share the same performance problem:
+.UR https://www.joelonsoftware.com/\:2001/12/11/\:back\-to\-basics/
+Shlemiel the painter
+.UE .
+.\" ----- EXAMPLES :: -------------------------------------------------/
+.SH EXAMPLES
+The following are examples of correct use of each of these functions.
+.\" ----- EXAMPLES :: stpcpy(3) ---------------------------------------/
+.TP
+.BR stpcpy (3)
 .in +4n
 .EX
-size_t strlcpy(char *dest, const char *src, size_t size);
+p = buf;
+p = stpcpy(p, "Hello ");
+p = stpcpy(p, "world");
+p = stpcpy(p, "!");
+len = p \- buf;
+puts(buf);
 .EE
 .in
-.PP
-.\" http://static.usenix.org/event/usenix99/full_papers/millert/millert_html/index.html
-.\"     "strlcpy and strlcat - consistent, safe, string copy and concatenation"
-.\"     1999 USENIX Annual Technical Conference
-This function is similar to
-.BR strcpy (),
-but it copies at most
-.I size\-1
-bytes to
-.IR dest ,
-truncating the string as necessary.
-It always adds a terminating null byte.
-This function fixes some of the problems of
-.BR strcpy ()
-but the caller must still handle the possibility of data loss if
-.I size
-is too small.
-The return value of the function is the length of
-.IR src ,
-which allows truncation to be easily detected:
-if the return value is greater than or equal to
-.IR size ,
-truncation occurred.
-If loss of data matters, the caller
-.I must
-either check the arguments before the call,
-or test the function return value.
-.BR strlcpy ()
-is not present in glibc and is not standardized by POSIX,
-.\" https://lwn.net/Articles/506530/
-but is available on Linux via the
-.I libbsd
-library.
-.SH BUGS
-If the destination string of a
-.BR strcpy ()
-is not large enough, then anything might happen.
-Overflowing fixed-length string buffers is a favorite cracker technique
-for taking complete control of the machine.
-Any time a program reads or copies data into a buffer,
-the program first needs to check that there's enough space.
-This may be unnecessary if you can show that overflow is impossible,
-but be careful: programs can get changed over time,
-in ways that may make the impossible possible.
+.\" ----- EXAMPLES :: strcpy(3), strcat(3) ----------------------------/
+.TP
+.BR strcpy (3)
+.TQ
+.BR strcat (3)
+.in +4n
+.EX
+strcpy(buf, "Hello ");
+strcat(buf, "world");
+strcat(buf, "!");
+len = strlen(buf);
+puts(buf);
+.EE
+.in
+.\" ----- EXAMPLES :: stpecpy(3), stpecpyx(3) -------------------------/
+.TP
+.BR stpecpy (3)
+.TQ
+.BR stpecpyx (3)
+.in +4n
+.EX
+past_end = buf + sizeof(buf);
+p = buf;
+p = stpecpy(p, past_end, "Hello ");
+p = stpecpy(p, past_end, "world");
+p = stpecpy(p, past_end, "!");
+if (p == past_end) {
+    p\-\-;
+    goto toolong;
+}
+len = p \- buf;
+puts(buf);
+.EE
+.in
+.\" ----- EXAMPLES :: strlcpy(3bsd), strlcat(3bsd) --------------------/
+.TP
+.BR strlcpy (3bsd)
+.TQ
+.BR strlcat (3bsd)
+.in +4n
+.EX
+if (strlcpy(buf, "Hello ", sizeof(buf)) >= sizeof(buf))
+    goto toolong;
+if (strlcat(buf, "world", sizeof(buf)) >= sizeof(buf))
+    goto toolong;
+len = strlcat(buf, "!", sizeof(buf));
+if (len >= sizeof(buf))
+    goto toolong;
+puts(buf);
+.EE
+.in
+.\" ----- EXAMPLES :: strscpy(3) --------------------------------------/
+.TP
+.BR strscpy (3)
+.in +4n
+.EX
+len = strscpy(buf, "Hello world!", sizeof(buf));
+if (len == \-E2BIG)
+    goto toolong;
+puts(buf);
+.EE
+.in
+.\" ----- EXAMPLES :: stpncpy(3) --------------------------------------/
+.TP
+.BR stpncpy (3)
+.in +4n
+.EX
+past_end = buf + sizeof(buf);
+end = stpncpy(buf, "Hello world!", sizeof(buf));
+if (end == past_end)
+    goto toolong;
+len = end \- buf;
+for (size_t i = 0; i < sizeof(buf); i++)
+    putchar(buf[i]);
+.EE
+.in
+.\" ----- EXAMPLES :: strncpy(3) --------------------------------------/
+.TP
+.BR strncpy (3)
+.in +4n
+.EX
+strncpy(buf, "Hello world!", sizeof(buf));
+if (buf + sizeof(buf) \- 1 == \(aq\e0\(aq)
+    goto toolong;
+len = strnlen(buf, sizeof(buf));
+for (size_t i = 0; i < sizeof(buf); i++)
+    putchar(buf[i]);
+.EE
+.in
+.\" ----- EXAMPLES :: ustr2stp(3) -------------------------------------/
+.TP
+.BR ustr2stp (3)
+.in +4n
+.EX
+p = buf;
+p = ustr2stp(p, "Hello ", 6);
+p = ustr2stp(p, "world", 42);  // Padding null bytes ignored.
+p = ustr2stp(p, "!", 1);
+len = p \- buf;
+puts(buf);
+.EE
+.in
+.\" ----- EXAMPLES :: strncat(3) --------------------------------------/
+.TP
+.BR strncat (3)
+.in +4n
+.EX
+buf[0] = \(aq\e0\(aq;  // There's no 'cpy' function to this 'cat'.
+strncat(buf, "Hello ", 6);
+strncat(buf, "world", 42);  // Padding null bytes ignored.
+strncat(buf, "!", 1);
+len = strlen(buf);
+puts(buf);
+.EE
+.in
+.\" ----- EXAMPLES :: mempcpy(3) --------------------------------------/
+.TP
+.BR mempcpy (3)
+.in +4n
+.EX
+p = buf;
+p = mempcpy(p, "Hello ", 6);
+p = mempcpy(p, "world", 5);
+p = mempcpy(p, "!", 1);
+p = \(aq\e0\(aq;
+len = p \- buf;
+puts(buf);
+.EE
+.in
+.\" ----- SEE ALSO :: -------------------------------------------------/
 .SH SEE ALSO
-.BR bcopy (3),
-.BR memccpy (3),
+.BR bzero (3),
 .BR memcpy (3),
-.BR memmove (3),
-.BR stpcpy (3),
-.BR strdup (3),
-.BR string (3),
-.BR wcscpy (3)
+.BR memccpy (3),
+.BR mempcpy (3),
+.BR string (3)
-- 
2.38.1

