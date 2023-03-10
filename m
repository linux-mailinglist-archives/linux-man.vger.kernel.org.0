Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DE0D06B33D5
	for <lists+linux-man@lfdr.de>; Fri, 10 Mar 2023 02:52:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229672AbjCJBw3 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 9 Mar 2023 20:52:29 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43676 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229580AbjCJBw2 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 9 Mar 2023 20:52:28 -0500
Received: from mail-il1-x164.google.com (mail-il1-x164.google.com [IPv6:2607:f8b0:4864:20::164])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A0141FCF02
        for <linux-man@vger.kernel.org>; Thu,  9 Mar 2023 17:52:24 -0800 (PST)
Received: by mail-il1-x164.google.com with SMTP id w4so2199902ilv.0
        for <linux-man@vger.kernel.org>; Thu, 09 Mar 2023 17:52:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=footclan-ninja.20210112.gappssmtp.com; s=20210112; t=1678413144;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mRmxFNhSD1LRkdqQKFjkrwJdR/SI3W2ctMJlsLFNpwE=;
        b=acnAgJFafqBlgqEiFgMq2xJRPyDynltLeNSMdod1DxJXaJp8ZkawGAz29ibbulaa9p
         9uwIWpSEhcPfame9QyijnS9WCPbC6ATDdz7oPnoOpycpP4t2gfxkE0N8L+GuKtj5ryLK
         +kntqUfYbpgSFAmfn+r4Nox+I7HoEbY2vLYuqGj7eHACRzJNU+w5Ir+EQMuN1M3h7kvx
         Xua8XrxUMbfJ9rCaOMF4lZ1+Z/SWfg1FFQJD0zbFzugFJgG9hKbAXOmAXwvuV0J7WOCd
         578bDtPgc8PnxeXCYJplrA2rwco8rm9Q0KseA6Dm36RnoYzjOjIDQPTmjkzNbBGrDMOv
         u+3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678413144;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mRmxFNhSD1LRkdqQKFjkrwJdR/SI3W2ctMJlsLFNpwE=;
        b=bIgb0QrXgYUAsRdV8eN1z22aWmXRY5gsE+qo1KzWnq9wcdVG84VZ6iNfUNGpcBO3rj
         H135qG1j4j/ZGKjAi6H0EtF6lZecUbIdoIh3eJSsOjR3GaQiXDa269R3/ny9DPDqd5VY
         zVy1BHitJw/5QIOSN9t+wRsAlGQ9THh8l4xAcO9JeDBRgroL8afOkA1O/c/jS0bpET4Y
         PUcxjnSQUxCpHukLIz3Nq82gjfr9+SZELNaCAl8SHNZAZlZbEG3QRZgzgdSKpNpsEFxQ
         G9cCqFohAlukjGAvbQRYyAEhLRgQQUB3+BvQEISRbhxe2TVvcg66eNrxEgHBK0zQAiiI
         8slQ==
X-Gm-Message-State: AO0yUKVX5YpPuTn1vC11njEZQXtYcPhFh29I2aOA/ST4aAxPcVwblukx
        tDM1/WVqJIWgmM0do5PPMijk9SpWWW20p9NE+8H6R/b5k/Z9XEf+w7yfDqWpXAxVti5IsTERzDS
        kjg9GVjqH2ar4/ufhMpQcf2vSv1llTFqfhXwGLUmZnPjHKXHwVcaHDqK2tP1RPnlReV/8mjPFfn
        JZd7z6XxLqWoIsYSY4rgLO+L0FxL5pqTBmp07k9vYQ0Ua7Jw==
X-Google-Smtp-Source: AK7set/ov03Tego1+BACKVuEzAeyaUuT9iPyjPCakmvbs0MN0uxWp+UM7ouPKY8GaNgzJNfwcsvI9yzBF7QC
X-Received: by 2002:a05:6e02:b27:b0:315:796e:af21 with SMTP id e7-20020a056e020b2700b00315796eaf21mr3184762ilu.2.1678413143876;
        Thu, 09 Mar 2023 17:52:23 -0800 (PST)
Received: from obsidian.wifi.footclan.ninja (2403-5808-2e-4--1192.ip6.aussiebb.net. [2403:5808:2e:4::1192])
        by smtp-relay.gmail.com with ESMTPS id n15-20020a056638120f00b003dd53eab58fsm59842jas.85.2023.03.09.17.52.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Mar 2023 17:52:23 -0800 (PST)
X-Relaying-Domain: footclan.ninja
From:   Matt Jolly <Matt.Jolly@footclan.ninja>
To:     linux-man@vger.kernel.org
Cc:     alx.manpages@gmail.com, Matt Jolly <Matt.Jolly@footclan.ninja>
Subject: [PATCH] Revert "Many pages: Remove references to C89"
Date:   Fri, 10 Mar 2023 12:51:50 +1100
Message-Id: <20230310015150.3545768-2-Matt.Jolly@footclan.ninja>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230310015150.3545768-1-Matt.Jolly@footclan.ninja>
References: <20230310015150.3545768-1-Matt.Jolly@footclan.ninja>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This reverts commit 72b349dd8c209d7375d4d4f76e2315943d654ee9.

Signed-off-by: Matt Jolly <Matt.Jolly@footclan.ninja>
---
 man2/rename.2     |  2 +-
 man2/signal.2     |  2 +-
 man2/time.2       |  2 +-
 man3/abort.3      |  2 +-
 man3/abs.3        | 13 +++++++++++++
 man3/acos.3       |  2 +-
 man3/asin.3       |  2 +-
 man3/assert.3     |  9 ++++++++-
 man3/atan.3       |  2 +-
 man3/atan2.3      |  2 +-
 man3/atexit.3     |  2 +-
 man3/atof.3       |  2 +-
 man3/atoi.3       |  6 ++++++
 man3/bsearch.3    |  2 +-
 man3/ceil.3       |  2 +-
 man3/clock.3      |  2 +-
 man3/ctime.3      |  2 +-
 man3/difftime.3   |  2 +-
 man3/div.3        |  2 +-
 man3/exit.3       |  2 +-
 man3/exp.3        |  2 +-
 man3/fabs.3       |  2 +-
 man3/fclose.3     |  2 +-
 man3/ferror.3     |  2 +-
 man3/fflush.3     |  2 +-
 man3/fgetc.3      |  2 +-
 man3/floor.3      |  2 +-
 man3/fmod.3       |  2 +-
 man3/fopen.3      |  2 +-
 man3/fread.3      |  2 +-
 man3/frexp.3      |  2 +-
 man3/fseek.3      |  2 +-
 man3/getenv.3     |  2 +-
 man3/gets.3       |  2 +-
 man3/isalpha.3    | 14 ++++++++++----
 man3/ldexp.3      |  2 +-
 man3/localeconv.3 |  2 +-
 man3/log.3        |  2 +-
 man3/log10.3      |  2 +-
 man3/malloc.3     |  2 +-
 man3/memchr.3     |  2 +-
 man3/memcmp.3     |  2 +-
 man3/memcpy.3     |  2 +-
 man3/memmove.3    |  2 +-
 man3/memset.3     |  2 +-
 man3/modf.3       |  2 +-
 man3/offsetof.3   |  2 +-
 man3/perror.3     |  2 +-
 man3/pow.3        |  2 +-
 man3/printf.3     |  6 ++++--
 man3/puts.3       |  2 +-
 man3/qsort.3      |  2 +-
 man3/raise.3      |  2 +-
 man3/rand.3       |  2 +-
 man3/remove.3     |  2 +-
 man3/setbuf.3     |  2 +-
 man3/setjmp.3     |  2 +-
 man3/setlocale.3  |  2 +-
 man3/sin.3        |  2 +-
 man3/sinh.3       |  2 +-
 man3/sqrt.3       |  2 +-
 man3/stdarg.3     | 10 +++++++++-
 man3/stdin.3      |  2 +-
 man3/stdio.3      |  2 +-
 man3/stpncpy.3    |  2 +-
 man3/strchr.3     |  2 +-
 man3/strcmp.3     |  2 +-
 man3/strcoll.3    |  2 +-
 man3/strcpy.3     |  2 +-
 man3/strerror.3   |  2 +-
 man3/strftime.3   |  2 +-
 man3/strlen.3     |  2 +-
 man3/strncat.3    |  2 +-
 man3/strpbrk.3    |  2 +-
 man3/strsep.3     |  2 +-
 man3/strspn.3     |  2 +-
 man3/strstr.3     |  2 +-
 man3/strtod.3     |  3 +++
 man3/strtok.3     |  2 +-
 man3/strtol.3     |  2 +-
 man3/strtoul.3    |  2 +-
 man3/strxfrm.3    |  2 +-
 man3/system.3     |  2 +-
 man3/tan.3        |  2 +-
 man3/tanh.3       |  2 +-
 man3/tmpfile.3    |  2 +-
 man3/tmpnam.3     |  2 +-
 man3/toupper.3    |  2 +-
 88 files changed, 134 insertions(+), 89 deletions(-)

