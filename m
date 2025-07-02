Return-Path: <linux-man+bounces-3235-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B264AF0FFF
	for <lists+linux-man@lfdr.de>; Wed,  2 Jul 2025 11:33:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B43C7167118
	for <lists+linux-man@lfdr.de>; Wed,  2 Jul 2025 09:33:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0776523AE62;
	Wed,  2 Jul 2025 09:33:05 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from cventin.lip.ens-lyon.fr (cventin.lip.ens-lyon.fr [140.77.13.17])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA33222D4F9
	for <linux-man@vger.kernel.org>; Wed,  2 Jul 2025 09:33:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=140.77.13.17
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751448784; cv=none; b=ciXOa+vxJaCvtzx7LY4Zf2cra64sV4s8D8bhHsQ+G5xGUIBtFhqVLyLF7qVHvtPObfgXbwlylG3H8wjtnAld+0xShZPjLZySjofi8pWKtbqYP4vU9UMEXEmAWWNUXxi76IQLGj0V1YeQV6yF4Xm6uhAuaCXqjGhmo7LlyhCByWs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751448784; c=relaxed/simple;
	bh=uoNlevIPRgD8S1JTxNf3WHDMoJ9DVeIWy3pCIVg1lEQ=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=B0KbniwaUnxoDMY1nAU0x6kK9g7Ao5P++MsUgrkx3v3lKFhRHgD+jXu2WsBsvfAInEcfSHQgLNFlsXTHGjcNa0utJdwMcFM/NtNli3ZQv1EYk/+cPeEvNP6ZjsiG5lisIr9I5qHEIorIx1MP41G6yL7N+CHaLxXFBg16gWSkAWk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=vinc17.net; spf=pass smtp.mailfrom=vinc17.net; arc=none smtp.client-ip=140.77.13.17
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=vinc17.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=vinc17.net
Received: from vlefevre by cventin.lip.ens-lyon.fr with local (Exim 4.98.2)
	(envelope-from <vincent@vinc17.net>)
	id 1uWtiO-00000009lf0-42I8;
	Wed, 02 Jul 2025 11:25:16 +0200
Date: Wed, 2 Jul 2025 11:25:16 +0200
From: Vincent Lefevre <vincent@vinc17.net>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH] man/: Replaced reserved exp identifier
Message-ID: <20250702092516.GA2328014@cventin.lip.ens-lyon.fr>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-Mailer-Info: https://www.vinc17.net/mutt/
User-Agent: Mutt/2.2.13+86 (bb2064ae) vl-169878 (2025-02-08)

Since exp is a library function, this is a reserved identifier, which
should not be used as a variable name / parameter.

For some of the replacements:

Like in ISO C23 (new in this revision), for the frexp* and ldexp*
functions, exp is replaced by p, and for the scalb[l]n* functions,
exp is replaced by n (thus ditto for the deprecated scalb* functions).

Signed-off-by: Vincent Lefevre <vincent@vinc17.net>
---
 man/man2/timerfd_create.2 | 16 ++++++++--------
 man/man3/frexp.3          | 20 ++++++++++----------
 man/man3/ldexp.3          | 12 ++++++------
 man/man3/scalb.3          | 26 +++++++++++++-------------
 man/man3/scalbln.3        | 18 +++++++++---------
 5 files changed, 46 insertions(+), 46 deletions(-)

