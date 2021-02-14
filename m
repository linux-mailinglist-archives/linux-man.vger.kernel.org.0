Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B98BC31B03A
	for <lists+linux-man@lfdr.de>; Sun, 14 Feb 2021 12:35:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229714AbhBNLfP (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 14 Feb 2021 06:35:15 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49062 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229576AbhBNLfK (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 14 Feb 2021 06:35:10 -0500
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4576CC061574
        for <linux-man@vger.kernel.org>; Sun, 14 Feb 2021 03:34:30 -0800 (PST)
Received: by mail-wr1-x42c.google.com with SMTP id v7so5155892wrr.12
        for <linux-man@vger.kernel.org>; Sun, 14 Feb 2021 03:34:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=whANEFE+3m0URBB/he9SLjByB9ACj+L+Cb+nWINUMGU=;
        b=QKbiF8wVTmsoK+eqUCa9SOoitMyzDYN6emrGYPWIZScAr5U7MIf7zndBd8rz0pVCp+
         /fseaNKxYYt2+1CKCxRNpHJ1aA5PRaUTZTDPF361EnzwNaD3+FqYJHP21R9o8bRbtKhu
         +eMGW9mFTK6nF2VEL6rPVerSC22hXts9M+tCNHfGzUQRcgi9i9fwulgPVkR1wxSvCyfK
         VL77UDlXxmX5xhF8vpnPVQ1Ejog7mVSJ18Fwo7BRyl+Hv90slkjKjdBP4NWU/p/DZLwA
         D6yAyN5SCyfRXyXJ60jlTsWN2MttG5DhyQuqycIoFGEfhlm8g3UoVcvYbVfFHkFYwW4H
         lM0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=whANEFE+3m0URBB/he9SLjByB9ACj+L+Cb+nWINUMGU=;
        b=HK60/SlXC5+Jp7mN73yWCwaNTa/3S750+hdaJerAW11loWwUT1pWW07TWu8oz+H/Ym
         x7/TU00iT2NqSBpdsvLkWDwc6YRPLbMqgSOhwkvI1LTm2cOx+RsbQm+vafW1FoGTIJSM
         7WRPz/1bf3ByIQtzqZvP5U9JonZUGa8xtM9xWLoo4wR0YKNkRhhxZShmA2WgWE08WesM
         CoKH1rItqTRNnfk2RLyO11ekMve5yV40d1sbfgzL8lBaGigH8lmo2e7JZdXJCbt431jo
         xRJOQ2+2V4EIw3dbqsgNUkF7jRUfWqXVA7/5uAmebCXl0RkcMzwH6dhE06kRGzt4UoKf
         QqKw==
X-Gm-Message-State: AOAM532FioDulzF2OhJ1ppvP2nu+p5RNLAnDmA69BxPdjK4hM2rjojT6
        Hgpy481oKipDI7CnC1m92bA=
X-Google-Smtp-Source: ABdhPJzBHvhyWTVCr6HNXdo1l2561RlC+tci8Z5KPBUUvKV9D5EzAEg52H8io0kxm5vQqXa3xrdtIA==
X-Received: by 2002:a5d:6a4b:: with SMTP id t11mr13537706wrw.291.1613302468680;
        Sun, 14 Feb 2021 03:34:28 -0800 (PST)
Received: from ?IPv6:2001:a61:3a2d:1d01:99ab:4f20:ed7f:402b? ([2001:a61:3a2d:1d01:99ab:4f20:ed7f:402b])
        by smtp.gmail.com with ESMTPSA id e1sm715607wrd.44.2021.02.14.03.34.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 14 Feb 2021 03:34:28 -0800 (PST)
Cc:     mtk.manpages@gmail.com, xenoantares@gmx.net,
        linux-man@vger.kernel.org, Walter Harms <wharms@bfs.de>
Subject: Re: expm1(3p): Mathematical error in given example
To:     Jakub Wilk <jwilk@jwilk.net>,
        Alejandro Colomar <alx.manpages@gmail.com>
References: <1169008777.20210211105918@gmx.net>
 <2c78f3a8-170a-d7dd-929e-e950d5920dd9@gmail.com>
 <20210212094102.ehxzmqvz2chvzgj5@jwilk.net>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <05bbcd63-8d1e-c415-549b-bdcd51d08c66@gmail.com>
Date:   Sun, 14 Feb 2021 12:34:25 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <20210212094102.ehxzmqvz2chvzgj5@jwilk.net>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 2/12/21 10:41 AM, Jakub Wilk wrote:
> * Alejandro Colomar <alx.manpages@gmail.com>, 2021-02-11, 16:49:
>>> In the APPLICATION USAGE section of expm1(3p)[1] the given example is wrong:
>>>
>>> ===8<=== Snip =========================================
>>>
>>> [..] calculations of ((1+x)n-1)/x, namely:
>>>
>>>           expm1(n * log1p(x))/x
>>>
>>> ======== Snap ====================================>8===
>>>
>>> Actually, both expressions are not equal, rather
>>>
>>> expm1(n * log1p(x))/x = ((1+x)**n - 1)/x
>>>
>>> (with a fictional ** as power infix-operator) would be.
> [...]
>> We don't maintain the source of the POSIX manual pages.  You could file 
>> a bug to the Austin Group.
> 
> As Walter noted in another mail, the POSIX sources are correct.
> 
> This is a problem with conversion to the man page format, which should 
> be reported here, not to the Austin Group.

Indeed, it is a problem in the conversion. Or, more precisely, the
POSIX manual pages are using \u...\d to achieve superscripting
for exponentiation, which of course does not render meaningfully
on a terminal. The issue affects 19 pages that I found. I plan
to apply the patch below, which uses the fictional '**' operator
to indicate power-of. Seem okay?

Thanks,

Michael

diff --git a/man-pages-posix-2017/man0p/complex.h.0p b/man-pages-posix-2017/man0p/complex.h.0p
index ccc21a7..da37e54 100644
--- a/man-pages-posix-2017/man0p/complex.h.0p
+++ b/man-pages-posix-2017/man0p/complex.h.0p
@@ -31,7 +31,7 @@ Expands to a constant expression of type
 .BR "const float _Complex" ,
 with the value of the imaginary unit (that is, a number
 .IR i
-such that \fIi\fR\s-3\u2\d\s+3=\-1).
+such that \fIi\fR**2=\-1).
 .IP imaginary 12
 Expands to
 .BR _Imaginary .
diff --git a/man-pages-posix-2017/man0p/stdint.h.0p b/man-pages-posix-2017/man0p/stdint.h.0p
index 5acc838..3ccc8cc 100644
--- a/man-pages-posix-2017/man0p/stdint.h.0p
+++ b/man-pages-posix-2017/man0p/stdint.h.0p
@@ -38,11 +38,11 @@ its value in a pure binary system; the actual type may use more bits
 than that (for example, a 28-bit type could be stored in 32 bits of
 actual storage). An
 .IR N -bit
-signed type has values in the range \-2\s-3\u\fIN\fR\-1\d\s+3 or
-1\-2\s-3\u\fIN\fR\-1\d\s+3 to 2\s-3\u\fIN\fR\-1\d\s+3\-1, while
+signed type has values in the range \-2**(\fIN\fR\-1) or
+1\-2**(\fIN\fR\-1) to 2**(\fIN\fR\-1)\-1, while
 an
 .IR N -bit
-unsigned type has values in the range 0 to 2\s-3\u\fIN\fR\d\s+3\-1.
+unsigned type has values in the range 0 to 2**\fIN\fR\-1.
 .P
 .P
 Types are defined in the following categories:
diff --git a/man-pages-posix-2017/man0p/sys_socket.h.0p b/man-pages-posix-2017/man0p/sys_socket.h.0p
index 02b7e4b..bd6e5b4 100644
--- a/man-pages-posix-2017/man0p/sys_socket.h.0p
+++ b/man-pages-posix-2017/man0p/sys_socket.h.0p
@@ -443,7 +443,7 @@ may also make visible all symbols from
 .IR "The following sections are informative."
 .SH "APPLICATION USAGE"
 To forestall portability problems, it is recommended that applications
-not use values larger than 2\u\s-331\s+3\d \-1 for the
+not use values larger than 2**31 \-1 for the
 .BR socklen_t
 type.
 .P
diff --git a/man-pages-posix-2017/man1p/bc.1p b/man-pages-posix-2017/man1p/bc.1p
index fa8bf2e..2beda41 100644
--- a/man-pages-posix-2017/man1p/bc.1p
+++ b/man-pages-posix-2017/man1p/bc.1p
@@ -650,7 +650,7 @@ if
 is less than 10. For
 .BR obase
 values other than 10, this should be the number of digits needed to
-represent a precision of 10\u\s-3\fIs\fP\s+3\d.
+represent a precision of 10**\fIs\fP.
 .P
 For
 .BR obase
diff --git a/man-pages-posix-2017/man1p/cksum.1p b/man-pages-posix-2017/man1p/cksum.1p
index 73ea9b6..2bf2b05 100644
--- a/man-pages-posix-2017/man1p/cksum.1p
+++ b/man-pages-posix-2017/man1p/cksum.1p
@@ -29,7 +29,8 @@ polynomial:
 .RS 4
 .nf
 
-\fIG\fR(\fIx\fR)=\fIx\fR\u\s-332\s+3\d+\fIx\fR\u\s-326\s+3\d+\fIx\fR\u\s-323\s+3\d+\fIx\fR\u\s-322\s+3\d+\fIx\fR\u\s-316\s+3\d+\fIx\fR\u\s-312\s+3\d+\fIx\fR\u\s-311\s+3\d+\fIx\fR\u\s-310\s+3\d+\fIx\fR\u\s-38\s+3\d+\fIx\fR\u\s-37\s+3\d+\fIx\fR\u\s-35\s+3\d+\fIx\fR\u\s-34\s+3\d+\fIx\fR\u\s-32\s+3\d+\fIx\fR+1
+\fIG\fR(\fIx\fR)=\fIx\fR**32+\fIx\fR**26+\fIx\fR**23+\fIx\fR**22+\fIx\fR**16+\fIx\fR**12+\fIx\fR**11+
+     \fIx\fR**10+\fIx\fR**8+\fIx\fR**7+\fIx\fR**5+\fIx\fR**4+\fIx\fR**2+\fIx\fR+1
 .fi
 .P
 .RE
@@ -58,7 +59,7 @@ capable of representing this integer shall be used.
 .IR M (\c
 .IR x )
 is multiplied by
-.IR x \u\s-332\s+3\d
+.IR x **32
 (that is, shifted left 32 bits) and divided by
 .IR G (\c
 .IR x )
diff --git a/man-pages-posix-2017/man1p/pax.1p b/man-pages-posix-2017/man1p/pax.1p
index cd34bb2..db39781 100644
--- a/man-pages-posix-2017/man1p/pax.1p
+++ b/man-pages-posix-2017/man1p/pax.1p
@@ -3191,7 +3191,7 @@ block value of 10\|240 bytes for
 .IR tar
 was selected because that is the standard block-size value for BSD
 .IR tar .
-The maximum block size of 32\|256 bytes (2\s-3\u15\d\s+3\-512 bytes)
+The maximum block size of 32\|256 bytes (2**15\-512 bytes)
 is the largest multiple of 512 bytes that fits into a signed 16-bit
 tape controller transfer register. There are known limitations in some
 historical systems that would prevent larger blocks from being
diff --git a/man-pages-posix-2017/man3p/cexp.3p b/man-pages-posix-2017/man3p/cexp.3p
index 7d6cd7c..388f449 100644
--- a/man-pages-posix-2017/man3p/cexp.3p
+++ b/man-pages-posix-2017/man3p/cexp.3p
@@ -28,7 +28,7 @@ ISO\ C standard is unintentional. This volume of POSIX.1\(hy2017 defers to the I
 .P
 These functions shall compute the complex exponent of
 .IR z ,
-defined as \fIe\s-3\uz\d\s+3\fR.
+defined as \fIe**z\fR.
 .SH "RETURN VALUE"
 These functions shall return the complex exponential value of
 .IR z .
diff --git a/man-pages-posix-2017/man3p/cpow.3p b/man-pages-posix-2017/man3p/cpow.3p
index bb53e62..e0d673d 100644
--- a/man-pages-posix-2017/man3p/cpow.3p
+++ b/man-pages-posix-2017/man3p/cpow.3p
@@ -28,7 +28,7 @@ ISO\ C standard. Any conflict between the requirements described here and the
 ISO\ C standard is unintentional. This volume of POSIX.1\(hy2017 defers to the ISO\ C standard.
 .P
 These functions shall compute the complex power function
-\fIx\s-3\uy\d\s+3\fR, with a branch cut for the first parameter along
+\fIx**y\fR, with a branch cut for the first parameter along
 the negative real axis.
 .SH "RETURN VALUE"
 These functions shall return the complex power function value.
diff --git a/man-pages-posix-2017/man3p/drand48.3p b/man-pages-posix-2017/man3p/drand48.3p
index 7157971..29c58a0 100644
--- a/man-pages-posix-2017/man3p/drand48.3p
+++ b/man-pages-posix-2017/man3p/drand48.3p
@@ -52,14 +52,14 @@ The
 and
 \fInrand48\fR()
 functions shall return non-negative, long integers, uniformly
-distributed over the interval [0,2\u\s-331\s+3\d).
+distributed over the interval [0,2**31).
 .P
 The
 \fImrand48\fR()
 and
 \fIjrand48\fR()
 functions shall return signed long integers uniformly distributed over
-the interval [\-2\u\s-331\s+3\d,2\u\s-331\s+3\d).
+the interval [\-2**31,2**31).
 .P
 The
 \fIsrand48\fR(),
diff --git a/man-pages-posix-2017/man3p/exp2.3p b/man-pages-posix-2017/man3p/exp2.3p
index 23cb8bf..c49f455 100644
--- a/man-pages-posix-2017/man3p/exp2.3p
+++ b/man-pages-posix-2017/man3p/exp2.3p
@@ -39,7 +39,7 @@ is non-zero or \fIfetestexcept\fR(FE_INVALID | FE_DIVBYZERO |
 FE_OVERFLOW | FE_UNDERFLOW) is non-zero, an error has occurred.
 .SH "RETURN VALUE"
 Upon successful completion, these functions shall return
-2\fI\s-3\ux\d\s+3\fR.
+2\fI**x\fR.
 .P
 If the correct value would cause overflow, a range error shall occur
 and
diff --git a/man-pages-posix-2017/man3p/expm1.3p b/man-pages-posix-2017/man3p/expm1.3p
index 8db897e..5fb15c1 100644
--- a/man-pages-posix-2017/man3p/expm1.3p
+++ b/man-pages-posix-2017/man3p/expm1.3p
@@ -26,7 +26,7 @@ The functionality described on this reference page is aligned with the
 ISO\ C standard. Any conflict between the requirements described here and the
 ISO\ C standard is unintentional. This volume of POSIX.1\(hy2017 defers to the ISO\ C standard.
 .P
-These functions shall compute \fIe\u\s-3x\s+3\d\fR\-1.0.
+These functions shall compute \fIe**x\fR\-1.0.
 .P
 An application wishing to check for error situations should set
 .IR errno
@@ -38,7 +38,7 @@ is non-zero or \fIfetestexcept\fR(FE_INVALID | FE_DIVBYZERO |
 FE_OVERFLOW | FE_UNDERFLOW) is non-zero, an error has occurred.
 .SH "RETURN VALUE"
 Upon successful completion, these functions return
-\fIe\s-3\ux\d\s+3\fR\-1.0.
+\fIe**x\fR\-1.0.
 .P
 If the correct value would cause overflow, a range error shall occur
 and
@@ -131,7 +131,7 @@ The
 and
 \fIlog1p\fR()
 functions are useful for financial calculations of
-((1+\fIx\fR)\u\s-3\fIn\fR\s+3\d\-1)/\fIx\fR, namely:
+((1+\fIx\fR)**\fIn\fR\-1)/\fIx\fR, namely:
 .sp
 .RS 4
 .nf
diff --git a/man-pages-posix-2017/man3p/hypot.3p b/man-pages-posix-2017/man3p/hypot.3p
index 095a572..f099eed 100644
--- a/man-pages-posix-2017/man3p/hypot.3p
+++ b/man-pages-posix-2017/man3p/hypot.3p
@@ -27,8 +27,8 @@ ISO\ C standard. Any conflict between the requirements described here and the
 ISO\ C standard is unintentional. This volume of POSIX.1\(hy2017 defers to the ISO\ C standard.
 .P
 These functions shall compute the value of the square root of
-.IR x \s-3\u2\d\s+3+\c
-.IR y \s-3\u2\d\s+3
+.IR x **2+\c
+.IR y **2
 without undue overflow or underflow.
 .P
 An application wishing to check for error situations should set
diff --git a/man-pages-posix-2017/man3p/initstate.3p b/man-pages-posix-2017/man3p/initstate.3p
index dcb3cc0..2683bc5 100644
--- a/man-pages-posix-2017/man3p/initstate.3p
+++ b/man-pages-posix-2017/man3p/initstate.3p
@@ -30,13 +30,13 @@ function shall use a non-linear additive feedback random-number
 generator employing a default state array size of 31
 .BR long
 integers to return successive pseudo-random numbers in the range from 0
-to 2\u\s-331\s+3\d\-1. The period of this random-number generator is
-approximately 16 x (2\s-3\u31\d\s+3\-\fR1). The size of the state
+to 2**31\-1. The period of this random-number generator is
+approximately 16 x (2**31\-\fR1). The size of the state
 array determines the period of the random-number generator. Increasing
 the state array size shall increase the period.
 .P
 With 256 bytes of state information, the period of the random-number
-generator shall be greater than 2\s-3\u69\d\s+3.
+generator shall be greater than 2**69.
 .P
 Like
 \fIrand\fR(),
diff --git a/man-pages-posix-2017/man3p/ldexp.3p b/man-pages-posix-2017/man3p/ldexp.3p
index 86196d9..63b718a 100644
--- a/man-pages-posix-2017/man3p/ldexp.3p
+++ b/man-pages-posix-2017/man3p/ldexp.3p
@@ -27,7 +27,7 @@ ISO\ C standard. Any conflict between the requirements described here and the
 ISO\ C standard is unintentional. This volume of POSIX.1\(hy2017 defers to the ISO\ C standard.
 .P
 These functions shall compute the quantity
-\fIx\fR\ *\ 2\u\s-3\fIexp\fR\s+3\d.
+\fIx\fR\ *\ 2**\fIexp\fR.
 .P
 An application wishing to check for error situations should set
 .IR errno
diff --git a/man-pages-posix-2017/man3p/logb.3p b/man-pages-posix-2017/man3p/logb.3p
index 1f1b4de..09bb1c6 100644
--- a/man-pages-posix-2017/man3p/logb.3p
+++ b/man-pages-posix-2017/man3p/logb.3p
@@ -47,7 +47,7 @@ finite positive
 .RS 4
 .nf
 
-1 <= \fIx\fP * FLT_RADIX\s-3\u-logb(x)\d\s+3 < FLT_RADIX
+1 <= \fIx\fP * FLT_RADIX**(-logb(x)) < FLT_RADIX
 .fi
 .P
 .RE
diff --git a/man-pages-posix-2017/man3p/pow.3p b/man-pages-posix-2017/man3p/pow.3p
index 1e28125..4cbee11 100644
--- a/man-pages-posix-2017/man3p/pow.3p
+++ b/man-pages-posix-2017/man3p/pow.3p
@@ -30,7 +30,7 @@ These functions shall compute the value of
 .IR x
 raised to the power
 .IR y ,
-.IR x\u\s-3y\s+3\d .
+.IR x**y .
 If
 .IR x
 is negative, the application shall ensure that
diff --git a/man-pages-posix-2017/man3p/rand.3p b/man-pages-posix-2017/man3p/rand.3p
index 63c9cdf..889bac0 100644
--- a/man-pages-posix-2017/man3p/rand.3p
+++ b/man-pages-posix-2017/man3p/rand.3p
@@ -35,7 +35,7 @@ The
 function shall compute a sequence of pseudo-random integers in the
 range [0,\c
 {RAND_MAX}]
-with a period of at least 2\u\s-332\s0\d.
+with a period of at least 2**32
 .P
 The
 \fIrand\fR()
diff --git a/man-pages-posix-2017/man3p/remquo.3p b/man-pages-posix-2017/man3p/remquo.3p
index 1a609f1..00f4f23 100644
--- a/man-pages-posix-2017/man3p/remquo.3p
+++ b/man-pages-posix-2017/man3p/remquo.3p
@@ -41,7 +41,7 @@ functions, respectively. In the object pointed to by
 they store a value whose sign is the sign of
 .IR x /\c
 .IR y
-and whose magnitude is congruent modulo 2\fI\s-3\un\d\s+3\fR to the
+and whose magnitude is congruent modulo 2\fI**n\fR to the
 magnitude of the integral quotient of
 .IR x /\c
 .IR y ,
diff --git a/man-pages-posix-2017/man3p/scalbln.3p b/man-pages-posix-2017/man3p/scalbln.3p
index 788ce42..13fa729 100644
--- a/man-pages-posix-2017/man3p/scalbln.3p
+++ b/man-pages-posix-2017/man3p/scalbln.3p
@@ -32,8 +32,8 @@ The functionality described on this reference page is aligned with the
 ISO\ C standard. Any conflict between the requirements described here and the
 ISO\ C standard is unintentional. This volume of POSIX.1\(hy2017 defers to the ISO\ C standard.
 .P
-These functions shall compute \fIx\fR\ *\ FLT_RADIX\fI\s-3\un\d\s+3\fR
-efficiently, not normally by computing FLT_RADIX\fI\s-3\un\d\s+3\fR
+These functions shall compute \fIx\fR\ *\ FLT_RADIX**\fIn\fR
+efficiently, not normally by computing FLT_RADIX**\fIn\fR
 explicitly.
 .P
 An application wishing to check for error situations should set
@@ -46,7 +46,7 @@ is non-zero or \fIfetestexcept\fR(FE_INVALID | FE_DIVBYZERO |
 FE_OVERFLOW | FE_UNDERFLOW) is non-zero, an error has occurred.
 .SH "RETURN VALUE"
 Upon successful completion, these functions shall return
-\fIx\fR\ *\ FLT_RADIX\fI\s-3\un\d\s+3\fR.
+\fIx\fR\ *\ FLT_RADIX**\fIn\fR.
 .P
 If the result would cause overflow, a range error shall occur and these
 functions shall return \(+-HUGE_VAL, \(+-HUGE_VALF, and \(+-HUGE_VALL



-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
