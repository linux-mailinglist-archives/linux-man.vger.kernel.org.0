Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6AC2E5BC07B
	for <lists+linux-man@lfdr.de>; Mon, 19 Sep 2022 01:10:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229602AbiIRXKP (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 18 Sep 2022 19:10:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46912 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229453AbiIRXKO (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 18 Sep 2022 19:10:14 -0400
Received: from mail-lj1-x22b.google.com (mail-lj1-x22b.google.com [IPv6:2a00:1450:4864:20::22b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 76A2214007
        for <linux-man@vger.kernel.org>; Sun, 18 Sep 2022 16:10:12 -0700 (PDT)
Received: by mail-lj1-x22b.google.com with SMTP id r12so30431290ljg.10
        for <linux-man@vger.kernel.org>; Sun, 18 Sep 2022 16:10:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=OhxXHuPKyu5rsGMN7VVTTXBNWaZtgvRBYo8YQ+S4YDQ=;
        b=T4gqHQyVjhWjVtBleiNGs7Ipur3WtBL80Q8u25VtLH4q5gaZb9pKcUj6vxxvUmWRy+
         pAyAAa+BU+sCJOtkG6Om917cj7L7lbFZS2N8vQbLrlUg4nmXkmpm28mTnsIvjpdhSm+L
         8cGC5ptHle6a/tKrK51uChduM+Df6cBmXFxrQldedPVaQ0D9OcVIO1bxlUDee1SAeGsa
         9V5BkMGZHPeHIAkQ+FgAVQyeP09Lvqnwioey8qbkVn8xC5MpI9nPyB2Crjt3pfdkqgxd
         ef4ARYMabhRWpga1tA7HIKoPgK7Gqj1946zlIEpBr3V7K0qnr7rOldCK9JZBgtfSzwXF
         Zacw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=OhxXHuPKyu5rsGMN7VVTTXBNWaZtgvRBYo8YQ+S4YDQ=;
        b=Kh3IWrOlno8auDSzqQhI/xO18+TZ9b9LeR0wIMQI7WMevUNYgvsAG0mpBDDAO+sB0z
         ATgWQJLDvpq+IlDY4TGlH8YXXoHNvjY/Ecqz/22FHnq63ySHLrlSGcVveESpXXAbXXA1
         l5tzjC08nZ0YEkmmB3tF8hu+VsSzJW1V3n+zJT88lgAZemVdDRf/KFsmGG/EMMVWIBVX
         GM9ZbPm8j0zMVMAhx6S1TKpQ1pnyw9DIEGvl2VwfWL0sBdOvTEpNcb8nTych3VIAAviG
         EmykMH1b8ohhLptdvK9fRvSx9dZMV5JFbdReFyT6VF4e9A3+8pTiDSpoVN63hoEEAK3y
         kldA==
X-Gm-Message-State: ACrzQf0PkK+4x39Aiu5JnvGq8NtykfC4ZleOAySoeQFNlfpHwjWsvI1T
        pkkmII+A+9D2h4HaITkUNSvZKoLD0KQ6yw==
X-Google-Smtp-Source: AMsMyM75x07tBSKwtNISw4tngT0Hp9mITllIbCI34tyPJcn2bK/cJaeLH8V5mPFWAlmiBt0snuh0+A==
X-Received: by 2002:a2e:9050:0:b0:26b:e84d:24ea with SMTP id n16-20020a2e9050000000b0026be84d24eamr4442998ljg.514.1663542610718;
        Sun, 18 Sep 2022 16:10:10 -0700 (PDT)
Received: from dell7760.lan ([31.169.55.19])
        by smtp.googlemail.com with ESMTPSA id o1-20020a2ebd81000000b0026c0158b87csm4202395ljq.29.2022.09.18.16.10.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 Sep 2022 16:10:10 -0700 (PDT)
From:   Alex Colomar <alx.manpages@gmail.com>
To:     linux-man@vger.kernel.org, libc-alpha@sourceware.org
Cc:     Alex Colomar <alx.manpages@gmail.com>, Walter Harms <wharms@bfs.de>
Subject: [RFC v2] register_printf_speficier.3, register_printf_modifier.3, register_printf_type.3: Add new manual page and links
Date:   Mon, 19 Sep 2022 01:09:02 +0200
Message-Id: <20220918230901.24488-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20220918221640.19942-1-alx.manpages@gmail.com>
References: <20220918221640.19942-1-alx.manpages@gmail.com>
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

Suggested-by: Walter Harms <wharms@bfs.de>
Signed-off-by: Alex Colomar <alx.manpages@gmail.com>
---

v2:

 - bug about padding zeros fixed.  But UB about 'l', 'll' (and 'j', 'z') not.


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
index 000000000..7e9d3e700
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
+    char    ch;
+    size_t  len;
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
+                    ptrdiff_t min_len);
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
+            ptrdiff_t min_len)
+{
+    ssize_t    len;
+    ptrdiff_t  tmp;
+
+    len = 0;
+    tmp = info\->width \- (info\->alt * 2);
+    if (info\->group)
+        tmp \-= tmp / 5 \- !(tmp % 5);
+    for (ptrdiff_t i = tmp \- 1; i > min_len \- 1; i\-\-) {
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
+    for (size_t i = bin_len \- 1; i > min_len \- 1; i\-\-) {
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
+    for (size_t i = pad_len - 1; i < pad_len; i\-\-) {
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

