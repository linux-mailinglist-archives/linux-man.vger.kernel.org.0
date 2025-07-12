Return-Path: <linux-man+bounces-3261-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 50777B02D34
	for <lists+linux-man@lfdr.de>; Sat, 12 Jul 2025 23:26:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4EA781AA1D3F
	for <lists+linux-man@lfdr.de>; Sat, 12 Jul 2025 21:26:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EF76B2153CB;
	Sat, 12 Jul 2025 21:26:23 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from joooj.vinc17.net (joooj.vinc17.net [155.133.131.76])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 022171EEE0
	for <linux-man@vger.kernel.org>; Sat, 12 Jul 2025 21:26:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=155.133.131.76
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752355583; cv=none; b=fGzankeUpxUk72+fbwZt1vNTIHypImCPMviCEE3IJ9S+2vu/kQ2ORLaHXe2xR+keZBs8dP6kah7i32zMvwXc8wLYw5ly4vn9MV61K1kzZJ3HYX2I+c19GIjHCT5reGDXKkDfGPyuq/Bsnc/mFeQkoe4+oV4k3Wh+UBROLRNIEYc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752355583; c=relaxed/simple;
	bh=YZqlU1x0FQI1McG8gnwes/b8ts9HuzMjsDyG9bjqvrU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=XObtxi5gsQail5SXfaGmBK77H02T258Iy59Uw+wCaPHfRcA3dG+x7Qp2ePcbdfIuqhpkKffGAi0qKt3HQaDmsrMupb8xOKJMuEbmmsXCJ+h8XJodnMHJ8jcWH/yVpOWDVwTTPclBa8jWrn7iAzg3eoX6olWXy8thKQVtFTYp70Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=vinc17.net; spf=pass smtp.mailfrom=vinc17.net; arc=none smtp.client-ip=155.133.131.76
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=vinc17.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=vinc17.net
Received: from smtp-qaa.vinc17.net (2a02-8428-1b1d-4d01-96a9-491d-7b48-ba31.rev.sfr.net [IPv6:2a02:8428:1b1d:4d01:96a9:491d:7b48:ba31])
	by joooj.vinc17.net (Postfix) with ESMTPSA id 9231E483;
	Sat, 12 Jul 2025 23:23:24 +0200 (CEST)
Received: by qaa.vinc17.org (Postfix, from userid 1000)
	id 891CCCA0166; Sat, 12 Jul 2025 23:23:22 +0200 (CEST)
Date: Sat, 12 Jul 2025 23:23:22 +0200
From: Vincent Lefevre <vincent@vinc17.net>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] man/: Replaced reserved exp identifier
Message-ID: <20250712212322.GE2629@qaa.vinc17.org>
References: <20250702092516.GA2328014@cventin.lip.ens-lyon.fr>
 <hg3uyynudxq2bm2cl2spcm6nshjewbcoaxoxjzamtuzevcwyyw@d2ituhdydzmw>
 <20250703023451.GJ12583@qaa.vinc17.org>
 <awi6dk4jfrdbwizjn63c3j32ibll4exy2tdnqgimz64tdjsn3c@gstmeshesm4r>
 <20250703081717.GK12583@qaa.vinc17.org>
 <yyj5l3eyeppjexobe3mo7m4d3gx75uijklcem5x27e5oda76a7@scxrpc7su4v7>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="sN1LAe/QpUHUmbl1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <yyj5l3eyeppjexobe3mo7m4d3gx75uijklcem5x27e5oda76a7@scxrpc7su4v7>
X-Mailer-Info: https://www.vinc17.net/mutt/
User-Agent: Mutt/2.2.13+86 (bb2064ae) vl-169878 (2025-02-08)


--sN1LAe/QpUHUmbl1
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

Hi Alejandro,

