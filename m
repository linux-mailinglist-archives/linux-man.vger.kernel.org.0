Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 12821435CCF
	for <lists+linux-man@lfdr.de>; Thu, 21 Oct 2021 10:21:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231248AbhJUIYH (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 21 Oct 2021 04:24:07 -0400
Received: from mx01-sz.bfs.de ([194.94.69.67]:52349 "EHLO mx01-sz.bfs.de"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S231153AbhJUIYC (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Thu, 21 Oct 2021 04:24:02 -0400
X-Greylist: delayed 506 seconds by postgrey-1.27 at vger.kernel.org; Thu, 21 Oct 2021 04:24:02 EDT
Received: from SRVEX01-SZ.bfs.intern (exchange-sz.bfs.de [10.129.90.31])
        by mx01-sz.bfs.de (Postfix) with ESMTPS id 37B77208FB;
        Thu, 21 Oct 2021 10:13:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bfs.de; s=dkim201901;
        t=1634804000;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=xnXVyUzCdVOm56LaRAE52kU1wC33FkHJcN3Jn329fL4=;
        b=Pa9yAS4odVhaP32vzwCRdONvfN12O0PxSmV2J7GnnKfzSSEqF/xpDMb702lso45VfTAzgu
        hYZz0G/z+hrnym259+04Jot2hcPJ3BNWfSphg4VnAuwkHqOPZogDEJWrO6onm2Cw6H+Pgb
        G/Sq9nRJ1tISVu8yhAFlVY79sETLkmZKou6gdDx0I0w6/vYaq6zz/0I0VyOlwAf691Nm1R
        oDJJTDQS9gvFMGjLlM1bfBXJ1iSxOfPmiQJWDBgTNmg2sUyzUVWeMG+37v/fmQuBJCwjum
        Iksa9m4lEYdE26CZiMuheaTOI6aNhOXuHyx+uwsJDqblyg4HRDOpnHuSvId/8g==
Received: from SRVEX01-SZ.bfs.intern (10.129.90.31) by SRVEX01-SZ.bfs.intern
 (10.129.90.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.1.2308.14; Thu, 21 Oct
 2021 10:13:19 +0200
Received: from SRVEX01-SZ.bfs.intern ([fe80::7d2d:f9cb:2761:d24a]) by
 SRVEX01-SZ.bfs.intern ([fe80::7d2d:f9cb:2761:d24a%13]) with mapi id
 15.01.2308.014; Thu, 21 Oct 2021 10:13:19 +0200
From:   Walter Harms <wharms@bfs.de>
To:     Alejandro Colomar <alx.manpages@gmail.com>,
        "mtk.manpages@gmail.com" <mtk.manpages@gmail.com>
CC:     "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>,
        Jens Gustedt <jens.gustedt@loria.fr>,
        Glibc <libc-alpha@sourceware.org>
Subject: AW: [PATCH 2/2] ctime.3, strftime.3, strptime.3, timegm.3: Add
 [[gnu::nonnull]] to <time.h> prototypes
Thread-Topic: [PATCH 2/2] ctime.3, strftime.3, strptime.3, timegm.3: Add
 [[gnu::nonnull]] to <time.h> prototypes
Thread-Index: AQHXxfBCx7c0U9rh6k+m6X3rykKCtKvdEdnA
Date:   Thu, 21 Oct 2021 08:13:19 +0000
Message-ID: <e42cc9f415ea4b069dd5cfdee04e3e87@bfs.de>
References: <20211020202241.171180-1-alx.manpages@gmail.com>,<20211020202241.171180-2-alx.manpages@gmail.com>
In-Reply-To: <20211020202241.171180-2-alx.manpages@gmail.com>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.129.18.210]
x-tm-as-product-ver: SMEX-14.0.0.3080-8.6.1018-26480.006
x-tm-as-result: No-10--6.000000-5.000000
x-tmase-matchedrid: HK7+0zgfmVVEITuQJ3v9pomfV7NNMGm+uikHZcC6ceATVJPv0YKEKeOJ
        0/PdE818E8VwtNBJdpZ+lwABLRSffNu9j/ba408t2os3ueKAsFQB4JHtiamkLJb+3HH/x36BsRE
        ym4hTah6cUFTC+nADP/oS5B31PW6fULIpUxgmc6QPe5gzF3TVt9su68CAPfG833Nl3elSfspQqd
        kLgJePtziho1Dnq559hg7u0oQFj2dxYSx6LBPKen4neC0h7SADgpjC7tI1OQgQnb0WCelSLRyUu
        fpdEXUyRZANqV/1uxMgbIuiKyn7p+PTl4lAY3OzlTsGW3DmpUu6Y5uv3M67ytqUml4VvcDYj78+
        1uscT5JMSBtHJpT6W6AoTyBQ9GaIOQIin5EspQa6iJsmkdGsWTal66Y6k2O0D8kH603DJOBPHvL
        iqwIXKH3KbmVoqYpoj3FO+DmfovLJyhQgM1YojUQaQ2k4z9e2K/YFZTiDf+pHrX2E2MkfRDlqWS
        xu1gNPvqqFNtlrl09pM4uQJ+eFBj8QUwly0FGtlknuuADbyTQvH8OzDKII6f67wpKrIJNBK6HQs
        3v+pqPtyiiocwStrWifxXqxqO6sB22iW+FV2A+cVWc2a+/ju0tc8DbogbSEoxCLfriDzzjp0JOn
        VHhSjU/krMfnC0UDChqK9sC73oC3EcV3YQtKOmvOwg12ikVSElLH7tCb90oR1hH2Ye3qWJXPOgY
        /YGu+fS0Ip2eEHnzUHQeTVDUrIvc8OJc7+0VJ9xS3mVzWUuBGS1XF2lG3YmQIUsWZIN1xe4UYmR
        DQ251NuJjNAT6Ll/mRhPqoLnFbnqg/VrSZEiM=
x-tm-as-user-approved-sender: No
x-tm-as-user-blocked-sender: No
x-tmase-result: 10--6.000000-5.000000
x-tmase-version: SMEX-14.0.0.3080-8.6.1018-26480.006
x-tm-snts-smtp: 99C2E827E24F7E003326D17215D39A7B3CFA4E17C9F10DFCFF1FF3E3CF441E3A2000:9
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Spamd-Result: default: False [-16.50 / 7.00];
         ARC_NA(0.00)[];
         TO_DN_EQ_ADDR_SOME(0.00)[];
         HAS_XOIP(0.00)[];
         FROM_HAS_DN(0.00)[];
         TO_DN_SOME(0.00)[];
         FREEMAIL_ENVRCPT(0.00)[gmail.com];
         TO_MATCH_ENVRCPT_ALL(0.00)[];
         TAGGED_RCPT(0.00)[];
         MIME_GOOD(-0.10)[text/plain];
         RCPT_COUNT_FIVE(0.00)[5];
         DKIM_SIGNED(0.00)[bfs.de:s=dkim201901];
         BAYES_HAM(-3.00)[100.00%];
         WHITELIST_LOCAL_IP(-15.00)[10.129.90.31];
         NEURAL_HAM(-0.00)[-1.000];
         FREEMAIL_TO(0.00)[gmail.com];
         RCVD_NO_TLS_LAST(0.10)[];
         FROM_EQ_ENVFROM(0.00)[];
         MIME_TRACE(0.00)[0:+];
         RCVD_COUNT_TWO(0.00)[2];
         MID_RHS_MATCH_FROM(0.00)[];
         SUSPICIOUS_RECIPS(1.50)[]
Authentication-Results: mx01-sz.bfs.de;
        none
X-Spam-Status: No, score=-16.50
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi thx,
for the information, i was not aware of changes for the time interface
and i do a lot of programming with them.


Since you ask for it:
I do not like the [[gnu::nonnull]] as shown below.
The position triggers the wrong assoziation for me.
Things in front of a function are used to describe a return values.

To be fair the array solution is not great either.

my idea would to add a comment like
char *asctime(const struct tm *" tm  /* not null */);

What is happening inside time.h is something different.

If you thing the compiler should check for not null
he needs a hint.

IMHO it is the responsibility of the programmer
to make sure that the propper arguments are provided.

re,
 wh

________________________________________
Von: Alejandro Colomar <alx.manpages@gmail.com>
Gesendet: Mittwoch, 20. Oktober 2021 22:22:41
An: mtk.manpages@gmail.com
Cc: Alejandro Colomar; linux-man@vger.kernel.org; Jens Gustedt; Glibc
Betreff: [PATCH 2/2] ctime.3, strftime.3, strptime.3, timegm.3: Add [[gnu::=
nonnull]] to <time.h> prototypes

WARNUNG: Diese E-Mail kam von au=DFerhalb der Organisation. Klicken Sie nic=
ht auf Links oder =F6ffnen Sie keine Anh=E4nge, es sei denn, Sie kennen den=
/die Absender*in und wissen, dass der Inhalt sicher ist.


C2X changes the prototypes of <time.h> functions that accept a
pointer that cannot be NULL, to use 'static', which clearly
denotes that passing NULL is Undefined Behavior.

For example, 'time_t mktime(struct tm tm[static 1]);'.

This change is backwards compatible, since array notation is just
syntactic sugar for pointers, and the Undefined Behavior in case
of a pointer already existed (in the wording); it just wasn't
clear from the prototype itself.

However, that forces the use of VLA (array) notation for something
that is *not* an array.  It is cofusing, probably too much for
some programmers not so familiar with the difference between an
array and a pointer, and that happens more than we would like.
Even for programmers that clearly know the difference between an
array and a pointer, this is at least misleading.

That happens because the standard lacks a 'nonnull' attribute, and
only has that (VLA) way of expressing what GCC can express with
'[[gnu::nonnull]]' (a.k.a. '__attribute__((__nonnull__))').

Expressing that NULL pointers shall invoke Undefined Behavior in
the prototype of a function is *way* more readable than having to
read through the whole manual page text, so ideally we should also
follow the standard idea of expressing that.  But we can make use
of more advanced techniques such as the GCC attribute, which help
keep the information that those pointers are actually pointers and
not arrays.

From the 2 different attribute notations, let's use the "C++" one,
which will be part of the standard in C2X (unlike __attribute__),
and is also shorter, which helps keep the SYNOPSIS short (mostly
one-liner prototypes).

See <http://www.open-std.org/JTC1/SC22/WG14/www/docs/n2417.pdf>

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
Cc: Jens Gustedt <jens.gustedt@loria.fr>
Cc: Glibc <libc-alpha@sourceware.org>
---
 man3/ctime.3    | 26 +++++++++++++-------------
 man3/strftime.3 |  1 +
 man3/strptime.3 |  1 +
 man3/timegm.3   |  4 ++--
 4 files changed, 17 insertions(+), 15 deletions(-)

diff --git a/man3/ctime.3 b/man3/ctime.3
index 0620741e9..42021a588 100644
--- a/man3/ctime.3
+++ b/man3/ctime.3
@@ -40,23 +40,23 @@ localtime_r \- transform date and time to broken-down t=
ime or ASCII
 .nf
 .B #include <time.h>
 .PP
-.BI "char *asctime(const struct tm *" tm );
-.BI "char *asctime_r(const struct tm *restrict " tm ,
-.BI "                    char " buf "[static restrict 26]);"
+.BI "[[gnu::nonnull]] char *asctime(const struct tm *" tm );
+.BI "[[gnu::nonnull]] char *asctime_r(const struct tm *restrict " tm ,
+.BI "                                     char " buf "[static restrict 26]=
);"
 .PP
-.BI "char *ctime(const time_t *" timep );
-.BI "char *ctime_r(const time_t *restrict " timep ,
-.BI "                    char " buf "[static restrict 26]);"
+.BI "[[gnu::nonnull]] char *ctime(const time_t *" timep );
+.BI "[[gnu::nonnull]] char *ctime_r(const time_t *restrict " timep ,
+.BI "                                     char " buf "[static restrict 26]=
);"
 .PP