diff --git a/man2/rename.2 b/man2/rename.2
index 08e7958f3..5007ef6b6 100644
--- a/man2/rename.2
+++ b/man2/rename.2
@@ -497,7 +497,7 @@ library support was added in glibc 2.4.
 was added in Linux 3.15; library support was added in glibc 2.28.
 .SH STANDARDS
 .BR rename ():
-4.3BSD, C99, POSIX.1-2001, POSIX.1-2008.
+4.3BSD, C89, C99, POSIX.1-2001, POSIX.1-2008.
 .PP
 .BR renameat ():
 POSIX.1-2008.
diff --git a/man2/signal.2 b/man2/signal.2
index b21abc3b8..d340c734b 100644
--- a/man2/signal.2
+++ b/man2/signal.2
@@ -94,7 +94,7 @@ is set to indicate the error.
 .I signum
 is invalid.
 .SH STANDARDS
-POSIX.1-2001, POSIX.1-2008, C99.
+POSIX.1-2001, POSIX.1-2008, C89, C99.
 .SH NOTES
 The effects of
 .BR signal ()
diff --git a/man2/time.2 b/man2/time.2
index 57558c9aa..2be79cf78 100644
--- a/man2/time.2
+++ b/man2/time.2
@@ -48,7 +48,7 @@ an invalid address may instead trigger a
 .B SIGSEGV
 signal.
 .SH STANDARDS
-SVr4, 4.3BSD, C99, POSIX.1-2001.
+SVr4, 4.3BSD, C89, C99, POSIX.1-2001.
 .\" Under 4.3BSD, this call is obsoleted by
 .\" .BR gettimeofday (2).
 POSIX does not specify any error conditions.
diff --git a/man3/abort.3 b/man3/abort.3
index ddc0ed536..b0570585d 100644
--- a/man3/abort.3
+++ b/man3/abort.3
@@ -69,7 +69,7 @@ T}	Thread safety	MT-Safe
 .ad
 .sp 1
 .SH STANDARDS
-SVr4, POSIX.1-2001, POSIX.1-2008, 4.3BSD, C99.
+SVr4, POSIX.1-2001, POSIX.1-2008, 4.3BSD, C89, C99.
 .SH NOTES
 Up until glibc 2.26,
 if the
diff --git a/man3/abs.3 b/man3/abs.3
index 06eb12c56..a1293f385 100644
--- a/man3/abs.3
+++ b/man3/abs.3
@@ -77,6 +77,19 @@ T}	Thread safety	MT-Safe
 .sp 1
 .SH STANDARDS
 POSIX.1-2001, POSIX.1-2008, C99, SVr4, 4.3BSD.
+.\" POSIX.1 (1996 edition) requires only the
+.\" .BR abs ()
+.\" function.
+C89 only
+includes the
+.BR abs ()
+and
+.BR labs ()
+functions; the functions
+.BR llabs ()
+and
+.BR imaxabs ()
+were added in C99.
 .SH NOTES
 Trying to take the absolute value of the most negative integer
 is not defined.
diff --git a/man3/acos.3 b/man3/acos.3
index 1628f8125..15466bb20 100644
--- a/man3/acos.3
+++ b/man3/acos.3
@@ -111,7 +111,7 @@ C99, POSIX.1-2001, POSIX.1-2008.
 The variant returning
 .I double
 also conforms to
-SVr4, 4.3BSD.
+SVr4, 4.3BSD, C89.
 .SH SEE ALSO
 .BR asin (3),
 .BR atan (3),
diff --git a/man3/asin.3 b/man3/asin.3
index 76284ed91..e2cbfe96e 100644
--- a/man3/asin.3
+++ b/man3/asin.3
@@ -107,7 +107,7 @@ C99, POSIX.1-2001, POSIX.1-2008.
 The variant returning
 .I double
 also conforms to
-SVr4, 4.3BSD.
+SVr4, 4.3BSD, C89.
 .SH SEE ALSO
 .BR acos (3),
 .BR atan (3),
diff --git a/man3/assert.3 b/man3/assert.3
index dfb476399..0e0418e6f 100644
--- a/man3/assert.3
+++ b/man3/assert.3
@@ -74,7 +74,14 @@ T}	Thread safety	MT-Safe
 .ad
 .sp 1
 .SH STANDARDS
-POSIX.1-2001, POSIX.1-2008, C99.
+POSIX.1-2001, POSIX.1-2008, C89, C99.
+In C89,
+.I expression
+is required to be of type
+.I int
+and undefined behavior results if it is not, but in C99
+it may have any scalar type.
+.\" See Defect Report 107 for more details.
 .SH BUGS
 .BR assert ()
 is implemented as a macro; if the expression tested has side-effects,
diff --git a/man3/atan.3 b/man3/atan.3
index e163db539..f95bc073c 100644
--- a/man3/atan.3
+++ b/man3/atan.3
@@ -92,7 +92,7 @@ C99, POSIX.1-2001, POSIX.1-2008.
 The variant returning
 .I double
 also conforms to
-SVr4, 4.3BSD.
+SVr4, 4.3BSD, C89.
 .SH SEE ALSO
 .BR acos (3),
 .BR asin (3),
diff --git a/man3/atan2.3 b/man3/atan2.3
index 186209495..e4284d343 100644
--- a/man3/atan2.3
+++ b/man3/atan2.3
@@ -164,7 +164,7 @@ C99, POSIX.1-2001, POSIX.1-2008.
 The variant returning
 .I double
 also conforms to
