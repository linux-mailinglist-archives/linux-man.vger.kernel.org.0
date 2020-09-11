Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D93C626696F
	for <lists+linux-man@lfdr.de>; Fri, 11 Sep 2020 22:14:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725811AbgIKUOk (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 11 Sep 2020 16:14:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50658 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725787AbgIKUOi (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 11 Sep 2020 16:14:38 -0400
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com [IPv6:2a00:1450:4864:20::343])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D2F7EC061573
        for <linux-man@vger.kernel.org>; Fri, 11 Sep 2020 13:14:37 -0700 (PDT)
Received: by mail-wm1-x343.google.com with SMTP id x23so5476826wmi.3
        for <linux-man@vger.kernel.org>; Fri, 11 Sep 2020 13:14:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=vMOr7Jr6UFXLEynQKXXwRC8LdaPpQ3nfZiWHeqk3pVM=;
        b=A+Wstk6ArhrD5BxzYOwntA+FR246H5miwUECjuv6P6c2n5KTAiw93WBm8bqpYI0C8e
         xsefTBb9SIRUcU1oCLpUlEyLpvJtZFtJoonNc/4bCM1qGgs6U3w3kBWnLUuznBxd2Klw
         5Q4/FVL8M2oYCMlofiuHNk02EZu3VtgvOpQK+glyfF5B7d8xxJ5x92ZHWO7QB42bkz50
         ukY4DBzOKbG/LcUSRYnzfJJXGiDDtw8JhO7JYTV0h89kSyZi5MyTuVQlfkWd0UayRG/w
         iczUCwwKiGsEGjowO+Wtz1D+PVjiZgRISx+sb68vCDyf8gVzbqiODyJwJO77NykKZY7I
         WY6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=vMOr7Jr6UFXLEynQKXXwRC8LdaPpQ3nfZiWHeqk3pVM=;
        b=hwNFD1BRZNy9NIgGNN17kfe8nlWZw6tHTZPhgaYFrUWC6Hcz5FYrWnzPB21yeFGAai
         hK20vZ9FuwtpKniLdD+wKG0RgqlRHc1SQa9BlJfwixacFmZ6jkheW5Uma605fQQGNAUo
         FsfRKxX1gjkTQc/XSEdqrDGqzPUk+nryHgjYcTFVKeBO0lWDW2S8Ia0VHBK5BDMzyarI
         mfuv5L4wSaDORBP0oeGp7DC1wSYqVWzfvxs7Mgiyq9lmzkInVjhD+eGOboL6fXTRD5AE
         mvd3ppGsGveerQMjVLYOrcJxp7gXT1m1dNojLycE8wcNlRfmev0mYyyRbvRcGqLglNFP
         AV/A==
X-Gm-Message-State: AOAM530TR2izdF4qqzeEyKth27NXaK0dV+IRuVrhHPoSIJy8bkOhurtA
        b+I1LuNwICnMvk0XsRb3xIGY45pkYRI=
X-Google-Smtp-Source: ABdhPJzYRxfSA3R9EuXQc4XwZHmcb9VyrpvHw8WaeO57TYtYmYbgJ3wQX/c505klaMQsnTwqeWqHZA==
X-Received: by 2002:a1c:62d4:: with SMTP id w203mr3545435wmb.146.1599855276396;
        Fri, 11 Sep 2020 13:14:36 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id w7sm6383440wrm.92.2020.09.11.13.14.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Sep 2020 13:14:35 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org,
        Alejandro Colomar <colomar.6.4.3@gmail.com>
Subject: [PATCH] msgctl.2, outb.2, abs.3, dl_iterate_phdr.3, drand48.3, drand48_r.3, encrypt.3, ffs.3, lrint.3, lround.3, ntp_gettime.3, printf.3, random.3, scalbln.3, scanf.3, strtol.3, stroul.3, utmp.5, feature_test_macros.7, rtld-audit.7: Omit 'int' keyword for 'short', 'long' and 'long long' types, both signed and 'unsigned'
Date:   Fri, 11 Sep 2020 22:12:10 +0200
Message-Id: <20200911201209.9963-1-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

For consistency.

The types are written both with and without the redundant 'int' keyword
all over the man-pages.  However, the most used form, by far, is the one
without 'int'.

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man2/msgctl.2              |  2 +-
 man2/outb.2                | 48 +++++++++++++++++++-------------------
 man3/abs.3                 |  4 ++--
 man3/dl_iterate_phdr.3     |  4 ++--
 man3/drand48.3             | 10 ++++----
 man3/drand48_r.3           | 16 ++++++-------
 man3/encrypt.3             | 20 ++++++++--------
 man3/ffs.3                 |  4 ++--
 man3/lrint.3               | 12 +++++-----
 man3/lround.3              | 12 +++++-----
 man3/ntp_gettime.3         |  8 +++----
 man3/printf.3              | 20 ++++++++--------
 man3/random.3              |  6 ++---
 man3/scalbln.3             |  6 ++---
 man3/scanf.3               | 10 ++++----
 man3/strtol.3              |  6 ++---
 man3/strtoul.3             | 12 +++++-----
 man5/utmp.5                |  4 ++--
 man7/feature_test_macros.7 |  2 +-
 man7/rtld-audit.7          |  4 ++--
 20 files changed, 105 insertions(+), 105 deletions(-)

diff --git a/man2/msgctl.2 b/man2/msgctl.2
index 507c21d02..ebb4631a1 100644
--- a/man2/msgctl.2
+++ b/man2/msgctl.2
@@ -244,7 +244,7 @@ struct msginfo {
                     unused within kernel */
     int msgtql;  /* Maximum number of messages on all queues
                     in system; unused within kernel */
-    unsigned short int msgseg;
+    unsigned short msgseg;
                  /* Maximum number of segments;
                     unused within kernel */
 };
diff --git a/man2/outb.2 b/man2/outb.2
index 429644087..6abe00b84 100644
--- a/man2/outb.2
+++ b/man2/outb.2
@@ -32,32 +32,32 @@ outb_p, outw_p, outl_p, inb_p, inw_p, inl_p \- port I/O
 .nf
 .B #include <sys/io.h>
 .PP
-.BI "unsigned char inb(unsigned short int " port );
-.BI "unsigned char inb_p(unsigned short int " port );
-.BI "unsigned short int inw(unsigned short int " port );
-.BI "unsigned short int inw_p(unsigned short int " port );
-.BI "unsigned int inl(unsigned short int " port );
-.BI "unsigned int inl_p(unsigned short int " port );
+.BI "unsigned char inb(unsigned short " port );
+.BI "unsigned char inb_p(unsigned short " port );
+.BI "unsigned short inw(unsigned short " port );
+.BI "unsigned short inw_p(unsigned short " port );
+.BI "unsigned int inl(unsigned short " port );
+.BI "unsigned int inl_p(unsigned short " port );
 .PP
