Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3D2AE374928
	for <lists+linux-man@lfdr.de>; Wed,  5 May 2021 22:13:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233933AbhEEUOm (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 5 May 2021 16:14:42 -0400
Received: from mx01-sz.bfs.de ([194.94.69.67]:51700 "EHLO mx02-sz.bfs.de"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S230165AbhEEUOm (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Wed, 5 May 2021 16:14:42 -0400
Received: from SRVEX01-SZ.bfs.intern (exchange-sz.bfs.de [10.129.90.31])
        by mx02-sz.bfs.de (Postfix) with ESMTPS id 124EA202EF;
        Wed,  5 May 2021 22:13:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bfs.de; s=dkim201901;
        t=1620245624;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding;
        bh=WpXDLhmU4jXljyiLC/diq53+3fuT4T0cXE1dKlLaAks=;
        b=N+z8S3CDGCVeH/XD9NSCA5ddMsBhoj3HcrXTpd6xFMX3ufJdtnD87s/keD+3yINeKqPwCq
        4v0Q8uCXe7DCO92gTIqjL00jFfYUFNCv+Y9brm+WzBLvAYmwpe70xezz37LXngQS30IkYa
        C5pRE/92yJfI1Duj72c0yVGIq83sRpt5VJnQSWBOjFm5zlxCcmtK3Lbl7AdrN8IIqjkIjh
        3t6LzCNiJqCIQeWINQaEGkfNs+O1hIzeTbvrupN3mMNSQGuhbdgIG+nMBDPhy578gopbwD
        BQnIlxOfTgCxjM12p1q8y93Xsq0kmPgdWxXYtymB5Bjv6dxqNJ/jvYYc8piVgg==
Received: from SRVEX01-SZ.bfs.intern (10.129.90.31) by SRVEX01-SZ.bfs.intern
 (10.129.90.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.1.2242.4; Wed, 5 May 2021
 22:13:43 +0200
Received: from SRVEX01-SZ.bfs.intern ([fe80::7d2d:f9cb:2761:d24a]) by
 SRVEX01-SZ.bfs.intern ([fe80::7d2d:f9cb:2761:d24a%13]) with mapi id
 15.01.2242.008; Wed, 5 May 2021 22:13:43 +0200
From:   Walter Harms <wharms@bfs.de>
To:     "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>,
        "alx.manpages@gmail.com" <alx.manpages@gmail.com>
Subject: V2: timespec_get (3)
Thread-Topic: V2: timespec_get (3)
Thread-Index: AQHXQersSF8srB4wRkyLYBlMx0usmQ==
Date:   Wed, 5 May 2021 20:13:43 +0000
Message-ID: <1ead775a039842f183e714bd726ce22f@bfs.de>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.137.16.39]
x-tm-as-product-ver: SMEX-14.0.0.3080-8.6.1012-26134.002
x-tm-as-result: No-10-2.513000-5.000000
x-tmase-matchedrid: Zt7FBlK+zO6e/kF8Pup4HBvgzEPRJaDEKQNhMboqZloTiSW9r3PknHmp
        YhpUpTLt+IRzotzJtd/8AATcjzsyHRsSilDdvQNS9u1rQ4BgXPLiTXBy70TaRDM7JmBtvwjFd93
        A76AVNsBkgCLjDVMb3FLWnBY2ZvwZ+iL50XGQjJF+NQIFduF534KMU5VqphqViKJ9ulRl1bcqEb
        nPD99jLOfOVcxjDhcwPcCXjNqUmkVYF3qW3Je6+/z+5BJfbmQTPYSqZ3bOeJi2BgaJ+YaCaehRu
        iaXFf/g4JyfrN+8Pez1gsXKKJmNx/DPMy9W+ylFwN9vYcjH4+QRAyMEYxJlCLZyCaqBVvUQlCuy
        VnTLq5sVeXFy3Qdw7wCsa7rqKSmJ91YNL5c6R5R+3BndfXUhXQ==
x-tm-as-user-approved-sender: No
x-tm-as-user-blocked-sender: No
x-tmase-result: 10-2.513000-5.000000
x-tmase-version: SMEX-14.0.0.3080-8.6.1012-26134.002
x-tm-snts-smtp: 932D37AB9EFA2D3F58D7CAE97C11584E7AF4FC158C448115986C0C0CE753AD522000:9
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Authentication-Results: mx02-sz.bfs.de;
        none
X-Spamd-Result: default: False [-18.00 / 7.00];
         ARC_NA(0.00)[];
         TO_DN_EQ_ADDR_SOME(0.00)[];
         HAS_XOIP(0.00)[];
         FROM_HAS_DN(0.00)[];
         TO_DN_SOME(0.00)[];
         TO_MATCH_ENVRCPT_ALL(0.00)[];
         FREEMAIL_ENVRCPT(0.00)[gmail.com];
         TAGGED_RCPT(0.00)[];
         MIME_GOOD(-0.10)[text/plain];
         DKIM_SIGNED(0.00)[bfs.de:s=dkim201901];
         RCPT_COUNT_TWO(0.00)[2];
         WHITELIST_LOCAL_IP(-15.00)[10.129.90.31];
         NEURAL_HAM(-0.00)[-1.000];
         FREEMAIL_TO(0.00)[vger.kernel.org,gmail.com];
         RCVD_NO_TLS_LAST(0.10)[];
         FROM_EQ_ENVFROM(0.00)[];
         MIME_TRACE(0.00)[0:+];
         RCVD_COUNT_TWO(0.00)[2];
         MID_RHS_MATCH_FROM(0.00)[];
         BAYES_HAM(-3.00)[99.99%]
X-Spam-Status: No, score=-18.00
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

.\" Process this file with
.\" groff -man -Tascii foo.1
.\"
.ds N1 The example is simplified code and not production ready.

.TH TIMESPEC_GET  1 "2021-04-20" Linux "Linux Programmer's Manual"
.SH NAME
timespec_get \- get current time as struct timespec
.SH SYNOPSIS
.B #include <time.h>
.PP
.BI "int timespec_get( struct timespec *" ts ", int " base ");"
.SH DESCRIPTION
The function=20
.B timespec_get()
fills the argument
.I ts
with the current time. The type  =20
.I struct timespec
is specified as:
.PP
.in +4n
.EX
struct timespec
{
   time_t tv_sec;  /* Seconds.  */
   long tv_nsec;   /* Nanoseconds.  */
};
.EE
.in
.PP
The elements of the struct hold the seconds and nanoseconds since epoch.
The system clock will round the nanosecond argument.
.PP
The second argument
.B base
indicate the time base. POSIX requieres=20
.I TIME_UTC
only. Anything else is implementation defined.
.SH RETURN VALUE
The function will return=20
.I base=20
or 0 for failure.
.SH EXAMPLE
The example program will show the current time
in YYYY-MM-DD hh:mm:ss and then the nanoseconds .
.PP
.in +4n
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
.in
.PP
The example is simplified code and not production ready.
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