-SVr4, 4.3BSD.
+SVr4, 4.3BSD, C89.
 .SH SEE ALSO
 .BR acos (3),
 .BR asin (3),
diff --git a/man3/atexit.3 b/man3/atexit.3
index 3afdcf1b0..363124cc5 100644
--- a/man3/atexit.3
+++ b/man3/atexit.3
@@ -76,7 +76,7 @@ T}	Thread safety	MT-Safe
 .ad
 .sp 1
 .SH STANDARDS
-POSIX.1-2001, POSIX.1-2008, C99, SVr4, 4.3BSD.
+POSIX.1-2001, POSIX.1-2008, C89, C99, SVr4, 4.3BSD.
 .SH NOTES
 Functions registered using
 .BR atexit ()
diff --git a/man3/atof.3 b/man3/atof.3
index 913060cbd..22d1c50da 100644
--- a/man3/atof.3
+++ b/man3/atof.3
@@ -58,7 +58,7 @@ T}	Thread safety	MT-Safe locale
 .ad
 .sp 1
 .SH STANDARDS
-POSIX.1-2001, POSIX.1-2008, C99, SVr4, 4.3BSD.
+POSIX.1-2001, POSIX.1-2008, C89, C99, SVr4, 4.3BSD.
 .SH SEE ALSO
 .BR atoi (3),
 .BR atol (3),
diff --git a/man3/atoi.3 b/man3/atoi.3
index ca7c9fe27..10cc66eba 100644
--- a/man3/atoi.3
+++ b/man3/atoi.3
@@ -85,6 +85,12 @@ T}	Thread safety	MT-Safe locale
 .sp 1
 .SH STANDARDS
 POSIX.1-2001, POSIX.1-2008, C99, SVr4, 4.3BSD.
+C89 and
+POSIX.1-1996 include the functions
+.BR atoi ()
+and
+.BR atol ()
+only.
 .\" .SH NOTES
 .\" Linux libc provided
 .\" .BR atoq ()
diff --git a/man3/bsearch.3 b/man3/bsearch.3
index 790b0b7d9..d27a57475 100644
--- a/man3/bsearch.3
+++ b/man3/bsearch.3
@@ -78,7 +78,7 @@ T}	Thread safety	MT-Safe
 .ad
 .sp 1
 .SH STANDARDS
-POSIX.1-2001, POSIX.1-2008, C99, SVr4, 4.3BSD.
+POSIX.1-2001, POSIX.1-2008, C89, C99, SVr4, 4.3BSD.
 .SH EXAMPLES
 The example below first sorts an array of structures using
 .BR qsort (3),
diff --git a/man3/ceil.3 b/man3/ceil.3
index acad6fc58..3957c514d 100644
--- a/man3/ceil.3
+++ b/man3/ceil.3
@@ -79,7 +79,7 @@ C99, POSIX.1-2001, POSIX.1-2008.
 The variant returning
 .I double
 also conforms to
-SVr4, 4.3BSD.
+SVr4, 4.3BSD, C89.
 .SH NOTES
 SUSv2 and POSIX.1-2001 contain text about overflow (which might set
 .I errno
diff --git a/man3/clock.3 b/man3/clock.3
index 488b94e5b..49d92238c 100644
--- a/man3/clock.3
+++ b/man3/clock.3
@@ -49,7 +49,7 @@ T}	Thread safety	MT-Safe
 .ad
 .sp 1
 .SH STANDARDS
-POSIX.1-2001, POSIX.1-2008, C99.
+POSIX.1-2001, POSIX.1-2008, C89, C99.
 XSI requires that
 .B CLOCKS_PER_SEC
 equals 1000000 independent
diff --git a/man3/ctime.3 b/man3/ctime.3
index b94e66bd6..31f3e66db 100644
--- a/man3/ctime.3
+++ b/man3/ctime.3
@@ -302,7 +302,7 @@ T}
 .sp 1
 .SH STANDARDS
 POSIX.1-2001.
-C99 specifies
+C89 and C99 specify
 .BR asctime (),
 .BR ctime (),
 .BR gmtime (),
diff --git a/man3/difftime.3 b/man3/difftime.3
index b85254cd0..051800888 100644
--- a/man3/difftime.3
+++ b/man3/difftime.3
@@ -47,7 +47,7 @@ T}	Thread safety	MT-Safe
 .ad
 .sp 1
 .SH STANDARDS
-POSIX.1-2001, POSIX.1-2008, C99, SVr4, 4.3BSD.
+POSIX.1-2001, POSIX.1-2008, C89, C99, SVr4, 4.3BSD.
 .SH NOTES
 On a POSIX system,
 .I time_t
diff --git a/man3/div.3 b/man3/div.3
index 375435dd9..29b9493a2 100644
--- a/man3/div.3
+++ b/man3/div.3
@@ -85,7 +85,7 @@ T}	Thread safety	MT-Safe
 .ad
 .sp 1
 .SH STANDARDS
-POSIX.1-2001, POSIX.1-2008, C99, SVr4, 4.3BSD.
+POSIX.1-2001, POSIX.1-2008, C89, C99, SVr4, 4.3BSD.
 The functions
 .BR lldiv ()
 and
diff --git a/man3/exit.3 b/man3/exit.3
index 885335846..d94ac6eb7 100644
--- a/man3/exit.3
+++ b/man3/exit.3
@@ -94,7 +94,7 @@ The
 function uses a global variable that is not protected,
 so it is not thread-safe.
 .SH STANDARDS
-POSIX.1-2001, POSIX.1-2008, C99, SVr4, 4.3BSD.
+POSIX.1-2001, POSIX.1-2008, C89, C99, SVr4, 4.3BSD.
 .SH NOTES
 The behavior is undefined if one of the functions registered using
 .BR atexit (3)
diff --git a/man3/exp.3 b/man3/exp.3
index 3bd2874de..d8d49da5e 100644
--- a/man3/exp.3
+++ b/man3/exp.3
@@ -124,7 +124,7 @@ C99, POSIX.1-2001, POSIX.1-2008.
 The variant returning
 .I double
 also conforms to
-SVr4, 4.3BSD.
+SVr4, 4.3BSD, C89.
 .SH SEE ALSO
 .BR cbrt (3),
 .BR cexp (3),
diff --git a/man3/fabs.3 b/man3/fabs.3
index a3febcfbb..ccb41d0a6 100644
--- a/man3/fabs.3
+++ b/man3/fabs.3
@@ -83,7 +83,7 @@ C99, POSIX.1-2001, POSIX.1-2008.
 The variant returning
 .I double
 also conforms to
-SVr4, 4.3BSD.
+SVr4, 4.3BSD, C89.
 .SH SEE ALSO
 .BR abs (3),
 .BR cabs (3),
diff --git a/man3/fclose.3 b/man3/fclose.3
index 2c55efa69..213e36bb7 100644
--- a/man3/fclose.3
+++ b/man3/fclose.3
@@ -83,7 +83,7 @@ T}	Thread safety	MT-Safe
 .ad
 .sp 1
 .SH STANDARDS
-POSIX.1-2001, POSIX.1-2008, C99.
+POSIX.1-2001, POSIX.1-2008, C89, C99.
 .SH NOTES
 Note that
 .BR fclose ()
