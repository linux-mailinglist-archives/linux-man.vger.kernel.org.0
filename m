Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 267355BC065
	for <lists+linux-man@lfdr.de>; Mon, 19 Sep 2022 00:24:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229453AbiIRWY4 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 18 Sep 2022 18:24:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47156 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229563AbiIRWYz (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 18 Sep 2022 18:24:55 -0400
Received: from mail-lj1-x231.google.com (mail-lj1-x231.google.com [IPv6:2a00:1450:4864:20::231])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3CF7C626B
        for <linux-man@vger.kernel.org>; Sun, 18 Sep 2022 15:24:53 -0700 (PDT)
Received: by mail-lj1-x231.google.com with SMTP id p5so31887659ljc.13
        for <linux-man@vger.kernel.org>; Sun, 18 Sep 2022 15:24:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date;
        bh=oEXoiX9yt2ve7AvO8q7Uk/2OpCXnrSeLte5iUOVKeG0=;
        b=X7KkbkXwlTROOfJkjDX7Z97rARA4opcDpf8u2j0xGXyZquyjwnPrue6+PVJOHmLemf
         KnsyHMVo4+WNbn77c4Adsad9Z2C/DZkXEtyJai/cm9gifmhbZfPLEK1soeazJ/FiI2pI
         wLbZ3mh9q6B4BCP27uXQSAQhtJe9OxR+NhMUzL1Kh66phyFufdnnDLFMtK6jvBlWq1Fv
         cqmT0HEYfHpbtjPcVRvZa1qjPchAcB/FCKY37GZo0GA5LCexrEmgb8ZUcdG6I9opvWOD
         Uj5/FzEEY3NQIurtyGvwCbMQtyC5tc9AbMI4f9jQrV30/Nh7QrADGWyrNs8et2cMBfel
         v+9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date;
        bh=oEXoiX9yt2ve7AvO8q7Uk/2OpCXnrSeLte5iUOVKeG0=;
        b=ifkOPzJRKxr1VoXdKjgF9NxWAQO4uSMml8BE9XHNJfRRl6MrGf1I+o1F+JogVBBL4U
         ieCov6jG4zTNwyafmmuXB7V1zAszf8JPz3uDIzSnI+5mM+pn7nPRpViTWOGJt4boDd6D
         HYkJFmuWqPqBCLQzTtWz0UFrG1CRlEpEh+w7xJGYg5Lelce2DwYJU04KgsroN415gPKN
         nykVT3sdqEdsoF7i1dgQ4slGRFJDNHK8ofZ88MFXE+icayczxanFUhdCXBK0wFTisqHv
         MlaFP2yGZtFO4eP31/fSDCx5zcP2gcqpoEBEq9g6L7l81Nxt2lDCFfMJVBz3GDx9WdP5
         NKSQ==
X-Gm-Message-State: ACrzQf18LxCyaLoOsoqdDP90ax5GFofsOg47cR5FnI4PLaBl69tQfEAn
        1X1ULSIluF6QjPuiMrbBldOctEstDPZs6w==
X-Google-Smtp-Source: AMsMyM6Y1081QVetqfxlDS+dI7FkBjhpXPUz0WLXm/DQ4YS7DJ3lrUIc7JRn7cV9UKzgq+jyj55a5g==
X-Received: by 2002:a2e:940b:0:b0:268:fa1c:106f with SMTP id i11-20020a2e940b000000b00268fa1c106fmr4133564ljh.101.1663539891021;
        Sun, 18 Sep 2022 15:24:51 -0700 (PDT)
Received: from dell7760.lan ([31.169.55.19])
        by smtp.googlemail.com with ESMTPSA id w10-20020a05651c118a00b0026c4c1a0b4dsm401340ljo.126.2022.09.18.15.24.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 Sep 2022 15:24:50 -0700 (PDT)
From:   Alex Colomar <alx.manpages@gmail.com>
To:     linux-man@vger.kernel.org, libc-alpha@sourceware.org
Cc:     Alex Colomar <alx.manpages@gmail.com>, Walter Harms <wharms@bfs.de>
Subject: [PATCH] register_printf_speficier.3, register_printf_modifier.3, register_printf_type.3: Add new manual page and links
Date:   Mon, 19 Sep 2022 00:16:41 +0200
Message-Id: <20220918221640.19942-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.37.2
MIME-Version: 1.0
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

Reported-by: Walter Harms <wharms@bfs.de>
Signed-off-by: Alex Colomar <alx.manpages@gmail.com>
---

Hello all,

I wrote this manual page after on an old discussion with Walter,
which I postponed too much.  I had a long time ago written some
using register_printf_specifier(3), and I remember having a lot of
trouble using, since there's few documentation about it, if at
all.  I had to guess much of it.

I wrote this manual page with a full example of using it (I'm
sorry I have never used the other two, so I have no examples for
them).  But maybe this one, which is quite complete about the
function it uses, will make it easier to understand the related
APIs.  If someone comes up with an example for the rest, I'd like
to consider it (although I fear the EXAMPLES are taking too much
space, but it may be worth it...).

And it seems I also need some help with my own example, since I
discovered there's some sort of undefined behavior in it (just run
it several times and see; some work, but some do show weird stuff
for the cases where with modifiers that make the number wider than
unsigned int).  If you find the undefined behavior, please show
me.  I'll continue debugging, anyway.