diff --git a/man/man2/timerfd_create.2 b/man/man2/timerfd_create.2
index bcab72f37..a58b3ddfb 100644
--- a/man/man2/timerfd_create.2
+++ b/man/man2/timerfd_create.2
@@ -639,12 +639,12 @@ main(int argc, char *argv[])
 {
     int                fd;
     ssize_t            s;
-    uint64_t           exp, tot_exp, max_exp;
+    uint64_t           ex, tot_ex, max_ex;
     struct timespec    now;
     struct itimerspec  new_value;
 \&
     if (argc != 2 && argc != 4) {
-        fprintf(stderr, "%s init\-secs [interval\-secs max\-exp]\[rs]n",
+        fprintf(stderr, "%s init\-secs [interval\-secs max\-ex]\[rs]n",
                 argv[0]);
         exit(EXIT_FAILURE);
     }
@@ -659,10 +659,10 @@ main(int argc, char *argv[])
     new_value.it_value.tv_nsec = now.tv_nsec;
     if (argc == 2) {
         new_value.it_interval.tv_sec = 0;
-        max_exp = 1;
+        max_ex = 1;
     } else {
         new_value.it_interval.tv_sec = atoi(argv[2]);
-        max_exp = atoi(argv[3]);
+        max_ex = atoi(argv[3]);
     }
     new_value.it_interval.tv_nsec = 0;
 \&
@@ -676,14 +676,14 @@ main(int argc, char *argv[])
     print_elapsed_time();
     printf("timer started\[rs]n");
 \&
-    for (tot_exp = 0; tot_exp < max_exp;) {
-        s = read(fd, &exp, sizeof(uint64_t));
+    for (tot_ex = 0; tot_ex < max_ex;) {
+        s = read(fd, &ex, sizeof(uint64_t));
         if (s != sizeof(uint64_t))
             err(EXIT_FAILURE, "read");
 \&
-        tot_exp += exp;
+        tot_ex += ex;
         print_elapsed_time();
-        printf("read: %" PRIu64 "; total=%" PRIu64 "\[rs]n", exp, tot_exp);
+        printf("read: %" PRIu64 "; total=%" PRIu64 "\[rs]n", ex, tot_ex);
     }
 \&
     exit(EXIT_SUCCESS);
diff --git a/man/man3/frexp.3 b/man/man3/frexp.3
index a741137c2..2812798c3 100644
--- a/man/man3/frexp.3
+++ b/man/man3/frexp.3
@@ -14,9 +14,9 @@ Math library
 .nf
 .B #include <math.h>
 .P
-.BI "double frexp(double " x ", int *" exp );
-.BI "float frexpf(float " x ", int *" exp );
-.BI "long double frexpl(long double " x ", int *" exp );
+.BI "double frexp(double " x ", int *" p );
+.BI "float frexpf(float " x ", int *" p );
+.BI "long double frexpl(long double " x ", int *" p );
 .fi
 .P
 .RS -4
@@ -36,7 +36,7 @@ These functions are used to split the number
 .I x
 into a
 normalized fraction and an exponent which is stored in
-.IR exp .
+.IR p .
 .SH RETURN VALUE
 These functions return the normalized fraction.
 If the argument
@@ -52,20 +52,20 @@ If
 .I x
 is zero, then the normalized fraction is
 zero and zero is stored in
-.IR exp .
+.IR p .
 .P
 If
 .I x
 is a NaN,
 a NaN is returned, and the value of
-.I *exp
+.I *p
 is unspecified.
 .P
 If
 .I x
 is positive infinity (negative infinity),
 positive infinity (negative infinity) is returned, and the value of
-.I *exp
+.I *p
 is unspecified.
 .SH ERRORS
 No errors occur.
@@ -118,12 +118,12 @@ int
 main(int argc, char *argv[])
 {
     double x, r;
-    int exp;
+    int p;
 \&
     x = strtod(argv[1], NULL);
-    r = frexp(x, &exp);
+    r = frexp(x, &p);
 \&
-    printf("frexp(%g, &e) = %g: %g * %d\[ha]%d = %g\[rs]n", x, r, r, 2, exp, x);
+    printf("frexp(%g, &e) = %g: %g * %d\[ha]%d = %g\[rs]n", x, r, r, 2, p, x);
     exit(EXIT_SUCCESS);
 }
 .EE
diff --git a/man/man3/ldexp.3 b/man/man3/ldexp.3
index c2f5289f3..daa1290f5 100644
--- a/man/man3/ldexp.3
+++ b/man/man3/ldexp.3
@@ -13,9 +13,9 @@ Math library
 .nf
 .B #include <math.h>
 .P
-.BI "double ldexp(double " x ", int " exp );
-.BI "float ldexpf(float " x ", int " exp );
-.BI "long double ldexpl(long double " x ", int " exp );
+.BI "double ldexp(double " x ", int " p );
+.BI "float ldexpf(float " x ", int " p );
+.BI "long double ldexpl(long double " x ", int " p );
 .fi
 .P
 .RS -4