diff --git a/man3/ferror.3 b/man3/ferror.3
index cf9ed1645..9d9ebe23a 100644
--- a/man3/ferror.3
+++ b/man3/ferror.3
@@ -93,7 +93,7 @@ The functions
 .BR feof (),
 and
 .BR ferror ()
-conform to C99, POSIX.1-2001, and POSIX.1-2008.
+conform to C89, C99, POSIX.1-2001, and POSIX.1-2008.
 .SH NOTES
 POSIX.1-2008 specifies
 .\"https://www.austingroupbugs.net/view.php?id=401
diff --git a/man3/fflush.3 b/man3/fflush.3
index 2830824ab..927ff8b2b 100644
--- a/man3/fflush.3
+++ b/man3/fflush.3
@@ -91,7 +91,7 @@ T}	Thread safety	MT-Safe
 .ad
 .sp 1
 .SH STANDARDS
-C99, POSIX.1-2001, POSIX.1-2008.
+C89, C99, POSIX.1-2001, POSIX.1-2008.
 .PP
 POSIX.1-2001 did not specify the behavior for flushing of input streams,
 but the behavior is specified in POSIX.1-2008.
diff --git a/man3/fgetc.3 b/man3/fgetc.3
index 0c124a280..75bb9231b 100644
--- a/man3/fgetc.3
+++ b/man3/fgetc.3
@@ -126,7 +126,7 @@ T}	Thread safety	MT-Safe
 .ad
 .sp 1
 .SH STANDARDS
-POSIX.1-2001, POSIX.1-2008, C99.
+POSIX.1-2001, POSIX.1-2008, C89, C99.
 .PP
 It is not advisable to mix calls to input functions from the
 .I stdio
diff --git a/man3/floor.3 b/man3/floor.3
index c0fdc3b82..1be5bc094 100644
--- a/man3/floor.3
+++ b/man3/floor.3
@@ -78,7 +78,7 @@ C99, POSIX.1-2001, POSIX.1-2008.
 The variant returning
 .I double
 also conforms to
-SVr4, 4.3BSD.
+SVr4, 4.3BSD, C89.
 .SH NOTES
 SUSv2 and POSIX.1-2001 contain text about overflow (which might set
 .I errno
diff --git a/man3/fmod.3 b/man3/fmod.3
index 2f40ded1e..5c9c2be38 100644
--- a/man3/fmod.3
+++ b/man3/fmod.3
@@ -142,7 +142,7 @@ C99, POSIX.1-2001, POSIX.1-2008.
 The variant returning
 .I double
 also conforms to
-SVr4, 4.3BSD.
+SVr4, 4.3BSD, C89.
 .SH BUGS
 Before glibc 2.10, the glibc implementation did not set
 .\" http://sources.redhat.com/bugzilla/show_bug.cgi?id=6784
diff --git a/man3/fopen.3 b/man3/fopen.3
index 910762b23..2cdaa387c 100644
--- a/man3/fopen.3
+++ b/man3/fopen.3
@@ -291,7 +291,7 @@ T}	Thread safety	MT-Safe
 .SH STANDARDS
 .BR fopen (),
 .BR freopen ():
-POSIX.1-2001, POSIX.1-2008, C99.
+POSIX.1-2001, POSIX.1-2008, C89, C99.
 .PP
 .BR fdopen ():
 POSIX.1-2001, POSIX.1-2008.
diff --git a/man3/fread.3 b/man3/fread.3
index de609dc24..160ea5f44 100644
--- a/man3/fread.3
+++ b/man3/fread.3
@@ -98,7 +98,7 @@ T}	Thread safety	MT-Safe
 .ad
 .sp 1
 .SH STANDARDS
-POSIX.1-2001, POSIX.1-2008, C99.
+POSIX.1-2001, POSIX.1-2008, C89.
 .SH EXAMPLES
 The program below demonstrates the use of
 .BR fread ()
diff --git a/man3/frexp.3 b/man3/frexp.3
index 862d8f3e7..8a3692710 100644
--- a/man3/frexp.3
+++ b/man3/frexp.3
@@ -102,7 +102,7 @@ C99, POSIX.1-2001, POSIX.1-2008.
 The variant returning
 .I double
 also conforms to
-SVr4, 4.3BSD.
+SVr4, 4.3BSD, C89.
 .SH EXAMPLES
 The program below produces results such as the following:
 .PP
diff --git a/man3/fseek.3 b/man3/fseek.3
index dc98280e2..7c211a8de 100644
--- a/man3/fseek.3
+++ b/man3/fseek.3
@@ -172,7 +172,7 @@ T}	Thread safety	MT-Safe
 .ad
 .sp 1
 .SH STANDARDS
-POSIX.1-2001, POSIX.1-2008, C99.
+POSIX.1-2001, POSIX.1-2008, C89, C99.
 .SH SEE ALSO
 .BR lseek (2),
 .BR fseeko (3)
diff --git a/man3/getenv.3 b/man3/getenv.3
index b9f9ed2c2..51918a955 100644
--- a/man3/getenv.3
+++ b/man3/getenv.3
@@ -98,7 +98,7 @@ T}	Thread safety	MT-Safe env
 .sp 1
 .SH STANDARDS
 .BR getenv ():
-POSIX.1-2001, POSIX.1-2008, C99, SVr4, 4.3BSD.
+POSIX.1-2001, POSIX.1-2008, C89, C99, SVr4, 4.3BSD.
 .PP
 .BR secure_getenv ()
 is a GNU extension.
diff --git a/man3/gets.3 b/man3/gets.3
index b77dad5c4..5c3e7b4b2 100644
--- a/man3/gets.3
+++ b/man3/gets.3
@@ -57,7 +57,7 @@ T}	Thread safety	MT-Safe
 .ad
 .sp 1
 .SH STANDARDS
-C99, POSIX.1-2001.
+C89, C99, POSIX.1-2001.
 .PP
 LSB deprecates
 .BR gets ().
diff --git a/man3/isalpha.3 b/man3/isalpha.3
index 668369bcf..baf2cd27b 100644
--- a/man3/isalpha.3
+++ b/man3/isalpha.3
@@ -244,10 +244,9 @@ T}	Thread safety	MT-Safe
 .sp 1
 .\" FIXME: need a thread-safety statement about the *_l functions
 .SH STANDARDS
-POSIX.1-2001 specifies
+C89 specifies
 .BR isalnum (),
 .BR isalpha (),
-.BR isblank (),
 .BR iscntrl (),
 .BR isdigit (),
 .BR isgraph (),
@@ -258,9 +257,16 @@ POSIX.1-2001 specifies
 .BR isupper (),
 and
 .BR isxdigit (),
-and also
+but not
+.BR isascii ()
+and
+.BR isblank ().
+POSIX.1-2001
+also specifies those functions, and also
 .BR isascii ()
-(as an XSI extension).
+(as an XSI extension)
+and
+.BR isblank ().
 C99 specifies all of the preceding functions, except
 .BR isascii ().
 .PP
diff --git a/man3/ldexp.3 b/man3/ldexp.3
index fc944b729..e28456c1f 100644
--- a/man3/ldexp.3
+++ b/man3/ldexp.3
@@ -125,7 +125,7 @@ C99, POSIX.1-2001, POSIX.1-2008.
 The variant returning
 .I double
 also conforms to