-.BI "void outb(unsigned char " value ", unsigned short int " port );
-.BI "void outb_p(unsigned char " value ", unsigned short int " port );
-.BI "void outw(unsigned short int " value ", unsigned short int " port );
-.BI "void outw_p(unsigned short int " value ", unsigned short int " port );
-.BI "void outl(unsigned int " value ", unsigned short int " port );
-.BI "void outl_p(unsigned int " value ", unsigned short int " port );
+.BI "void outb(unsigned char " value ", unsigned short " port );
+.BI "void outb_p(unsigned char " value ", unsigned short " port );
+.BI "void outw(unsigned short " value ", unsigned short " port );
+.BI "void outw_p(unsigned short " value ", unsigned short " port );
+.BI "void outl(unsigned int " value ", unsigned short " port );
+.BI "void outl_p(unsigned int " value ", unsigned short " port );
 .PP
-.BI "void insb(unsigned short int " port ", void *" addr ,
-.BI "           unsigned long int " count );
-.BI "void insw(unsigned short int " port ", void *" addr ,
-.BI "           unsigned long int " count );
-.BI "void insl(unsigned short int " port ", void *" addr ,
-.BI "           unsigned long int " count );
-.BI "void outsb(unsigned short int " port ", const void *" addr ,
-.BI "           unsigned long int " count );
-.BI "void outsw(unsigned short int " port ", const void *" addr ,
-.BI "           unsigned long int " count );
-.BI "void outsl(unsigned short int " port ", const void *" addr ,
-.BI "           unsigned long int " count );
+.BI "void insb(unsigned short " port ", void *" addr ,
+.BI "           unsigned long " count );
+.BI "void insw(unsigned short " port ", void *" addr ,
+.BI "           unsigned long " count );
+.BI "void insl(unsigned short " port ", void *" addr ,
+.BI "           unsigned long " count );
+.BI "void outsb(unsigned short " port ", const void *" addr ,
+.BI "           unsigned long " count );
+.BI "void outsw(unsigned short " port ", const void *" addr ,
+.BI "           unsigned long " count );
+.BI "void outsl(unsigned short " port ", const void *" addr ,
+.BI "           unsigned long " count );
 .fi
 .SH DESCRIPTION
 This family of functions is used to do low-level port input and output.
