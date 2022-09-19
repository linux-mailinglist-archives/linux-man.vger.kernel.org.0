Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B3CDE5BD29D
	for <lists+linux-man@lfdr.de>; Mon, 19 Sep 2022 18:55:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229749AbiISQzJ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 19 Sep 2022 12:55:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36408 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229720AbiISQzG (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 19 Sep 2022 12:55:06 -0400
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com [IPv6:2a00:1450:4864:20::22e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4AFF511801
        for <linux-man@vger.kernel.org>; Mon, 19 Sep 2022 09:55:04 -0700 (PDT)
Received: by mail-lj1-x22e.google.com with SMTP id l12so34614501ljg.9
        for <linux-man@vger.kernel.org>; Mon, 19 Sep 2022 09:55:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=NDrG+b8gopWMUIdRX7yGuHk0RjRO929dod+h7QAgbWI=;
        b=hrrv7Z1uBzPVRERItIuuRJ5JP+KYwlit1a1hSpogRowEILzm9BgjGO3Cle/OVbrV4P
         MIxfwCl6Qq2SjIrXu+CDGH5KIPisqoTpe20HaCjfxGxqPde6uMWe95GbHiy1DiAoG8sb
         DvSg+l0J/VFrSU1WCt/CYzVkX53XS1eMAep0a0FqquIpoU124fHPH7P3NhwV7zBJQopo
         jxSPD1kOclKmxIK0SFiwPM8yFhj/Y3xXdlDMZG0gUrbIenrXoBrBq4UgtdV/wOLimbJ+
         dM36oEVw+79XpN4EbEuB7rJ+PCrKeJlGIJu7xdO3iwf2YG6A91qOtnArgAFkw+ZaYUov
         LTKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=NDrG+b8gopWMUIdRX7yGuHk0RjRO929dod+h7QAgbWI=;
        b=7W+Wg4Nc3zzhbEQe0CuM/OFfnrb/F94UEt06hDmcllXnXuaq8UYuHbLLOE2uYCUT5o
         BPnsfOz8oqHCdcK5nrVUWhQU89y/D2gxtER1z6bzhVwzqq7H5QHNmg8VvM2mIz3tXt3p
         78v+2H6/dvia3KZJ290q8gu0zfVmUKvXPydmSORvb8mHVXSCsLd0Pys2FM8eZC7FACFu
         H24pUBBSwEOyuZsQHc56ysxZzFn1UluxYlznibhmyw6KR5gTKhBIVtQBt+u0PeMV1tKp
         R5NKnLb24K8VnlHrALSZUAO6Fr4TfAu8mHJOTu8UECuu9Yw3zaAnhuVQ2h05XIkhwNJ2
         n5oA==
X-Gm-Message-State: ACrzQf3G20eeJq3NyXzioaSB+54mG3xAr4vUVrGGlq5Qa86y3zp1qcU1
        1+2xwLIEFkZT6oe7gb2vSsQaHZZpB1xaaA==
X-Google-Smtp-Source: AMsMyM7CIF+yihL5IylLrOFTCRBspaa50njiJ5E4FXaSENMm/eGAGk39u5bxIiR8GqvHnciY03/o4Q==
X-Received: by 2002:a2e:7a11:0:b0:26c:3ec4:45ff with SMTP id v17-20020a2e7a11000000b0026c3ec445ffmr4225769ljc.25.1663606502629;
        Mon, 19 Sep 2022 09:55:02 -0700 (PDT)
Received: from dell7760.lan ([31.169.55.19])
        by smtp.googlemail.com with ESMTPSA id m11-20020ac24acb000000b0049496855494sm5263815lfp.104.2022.09.19.09.55.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Sep 2022 09:55:02 -0700 (PDT)
From:   Alex Colomar <alx.manpages@gmail.com>
To:     linux-man@vger.kernel.org
Cc:     Alex Colomar <alx.manpages@gmail.com>,
        Walter Harms <wharms@bfs.de>, Radisson97@gmx.de,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        libc-alpha@sourceware.org
Subject: [RFC v3] printf.3head: Document functions for customizing printf(3)-like functions
Date:   Mon, 19 Sep 2022 18:54:53 +0200
Message-Id: <20220919165456.28289-2-alx.manpages@gmail.com>
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
Cc: <Radisson97@gmx.de>
Cc: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: <libc-alpha@sourceware.org>
Signed-off-by: Alex Colomar <alx.manpages@gmail.com>
---
 man3head/printf.h.3head | 561 ++++++++++++++++++++++++++++++++++++++++
 1 file changed, 561 insertions(+)
 create mode 100644 man3head/printf.h.3head

diff --git a/man3head/printf.h.3head b/man3head/printf.h.3head
new file mode 100644
index 000000000..cd396c872
--- /dev/null
+++ b/man3head/printf.h.3head
@@ -0,0 +1,561 @@
+.\" Copyright (C) 2022 Alejandro Colomar <alx.manpages@gmail.com>
+.\"
+.\" SPDX-License-Identifier: Linux-man-pages-copyleft
+.\"
+.TH printf.h 3head 2022-09-18 "Linux man-pages (unreleased)"
+.SH NAME
+printf.h,
+\%register_printf_specifier,
+\%register_printf_modifier,
+\%register_printf_type,
+\%printf_function,
+\%printf_arginfo_size_function,
+\%printf_va_arg_function,
+\%printf_info,
+\%PA_INT,
+\%PA_CHAR,
+\%PA_WCHAR,
+\%PA_STRING,
+\%PA_WSTRING,
+\%PA_POINTER,
+\%PA_FLOAT,
+\%PA_DOUBLE,
+\%PA_LAST,
+\%PA_FLAG_LONG_LONG,
+\%PA_FLAG_LONG_DOUBLE,
+\%PA_FLAG_LONG,
+\%PA_FLAG_SHORT,
+\%PA_FLAG_PTR
+\- define custom behavior for printf-like functions
+.SH LIBRARY
+Standard C library
+.RI ( libc ", " \-lc )
+.SH SYNOPSIS
+.nf
+.B #include <printf.h>
+.PP
+.BI "int register_printf_specifier(int " spec ", printf_function " func ,
+.BI "                              printf_arginfo_size_function " arginfo );
+.BI "int register_printf_modifier(const wchar_t *" str );
+.BI "int register_printf_type(printf_va_arg_function " fct );
+.fi
+.SS Callbacks
+.nf
+.BI "typedef int printf_function(FILE *" stream ", const struct printf_info *" info ,
+.BI "                              const void *const " args []);
+.BI "typedef int printf_arginfo_size_function(const struct printf_info *" info ,
+.BI "                              size_t " n ", int " argtypes [ n "], int " size [ n ]);
+.BI "typedef void printf_va_arg_function(void *" mem ", va_list *" ap );
+.fi
+.SS Types
+.EX
+.B struct printf_info
+.B {
+.BR "    int            prec;            " "// Precision"
+.BR "    int            width;           " "// Width"
+.BR "    wchar_t        spec;            " "// Format letter"
+.BR "    unsigned int   is_long_double:1;" "// " L " or " ll " flag"
+.BR "    unsigned int   is_short:1;      " "// " h " flag"
+.BR "    unsigned int   is_long:1;       " "// " l " flag"
+.BR "    unsigned int   alt:1;           " "// " # " flag"
+.BR "    unsigned int   space:1;         " "// Space flag"
+.BR "    unsigned int   left:1;          " "// " - " flag"
+.BR "    unsigned int   showsign:1;      " "// " + " flag"
+.BR "    unsigned int   group:1;         " "// " ' " flag"
+.BR "    unsigned int   extra:1;         " "// For special use"
+.BR "    unsigned int   is_char:1;       " "// " hh " flag"
+.BR "    unsigned int   wide:1;          " "// True for wide character streams"
+.BR "    unsigned int   i18n:1;          " "// " I " flag"
+.BR "    unsigned int   is_binary128:1;  " "/* Floating-point argument is"
+.BR "                                    " "   ABI-compatible with"
+.BR "                                    " "   IEC 60559 binary128 */"
+.BR "    unsigned short user;            " "// Bits for user-installed modifiers"
+.BR "    wchar_t        pad;             " "// Padding character"
+.B };
+.EE
+.SS Constants
+.EX
+.B enum
+.BR "{              " "// C type:"
+.BR "    PA_INT,    " "// " int
+.BR "    PA_CHAR,   " "// " int ", cast to " char
+.BR "    PA_WCHAR,  " "// " wchar_t
+.BR "    PA_STRING, " "// " "const char *" ", a " '\e0' "-terminated string"
+.BR "    PA_WSTRING," "// " "const wchar_t *" ", wide character " L'\e0' "-terminated string"
+.BR "    PA_POINTER," "// " "void *"
+.BR "    PA_FLOAT,  " "// " float
+.BR "    PA_DOUBLE, " "// " double
+.BR "    PA_LAST
+.B };
+.PP
+.BR "#define PA_FLAG_LONG_LONG    " "/* ... */"
+.BR "#define PA_FLAG_LONG_DOUBLE  " "/* ... */"
+.BR "#define PA_FLAG_LONG         " "/* ... */"
+.BR "#define PA_FLAG_SHORT        " "/* ... */"
+.BR "#define PA_FLAG_PTR          " "/* ... */"
+.EE
+.SH DESCRIPTION
+These functions serve to extend and/or modify the behavior of the
+.BR printf (3)
+family of functions.
+.SS register_printf_specifier()
+This function registers a custom conversion specifier for the
+.BR printf (3)
+family of functions.
+.TP
+.I spec
+The character which will be used as a conversion specifier in the format string.
+.TP
+.I func
+Callback function that will be executed by the
+.BR printf (3)
+family of functions
+to format the input arguments into the output
+.IR stream .
+.RS
+.TP
+.I stream
+Output stream where the formatted output should be printed.
+This stream transparently represents the output,
+even in the case of functions that write to a string.
+.TP
+.I info
+Structure that holds context information,
+including the modifiers specified in the format string.
+This holds the same contents as in
+.IR arginfo .
+.TP
+.I args
+Array of pointers to the arguments to the
+.BR printf (3)\c
+-like function.
+.RE
+.TP
+.I arginfo
+Callback function that will be executed by the
+.BR printf (3)
+family of functions
+to know how many arguments should be parsed for the custom specifier
+and also their types.
+.RS
+.TP
+.I info
+Structure that holds context information,
+including the modifiers specified in the format string.
+This holds the same contents as in
+.IR func .
+.TP
+.I n
+Number of arguments remaining to be parsed.
+.TP
+.I argtypes
+This array should be set to
+define the type of each of the arguments that will be parsed.
+Each element in the array represents one of the arguments to be parsed,
+in the same order that they are passed to the
+.BR printf (3)\c
+-like function.
+Each element should be set to a base type
+.RB ( PA_ *)
+from the enum above,
+or a custom one,
+and optionally ORed with an appropriate length modifier
+.RB ( PA_FLAG_ *).
+.TP
+.I size
+For user-defined types,
+the size of the type (in bytes) should also be specified through this array.
+Otherwise, leave it unused.
+.RE
+.PP
+.I arginfo
+is called before
+.IR func ,
+and prepares some information needed to call
+.IR func .
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
+.TP
+.B EINVAL
+The specifier was not a valid character.
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
+static int b_printf(FILE *stream, const struct printf_info *info,
+                    const void *const args[]);
+static int b_arginf_sz(const struct printf_info *info,
+                    size_t n, int argtypes[n], int size[n]);
+
+static uintmax_t b_value(const struct printf_info *info,
+                    const void *arg);
+static size_t b_bin_repr(char bin[UINTMAX_WIDTH],
+                    const struct printf_info *info, const void *arg);
+static size_t b_bin_len(const struct printf_info *info,
+                    ptrdiff_t min_len);
+static size_t b_pad_len(const struct printf_info *info,
+                    ptrdiff_t bin_len);
+static ssize_t b_print_prefix(FILE *stream,
+                    const struct printf_info *info);
+static ssize_t b_pad_zeros(FILE *stream, const struct printf_info *info,
+                    ptrdiff_t min_len);
+static ssize_t b_print_number(FILE *stream,
+                    const struct printf_info *info,
+                    const char bin[UINTMAX_WIDTH],
+                    size_t min_len, size_t bin_len);
+static char pad_ch(const struct printf_info *info);
+static ssize_t pad_spaces(FILE *stream, size_t pad_len);
+
+int
+main(void)
+{
+    if (register_printf_specifier('b', b_printf, b_arginf_sz) == -1)
+        err(EXIT_FAILURE, "register_printf_specifier('b', ...)");
+    if (register_printf_specifier('B', b_printf, b_arginf_sz) == -1)
+        err(EXIT_FAILURE, "register_printf_specifier('B', ...)");
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
+b_arginf_sz(const struct printf_info *info, size_t n, int argtypes[n],
+            [[maybe_unused]] int size[n])
+{
+    if (n < 1)
+        return -1;
+
+    if (info\->is_long_double)
+        argtypes[0] = PA_INT | PA_FLAG_LONG_LONG;
+    else if (info\->is_long)
+        argtypes[0] = PA_INT | PA_FLAG_LONG;
+    else
+        argtypes[0] = PA_INT;
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
+    /* short and char are both promoted to int */
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
+.BR asprintf (3),
+.BR printf (3),
+.BR wprintf (3)
-- 
2.37.2