On 2025-07-03 18:28:49 +0200, Alejandro Colomar wrote:
> On Thu, Jul 03, 2025 at 10:17:17AM +0200, Vincent Lefevre wrote:
> > The use of "max" in the name is important as there are several
> > timer expirations and one gives here the maximum number of such
> > expirations. It could also be "max\-expir" or "max\-#expir"[*].
> > What do you think?
> 
> How about max-num-expir?

OK.

I've attached a new version of my patch.

> > > > One could do that (this was more or less my initial idea,
> > > > and I'm wondering why the committee chose p).
> > > 
> > > The committee has chosen many bad names.  Let's not follow them.
> > > Indeed, now that I'm member of the committee, I'm trying to fix that
> > > among other things.
> > 
> > Great. FYI, here's what I sent to the CFP list yesterday, as there
> > are also remaining "exp" in the standard:
> 
> Do you want me to write a proposal?  Or will the CFP write one?

There hasn't been any reaction to my mail in the CFP list.
So perhaps you could write a proposal.

-- 
Vincent Lefèvre <vincent@vinc17.net> - Web: <https://www.vinc17.net/>
100% accessible validated (X)HTML - Blog: <https://www.vinc17.net/blog/>
Work: CR INRIA - computer arithmetic / Pascaline project (LIP, ENS-Lyon)

--sN1LAe/QpUHUmbl1
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename=reserved-exp-2.patch

From d5c365eb0a5c3c14655467e6e528c7360dd5c0a5 Mon Sep 17 00:00:00 2001
From: Vincent Lefevre <vincent@vinc17.net>
Date: Sat, 12 Jul 2025 23:05:00 +0200
Subject: [PATCH] man/: Replaced reserved exp identifier

Since exp is a library function, this is a reserved identifier, which
should not be used as a variable name / parameter.

Signed-off-by: Vincent Lefevre <vincent@vinc17.net>
---
 man/man2/timerfd_create.2 | 17 +++++++++--------
 man/man3/frexp.3          | 20 ++++++++++----------
 man/man3/ldexp.3          | 12 ++++++------
 man/man3/scalb.3          | 26 +++++++++++++-------------
 man/man3/scalbln.3        | 18 +++++++++---------
 5 files changed, 47 insertions(+), 46 deletions(-)

diff --git a/man/man2/timerfd_create.2 b/man/man2/timerfd_create.2
index bcab72f37..7f9d0f039 100644
--- a/man/man2/timerfd_create.2
+++ b/man/man2/timerfd_create.2
@@ -639,12 +639,12 @@ main(int argc, char *argv[])
 {
     int                fd;
     ssize_t            s;
-    uint64_t           exp, tot_exp, max_exp;
+    uint64_t           expir, tot_expir, max_expir;
     struct timespec    now;
     struct itimerspec  new_value;
 \&
     if (argc != 2 && argc != 4) {
-        fprintf(stderr, "%s init\-secs [interval\-secs max\-exp]\[rs]n",
+        fprintf(stderr, "%s init\-secs [interval\-secs max\-num\-expir]\[rs]n",
                 argv[0]);
         exit(EXIT_FAILURE);
     }
@@ -659,10 +659,10 @@ main(int argc, char *argv[])
     new_value.it_value.tv_nsec = now.tv_nsec;
     if (argc == 2) {
         new_value.it_interval.tv_sec = 0;
-        max_exp = 1;
+        max_expir = 1;
     } else {
         new_value.it_interval.tv_sec = atoi(argv[2]);
-        max_exp = atoi(argv[3]);
+        max_expir = atoi(argv[3]);
     }
     new_value.it_interval.tv_nsec = 0;
 \&
@@ -676,14 +676,15 @@ main(int argc, char *argv[])
     print_elapsed_time();
     printf("timer started\[rs]n");
 \&
-    for (tot_exp = 0; tot_exp < max_exp;) {
-        s = read(fd, &exp, sizeof(uint64_t));
+    for (tot_expir = 0; tot_expir < max_expir;) {
+        s = read(fd, &expir, sizeof(uint64_t));
         if (s != sizeof(uint64_t))
             err(EXIT_FAILURE, "read");
 \&
-        tot_exp += exp;
+        tot_expir += expir;
         print_elapsed_time();
-        printf("read: %" PRIu64 "; total=%" PRIu64 "\[rs]n", exp, tot_exp);
+        printf("read: %" PRIu64 "; total=%" PRIu64 "\[rs]n",
+               expir, tot_expir);
     }
 \&
     exit(EXIT_SUCCESS);
diff --git a/man/man3/frexp.3 b/man/man3/frexp.3
index a741137c2..304095d2b 100644
--- a/man/man3/frexp.3
+++ b/man/man3/frexp.3
@@ -14,9 +14,9 @@ Math library
 .nf
 .B #include <math.h>
 .P
-.BI "double frexp(double " x ", int *" exp );
-.BI "float frexpf(float " x ", int *" exp );
-.BI "long double frexpl(long double " x ", int *" exp );
+.BI "double frexp(double " x ", int *" e );
+.BI "float frexpf(float " x ", int *" e );
+.BI "long double frexpl(long double " x ", int *" e );
 .fi
 .P
 .RS -4