-.BI "struct tm *gmtime(const time_t *" timep );
-.BI "struct tm *gmtime_r(const time_t *restrict " timep ,
-.BI "                    struct tm *restrict " result );
+.BI "[[gnu::nonnull]] struct tm *gmtime(const time_t *" timep );
+.BI "[[gnu::nonnull]] struct tm *gmtime_r(const time_t *restrict " timep ,
+.BI "                                     struct tm *restrict " result );
 .PP
-.BI "struct tm *localtime(const time_t *" timep );
-.BI "struct tm *localtime_r(const time_t *restrict " timep ,
-.BI "                    struct tm *restrict " result );
+.BI "[[gnu::nonnull]] struct tm *localtime(const time_t *" timep );
+.BI "[[gnu::nonnull]] struct tm *localtime_r(const time_t *restrict " time=
p ,
+.BI "                                     struct tm *restrict " result );
 .PP
-.BI "time_t mktime(struct tm *" tm );
+.BI "[[gnu::nonnull]] time_t mktime(struct tm *" tm );
 .fi
 .PP
 .RS -4
diff --git a/man3/strftime.3 b/man3/strftime.3
index a24ea720b..715b30edb 100644
--- a/man3/strftime.3
+++ b/man3/strftime.3
@@ -41,6 +41,7 @@ strftime \- format date and time
 .nf
 .B #include <time.h>
 .PP