-SVr4, 4.3BSD.
+SVr4, 4.3BSD, C89.
 .SH SEE ALSO
 .BR frexp (3),
 .BR modf (3),
diff --git a/man3/localeconv.3 b/man3/localeconv.3
index 5a5ff2430..f900fc119 100644
--- a/man3/localeconv.3
+++ b/man3/localeconv.3
@@ -66,7 +66,7 @@ T}
 .ad
 .sp 1
 .SH STANDARDS
-C99.
+C89, C99.
 .SH BUGS
 The
 .BR printf (3)
diff --git a/man3/log.3 b/man3/log.3
index 13bac2438..bde58d9f7 100644
--- a/man3/log.3
+++ b/man3/log.3
@@ -124,7 +124,7 @@ C99, POSIX.1-2001, POSIX.1-2008.
 The variant returning
 .I double
 also conforms to
-SVr4, 4.3BSD.
+SVr4, 4.3BSD, C89.
 .SH BUGS
 In glibc 2.5 and earlier,
 taking the
diff --git a/man3/log10.3 b/man3/log10.3
index d64e49c85..00013ca76 100644
--- a/man3/log10.3
+++ b/man3/log10.3
@@ -85,7 +85,7 @@ C99, POSIX.1-2001, POSIX.1-2008.
 The variant returning
 .I double
 also conforms to
-SVr4, 4.3BSD.
+SVr4, 4.3BSD, C89.
 .SH SEE ALSO
 .BR cbrt (3),
 .BR clog10 (3),
diff --git a/man3/malloc.3 b/man3/malloc.3
index 21f537dd5..6b7d7e4ea 100644
--- a/man3/malloc.3
+++ b/man3/malloc.3
@@ -264,7 +264,7 @@ T}	Thread safety	MT-Safe
 .BR free (),
 .BR calloc (),
 .BR realloc ():
-POSIX.1-2001, POSIX.1-2008, C99.
+POSIX.1-2001, POSIX.1-2008, C89, C99.
 .PP
 .BR reallocarray ()
 is a nonstandard extension that first appeared in OpenBSD 5.6 and FreeBSD 11.0.
diff --git a/man3/memchr.3 b/man3/memchr.3
index e03001bec..08c93ee82 100644
--- a/man3/memchr.3
+++ b/man3/memchr.3
@@ -121,7 +121,7 @@ T}	Thread safety	MT-Safe
 .sp 1
 .SH STANDARDS
 .BR memchr ():
-POSIX.1-2001, POSIX.1-2008, C99, SVr4, 4.3BSD.
+POSIX.1-2001, POSIX.1-2008, C89, C99, SVr4, 4.3BSD.
 .PP
 The
 .BR memrchr ()
diff --git a/man3/memcmp.3 b/man3/memcmp.3
index de712bd0a..e58719848 100644
--- a/man3/memcmp.3
+++ b/man3/memcmp.3
@@ -63,7 +63,7 @@ T}	Thread safety	MT-Safe
 .ad
 .sp 1
 .SH STANDARDS
-POSIX.1-2001, POSIX.1-2008, C99, SVr4, 4.3BSD.
+POSIX.1-2001, POSIX.1-2008, C89, C99, SVr4, 4.3BSD.
 .SH NOTES
 Do not use
 .BR memcmp ()
diff --git a/man3/memcpy.3 b/man3/memcpy.3
index 5af704e71..77169a27e 100644
--- a/man3/memcpy.3
+++ b/man3/memcpy.3
@@ -53,7 +53,7 @@ T}	Thread safety	MT-Safe
 .ad
 .sp 1
 .SH STANDARDS
-POSIX.1-2001, POSIX.1-2008, C99, SVr4, 4.3BSD.
+POSIX.1-2001, POSIX.1-2008, C89, C99, SVr4, 4.3BSD.
 .SH NOTES
 Failure to observe the requirement that the memory areas
 do not overlap has been the source of significant bugs.
diff --git a/man3/memmove.3 b/man3/memmove.3
index b8c1c8751..8ee7150e2 100644
--- a/man3/memmove.3
+++ b/man3/memmove.3
@@ -61,7 +61,7 @@ T}	Thread safety	MT-Safe
 .ad
 .sp 1
 .SH STANDARDS
-POSIX.1-2001, POSIX.1-2008, C99, SVr4, 4.3BSD.
+POSIX.1-2001, POSIX.1-2008, C89, C99, SVr4, 4.3BSD.
 .SH SEE ALSO
 .BR bcopy (3),
 .BR bstring (3),
diff --git a/man3/memset.3 b/man3/memset.3
index 07862c431..cce27bb95 100644
--- a/man3/memset.3
+++ b/man3/memset.3
@@ -53,7 +53,7 @@ T}	Thread safety	MT-Safe
 .ad
 .sp 1
 .SH STANDARDS
-POSIX.1-2001, POSIX.1-2008, C99, SVr4, 4.3BSD.
+POSIX.1-2001, POSIX.1-2008, C89, C99, SVr4, 4.3BSD.
 .SH SEE ALSO
 .BR bstring (3),
 .BR bzero (3),
diff --git a/man3/modf.3 b/man3/modf.3
index 42dfbdd88..5662b5a06 100644
--- a/man3/modf.3
+++ b/man3/modf.3
@@ -89,7 +89,7 @@ C99, POSIX.1-2001, POSIX.1-2008.
 The variant returning
 .I double
 also conforms to
-SVr4, 4.3BSD.
+SVr4, 4.3BSD, C89.
 .SH SEE ALSO
 .BR frexp (3),
 .BR ldexp (3)
diff --git a/man3/offsetof.3 b/man3/offsetof.3
index 423e291ee..7cfba984d 100644
--- a/man3/offsetof.3
+++ b/man3/offsetof.3
@@ -64,7 +64,7 @@ within the given
 .IR type ,
 in units of bytes.
 .SH STANDARDS
-POSIX.1-2001, POSIX.1-2008, C99.
+POSIX.1-2001, POSIX.1-2008, C89, C99.
 .SH EXAMPLES
 On a Linux/i386 system, when compiled using the default
 .BR gcc (1)
diff --git a/man3/perror.3 b/man3/perror.3
index a581c3340..09939d764 100644
--- a/man3/perror.3
+++ b/man3/perror.3
@@ -126,7 +126,7 @@ T}	Thread safety	MT-Safe race:stderr
 .SH STANDARDS
 .BR perror (),
 .IR errno :
-POSIX.1-2001, POSIX.1-2008, C99, 4.3BSD.
+POSIX.1-2001, POSIX.1-2008, C89, C99, 4.3BSD.
 .PP
 The externals
 .I sys_nerr
diff --git a/man3/pow.3 b/man3/pow.3
index 264adb107..b9a66c929 100644
--- a/man3/pow.3
+++ b/man3/pow.3
@@ -331,7 +331,7 @@ C99, POSIX.1-2001, POSIX.1-2008.
 The variant returning
 .I double
 also conforms to
-SVr4, 4.3BSD.
+SVr4, 4.3BSD, C89.
 .SH BUGS
 .SS Historical bugs (now fixed)
 Before glibc 2.28,