@@ -36,7 +36,7 @@ These functions are used to split the number
 .I x
 into a
 normalized fraction and an exponent which is stored in
-.IR exp .
+.IR e .
 .SH RETURN VALUE
 These functions return the normalized fraction.
 If the argument
@@ -52,20 +52,20 @@ If
 .I x
 is zero, then the normalized fraction is
 zero and zero is stored in
-.IR exp .
+.IR e .
 .P
 If
 .I x
 is a NaN,
 a NaN is returned, and the value of
-.I *exp
+.I *e
 is unspecified.
 .P
 If
 .I x
 is positive infinity (negative infinity),
 positive infinity (negative infinity) is returned, and the value of
-.I *exp
+.I *e
 is unspecified.
 .SH ERRORS
 No errors occur.
@@ -118,12 +118,12 @@ int
 main(int argc, char *argv[])
 {
     double x, r;
-    int exp;
+    int e;
 \&
     x = strtod(argv[1], NULL);
-    r = frexp(x, &exp);
+    r = frexp(x, &e);
 \&
-    printf("frexp(%g, &e) = %g: %g * %d\[ha]%d = %g\[rs]n", x, r, r, 2, exp, x);
+    printf("frexp(%g, &e) = %g: %g * %d\[ha]%d = %g\[rs]n", x, r, r, 2, e, x);
     exit(EXIT_SUCCESS);
 }
 .EE
diff --git a/man/man3/ldexp.3 b/man/man3/ldexp.3
index c2f5289f3..6bae52c80 100644
--- a/man/man3/ldexp.3
+++ b/man/man3/ldexp.3
@@ -13,9 +13,9 @@ Math library
 .nf
 .B #include <math.h>
 .P
-.BI "double ldexp(double " x ", int " exp );
-.BI "float ldexpf(float " x ", int " exp );
-.BI "long double ldexpl(long double " x ", int " exp );
+.BI "double ldexp(double " x ", int " e );
+.BI "float ldexpf(float " x ", int " e );
+.BI "long double ldexpl(long double " x ", int " e );
 .fi
 .P
 .RS -4
@@ -34,13 +34,13 @@ Feature Test Macro Requirements for glibc (see
 These functions return the result of multiplying the floating-point number
 .I x
 by 2 raised to the power
-.IR exp .
+.IR e .
 .SH RETURN VALUE
 On success, these functions return
-.IR "x * (2\[ha]exp)" .
+.IR "x * (2\[ha]e)" .
 .P
 If
-.I exp
+.I e
 is zero, then
 .I x
 is returned.
diff --git a/man/man3/scalb.3 b/man/man3/scalb.3
index 6968931ba..2d1ed17c6 100644
--- a/man/man3/scalb.3
+++ b/man/man3/scalb.3
@@ -15,9 +15,9 @@ Math library
 .nf
 .B #include <math.h>
 .P
-.BI "[[deprecated]] double scalb(double " x ", double " exp );
-.BI "[[deprecated]] float scalbf(float " x ", float " exp );
-.BI "[[deprecated]] long double scalbl(long double " x ", long double " exp );
+.BI "[[deprecated]] double scalb(double " x ", double " e );
+.BI "[[deprecated]] float scalbf(float " x ", float " e );
+.BI "[[deprecated]] long double scalbl(long double " x ", long double " e );
 .fi
 .P
 .RS -4