diff --git a/man3/abs.3 b/man3/abs.3
index af9c5b2d6..6fc793b31 100644
--- a/man3/abs.3
+++ b/man3/abs.3
@@ -39,8 +39,8 @@ abs, labs, llabs, imaxabs \- compute the absolute value of an integer
 .B #include <stdlib.h>
 .PP
 .BI "int abs(int " j );
-.BI "long int labs(long int " j );
-.BI "long long int llabs(long long int " j );
+.BI "long labs(long " j );
+.BI "long long llabs(long long " j );
 
 .B #include <inttypes.h>
 .PP
diff --git a/man3/dl_iterate_phdr.3 b/man3/dl_iterate_phdr.3
index f1bd3612f..62a3596a3 100644
--- a/man3/dl_iterate_phdr.3
+++ b/man3/dl_iterate_phdr.3
@@ -89,10 +89,10 @@ struct dl_phdr_info {
        argument passed to the dl_iterate_phdr callback to determine
        whether or not each later member is available.  */
 
-    unsigned long long int dlpi_adds;
+    unsigned long long dlpi_adds;
                     /* Incremented when a new object may
                        have been added */
-    unsigned long long int dlpi_subs;
+    unsigned long long dlpi_subs;
                     /* Incremented when an object may
                        have been removed */
     size_t dlpi_tls_modid;
diff --git a/man3/drand48.3 b/man3/drand48.3
index ed4fdaf3f..c819b9e2f 100644
--- a/man3/drand48.3
+++ b/man3/drand48.3
@@ -39,15 +39,15 @@ lcong48 \- generate uniformly distributed pseudo-random numbers
 .PP
 .BI "double erand48(unsigned short " xsubi [3]);
 .PP
-.B long int lrand48(void);
+.B long lrand48(void);
 .PP
-.BI "long int nrand48(unsigned short " xsubi [3]);
+.BI "long nrand48(unsigned short " xsubi [3]);
 .PP
-.B long int mrand48(void);
+.B long mrand48(void);
 .PP
-.BI "long int jrand48(unsigned short " xsubi [3]);
+.BI "long jrand48(unsigned short " xsubi [3]);
 .PP
-.BI "void srand48(long int " seedval );
+.BI "void srand48(long " seedval );
 .PP
 .BI "unsigned short *seed48(unsigned short " seed16v [3]);
 .PP
diff --git a/man3/drand48_r.3 b/man3/drand48_r.3
index de242331c..84c79d726 100644
--- a/man3/drand48_r.3
+++ b/man3/drand48_r.3
@@ -38,22 +38,22 @@ srand48_r, seed48_r, lcong48_r
 .BI "int erand48_r(unsigned short " xsubi [3] ","
 .BI "              struct drand48_data *"buffer ", double *" result ");"
 .PP