diff --git a/man3/printf.3 b/man3/printf.3
index ac510e59e..322281e51 100644
--- a/man3/printf.3
+++ b/man3/printf.3
@@ -963,10 +963,12 @@ T}	Thread safety	MT-Safe locale
 .BR fprintf (),
 .BR printf (),
 .BR sprintf (),
-.BR snprintf (),
 .BR vprintf (),
 .BR vfprintf (),
-.BR vsprintf (),
+.BR vsprintf ():
+POSIX.1-2001, POSIX.1-2008, C89, C99.
+.PP
+.BR snprintf (),
 .BR vsnprintf ():
 POSIX.1-2001, POSIX.1-2008, C99.
 .PP
diff --git a/man3/puts.3 b/man3/puts.3
index 343bed8ae..10a7f0cb7 100644
--- a/man3/puts.3
+++ b/man3/puts.3
@@ -103,7 +103,7 @@ T}	Thread safety	MT-Safe
 .ad
 .sp 1
 .SH STANDARDS
-POSIX.1-2001, POSIX.1-2008, C99.
+POSIX.1-2001, POSIX.1-2008, C89, C99.
 .SH BUGS
 It is not advisable to mix calls to output functions from the
 .I stdio
diff --git a/man3/qsort.3 b/man3/qsort.3
index 55f7b18b6..f4cf5a321 100644
--- a/man3/qsort.3
+++ b/man3/qsort.3
@@ -104,7 +104,7 @@ T}	Thread safety	MT-Safe
 .sp 1
 .SH STANDARDS
 .BR qsort ():
-POSIX.1-2001, POSIX.1-2008, C99, SVr4, 4.3BSD.
+POSIX.1-2001, POSIX.1-2008, C89, C99, SVr4, 4.3BSD.
 .SH NOTES
 To compare C strings, the comparison function can call
 .BR strcmp (3),
diff --git a/man3/raise.3 b/man3/raise.3
index 4d1a721ae..82903c118 100644
--- a/man3/raise.3
+++ b/man3/raise.3
@@ -63,7 +63,7 @@ T}	Thread safety	MT-Safe
 .ad
 .sp 1
 .SH STANDARDS
-POSIX.1-2001, POSIX.1-2008, C99.
+POSIX.1-2001, POSIX.1-2008, C89, C99.
 .SH NOTES
 Since glibc 2.3.3,
 .BR raise ()
diff --git a/man3/rand.3 b/man3/rand.3
index f188bdd33..2692bc235 100644
--- a/man3/rand.3
+++ b/man3/rand.3
@@ -138,7 +138,7 @@ The functions
 .BR rand ()
 and
 .BR srand ()
-conform to SVr4, 4.3BSD, C99, POSIX.1-2001.
+conform to SVr4, 4.3BSD, C89, C99, POSIX.1-2001.
 The function
 .BR rand_r ()
 is from POSIX.1-2001.
diff --git a/man3/remove.3 b/man3/remove.3
index e68c6c5fb..a679b8adb 100644
--- a/man3/remove.3
+++ b/man3/remove.3
@@ -71,7 +71,7 @@ T}	Thread safety	MT-Safe
 .ad
 .sp 1
 .SH STANDARDS
-POSIX.1-2001, POSIX.1-2008, C99, 4.3BSD.
+POSIX.1-2001, POSIX.1-2008, C89, C99, 4.3BSD.
 .\" .SH NOTES
 .\" Under libc4 and libc5,
 .\" .BR remove ()
diff --git a/man3/setbuf.3 b/man3/setbuf.3
index 4e6bb7362..b4ba7d8f1 100644
--- a/man3/setbuf.3
+++ b/man3/setbuf.3
@@ -164,7 +164,7 @@ The
 .BR setbuf ()
 and
 .BR setvbuf ()
-functions conform to C99.
+functions conform to C89 and C99.
 .SH NOTES
 POSIX notes
 .\" https://www.austingroupbugs.net/view.php?id=397#c799
diff --git a/man3/setjmp.3 b/man3/setjmp.3
index c66a42503..a8516590a 100644
--- a/man3/setjmp.3
+++ b/man3/setjmp.3
@@ -143,7 +143,7 @@ T}	Thread safety	MT-Safe
 .SH STANDARDS
 .BR setjmp (),
 .BR longjmp ():
-POSIX.1-2001, POSIX.1-2008, C99.
+POSIX.1-2001, POSIX.1-2008, C89, C99.
 .PP
 .BR sigsetjmp (),
 .BR siglongjmp ():
diff --git a/man3/setlocale.3 b/man3/setlocale.3
index 314dfa0f4..1604ad883 100644
--- a/man3/setlocale.3
+++ b/man3/setlocale.3
@@ -199,7 +199,7 @@ T}	Thread safety	MT-Unsafe const:locale env
 .ad
 .sp 1
 .SH STANDARDS
-POSIX.1-2001, POSIX.1-2008, C99.
+POSIX.1-2001, POSIX.1-2008, C89, C99.
 .PP
 The C standards specify only the categories
 .BR LC_ALL ,
diff --git a/man3/sin.3 b/man3/sin.3
index a5f9262a6..ccfddf87a 100644
--- a/man3/sin.3
+++ b/man3/sin.3
@@ -104,7 +104,7 @@ C99, POSIX.1-2001, POSIX.1-2008.
 The variant returning
 .I double
 also conforms to
-SVr4, 4.3BSD.
+SVr4, 4.3BSD, C89.
 .SH BUGS
 Before glibc 2.10, the glibc implementation did not set
 .\" http://sources.redhat.com/bugzilla/show_bug.cgi?id=6781
diff --git a/man3/sinh.3 b/man3/sinh.3
index 9a1821aa9..80eb79a6e 100644
--- a/man3/sinh.3
+++ b/man3/sinh.3
@@ -120,7 +120,7 @@ C99, POSIX.1-2001, POSIX.1-2008.
 The variant returning
 .I double
 also conforms to
-SVr4, 4.3BSD.
+SVr4, 4.3BSD, C89.
 .SH SEE ALSO
 .BR acosh (3),
 .BR asinh (3),
diff --git a/man3/sqrt.3 b/man3/sqrt.3
index 10c47082c..7fb9a58db 100644
--- a/man3/sqrt.3
+++ b/man3/sqrt.3
@@ -103,7 +103,7 @@ C99, POSIX.1-2001, POSIX.1-2008.
 The variant returning
 .I double
 also conforms to
-SVr4, 4.3BSD.
+SVr4, 4.3BSD, C89.
 .SH SEE ALSO
 .BR cbrt (3),
 .BR csqrt (3),
diff --git a/man3/stdarg.3 b/man3/stdarg.3
index 468a0904a..3a6601913 100644
--- a/man3/stdarg.3
+++ b/man3/stdarg.3
@@ -224,7 +224,15 @@ T}	Thread safety	MT-Safe race:ap
 .ad
 .sp 1
 .SH STANDARDS
-C99.
+The
+.BR va_start (),
+.BR va_arg (),
+and
+.BR va_end ()
+macros conform to C89.
+C99 defines the
+.BR va_copy ()
+macro.
 .SH BUGS
 Unlike the historical
 .B varargs
diff --git a/man3/stdin.3 b/man3/stdin.3
index d1b2375f4..caa65a40f 100644
--- a/man3/stdin.3
+++ b/man3/stdin.3
@@ -119,7 +119,7 @@ The
 .IR stdout ,
 and
 .I stderr