@@ -47,11 +47,11 @@ by
 .B FLT_RADIX
 (probably 2)
 to the power of
-.IR exp ,
+.IR e ,
 that is:
 .P
 .nf
-    x * FLT_RADIX ** exp
+    x * FLT_RADIX ** e
 .fi
 .P
 The definition of
@@ -65,32 +65,32 @@ On success, these functions return
 *
 .B FLT_RADIX
 **
-.IR exp .
+.IR e .
 .P
 If
 .I x
 or
-.I exp
+.I e
 is a NaN, a NaN is returned.
 .P
 If
 .I x
 is positive infinity (negative infinity),
 and
-.I exp
+.I e
 is not negative infinity,
 positive infinity (negative infinity) is returned.
 .P
 If
 .I x
 is +0 (\-0), and
-.I exp
+.I e
 is not positive infinity, +0 (\-0) is returned.
 .P
 If
 .I x
 is zero, and
-.I exp
+.I e
 is positive infinity,
 a domain error occurs, and
 a NaN is returned.
@@ -99,7 +99,7 @@ If
 .I x
 is an infinity,
 and
-.I exp
+.I e
 is negative infinity,
 a domain error occurs, and
 a NaN is returned.
@@ -126,8 +126,8 @@ when calling these functions.
 .P
 The following errors can occur:
 .TP
-Domain error: \f[I]x\f[] is 0, and \f[I]exp\f[] is positive infinity, \
-or \f[I]x\f[] is positive infinity and \f[I]exp\f[] is negative infinity \
+Domain error: \f[I]x\f[] is 0, and \f[I]e\f[] is positive infinity, \
+or \f[I]x\f[] is positive infinity and \f[I]e\f[] is negative infinity \
 and the other argument is not a NaN
 .I errno
 is set to
diff --git a/man/man3/scalbln.3 b/man/man3/scalbln.3
index e14c1be25..1981fdb40 100644
--- a/man/man3/scalbln.3
+++ b/man/man3/scalbln.3
@@ -14,13 +14,13 @@ Math library
 .nf
 .B #include <math.h>
 .P
-.BI "double scalbln(double " x ", long " exp );
-.BI "float scalblnf(float " x ", long " exp );
-.BI "long double scalblnl(long double " x ", long " exp );
+.BI "double scalbln(double " x ", long " e );
+.BI "float scalblnf(float " x ", long " e );
+.BI "long double scalblnl(long double " x ", long " e );
 .P
-.BI "double scalbn(double " x ", int " exp );
-.BI "float scalbnf(float " x ", int " exp );
-.BI "long double scalbnl(long double " x ", int " exp );
+.BI "double scalbn(double " x ", int " e );
+.BI "float scalbnf(float " x ", int " e );
+.BI "long double scalbnl(long double " x ", int " e );
 .fi
 .P
 .RS -4
@@ -51,11 +51,11 @@ by
 .B FLT_RADIX
 (probably 2)
 to the power of
-.IR exp ,
+.IR e ,
 that is:
 .P
 .nf
-    x * FLT_RADIX ** exp
+    x * FLT_RADIX ** e
 .fi
 .P
 The definition of
@@ -69,7 +69,7 @@ On success, these functions return
 *
 .B FLT_RADIX
 **
-.IR exp .
+.IR e .
 .P
 If
 .I x
-- 
2.50.0

--sN1LAe/QpUHUmbl1--