-.BI "int lrand48_r(struct drand48_data *" buffer ", long int *" result );
+.BI "int lrand48_r(struct drand48_data *" buffer ", long *" result );
 .PP
-.BI "int nrand48_r(unsigned short int " xsubi[3] ","
-.BI "              struct drand48_data *"buffer ", long int *" result ");"
+.BI "int nrand48_r(unsigned short " xsubi[3] ","
+.BI "              struct drand48_data *"buffer ", long *" result ");"
 .PP
-.BI "int mrand48_r(struct drand48_data *" buffer ",long int *" result ");"
+.BI "int mrand48_r(struct drand48_data *" buffer ",long *" result ");"
 .PP
-.BI "int jrand48_r(unsigned short int " xsubi[3] ","
-.BI "              struct drand48_data *" buffer ", long int *" result ");"
+.BI "int jrand48_r(unsigned short " xsubi[3] ","
+.BI "              struct drand48_data *" buffer ", long *" result ");"
 .PP
 .BI "int srand48_r(long int " seedval ", struct drand48_data *" buffer ");"
 .PP
-.BI "int seed48_r(unsigned short int " seed16v[3] ","
+.BI "int seed48_r(unsigned short " seed16v[3] ","
 .BI "             struct drand48_data *" buffer ");"
 .PP
-.BI "int lcong48_r(unsigned short int " param[7] ","
+.BI "int lcong48_r(unsigned short " param[7] ","
 .BI "              struct drand48_data *" buffer ");"
 .fi
 .PP
diff --git a/man3/encrypt.3 b/man3/encrypt.3
index ea4cbe96f..877248d50 100644
--- a/man3/encrypt.3
+++ b/man3/encrypt.3
@@ -89,16 +89,16 @@ structure to hold the key data:
 .in +4n
 .EX
 struct crypt_data {
-    char     keysched[16 * 8];
-    char     sb0[32768];
-    char     sb1[32768];
-    char     sb2[32768];
-    char     sb3[32768];
-    char     crypt_3_buf[14];
-    char     current_salt[2];
-    long int current_saltbits;
-    int      direction;
-    int      initialized;
+    char keysched[16 * 8];
+    char sb0[32768];
+    char sb1[32768];
+    char sb2[32768];
+    char sb3[32768];
+    char crypt_3_buf[14];
+    char current_salt[2];
+    long current_saltbits;
+    int  direction;
+    int  initialized;
 };
 .EE
 .in
diff --git a/man3/ffs.3 b/man3/ffs.3
index a90087b45..88c407b79 100644
--- a/man3/ffs.3
+++ b/man3/ffs.3
@@ -41,9 +41,9 @@ ffs, ffsl, ffsll \- find first bit set in a word
 .PP
 .B #include <string.h>
 .PP
-.BI "int ffsl(long int " i );
+.BI "int ffsl(long " i );
 .PP
-.BI "int ffsll(long long int " i );
+.BI "int ffsll(long long " i );
 .fi
 .PP
 .in -4n
diff --git a/man3/lrint.3 b/man3/lrint.3
index cee7d73b7..43e8b5012 100644
--- a/man3/lrint.3
+++ b/man3/lrint.3
@@ -31,13 +31,13 @@ lrint, lrintf, lrintl, llrint, llrintf, llrintl \- round to nearest integer
 .nf
 .B #include <math.h>
 .PP
-.BI "long int lrint(double " x );
-.BI "long int lrintf(float " x );
-.BI "long int lrintl(long double " x );
+.BI "long lrint(double " x );
+.BI "long lrintf(float " x );
+.BI "long lrintl(long double " x );
 .PP
