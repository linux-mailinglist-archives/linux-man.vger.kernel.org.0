Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F29BE36A26B
	for <lists+linux-man@lfdr.de>; Sat, 24 Apr 2021 19:41:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232434AbhDXRmY (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 24 Apr 2021 13:42:24 -0400
Received: from mx01-sz.bfs.de ([194.94.69.67]:51110 "EHLO mx02-sz.bfs.de"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S230230AbhDXRmW (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Sat, 24 Apr 2021 13:42:22 -0400
Received: from SRVEX01-SZ.bfs.intern (exchange-sz.bfs.de [10.129.90.31])
        by mx02-sz.bfs.de (Postfix) with ESMTPS id 14CE2204AF
        for <linux-man@vger.kernel.org>; Sat, 24 Apr 2021 19:41:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bfs.de; s=dkim201901;
        t=1619286103;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding;
        bh=EMjH+mhVkm46qYJpXzbdweZZ/HIX05oDaaDIakTSk+Y=;
        b=iiJz6qSKOcpLunwXFBxZj/3J59hClTRj6tQ98EIN5bCcTN3nw+lqqikioG6luAPe8TMRXz
        xHfzIfjgAxiSP1MRK5fKxrO+Uy8JLV4tgx8EKvTntq5RRVOe7HHmak4hXzceFZLCFpgUco
        mqxMjZenAihBtDTwLR9tYtwE6+Lp2XseULVfqlT2OOOVPEIneZ2wJkOKn5wb3xH53xmiHG
        N34dFofZ/f+Aw5QCVI975H0MSgBC4TUNlDVXt2cqmZWRcQGYoICA7DOxxvQMXkuUfT10d7
        j1FayRtLiHi4OQS//CMUW2+RvZXHQ22Zajzmc8gguAOx2FRpACqhx+iFuqFRjw==
Received: from SRVEX01-SZ.bfs.intern (10.129.90.31) by SRVEX01-SZ.bfs.intern
 (10.129.90.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.1.2242.4; Sat, 24 Apr
 2021 19:41:42 +0200
Received: from SRVEX01-SZ.bfs.intern ([fe80::7d2d:f9cb:2761:d24a]) by
 SRVEX01-SZ.bfs.intern ([fe80::7d2d:f9cb:2761:d24a%13]) with mapi id
 15.01.2242.008; Sat, 24 Apr 2021 19:41:42 +0200
From:   Walter Harms <wharms@bfs.de>
To:     "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
Subject: timespec_get() part of C11
Thread-Topic: timespec_get() part of C11
Thread-Index: AQHXOS+2wQeW49J3Kk2bG5/uwlunwg==
Date:   Sat, 24 Apr 2021 17:41:42 +0000
Message-ID: <f79cbb6ecda24a1e90fb3c242d97c218@bfs.de>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.137.16.40]
x-tm-as-product-ver: SMEX-14.0.0.3080-8.6.1012-26112.001
x-tm-as-result: No-10--0.125400-5.000000
x-tmase-matchedrid: tqY+01Jua/Ce/kF8Pup4HImfV7NNMGm+PknazlXMVpVYC5LPd7BvbbLs
        vs6J0rHdC+AKr1Y+Fu17VBFJyZum//ZZrSv3M8S0cNrYrBIGQWcyhLY8urUHvpu6++Cllkj576d
        4tCBY3uUMS3aNlfJH3ucqQk5B5XF6z72Qid45mWEZy1iIaVWMH8ZJvtGKTC9XPeOHPOUGOYgKHD
        2fWvVyGnJlcQwKXTzdlWutDIFn3pAPs7mIHstSMs36paW7ZnFoAajW+EL+laOQuAUNIGQcx2sWZ
        V9YMDBbkS3fvFGqK9a7BPS56m6SB2w76lbrJ0U/TvKpZzlxUs8hs45bja00y5OzKHDUo+qQl23J
        NSaQyjO1GWQzSfbq7QJPvNo90theJnvICBJx11985pjA/x1xftTupTJjCAw34Ju5UjuFVss9opV
        zh27BpeCvRZnq77KlSMWrq7y2HJtGKPNK/57EzWwTEruL9ObT3V4UShoTXac52EFlEU1zy3P41a
        RFCNo20ZiHYm0cDqXdtSwlWgy8G+4qlllmQ8EKlXePXNM4FjOi7aY28FFBLkexBNYboBtVngIgp
        j8eDcByZ8zcONpAscRB0bsfrpPI34T9cYMsdwwpcxowDqfOVUyTsMKS9RDDOONuCbT04ovjjQD7
        QvLe8LAn8IcyQZPI0jecfHhj7h9obAx2iXKfT5vVl6n4llU0hKPN3Xm2X8cE2TM84EuTy0FgpjG
        Vf2/bBUYQ6VBjSapyPw0xDpM2TSbONta81gX5
x-tm-as-user-approved-sender: No
x-tm-as-user-blocked-sender: No
x-tmase-result: 10--0.125400-5.000000
x-tmase-version: SMEX-14.0.0.3080-8.6.1012-26112.001
x-tm-snts-smtp: 1C3394B8C512BE646F5E935B5CB82BC4D14653FDE65D6C03E7946D2C5BA36ECE2000:9
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Spam-Status: No, score=-15.00
X-Spamd-Result: default: False [-15.00 / 7.00];
         ARC_NA(0.00)[];
         HAS_XOIP(0.00)[];
         FROM_HAS_DN(0.00)[];
         TO_MATCH_ENVRCPT_ALL(0.00)[];
         MIME_GOOD(-0.10)[text/plain];
         RCPT_COUNT_ONE(0.00)[1];
         DKIM_SIGNED(0.00)[bfs.de:s=dkim201901];
         WHITELIST_LOCAL_IP(-15.00)[10.129.90.31];
         NEURAL_HAM(-0.00)[-1.000];
         TO_DN_EQ_ADDR_ALL(0.00)[];
         RCVD_NO_TLS_LAST(0.10)[];
         FROM_EQ_ENVFROM(0.00)[];
         MIME_TRACE(0.00)[0:+];
         RCVD_COUNT_TWO(0.00)[2];
         MID_RHS_MATCH_FROM(0.00)[]
Authentication-Results: mx02-sz.bfs.de;
        none
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

.\" Copyright (c) 2021 wharms
.\" %%%LICENSE_START(VERBATIM)
.\" Permission is granted to make and distribute verbatim copies of this
.\" manual provided the copyright notice and this permission notice are
.\" preserved on all copies.
.\"
.\" Permission is granted to copy and distribute modified versions of this
.\" manual under the conditions for verbatim copying, provided that the
.\" entire resulting derived work is distributed under the terms of a
.\" permission notice identical to this one.
.\"
.\" Since the Linux kernel and libraries are constantly changing, this
.\" manual page may be incorrect or out-of-date.  The author(s) assume no
.\" responsibility for errors or omissions, or for damages resulting from
.\" the use of the information contained herein.  The author(s) may not
.\" have taken the same level of care in the production of this manual,
.\" which is licensed free of charge, as they might when working
.\" professionally.
.\"
.\" Formatted or processed versions of this manual, if unaccompanied by
.\" the source, must acknowledge the copyright and authors of this work.
.\" %%%LICENSE_END
.\"
.ds N1 The example is simplified code and not production ready.
.de N2=20
.SH COLOPHON
This page is part of release 4.16 of the Linux
.I man-pages
project.
A description of the project,
information about reporting bugs,
and the latest version of this page,
can be found at
\%https://www.kernel.org/doc/man\-pages/.
..

.TH timespec_get  1 "2021-04-20" Linux "User Manuals"
.SH NAME
timespec_get  \- get time in high resolution
.SH SYNOPSIS
.B #include <time.h>
.PP
.BI "int timespec_get( struct timespec *"ts ", int " base  ");"
.SH DESCRIPTION
The function=20
.B timespec_get()
will fill=20
.I ts
wth the current time. The argument is a=20
.I struct timespec
what is specified like:
.nf
struct timespec
{
   time_t tv_sec;     /* Seconds.  */
   long tv_nsec;   /* Nanoseconds.  */
};
.fi
The elements of the struct hold the seconds and nanoseconds since epoch.
The system clock will round the nanosecond argument.
.PP
The second argument
.B base
indicate the time base.  POSIX requieres=20
.I TIME_UTC
only.  All  others are implementation defined.
.SH RETURN VALUE
The function will return=20
.I base=20
or 0 for failure.
.SH EXAMPLE
The example program will show the current time
in YYYY-MM-DD hh:mm:ss and then the nanoseconds .
.EX
/* compile with:
 *  gcc timespec.c -o timespec
 */
#include <stdio.h>
#include <time.h>
=20
int main(void)
{
    struct timespec ts;
    char buf[30];
    timespec_get(&ts, TIME_UTC);
    strftime(buf, sizeof(buf), "%F %T", gmtime(&ts.tv_sec));
    printf("Current time: %s ", buf);
    printf("UTC and %ld nsec\\n", ts.tv_nsec);
    return (0);
}
.EE
\*(N1
.SH NOTE
This function is equal to the POSIX function=20
.BR "clock_gettime(CLOCK_REALTIME, ts)" .
.PP
The ts.tv_sec is equal to the return value of
.BR time(NULL) .
.SH "CONFORMING TO"
The function is a C11 requirement and appears first time in=20
.BR "glibc 2.16 " .
.SH "SEE ALSO"
.BR clock_gettime(3) ,
.BR time (2),
.BR time (7)
\*(N2