@@ -34,13 +34,13 @@ Feature Test Macro Requirements for glibc (see
 These functions return the result of multiplying the floating-point number
 .I x
 by 2 raised to the power
-.IR exp .
+.IR p .
 .SH RETURN VALUE
 On success, these functions return
-.IR "x * (2\[ha]exp)" .
+.IR "x * (2\[ha]p)" .
 .P
 If
-.I exp
+.I p
 is zero, then
 .I x
 is returned.
diff --git a/man/man3/scalb.3 b/man/man3/scalb.3
index 6968931ba..bfa3a1f59 100644
--- a/man/man3/scalb.3
+++ b/man/man3/scalb.3
@@ -15,9 +15,9 @@ Math library
 .nf
 .B #include <math.h>
 .P
-.BI "[[deprecated]] double scalb(double " x ", double " exp );
-.BI "[[deprecated]] float scalbf(float " x ", float " exp );
-.BI "[[deprecated]] long double scalbl(long double " x ", long double " exp );
+.BI "[[deprecated]] double scalb(double " x ", double " n );
+.BI "[[deprecated]] float scalbf(float " x ", float " n );
+.BI "[[deprecated]] long double scalbl(long double " x ", long double " n );
 .fi
 .P
 .RS -4
@@ -47,11 +47,11 @@ by
 .B FLT_RADIX
 (probably 2)
 to the power of
-.IR exp ,
+.IR n ,
 that is:
 .P
 .nf
-    x * FLT_RADIX ** exp
+    x * FLT_RADIX ** n
 .fi
 .P
 The definition of
@@ -65,32 +65,32 @@ On success, these functions return
 *
 .B FLT_RADIX
 **
-.IR exp .
+.IR n .
 .P
 If
 .I x
 or
-.I exp
+.I n
 is a NaN, a NaN is returned.
 .P
 If
 .I x
 is positive infinity (negative infinity),
 and
-.I exp
+.I n
 is not negative infinity,
 positive infinity (negative infinity) is returned.
 .P
 If
 .I x
 is +0 (\-0), and
-.I exp
+.I n
 is not positive infinity, +0 (\-0) is returned.
 .P
 If
 .I x
 is zero, and
-.I exp
+.I n
 is positive infinity,
 a domain error occurs, and
 a NaN is returned.
@@ -99,7 +99,7 @@ If
 .I x
 is an infinity,
 and
-.I exp
+.I n
 is negative infinity,
 a domain error occurs, and
 a NaN is returned.
@@ -126,8 +126,8 @@ when calling these functions.
 .P
 The following errors can occur:
 .TP
-Domain error: \f[I]x\f[] is 0, and \f[I]exp\f[] is positive infinity, \
-or \f[I]x\f[] is positive infinity and \f[I]exp\f[] is negative infinity \
+Domain error: \f[I]x\f[] is 0, and \f[I]n\f[] is positive infinity, \
+or \f[I]x\f[] is positive infinity and \f[I]n\f[] is negative infinity \
 and the other argument is not a NaN
 .I errno
 is set to
diff --git a/man/man3/scalbln.3 b/man/man3/scalbln.3
index e14c1be25..fbda8f4e7 100644
--- a/man/man3/scalbln.3
+++ b/man/man3/scalbln.3
@@ -14,13 +14,13 @@ Math library
 .nf
 .B #include <math.h>
 .P
-.BI "double scalbln(double " x ", long " exp );
-.BI "float scalblnf(float " x ", long " exp );
-.BI "long double scalblnl(long double " x ", long " exp );
+.BI "double scalbln(double " x ", long " n );
+.BI "float scalblnf(float " x ", long " n );
+.BI "long double scalblnl(long double " x ", long " n );
 .P
-.BI "double scalbn(double " x ", int " exp );
-.BI "float scalbnf(float " x ", int " exp );
-.BI "long double scalbnl(long double " x ", int " exp );
+.BI "double scalbn(double " x ", int " n );
+.BI "float scalbnf(float " x ", int " n );
+.BI "long double scalbnl(long double " x ", int " n );
 .fi
 .P
 .RS -4
@@ -51,11 +51,11 @@ by
 .B FLT_RADIX
 (probably 2)
 to the power of
-.IR exp ,
+.IR n ,
 that is:
 .P
 .nf
-    x * FLT_RADIX ** exp
+    x * FLT_RADIX ** n
 .fi
 .P
 The definition of
@@ -69,7 +69,7 @@ On success, these functions return
 *
 .B FLT_RADIX
 **
-.IR exp .
+.IR n .
 .P
 If
 .I x
-- 
2.50.0