-.BI "long long int llrint(double " x );
-.BI "long long int llrintf(float " x );
-.BI "long long int llrintl(long double " x );
+.BI "long long llrint(double " x );
+.BI "long long llrintf(float " x );
+.BI "long long llrintl(long double " x );
 .fi
 .PP
 Link with \fI\-lm\fP.
diff --git a/man3/lround.3 b/man3/lround.3
index 066ba7d79..6e58cbc10 100644
--- a/man3/lround.3
+++ b/man3/lround.3
@@ -32,13 +32,13 @@ nearest integer
 .nf
 .B #include <math.h>
 .PP
-.BI "long int lround(double " x );
-.BI "long int lroundf(float " x );
-.BI "long int lroundl(long double " x );
+.BI "long lround(double " x );
+.BI "long lroundf(float " x );
+.BI "long lroundl(long double " x );
 .PP
-.BI "long long int llround(double " x );
-.BI "long long int llroundf(float " x );
-.BI "long long int llroundl(long double " x );
+.BI "long long llround(double " x );
+.BI "long long llroundf(float " x );
+.BI "long long llroundl(long double " x );
 .fi
 .PP
 Link with \fI\-lm\fP.
diff --git a/man3/ntp_gettime.3 b/man3/ntp_gettime.3
index 87d87365e..f83d6043e 100644
--- a/man3/ntp_gettime.3
+++ b/man3/ntp_gettime.3
@@ -41,10 +41,10 @@ argument, a structure of the following type:
 .in +4n
 .EX
 struct ntptimeval {
-    struct timeval time;        /* Current time */
-    long int maxerror;          /* Maximum error */
-    long int esterror;          /* Estimated error */
-    long int tai;               /* TAI offset */
+    struct timeval time;    /* Current time */
+    long maxerror;          /* Maximum error */
+    long esterror;          /* Estimated error */
+    long tai;               /* TAI offset */
 
     /* Further padding bytes allowing for future expansion */
 };
diff --git a/man3/printf.3 b/man3/printf.3
index d3510f7df..ce17eaf8e 100644
--- a/man3/printf.3
+++ b/man3/printf.3
@@ -467,24 +467,24 @@ argument.
 .TP
 .B h
 A following integer conversion corresponds to a
-.I short int
+.I short
 or
-.I unsigned short int
+.I unsigned short
 argument, or a following
 .B n
 conversion corresponds to a pointer to a
-.I short int
+.I short
 argument.
 .TP
 .B l
 (ell) A following integer conversion corresponds to a
-.I long int
+.I long
 or
-.I unsigned long int
+.I unsigned long
 argument, or a following
 .B n
 conversion corresponds to a pointer to a
-.I long int
+.I long
 argument, or a following
 .B c
 conversion corresponds to a
@@ -498,13 +498,13 @@ argument.
 .B ll
 (ell-ell).
 A following integer conversion corresponds to a
-.I long long int
+.I long long
 or
-.I unsigned long long int
+.I unsigned long long
 argument, or a following
 .B n
 conversion corresponds to a pointer to a
-.I long long int
+.I long long
 argument.
 .TP
 .B q
@@ -950,7 +950,7 @@ with C99.
 .\" locale, "%m$" and "*m$".
 .\" It knows about the length modifiers \fBh\fP, \fBl\fP, \fBL\fP,
 .\" \fBZ\fP, and \fBq\fP, but accepts \fBL\fP and \fBq\fP
-.\" both for \fIlong double\fP and for \fIlong long int\fP (this is a bug).
+.\" both for \fIlong double\fP and for \fIlong long\fP (this is a bug).
 .\" It no longer recognizes \fBF\fP, \fBD\fP, \fBO\fP, and \fBU\fP,
 .\" but adds the conversion character
 .\" .BR m ,
diff --git a/man3/random.3 b/man3/random.3
index e74ece307..9baeff4f7 100644
--- a/man3/random.3
+++ b/man3/random.3
@@ -37,11 +37,11 @@ random, srandom, initstate, setstate \- random number generator
 .nf
 .B #include <stdlib.h>
 .PP