-macros conform to C99
+macros conform to C89
 and this standard also stipulates that these three
 streams shall be open at program startup.
 .SH NOTES
diff --git a/man3/stdio.3 b/man3/stdio.3
index 2b6c43e01..628f9b690 100644
--- a/man3/stdio.3
+++ b/man3/stdio.3
@@ -335,7 +335,7 @@ T}
 .SH STANDARDS
 The
 .I stdio
-library conforms to C99.
+library conforms to C89.
 .SH SEE ALSO
 .BR close (2),
 .BR open (2),
diff --git a/man3/stpncpy.3 b/man3/stpncpy.3
index 9d752efe2..70e80195c 100644
--- a/man3/stpncpy.3
+++ b/man3/stpncpy.3
@@ -101,7 +101,7 @@ POSIX.1-2008.
 .\" It first appeared in glibc 1.07 in 1993.
 .TP
 .BR strncpy ()
-POSIX.1-2001, POSIX.1-2008, C99, SVr4, 4.3BSD.
+POSIX.1-2001, POSIX.1-2008, C89, C99, SVr4, 4.3BSD.
 .SH CAVEATS
 The name of these functions is confusing.
 These functions produce a null-padded character sequence,
diff --git a/man3/strchr.3 b/man3/strchr.3
index 3eac67008..6cce98001 100644
--- a/man3/strchr.3
+++ b/man3/strchr.3
@@ -107,7 +107,7 @@ T}	Thread safety	MT-Safe
 .SH STANDARDS
 .BR strchr (),
 .BR strrchr ():
-POSIX.1-2001, POSIX.1-2008, C99, SVr4, 4.3BSD.
+POSIX.1-2001, POSIX.1-2008, C89, C99, SVr4, 4.3BSD.
 .PP
 .BR strchrnul ()
 is a GNU extension.
diff --git a/man3/strcmp.3 b/man3/strcmp.3
index 8a2ee35f9..63de49e18 100644
--- a/man3/strcmp.3
+++ b/man3/strcmp.3
@@ -95,7 +95,7 @@ T}	Thread safety	MT-Safe
 .ad
 .sp 1
 .SH STANDARDS
-POSIX.1-2001, POSIX.1-2008, C99, SVr4, 4.3BSD.
+POSIX.1-2001, POSIX.1-2008, C89, C99, SVr4, 4.3BSD.
 .SH NOTES
 POSIX.1 specifies only that:
 .RS
diff --git a/man3/strcoll.3 b/man3/strcoll.3
index e43468bb5..6ebbadcb0 100644
--- a/man3/strcoll.3
+++ b/man3/strcoll.3
@@ -68,7 +68,7 @@ T}	Thread safety	MT-Safe locale
 .ad
 .sp 1
 .SH STANDARDS
-POSIX.1-2001, POSIX.1-2008, C99, SVr4, 4.3BSD.
+POSIX.1-2001, POSIX.1-2008, C89, C99, SVr4, 4.3BSD.
 .SH NOTES
 In the
 .I "POSIX"
diff --git a/man3/strcpy.3 b/man3/strcpy.3
index 7d04f59f5..02b6fbd8c 100644
--- a/man3/strcpy.3
+++ b/man3/strcpy.3
@@ -123,7 +123,7 @@ POSIX.1-2008.
 .BR strcpy ()
 .TQ
 .BR strcat ()
-POSIX.1-2001, POSIX.1-2008, C99, SVr4, 4.3BSD.
+POSIX.1-2001, POSIX.1-2008, C89, C99, SVr4, 4.3BSD.
 .SH CAVEATS
 The strings
 .I src
diff --git a/man3/strerror.3 b/man3/strerror.3
index 96bd8df11..da517f5df 100644
--- a/man3/strerror.3
+++ b/man3/strerror.3
@@ -255,7 +255,7 @@ T}	Thread safety	MT-Safe
 .sp 1
 .SH STANDARDS
 .BR strerror ()
-is specified by POSIX.1-2001, POSIX.1-2008, and C99.
+is specified by POSIX.1-2001, POSIX.1-2008, C89, and C99.
 .BR strerror_r ()
 is specified by POSIX.1-2001 and POSIX.1-2008.
 .\" FIXME . for later review when Issue 8 is one day released...
diff --git a/man3/strftime.3 b/man3/strftime.3
index 57b2a38aa..b820abf70 100644
--- a/man3/strftime.3
+++ b/man3/strftime.3
@@ -542,7 +542,7 @@ T}	Thread safety	MT-Safe env locale
 .sp 1
 .SH STANDARDS
 .BR strftime ():
-SVr4, C99.
+SVr4, C89, C99.
 .PD 0
 .PP
 .PD
diff --git a/man3/strlen.3 b/man3/strlen.3
index f994a2e90..f8c9bc0c6 100644
--- a/man3/strlen.3
+++ b/man3/strlen.3
@@ -49,7 +49,7 @@ T}	Thread safety	MT-Safe
 .ad
 .sp 1
 .SH STANDARDS
-POSIX.1-2001, POSIX.1-2008, C99, C11, SVr4, 4.3BSD.
+POSIX.1-2001, POSIX.1-2008, C89, C99, C11, SVr4, 4.3BSD.
 .SH NOTES
 In cases where the input buffer may not contain
 a terminating null byte,
diff --git a/man3/strncat.3 b/man3/strncat.3
index cbf930ec3..af5027c09 100644
--- a/man3/strncat.3
+++ b/man3/strncat.3
@@ -66,7 +66,7 @@ T}	Thread safety	MT-Safe
 .ad
 .sp 1
 .SH STANDARDS
-POSIX.1-2001, POSIX.1-2008, C99, SVr4, 4.3BSD.
+POSIX.1-2001, POSIX.1-2008, C89, C99, SVr4, 4.3BSD.
 .SH CAVEATS
 The name of this function is confusing.
 This function has no relation to
diff --git a/man3/strpbrk.3 b/man3/strpbrk.3
index cb84aeca4..f81a263af 100644
--- a/man3/strpbrk.3
+++ b/man3/strpbrk.3
@@ -55,7 +55,7 @@ T}	Thread safety	MT-Safe
 .ad
 .sp 1
 .SH STANDARDS
-POSIX.1-2001, POSIX.1-2008, C99, SVr4, 4.3BSD.
+POSIX.1-2001, POSIX.1-2008, C89, C99, SVr4, 4.3BSD.
 .SH SEE ALSO
 .BR memchr (3),
 .BR strchr (3),
diff --git a/man3/strsep.3 b/man3/strsep.3
index 794ddbec5..103d9b788 100644
--- a/man3/strsep.3
+++ b/man3/strsep.3
@@ -92,7 +92,7 @@ function was introduced as a replacement for
 since the latter cannot handle empty fields.
 However,
 .BR strtok (3)
-conforms to C99 and hence is more portable.
+conforms to C89/C99 and hence is more portable.
 .SH BUGS
 Be cautious when using this function.
 If you do use it, note that:
diff --git a/man3/strspn.3 b/man3/strspn.3
index 34d2f1a6a..fbb0b4043 100644
--- a/man3/strspn.3
+++ b/man3/strspn.3
@@ -73,7 +73,7 @@ T}	Thread safety	MT-Safe
 .ad
 .sp 1
 .SH STANDARDS