+.B [[gnu::nonnull]]
 .BI "size_t strftime(char *restrict " s ", size_t " max ,
 .BI "                const char *restrict " format ,
 .BI "                const struct tm *restrict " tm );
diff --git a/man3/strptime.3 b/man3/strptime.3
index d6595d4bf..c1b334d87 100644
--- a/man3/strptime.3
+++ b/man3/strptime.3
@@ -36,6 +36,7 @@ strptime \- convert a string representation of time to a =
time tm structure
 .BR "#define _XOPEN_SOURCE" "       /* See feature_test_macros(7) */"
 .B #include <time.h>
 .PP
+.B [[gnu::nonnull]]
 .BI "char *strptime(const char *restrict " s ", const char *restrict " for=
mat ,
 .BI "               struct tm *restrict " tm );
 .fi
diff --git a/man3/timegm.3 b/man3/timegm.3
index b848e83e1..18b6e4847 100644
--- a/man3/timegm.3
+++ b/man3/timegm.3
@@ -29,8 +29,8 @@ timegm, timelocal \- inverses of gmtime and localtime
 .nf
 .B #include <time.h>
 .PP
-.BI "time_t timelocal(struct tm *" tm );
-.BI "time_t timegm(struct tm *" tm );
+.BI "[[gnu::nonnull]] time_t timelocal(struct tm *" tm );
+.BI "[[gnu::nonnull]] time_t timegm(struct tm *" tm );
 .PP
 .fi
 .RS -4
--
2.33.0