-.B long int random(void);
+.B long random(void);
 .PP
-.BI "void srandom(unsigned int " seed );
+.BI "void srandom(unsigned " seed );
 .PP
-.BI "char *initstate(unsigned int " seed ", char *" state ", size_t " n );
+.BI "char *initstate(unsigned " seed ", char *" state ", size_t " n );
 .PP
 .BI "char *setstate(char *" state );
 .fi
diff --git a/man3/scalbln.3 b/man3/scalbln.3
index b5862b909..b8df04b27 100644
--- a/man3/scalbln.3
+++ b/man3/scalbln.3
@@ -31,11 +31,11 @@ multiply floating-point number by integral power of radix
 .SH SYNOPSIS
 .B #include <math.h>
 .PP
-.BI "double scalbln(double " x ", long int " exp );
+.BI "double scalbln(double " x ", long " exp );
 .br
-.BI "float scalblnf(float " x ", long int " exp );
+.BI "float scalblnf(float " x ", long " exp );
 .br
-.BI "long double scalblnl(long double " x ", long int " exp );
+.BI "long double scalblnl(long double " x ", long " exp );
 .PP
 .BI "double scalbn(double " x ", int " exp );
 .br
diff --git a/man3/scanf.3 b/man3/scanf.3
index b30419743..7c69829fb 100644
--- a/man3/scanf.3
+++ b/man3/scanf.3
@@ -247,7 +247,7 @@ type modifier is used with integer conversions such as
 to specify that the corresponding
 .I pointer
 argument refers to a
-.I "long int"
+.I "long"
 rather than a pointer to an
 .IR int .
 .TP
@@ -293,9 +293,9 @@ can appear in a conversion specification:
 Indicates that the conversion will be one of
 \fBd\fP, \fBi\fP, \fBo\fP, \fBu\fP, \fBx\fP, \fBX\fP, or \fBn\fP
 and the next pointer is a pointer to a
-.I short int
+.I short
 or
-.I unsigned short int
+.I unsigned short
 (rather than
 .IR int ).
 .TP
@@ -320,9 +320,9 @@ This modifier was introduced in C99.
 Indicates either that the conversion will be one of
 \fBd\fP, \fBi\fP, \fBo\fP, \fBu\fP, \fBx\fP, \fBX\fP, or \fBn\fP
 and the next pointer is a pointer to a
-.I long int
+.I long
 or
-.I unsigned long int
+.I unsigned long
 (rather than
 .IR int ),
 or that the conversion will be one of
diff --git a/man3/strtol.3 b/man3/strtol.3
index 269847aa8..19b1b85b8 100644
--- a/man3/strtol.3
+++ b/man3/strtol.3
@@ -35,9 +35,9 @@ strtol, strtoll, strtoq \- convert a string to a long integer
 .nf
 .B #include <stdlib.h>
 .PP
-.BI "long int strtol(const char *" nptr ", char **" endptr ", int " base );
+.BI "long strtol(const char *" nptr ", char **" endptr ", int " base );
 .PP
-.BI "long long int strtoll(const char *" nptr ", char **" endptr \
+.BI "long long strtoll(const char *" nptr ", char **" endptr \
 ", int " base );
 .fi
 .PP
@@ -77,7 +77,7 @@ is taken as 10 (decimal) unless the next character
 is \(aq0\(aq, in which case it is taken as 8 (octal).
 .PP
 The remainder of the string is converted to a
-.I long int
+.I long
 value
 in the obvious manner, stopping at the first character which is not a
 valid digit in the given base.
diff --git a/man3/strtoul.3 b/man3/strtoul.3
index 667c35681..3c1c26cc7 100644
--- a/man3/strtoul.3
+++ b/man3/strtoul.3
@@ -37,10 +37,10 @@ strtoul, strtoull, strtouq \- convert a string to an unsigned long integer
 .nf
 .B #include <stdlib.h>
 .PP
-.BI "unsigned long int strtoul(const char *" nptr ", char **" endptr \
+.BI "unsigned long strtoul(const char *" nptr ", char **" endptr \
 ", int " base );
 .PP
-.BI "unsigned long long int strtoull(const char *" nptr ", char **" endptr ,
+.BI "unsigned long long strtoull(const char *" nptr ", char **" endptr ,
 .BI "                                int " base );
 .fi
 .PP