Well, please review this page, and comment anything you don't like.

Thank you very much in advance,

Alex

 man3/register_printf_modifier.3  |   1 +
 man3/register_printf_speficier.3 | 439 +++++++++++++++++++++++++++++++
 man3/register_printf_type.3      |   1 +
 3 files changed, 441 insertions(+)
 create mode 100644 man3/register_printf_modifier.3
 create mode 100644 man3/register_printf_speficier.3
 create mode 100644 man3/register_printf_type.3

diff --git a/man3/register_printf_modifier.3 b/man3/register_printf_modifier.3
new file mode 100644
index 000000000..296a92dd3
--- /dev/null
+++ b/man3/register_printf_modifier.3
@@ -0,0 +1 @@
+.so man3/register_printf_specifier.3
diff --git a/man3/register_printf_speficier.3 b/man3/register_printf_speficier.3
new file mode 100644
index 000000000..8911e293f
--- /dev/null
+++ b/man3/register_printf_speficier.3
@@ -0,0 +1,439 @@
+.\" Copyright (C) 2022 Alejandro Colomar <alx.manpages@gmail.com>
+.\"
+.\" SPDX-License-Identifier: Linux-man-pages-copyleft
+.\"
+.TH register_printf_specifier 3 2022-09-18 "Linux man-pages (unreleased)"
+.SH NAME
+register_printf_specifier,
+register_printf_modifier,
+register_printf_type
+\- define custom behavior for printf-like functions
+.SH LIBRARY
+Standard C library
+.RI ( libc ", " \-lc )
+.SH SYNOPSIS
+.nf
+.B #include <printf.h>
+.PP
+.BI "typedef int printf_function(FILE *" stream ,
+.BI "                            const struct printf_info *" info ,
+.BI "                            const void *const *" args );
+.BI "typedef int printf_arginfo_size_function(const struct printf_info *" info ,
+.BI "                            size_t " n ", int *" argtypes ", int *" size );
+.BI "typedef void printf_va_arg_function(void *" mem ", va_list *" ap );
+.PP
+.BI "int register_printf_specifier(int " spec ", printf_function " func ,
+.BI "                            printf_arginfo_size_function " arginfo );
+.BI "int register_printf_modifier(const wchar_t *" str );
+.BI "int register_printf_type(printf_va_arg_function " fct );
+.fi
+.SH DESCRIPTION
+These functions serve to extend and/or modify the behavior of the
+.BR printf (3)
+family of functions.
+.SS register_printf_specifier()
+This function registers a custom conversion specifier for the
+.BR printf (3)
+family of functions.
+.PP
+.I spec
+is a character,
+which will be used as a conversion specifier in the format string.
+.PP
+.I func
+is a callback function that will be
+executed by the
+.BR printf (3)
+family of functions
+to format the input arguments into the output
+.I stream
+(transparently including the case of an output string).
+.PP
+.I arginfo
+is a callback function that will be executed by the
+.BR printf (3)
+family of functions
+to know how many arguments should be parsed for the custom specifier
+and also their types.
+.SS register_printf_modifier()
+TODO
+.SS register_printf_type()
+TODO
+.SH RETURN VALUE
+.BR \%register_printf_specifier (),
+.BR \%register_printf_modifier (),
+and
+.BR \%register_printf_type ()
+return zero on success, or \-1 on error.
+.SS Callbacks
+The callback of type
+.I printf_function
+should return the number of characters written,
+or \-1 on error.
+.PP
+The callback of type
+.I \%printf_arginfo_size_function
+should return the number of arguments to be parsed by this specifier.
+It also passes information about the type of those arguments
+to the caller through
+.IR argtypes .
+On error, it should return \-1.
+.SH ERRORS
+TODO
+.SH VERSIONS
+.BR \%register_printf_function (3)
+is an older function similar to
+.BR \%register_printf_specifier,
+and is now deprecated.
+That function can't handle user-defined types.
+.PP
+.BR \%register_printf_specifier ()
+superseeds
+.BR \%register_printf_function (3).
+.SH STANDARDS
+These nonstandard functions are present in glibc.
+.SH EXAMPLES
+The following example program registers the 'b' and 'B' specifiers
+to print integers in binary format,
+mirroring rules for other unsigned conversion specifiers like 'x' and 'u'.
+This can be used to print in binary prior to C23.
+.PP
+.\" SRC BEGIN (register_printf_specifier.c)
+.EX
+/* This code is in the public domain */
+
+#include <err.h>
+#include <limits.h>
+#include <stddef.h>
+#include <stdint.h>
+#include <stdio.h>
+#include <stdlib.h>
+#include <string.h>
+#include <sys/param.h>
+
+#include <printf.h>
+
+#define GROUP_SEP  '_'
+
+struct Printf_Pad {
+    char ch;
+    int len;
+};
+
+static int printf_b_init(void);
+static int b_printf(FILE *stream, const struct printf_info *info,
+                    const void *const args[]);
+static int b_arginf_sz(const struct printf_info *info,
+                    size_t n, int argtypes[n], int *size);
+
+static uintmax_t b_value(const struct printf_info *info,
+                    const void *arg);
+static size_t b_bin_repr(char bin[UINTMAX_WIDTH],
+                    const struct printf_info *info, const void *arg);
+static size_t b_bin_len(const struct printf_info *info, ptrdiff_t min_len);
+static size_t b_pad_len(const struct printf_info *info, ptrdiff_t bin_len);
+static ssize_t b_print_prefix(FILE *stream, const struct printf_info *info);
+static ssize_t b_pad_zeros(FILE *stream, const struct printf_info *info,
+                    size_t min_len);
+static ssize_t b_print_number(FILE *stream, const struct printf_info *info,
+                    const char bin[UINTMAX_WIDTH],
+                    size_t min_len, size_t bin_len);
+static char pad_ch(const struct printf_info *info);
+static ssize_t pad_spaces(FILE *stream, size_t pad_len);
+
+int
+main(void)
+{
+    if (printf_b_init() == \-1)
+        err(EXIT_FAILURE, "printf_b_init");
+
+    printf("....----....----....----....----\en");
+    printf("%llb;\en", 0x5Ellu);
+    printf("%lB;\en", 0x5Elu);
+    printf("%b;\en", 0x5Eu);
+    printf("%hB;\en", 0x5Eu);
+    printf("%hhb;\en", 0x5Eu);
+    printf("%jb;\en", (uintmax_t)0x5E);
+    printf("%zb;\en", (size_t)0x5E);
+    printf("....----....----....----....----\en");
+    printf("%#b;\en", 0x5Eu);
+    printf("%#B;\en", 0x5Eu);
+    printf("....----....----....----....----\en");
+    printf("%10b;\en", 0x5Eu);
+    printf("%010b;\en", 0x5Eu);
+    printf("%.10b;\en", 0x5Eu);
+    printf("....----....----....----....----\en");
+    printf("%\-10B;\en", 0x5Eu);
+    printf("....----....----....----....----\en");
+    printf("%'B;\en", 0x5Eu);
+    printf("....----....----....----....----\en");   
+    printf("....----....----....----....----\en");
+    printf("%#16.12b;\en", 0xAB);
+    printf("%\-#'20.12b;\en", 0xAB);
+    printf("%#'020B;\en", 0xAB);
+    printf("....----....----....----....----\en");
+    printf("%#020B;\en", 0xAB);
+    printf("%'020B;\en", 0xAB);
+    printf("%020B;\en", 0xAB);
+    printf("....----....----....----....----\en");
+    printf("%#021B;\en", 0xAB);
+    printf("%'021B;\en", 0xAB);
+    printf("%021B;\en", 0xAB);
+    printf("....----....----....----....----\en");
+    printf("%#022B;\en", 0xAB);
+    printf("%'022B;\en", 0xAB);
+    printf("%022B;\en", 0xAB);
+    printf("....----....----....----....----\en");
+    printf("%#023B;\en", 0xAB);
+    printf("%'023B;\en", 0xAB);
+    printf("%023B;\en", 0xAB);
+    printf("....----....----....----....----\en");
+    printf("%\-#'19.11b;\en", 0xAB);
+    printf("%#'019B;\en", 0xAB);
+    printf("%#019B;\en", 0xAB);
+    printf("....----....----....----....----\en");
+    printf("%'019B;\en", 0xAB);
+    printf("%019B;\en", 0xAB);
+    printf("%#016b;\en", 0xAB);
+    printf("....----....----....----....----\en");
+
+    return 0;
+}
+
+static int
+printf_b_init(void)
+{
+    if (register_printf_specifier('b', b_printf, b_arginf_sz))
+        return -1;
+    if (register_printf_specifier('B', b_printf, b_arginf_sz))
+        return -1;
+    return 0;
+}
+
+static int
+b_printf(FILE *stream, const struct printf_info *info,
+         const void *const args[])
+{
+    char               bin[UINTMAX_WIDTH];
+    size_t             min_len, bin_len;
+    ssize_t            len, tmp;
+    struct Printf_Pad  pad = {0};
+
+    len = 0;
+
+    min_len = b_bin_repr(bin, info, args[0]);
+    bin_len = b_bin_len(info, min_len);
+
+    pad.ch = pad_ch(info);
+    if (pad.ch == ' ')
+        pad.len = b_pad_len(info, bin_len);
+
+    /* Padding with ' ' (right aligned) */
+    if ((pad.ch == ' ') && !info->left) {
+        tmp = pad_spaces(stream, pad.len);
+        if (tmp == EOF)
+            return EOF;
+        len += tmp;
+    }
+
+    /* "0b"/"0B" prefix */
+    if (info->alt) {
+        tmp = b_print_prefix(stream, info);
+        if (tmp == EOF)
+            return EOF;
+        len += tmp;
+    }
+
+    /* Padding with '0' */
+    if (pad.ch == '0') {
+        tmp = b_pad_zeros(stream, info, min_len);
+        if (tmp == EOF)
+            return EOF;
+        len += tmp;
+    }
+
+    /* Print number (including leading 0s to fill precision) */
+    tmp = b_print_number(stream, info, bin, min_len, bin_len);
+    if (tmp == EOF)
+        return EOF;
+    len += tmp;
+
+    /* Padding with ' ' (left aligned) */
+    if (info\->left) {
+        tmp = pad_spaces(stream, pad.len);
+        if (tmp == EOF)
+            return EOF;
+        len += tmp;
+    }
+
+    return len;
+}
+
+static int
+b_arginf_sz([[maybe_unused]] const struct printf_info *info,
+            size_t n, int argtypes[n], [[maybe_unused]] int *size)
+{
+    if (n < 1)
+        return -1;
+
+    argtypes[0] = PA_INT;
+
+    return 1;
+}
+
+static uintmax_t
+b_value(const struct printf_info *info, const void *arg)
+{
+    if (info\->is_long_double)
+        return *(const unsigned long long *)arg;
+    if (info\->is_long)
+        return *(const unsigned long *)arg;
+
+    /* 'h' and 'hh' are both promoted to int */
+    return *(const unsigned int *)arg;
+}
+
+static size_t
+b_bin_repr(char bin[UINTMAX_WIDTH],
+           const struct printf_info *info, const void *arg)
+{
+    size_t     min_len;
+    uintmax_t  val;
+
+    val = b_value(info, arg);
+
+    bin[0] = '0';
+    for (min_len = 0; val; min_len++) {
+        bin[min_len] = '0' + (val % 2);
+        val >>= 1;
+    }
+
+    return MAX(min_len, 1);
+}
+
+static size_t
+b_bin_len(const struct printf_info *info, ptrdiff_t min_len)
+{
+    return MAX(info\->prec, min_len);
+}
+
+static size_t
+b_pad_len(const struct printf_info *info, ptrdiff_t bin_len)
+{
+    ptrdiff_t  pad_len;
+
+    pad_len = info\->width \- bin_len;
+    if (info\->alt)
+        pad_len \-= 2;
+    if (info\->group)
+        pad_len \-= (bin_len \- 1) / 4;
+
+    return MAX(pad_len, 0);
+}
+
+static ssize_t
+b_print_prefix(FILE *stream, const struct printf_info *info)
+{
+    ssize_t len;
+
+    len = 0;
+    if (fputc('0', stream) == EOF)
+        return EOF;
+    len++;
+    if (fputc(info\->spec, stream) == EOF)
+        return EOF;
+    len++;
+
+    return len;
+}
+
+static ssize_t
+b_pad_zeros(FILE *stream, const struct printf_info *info,
+            size_t min_len)
+{
+    size_t   tmp;
+    ssize_t  len;
+
+    len = 0;
+    tmp = info\->width \- (info\->alt * 2);
+    if (info\->group)
+        tmp \-= tmp / 5 \- !(tmp % 5);
+    for (size_t i = tmp \- 1; i + 1 < min_len; i\-\-) {
+        if (fputc('0', stream) == EOF)
+            return EOF;
+        len++;
+
+        if (!info\->group || (i % 4))
+            continue;
+        if (fputc(GROUP_SEP, stream) == EOF)
+            return EOF;
+        len++;
+    }
+
+    return len;
+}
+
+static ssize_t
+b_print_number(FILE *stream, const struct printf_info *info,
+               const char bin[UINTMAX_WIDTH],
+               size_t min_len, size_t bin_len)
+{
+    ssize_t  len;
+
+    len = 0;
+
+    /* Print leading zeros to fill precision */
+    for (size_t i = bin_len \- 1; i < bin_len; i\-\-) {
+        if (fputc('0', stream) == EOF)
+            return EOF;
+        len++;
+
+        if (!info\->group || (i % 4))
+            continue;
+        if (fputc(GROUP_SEP, stream) == EOF)
+            return EOF;
+        len++;
+    }
+
+    /* Print number */
+    for (size_t i = min_len \- 1; i < min_len; i\-\-) {
+        if (fputc(bin[i], stream) == EOF)
+            return EOF;
+        len++;
+
+        if (!info\->group || (i % 4) || !i)
+            continue;
+        if (fputc(GROUP_SEP, stream) == EOF)
+            return EOF;
+        len++;
+    }
+
+    return len;
+}
+
+static char
+pad_ch(const struct printf_info *info)
+{
+    if ((info\->prec != \-1) || (info\->pad == ' ') || info\->left)
+        return ' ';
+    return '0';
+}
+
+static ssize_t
+pad_spaces(FILE *stream, size_t pad_len)
+{
+    ssize_t  len;
+
+    len = 0;
+    for (size_t i = pad_len; i < pad_len; i\-\-) {
+        if (fputc(' ', stream) == EOF)
+            return EOF;
+        len++;
+    }
+
+    return len;
+}
+.EE
+.\" SRC END
+.SH SEE ALSO
+TODO
diff --git a/man3/register_printf_type.3 b/man3/register_printf_type.3
new file mode 100644
index 000000000..296a92dd3
--- /dev/null
+++ b/man3/register_printf_type.3
@@ -0,0 +1 @@
+.so man3/register_printf_specifier.3
-- 
2.37.2