-POSIX.1-2001, POSIX.1-2008, C99, SVr4, 4.3BSD.
+POSIX.1-2001, POSIX.1-2008, C89, C99, SVr4, 4.3BSD.
 .SH SEE ALSO
 .BR memchr (3),
 .BR strchr (3),
diff --git a/man3/strstr.3 b/man3/strstr.3
index 25bbf9b27..2f41cd162 100644
--- a/man3/strstr.3
+++ b/man3/strstr.3
@@ -74,7 +74,7 @@ T}	Thread safety	MT-Safe locale
 .sp 1
 .SH STANDARDS
 .BR strstr ():
-POSIX.1-2001, POSIX.1-2008, C99.
+POSIX.1-2001, POSIX.1-2008, C89, C99.
 .PP
 The
 .BR strcasestr ()
diff --git a/man3/strtod.3 b/man3/strtod.3
index 2064b395c..eb1dd650c 100644
--- a/man3/strtod.3
+++ b/man3/strtod.3
@@ -158,6 +158,9 @@ T}	Thread safety	MT-Safe locale
 .sp 1
 .SH STANDARDS
 POSIX.1-2001, POSIX.1-2008, C99.
+.PP
+.BR strtod ()
+was also described in C89.
 .SH NOTES
 Since
 0 can legitimately be returned
diff --git a/man3/strtok.3 b/man3/strtok.3
index 9c80c2823..db52fb25c 100644
--- a/man3/strtok.3
+++ b/man3/strtok.3
@@ -174,7 +174,7 @@ T}	Thread safety	MT-Safe
 .SH STANDARDS
 .TP
 .BR strtok ()
-POSIX.1-2001, POSIX.1-2008, C99, SVr4, 4.3BSD.
+POSIX.1-2001, POSIX.1-2008, C89, C99, SVr4, 4.3BSD.
 .TP
 .BR strtok_r ()
 POSIX.1-2001, POSIX.1-2008.
diff --git a/man3/strtol.3 b/man3/strtol.3
index da6c98441..34eb63414 100644
--- a/man3/strtol.3
+++ b/man3/strtol.3
@@ -161,7 +161,7 @@ T}	Thread safety	MT-Safe locale
 .sp 1
 .SH STANDARDS
 .BR strtol ():
-POSIX.1-2001, POSIX.1-2008, C99, SVr4, 4.3BSD.
+POSIX.1-2001, POSIX.1-2008, C89, C99 SVr4, 4.3BSD.
 .PP
 .BR strtoll ():
 POSIX.1-2001, POSIX.1-2008, C99.
diff --git a/man3/strtoul.3 b/man3/strtoul.3
index 784094ad6..b43a0b1dd 100644
--- a/man3/strtoul.3
+++ b/man3/strtoul.3
@@ -161,7 +161,7 @@ T}	Thread safety	MT-Safe locale
 .sp 1
 .SH STANDARDS
 .BR strtoul ():
-POSIX.1-2001, POSIX.1-2008, C99, SVr4.
+POSIX.1-2001, POSIX.1-2008, C89, C99 SVr4.
 .PP
 .BR strtoull ():
 POSIX.1-2001, POSIX.1-2008, C99.
diff --git a/man3/strxfrm.3 b/man3/strxfrm.3
index 1596273f0..59f96fd94 100644
--- a/man3/strxfrm.3
+++ b/man3/strxfrm.3
@@ -77,7 +77,7 @@ T}	Thread safety	MT-Safe locale
 .ad
 .sp 1
 .SH STANDARDS
-POSIX.1-2001, POSIX.1-2008, C99, SVr4, 4.3BSD.
+POSIX.1-2001, POSIX.1-2008, C89, C99, SVr4, 4.3BSD.
 .SH SEE ALSO
 .BR memcmp (3),
 .BR setlocale (3),
diff --git a/man3/system.3 b/man3/system.3
index 414968fd7..a66ddfa37 100644
--- a/man3/system.3
+++ b/man3/system.3
@@ -119,7 +119,7 @@ T}	Thread safety	MT-Safe
 .ad
 .sp 1
 .SH STANDARDS
-POSIX.1-2001, POSIX.1-2008, C99.
+POSIX.1-2001, POSIX.1-2008, C89, C99.
 .SH NOTES
 .BR system ()
 provides simplicity and convenience:
diff --git a/man3/tan.3 b/man3/tan.3
index 83b244c68..ff8de2308 100644
--- a/man3/tan.3
+++ b/man3/tan.3
@@ -129,7 +129,7 @@ C99, POSIX.1-2001, POSIX.1-2008.
 The variant returning
 .I double
 also conforms to
-SVr4, 4.3BSD.
+SVr4, 4.3BSD, C89.
 .SH BUGS
 Before glibc 2.10, the glibc implementation did not set
 .\" http://sourceware.org/bugzilla/show_bug.cgi?id=6782
diff --git a/man3/tanh.3 b/man3/tanh.3
index 36b88f737..6846196bc 100644
--- a/man3/tanh.3
+++ b/man3/tanh.3
@@ -96,7 +96,7 @@ C99, POSIX.1-2001, POSIX.1-2008.
 The variant returning
 .I double
 also conforms to
-SVr4, 4.3BSD.
+SVr4, 4.3BSD, C89.
 .SH SEE ALSO
 .BR acosh (3),
 .BR asinh (3),
diff --git a/man3/tmpfile.3 b/man3/tmpfile.3
index f238ec7e3..fd39b6e1d 100644
--- a/man3/tmpfile.3
+++ b/man3/tmpfile.3
@@ -78,7 +78,7 @@ T}	Thread safety	MT-Safe
 .ad
 .sp 1
 .SH STANDARDS
-POSIX.1-2001, POSIX.1-2008, C99, SVr4, 4.3BSD, SUSv2.
+POSIX.1-2001, POSIX.1-2008, C89, C99, SVr4, 4.3BSD, SUSv2.
 .SH NOTES
 POSIX.1-2001 specifies:
 an error message may be written to
diff --git a/man3/tmpnam.3 b/man3/tmpnam.3
index 9de98d304..8f9a2af5b 100644
--- a/man3/tmpnam.3
+++ b/man3/tmpnam.3
@@ -107,7 +107,7 @@ T}	Thread safety	MT-Safe
 .sp 1
 .SH STANDARDS
 .BR tmpnam ():
-SVr4, 4.3BSD, C99, POSIX.1-2001.
+SVr4, 4.3BSD, C89, C99, POSIX.1-2001.
 POSIX.1-2008 marks
 .BR tmpnam ()
 as obsolete.
diff --git a/man3/toupper.3 b/man3/toupper.3
index c2c98ea30..0df8209d9 100644
--- a/man3/toupper.3
+++ b/man3/toupper.3
@@ -114,7 +114,7 @@ T}	Thread safety	MT-Safe
 .SH STANDARDS
 .BR toupper (),
 .BR tolower ():
-C99, 4.3BSD, POSIX.1-2001, POSIX.1-2008.
+C89, C99, 4.3BSD, POSIX.1-2001, POSIX.1-2008.
 .PP
 .BR toupper_l (),
 .BR tolower_l ():
-- 
2.39.2

