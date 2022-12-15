Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0076A64D4A0
	for <lists+linux-man@lfdr.de>; Thu, 15 Dec 2022 01:27:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229770AbiLOA1E (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 14 Dec 2022 19:27:04 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45350 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229829AbiLOA1A (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 14 Dec 2022 19:27:00 -0500
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 326401AF17
        for <linux-man@vger.kernel.org>; Wed, 14 Dec 2022 16:26:57 -0800 (PST)
Received: by mail-wm1-x332.google.com with SMTP id ay8-20020a05600c1e0800b003d0808d2826so3512758wmb.1
        for <linux-man@vger.kernel.org>; Wed, 14 Dec 2022 16:26:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=L/KcyTw1DnFydvMAKmyn9nis4vEpCVA2uJFdoRLFpGo=;
        b=J6KI8bfvel7tWwwBUsfXyZ4GCiMrg8tMJiZLf0A2NSEUTK4XraLOvod+holF1i1Jbx
         xsGbypq/H1Sv/5o3xVEp/1cjHvuwYy7232hOeONoq92LQVlB37zpErBfXwzIzFFode78
         rJrU0NdxdTn6HnVxPXUomx1bTjZmCLsskJSn5p5t1KcZRIi+jcHGOodwrQ/qSvu9somq
         PGSESXTvxLiBpfQYhN3C5PCka+5+gboepxVeutK1xu717Z+37f0U8HsxNmEe9rUbeotU
         9/cmQbLeuwikn50QAKBeOIAFnA0dFBiOwRf92qAzz/KdRfSpHuwskjh7UAKKSjbXm/f5
         QYHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=L/KcyTw1DnFydvMAKmyn9nis4vEpCVA2uJFdoRLFpGo=;
        b=zg34E0UUBj2eYv1EfRw93WPGb6XZiI4yv7OA0ZVqIY4JiimoM6gJkIcP9wv+fUhz00
         G+Wx9laBqLYaapve42gOMJjYm5hPgb4CePpgUOy5BdA6YdMmD/YX7htXt7y82mPVso0d
         fxGJP87yN5Zm+3U2Xv4xZB/GmDoE4ksL2j/D1cdBLHUF7/uWwI5hmsmuQRMB6nlh7tZb
         7HHv84991RZCLw+Bm9W4SaiyVQgFg1M0KNfW/3By/MjXtW5nYNr0YGDuGmMY8jqiFk/S
         Z+kMqW1hmSDzyaZlXEv9G1GJ5aJObvC2wXoD4CKP4rCLhyKwS4HeoZEC8H/0SQC7HHL0
         Qu3g==
X-Gm-Message-State: ANoB5pk0oHPLOvqnwrN+mukrQMXUVCw/5Jg35WJ8tU/CKM9gz6ozmJYz
        YPDy4PGh1KGOsWEfUothNJfdQv339w4=
X-Google-Smtp-Source: AA0mqf6vqxk7EEzJHansa1Zk3dGacQ+MHmBNCuJToOgaMTxIQMfX4y7u7dinTdAAtyNKv0tsO7yxTA==
X-Received: by 2002:a05:600c:1f09:b0:3d0:7d89:2256 with SMTP id bd9-20020a05600c1f0900b003d07d892256mr20967978wmb.13.1671064015585;
        Wed, 14 Dec 2022 16:26:55 -0800 (PST)
Received: from asus5775.alejandro-colomar.es ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id j41-20020a05600c1c2900b003b4ff30e566sm13511901wms.3.2022.12.14.16.26.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Dec 2022 16:26:55 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
X-Google-Original-From: Alejandro Colomar <alx@kernel.org>
To:     linux-man@vger.kernel.org
Cc:     Alejandro Colomar <alx@kernel.org>,
        Martin Sebor <msebor@redhat.com>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Douglas McIlroy <douglas.mcilroy@dartmouth.edu>,
        Jakub Wilk <jwilk@jwilk.net>, Serge Hallyn <serge@hallyn.com>,
        Iker Pedrosa <ipedrosa@redhat.com>,
        Andrew Pinski <pinskia@gmail.com>
Subject: [PATCH v5 1/5] string_copy.7: Add page to document all string-copying functions
Date:   Thu, 15 Dec 2022 01:26:44 +0100
Message-Id: <20221215002648.35111-2-alx@kernel.org>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221214161719.12862-1-alx@kernel.org>
References: <20221214161719.12862-1-alx@kernel.org>
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

Alternative functions not provided by libc have been given in the same
page, with reference implementations.

Cc: Martin Sebor <msebor@redhat.com>
Cc: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Douglas McIlroy <douglas.mcilroy@dartmouth.edu>
Cc: Jakub Wilk <jwilk@jwilk.net>
Cc: Serge Hallyn <serge@hallyn.com>
Cc: Iker Pedrosa <ipedrosa@redhat.com>
Cc: Andrew Pinski <pinskia@gmail.com>
Signed-off-by: Alejandro Colomar <alx@kernel.org>
---
 man7/string_copy.7 | 869 +++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 869 insertions(+)
 create mode 100644 man7/string_copy.7

diff --git a/man7/string_copy.7 b/man7/string_copy.7
new file mode 100644
index 000000000..be8b841e2
--- /dev/null
+++ b/man7/string_copy.7
@@ -0,0 +1,869 @@
+.\" Copyright 2022 Alejandro Colomar <alx@kernel.org>
+.\"
+.\" SPDX-License-Identifier: BSD-3-Clause
+.\"
+.TH string_copy 7 (date) "Linux man-pages (unreleased)"
+.\" ----- NAME :: -----------------------------------------------------/
+.SH NAME
+stpcpy,
+strcpy, strcat,
+stpecpy, stpecpyx,
+strlcpy, strlcat,
+stpncpy,
+strncpy,
+zustr2ustp, zustr2stp,
+strncat,
+ustpcpy, ustr2stp
+\- copy strings and character sequences
+.\" ----- SYNOPSIS :: -------------------------------------------------/
+.SH SYNOPSIS
+.\" ----- SYNOPSIS :: (Null-terminated) strings -----------------------/
+.SS Strings
+.nf
+// Chain-copy a string.
+.BI "char *stpcpy(char *restrict " dst ", const char *restrict " src );
+.PP
+// Copy/catenate a string.
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
+// Copy/catenate a string with truncation and SIGSEGV on UB.
+.BI "size_t strlcpy(char " dst "[restrict ." sz "], \
+const char *restrict " src ,
+.BI "               size_t " sz );
+.BI "size_t strlcat(char " dst "[restrict ." sz "], \
+const char *restrict " src ,
+.BI "               size_t " sz );
+.fi
+.\" ----- SYNOPSIS :: Null-padded character sequences --------/
+.SS Null-padded character sequences
+.nf
+// Zero a fixed-width buffer, and
+// copy a string into a character sequence with truncation.
+.BI "char *stpncpy(char " dst "[restrict ." sz "], \
+const char *restrict " src ,
+.BI "               size_t " sz );
+.PP
+// Zero a fixed-width buffer, and
+// copy a string into a character sequence with truncation.
+.BI "char *strncpy(char " dest "[restrict ." sz "], \
+const char *restrict " src ,
+.BI "               size_t " sz );
+.PP
+// Chain-copy a null-padded character sequence into a character sequence.
+.BI "char *zustr2ustp(char *restrict " dst ", \
+const char " src "[restrict ." sz ],
+.BI "               size_t " sz );
+.PP
+// Chain-copy a null-padded character sequence into a string.
+.BI "char *zustr2stp(char *restrict " dst ", \
+const char " src "[restrict ." sz ],
+.BI "               size_t " sz );
+.PP
+// Catenate a null-padded character sequence into a string.
+.BI "char *strncat(char *restrict " dst ", const char " src "[restrict ." sz ],
+.BI "               size_t " sz );
+.fi
+.\" ----- SYNOPSIS :: Measured character sequences --------------------/
+.SS Measured character sequences
+.nf
+// Chain-copy a measured character sequence.
+.BI "char *ustpcpy(char *restrict " dst ", \
+const char " src "[restrict ." len ],
+.BI "               size_t " len );
+.PP
+// Chain-copy a measured character sequence into a string.
+.BI "char *ustr2stp(char *restrict " dst ", \
+const char " src "[restrict ." len ],
+.BI "               size_t " len );
+.fi
+.SH DESCRIPTION
+.\" ----- DESCRIPTION :: Terms (and abbreviations) :: -----------------/
+.SS Terms (and abbreviations)
+.\" ----- DESCRIPTION :: Terms (and abbreviations) :: string (str) ----/
+.TP
+.IR "string " ( str )
+is a sequence of zero or more non-null characters followed by a null byte.
+.\" ----- DESCRIPTION :: Terms (and abbreviations) :: null-padded character seq
+.TP
+.I character sequence
+is a sequence of zero or more non-null characters.
+A program should never usa a character sequence where a string is required.
+However, with appropriate care,
+a string can be used in the place of a character sequence.
+.RS
+.TP
+.IR "null-padded character sequence " ( zustr )
+Character sequences can be contained in fixed-width buffers,
+which contain padding null bytes after the character sequence,
+to fill the rest of the buffer
+without affecting the character sequence;
+however, those padding null bytes are not part of the character sequence.
+.\" ----- DESCRIPTION :: Terms (and abbreviations) :: measured character sequence
+.TP
+.IR "measured character sequence " ( ustr )
+Character sequence delimited by its length.
+It may be a slice of a larger character sequence,
+or even of a string.
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
+.\" ----- DESCRIPTION :: Terms (and abbreviations) :: copy ------------/
+.TP
+.I copy
+This term is used when
+the writing starts at the first element pointed to by
+.IR dst .
+.\" ----- DESCRIPTION :: Terms (and abbreviations) :: catenate --------/
+.TP
+.I catenate
+This term is used when
+a function first finds the terminating null byte in
+.IR dst ,
+and then starts writing at that position.
+.\" ----- DESCRIPTION :: Terms (and abbreviations) :: chain -----------/
+.TP
+.I chain
+This term is used when
+it's the programmer who provides a pointer to the
+.I end
+in
+.IR dst ,
+and the function starts writing at that location.
+The function returns a pointer to the new
+.I end
+after the call,
+so that the programmer can use it to chain such calls.
+.\" ----- DESCRIPTION :: Copy, catenate, and chain-copy ---------------/
+.SS Copy, catenate, and chain-copy
+Originally,
+there was a distinction between functions that copy and those that catenate.
+However, newer functions that copy while allowing chaining
+cover both use cases with a single API.
+They are also algorithmically faster,
+since they don't need to search for the end of the existing string.
+However, functions that catenate have a much simpler use,
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
+.RB * stp *(),
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
+.BR zustr2stp (3)
+or
+.BR strncat (3).
+.PP
+To copy from an unterminated string within a fixed-width buffer
+into a character sequence,
+ingoring any trailing null bytes in the source fixed-width buffer,
+you should use
+.BR zustr2ustp (3).
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
+However,
+for keeping type safety,
+it's good to add a wrapper that uses
+.I char\~*
+instead of
+.IR void\~* :
+.BR ustpcpy (3).
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
+.PP
+To copy a measured character sequence, use
+.BR ustpcpy (3).
+.PP
+To copy a measured character sequence into a string, use
+.BR ustr2stp (3).
+.PP
+Because these functions ask for the length,
+and a string is by nature composed of a character sequence of the same length
+plus a terminating null byte,
+a string is also accepted as input.
+.\" ----- DESCRIPTION :: String vs character sequence -----------------/
+.SS String vs character sequence
+Some functions only operate on strings.
+Those require that the input
+.I src
+is a string,
+and guarantee an output string
+(even when truncation occurs).
+Functions that catenate
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
+Functions that catenate
+also require that
+.I dst
+holds a string before the call.
+.BR strncat (3)
+has an even more misleading name than the functions above.
+List of functions:
+.IP \(bu 3
+.PD 0
+.BR zustr2stp (3)
+.IP \(bu
+.BR strncat (3)
+.IP \(bu
+.BR ustr2stp (3)
+.PD
+.PP
+Other functions operate on an input character sequence
+to create an output character sequence.
+List of functions:
+.IP \(bu 3
+.PD 0
+.BR ustpcpy (3)
+.IP \(bu
+.BR zustr2stp (3)
+.PD
+.\" ----- DESCRIPTION :: Functions :: ---------------------------------/
+.SS Functions
+.\" ----- DESCRIPTION :: Functions :: stpcpy(3) -----------------------/
+.TP
+.BR stpcpy (3)
+This function copies the input string into a destination string.
+The programmer is responsible for allocating a buffer large enough.
+It returns a pointer suitable for chaining.
+.\" ----- DESCRIPTION :: Functions :: strcpy(3), strcat(3) ------------/
+.TP
+.BR strcpy (3)
+.TQ
+.BR strcat (3)
+These functions copy and catenate the input string into a destination string.
+The programmer is responsible for allocating a buffer large enough.
+The return value is useless.
+.IP
+.BR stpcpy (3)
+is a faster alternative to these functions.
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
+These functions are not provided by any library;
+See EXAMPLES for a reference implementation.
+.\" ----- DESCRIPTION :: Functions :: strlcpy(3bsd), strlcat(3bsd) ----/
+.TP
+.BR strlcpy (3bsd)
+.TQ
+.BR strlcat (3bsd)
+These functions copy and catenate the input string into a destination string.
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
+It's impossible to distinguish truncation after the call,
+from a character sequence that just fits the destination buffer;
+truncation should be detected from the length of the original string.
+.\" ----- DESCRIPTION :: Functions :: strncpy(3) ----------------------/
+.TP
+.BR strncpy (3)
+This function is identical to
+.BR stpncpy (3)
+except for the useless return value.
+.IP
+.BR stpncpy (3)
+is a more useful alternative to this function.
+.\" ----- DESCRIPTION :: Functions :: zustr2ustp(3) --------------------/
+.TP
+.BR zustr2ustp (3)
+This function copies the input character sequence
+contained in a null-padded wixed-width buffer,
+into a destination character sequence.
+The programmer is responsible for allocating a buffer large enough.
+It returns a pointer suitable for chaining.
+.IP
+A truncating version of this function doesn't exist,
+since the size of the original character sequence is always known,
+so it wouldn't be very useful.
+.IP
+This function is not provided by any library;
+See EXAMPLES for a reference implementation.
+.\" ----- DESCRIPTION :: Functions :: zustr2stp(3) --------------------/
+.TP
+.BR zustr2stp (3)
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
+This function is not provided by any library;
+See EXAMPLES for a reference implementation.
+.\" ----- DESCRIPTION :: Functions :: strncat(3) ----------------------/
+.TP
+.BR strncat (3)
+Do not confuse this function with
+.BR strncpy (3);
+they are not related at all.
+.IP
+This function catenates the input character sequence
+contained in a null-padded wixed-width buffer,
+into a destination string.
+The programmer is responsible for allocating a buffer large enough.
+The return value is useless.
+.IP
+.BR zustr2stp (3)
+is a faster alternative to this function.
+.\" ----- DESCRIPTION :: Functions :: ustpcpy(3) ----------------------/
+.TP
+.BR ustpcpy (3)
+This function copies the input character sequence,
+limited by its length,
+into a destination character sequence.
+The programmer is responsible for allocating a buffer large enough.
+It returns a pointer suitable for chaining.
+.\" ----- DESCRIPTION :: Functions :: ustr2stp(3) ---------------------/
+.TP
+.BR ustr2stp (3)
+This function copies the input character sequence,
+limited by its length,
+into a destination string.
+The programmer is responsible for allocating a buffer large enough.
+It returns a pointer suitable for chaining.
+.\" ----- RETURN VALUE :: ---------------------------------------------/
+.SH RETURN VALUE
+The following functions return
+a pointer to the terminating null byte in the destination string.
+.IP \(bu 3
+.PD 0
+.BR stpcpy (3)
+.IP \(bu
+.BR ustr2stp (3)
+.IP \(bu
+.BR zustr2stp (3)
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
+The following functions return
+a pointer to one after the last character
+in the destination character sequence.
+.IP \(bu 3
+.PD 0
+.BR zustr2ustp (3)
+.IP \(bu
+.BR ustpcpy (3)
+.PD
+.PP
+The following functions return
+the length of the total string that they tried to create
+(as if truncation didn't occur).
+.IP \(bu 3
+.BR strlcpy (3bsd),
+.BR strlcat (3bsd)
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
+.\" ----- NOTES :: strscpy(9) -----------------------------------------/
+.SH NOTES
+The Linux kernel has an internal function for copying strings,
+which is similar to
+.BR stpecpy (3),
+except that it can't be chained:
+.TP
+.BR strscpy (9)
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
+.\" ----- CAVEATS :: --------------------------------------------------/
+.SH CAVEATS
+Don't mix chain calls to truncating and non-truncating functions.
+It is conceptually wrong
+unless you know that the first part of a copy will always fit.
+Anyway, the performance difference will probably be negligible,
+so it will probably be more clear if you use consistent semantics:
+either truncating or non-truncating.
+Calling a non-truncating function after a truncating one is necessarily wrong.
+.\" ----- BUGS :: -----------------------------------------------------/
+.SH BUGS
+All catenation functions share the same performance problem:
+.UR https://www.joelonsoftware.com/\:2001/12/11/\:back\-to\-basics/
+Shlemiel the painter
+.UE .
+.\" ----- EXAMPLES :: -------------------------------------------------/
+.SH EXAMPLES
+The following are examples of correct use of each of these functions.
+.\" ----- EXAMPLES :: stpcpy(3) ---------------------------------------/
+.TP
+.BR stpcpy (3)
+.EX
+p = buf;
+p = stpcpy(p, "Hello ");
+p = stpcpy(p, "world");
+p = stpcpy(p, "!");
+len = p \- buf;
+puts(buf);
+.EE
+.\" ----- EXAMPLES :: strcpy(3), strcat(3) ----------------------------/
+.TP
+.BR strcpy (3)
+.TQ
+.BR strcat (3)
+.EX
+strcpy(buf, "Hello ");
+strcat(buf, "world");
+strcat(buf, "!");
+len = strlen(buf);
+puts(buf);
+.EE
+.\" ----- EXAMPLES :: stpecpy(3), stpecpyx(3) -------------------------/
+.TP
+.BR stpecpy (3)
+.TQ
+.BR stpecpyx (3)
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
+.\" ----- EXAMPLES :: strlcpy(3bsd), strlcat(3bsd) --------------------/
+.TP
+.BR strlcpy (3bsd)
+.TQ
+.BR strlcat (3bsd)
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
+.\" ----- EXAMPLES :: strscpy(9) --------------------------------------/
+.TP
+.BR strscpy (9)
+.EX
+len = strscpy(buf, "Hello world!", sizeof(buf));
+if (len == \-E2BIG)
+    goto toolong;
+puts(buf);
+.EE
+.\" ----- EXAMPLES :: stpncpy(3) --------------------------------------/
+.TP
+.BR stpncpy (3)
+.EX
+end = stpncpy(buf, "Hello world!", sizeof(buf));
+if (sizeof(buf) < strlen("Hello world!"))
+    goto toolong;
+len = end \- buf;
+for (size_t i = 0; i < sizeof(buf); i++)
+    putchar(buf[i]);
+.EE
+.\" ----- EXAMPLES :: strncpy(3) --------------------------------------/
+.TP
+.BR strncpy (3)
+.EX
+strncpy(buf, "Hello world!", sizeof(buf));
+if (sizeof(buf) < strlen("Hello world!"))
+    goto toolong;
+len = strnlen(buf, sizeof(buf));
+for (size_t i = 0; i < sizeof(buf); i++)
+    putchar(buf[i]);
+.EE
+.\" ----- EXAMPLES :: zustr2ustp(3) -----------------------------------/
+.TP
+.BR zustr2ustp (3)
+.EX
+p = buf;
+p = zustr2ustp(p, "Hello ", 6);
+p = zustr2ustp(p, "world", 42);  // Padding null bytes ignored.
+p = zustr2ustp(p, "!", 1);
+len = p \- buf;
+printf("%.*s\en", (int) len, buf);
+.EE
+.\" ----- EXAMPLES :: zustr2stp(3) ------------------------------------/
+.TP
+.BR zustr2stp (3)
+.EX
+p = buf;
+p = zustr2stp(p, "Hello ", 6);
+p = zustr2stp(p, "world", 42);  // Padding null bytes ignored.
+p = zustr2stp(p, "!", 1);
+len = p \- buf;
+puts(buf);
+.EE
+.\" ----- EXAMPLES :: strncat(3) --------------------------------------/
+.TP
+.BR strncat (3)
+.EX
+buf[0] = \(aq\e0\(aq;  // There's no 'cpy' function to this 'cat'.
+strncat(buf, "Hello ", 6);
+strncat(buf, "world", 42);  // Padding null bytes ignored.
+strncat(buf, "!", 1);
+len = strlen(buf);
+puts(buf);
+.EE
+.\" ----- EXAMPLES :: ustpcpy(3) --------------------------------------/
+.TP
+.BR ustpcpy (3)
+.EX
+p = buf;
+p = ustpcpy(p, "Hello ", 6);
+p = ustpcpy(p, "world", 5);
+p = ustpcpy(p, "!", 1);
+len = p \- buf;
+printf("%.*s\en", (int) len, buf);
+.EE
+.\" ----- EXAMPLES :: ustr2stp(3) -------------------------------------/
+.TP
+.BR ustr2stp (3)
+.EX
+p = buf;
+p = ustr2stp(p, "Hello ", 6);
+p = ustr2stp(p, "world", 5);
+p = ustr2stp(p, "!", 1);
+len = p \- buf;
+puts(buf);
+.EE
+.\" ----- EXAMPLES :: Implementations :: ------------------------------/
+.SS Implementations
+Here are reference implementations for functions not provided by libc.
+.PP
+.in +4n
+.EX
+/* This code is in the public domain. */
+
+.\" ----- EXAMPLES :: Implementations :: stpecpy(3) -------------------/
+char *
+.IR stpecpy "(char *dst, char past_end[0], const char *restrict src)"
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
+.\" ----- EXAMPLES :: Implementations :: stpecpy(3) -------------------/
+char *
+.IR stpecpyx "(char *dst, char past_end[0], const char *restrict src)"
+{
+    if (src[strlen(src)] != \(aq\e0\(aq)
+        raise(SIGSEGV);
+
+    return stpecpy(dst, past_end, src);
+}
+
+.\" ----- EXAMPLES :: Implementations :: zustr2ustp(3) ----------------/
+char *
+.IR zustr2ustp "(char *restrict dst, const char *restrict src, size_t sz)"
+{
+    return ustpcpy(dst, src, strnlen(src, sz));
+}
+
+.\" ----- EXAMPLES :: Implementations :: zustr2stp(3) -----------------/
+char *
+.IR zustr2stp "(char *restrict dst, const char *restrict src, size_t sz)"
+{
+    char  *end;
+
+    end = zustr2ustp(dst, src, sz);
+    *end = \(aq\e0\(aq;
+
+    return end;
+}
+
+.\" ----- EXAMPLES :: Implementations :: ustpcpy(3) -------------------/
+char *
+.IR ustpcpy "(char *restrict dst, const char *restrict src, size_t len)"
+{
+    return mempcpy(dst, src, len);
+}
+
+.\" ----- EXAMPLES :: Implementations :: ustr2stp(3) ------------------/
+char *
+.IR ustr2stp "(char *restrict dst, const char *restrict src, size_t len)"
+{
+    char  *end;
+
+    end = ustpcpy(dst, src, len);
+    *end = \(aq\e0\(aq;
+
+    return end;
+}
+.EE
+.in
+.EE
+.in
+.EE
+.in
+.\" ----- SEE ALSO :: -------------------------------------------------/
+.SH SEE ALSO
+.BR bzero (3),
+.BR memcpy (3),
+.BR memccpy (3),
+.BR mempcpy (3),
+.BR stpcpy (3),
+.BR strlcpy (3bsd),
+.BR strncat (3),
+.BR strpcpy (3),
+.BR string (3)
-- 
2.38.1