@@ -63,7 +63,7 @@ function converts the initial part of the string
 in
 .I nptr
 to an
-.I "unsigned long int"
+.I "unsigned long"
 value according to the
 given
 .IR base ,
@@ -85,7 +85,7 @@ is taken as 10 (decimal) unless the next character
 is \(aq0\(aq, in which case it is taken as 8 (octal).
 .PP
 The remainder of the string is converted to an
-.I "unsigned long int"
+.I "unsigned long"
 value in the obvious manner,
 stopping at the first character which is not a
 valid digit in the given base.
@@ -119,7 +119,7 @@ The
 function works just like the
 .BR strtoul ()
 function but returns an
-.I "unsigned long long int"
+.I "unsigned long long"
 value.
 .SH RETURN VALUE
 The
@@ -215,7 +215,7 @@ or to
 .PP
 Negative values are considered valid input and are
 silently converted to the equivalent
-.I "unsigned long int"
+.I "unsigned long"
 value.
 .SH EXAMPLES
 See the example on the
diff --git a/man5/utmp.5 b/man5/utmp.5
index f5559ae19..3b8340858 100644
--- a/man5/utmp.5
+++ b/man5/utmp.5
@@ -82,8 +82,8 @@ around; details depend on the version of libc):
 #define UT_HOSTSIZE     256
 
 struct exit_status {              /* Type for ut_exit, below */
-    short int e_termination;      /* Process termination status */
-    short int e_exit;             /* Process exit status */
+    short e_termination;          /* Process termination status */
+    short e_exit;                 /* Process exit status */
 };
 
 struct utmp {
diff --git a/man7/feature_test_macros.7 b/man7/feature_test_macros.7
index 445295acc..01ada59cc 100644
--- a/man7/feature_test_macros.7
+++ b/man7/feature_test_macros.7
@@ -407,7 +407,7 @@ that address limitations of earlier APIs
 and
 .BR ftell (3))
 that use
-.IR "long int"
+.IR "long"
 for file offsets.
 This macro is implicitly defined if
 .BR _XOPEN_SOURCE
diff --git a/man7/rtld-audit.7 b/man7/rtld-audit.7
index a42361f31..c6a4c19bf 100644
--- a/man7/rtld-audit.7
+++ b/man7/rtld-audit.7
@@ -360,7 +360,7 @@ Here is the definition for x86-32:
 .BI "Elf32_Addr la_i86_gnu_pltenter(Elf32_Sym *" sym ", unsigned int " ndx ,
 .BI "                 uintptr_t *" refcook ", uintptr_t *" defcook ,
 .BI "                 La_i86_regs *" regs ", unsigned int *" flags ,
-.BI "                 const char *" symname ", long int *" framesizep );
+.BI "                 const char *" symname ", long *" framesizep );
 .fi
 .PP
 This function is invoked just before a PLT entry is called,
@@ -593,7 +593,7 @@ la_symbind64(Elf64_Sym *sym, unsigned int ndx, uintptr_t *refcook,
 Elf32_Addr
 la_i86_gnu_pltenter(Elf32_Sym *sym, unsigned int ndx,
         uintptr_t *refcook, uintptr_t *defcook, La_i86_regs *regs,
-        unsigned int *flags, const char *symname, long int *framesizep)
+        unsigned int *flags, const char *symname, long *framesizep)
 {
     printf("la_i86_gnu_pltenter(): %s (%p)\en", symname, sym\->st_value);
 
-- 
2.28.0

