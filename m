Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id A1891157340
	for <lists+linux-man@lfdr.de>; Mon, 10 Feb 2020 12:08:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727003AbgBJLIv (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 10 Feb 2020 06:08:51 -0500
Received: from mx01-sz.bfs.de ([194.94.69.67]:14979 "EHLO mx02-sz.bfs.de"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1726796AbgBJLIu (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Mon, 10 Feb 2020 06:08:50 -0500
X-Greylist: delayed 358 seconds by postgrey-1.27 at vger.kernel.org; Mon, 10 Feb 2020 06:08:49 EST
Received: from SRVEX01-SZ.bfs.intern (exchange-sz.bfs.de [10.129.90.31])
        by mx02-sz.bfs.de (Postfix) with ESMTPS id 41465202FC;
        Mon, 10 Feb 2020 12:02:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bfs.de; s=dkim201901;
        t=1581332569;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=dykhjZt1NuACnjNUxv6qAJUs3NQmHk1SQWkws4eUZvQ=;
        b=0WEiz3EL5qztpM7sGiWDeZfcA+W8UvumYaeEwiawwMJbfZYT4Ddn4AQBbvYXx+gpnnUe1t
        +wgtDb5hU5k6yxMrU3tfxtnx1ZZNrcDcHJLa3zxPxhK1y/K1GUZBPpL5mecc5fNoDbcGwC
        +xKvGAdFAWeFCFQDa2t/bxzXneMTFgVLX4UPk6O2jykzWYMsbhnA0QLRBcm3kDgg1ntoPJ
        NJlZITkv3JjABH6iz8J05a3skhf3GqTACIYroChmi8QWr7swHrk1XjyzCWODarffzet+Cu
        9sjR5byerIb9iY4SPmiutiuh4cPbSwJ3WViI+oWfmWBD9jVT56BaAnW4n6vzEQ==
Received: from SRVEX01-SZ.bfs.intern (10.129.90.31) by SRVEX01-SZ.bfs.intern
 (10.129.90.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.1.1913.5; Mon, 10 Feb
 2020 12:02:48 +0100
Received: from SRVEX01-SZ.bfs.intern ([fe80::7d2d:f9cb:2761:d24a]) by
 SRVEX01-SZ.bfs.intern ([fe80::7d2d:f9cb:2761:d24a%6]) with mapi id
 15.01.1913.005; Mon, 10 Feb 2020 12:02:48 +0100
From:   Walter Harms <wharms@bfs.de>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        Benjamin Peterson <benjamin@python.org>
CC:     "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>,
        "jwilk@jwilk.net" <jwilk@jwilk.net>,
        Mike Frysinger <vapier@gentoo.org>
Subject: AW: [PATCH v2] exit.3: Use hex for the status mask.
Thread-Topic: [PATCH v2] exit.3: Use hex for the status mask.
Thread-Index: AQHVwolAFI0MHDA8kkujwXcyUG4biagRSD8AgAM0+4U=
Date:   Mon, 10 Feb 2020 11:02:48 +0000
Message-ID: <64833eb8e6064d3aba5583b88c36c022@bfs.de>
References: <1537033056.1989189.1509225696.4324DB3A@webmail.messagingengine.com>
 <20180915173848.19733-1-benjamin@python.org>,<92a0961f-927c-703a-7d7a-16bdd98324d4@gmail.com>
In-Reply-To: <92a0961f-927c-703a-7d7a-16bdd98324d4@gmail.com>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.137.16.39]
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Spam-Status: No, score=-1.52
Authentication-Results: mx02-sz.bfs.de;
        none
X-Spamd-Result: default: False [-1.52 / 7.00];
         ARC_NA(0.00)[];
         TO_DN_EQ_ADDR_SOME(0.00)[];
         HAS_XOIP(0.00)[];
         FROM_HAS_DN(0.00)[];
         TO_DN_SOME(0.00)[];
         TO_MATCH_ENVRCPT_ALL(0.00)[];
         FREEMAIL_ENVRCPT(0.00)[gmail.com];
         TAGGED_RCPT(0.00)[];
         MIME_GOOD(-0.10)[text/plain];
         RCPT_COUNT_FIVE(0.00)[5];
         DKIM_SIGNED(0.00)[];
         NEURAL_HAM(-0.00)[-0.999,0];
         FREEMAIL_TO(0.00)[gmail.com];
         RCVD_NO_TLS_LAST(0.10)[];
         FROM_EQ_ENVFROM(0.00)[];
         MIME_TRACE(0.00)[0:+];
         RCVD_COUNT_TWO(0.00)[2];
         MID_RHS_MATCH_FROM(0.00)[];
         BAYES_HAM(-1.52)[91.82%]
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Its a bit late but  ...=20

we can be more direct here:

> +function causes normal process termination and the value of \fIstatus &
> +0xFF\fP is returned to the parent (see

function causes normal process termination and  only lowest 8 bits =20
(\fIstatus & 0xFF\fP) is returned to the parent (see

JM2C
re,
 wh

________________________________________
Von: linux-man-owner@vger.kernel.org <linux-man-owner@vger.kernel.org> im A=
uftrag von Michael Kerrisk (man-pages) <mtk.manpages@gmail.com>
Gesendet: Samstag, 8. Februar 2020 12:00
An: Benjamin Peterson
Cc: mtk.manpages@gmail.com; linux-man@vger.kernel.org; jwilk@jwilk.net; Mik=
e Frysinger
Betreff: Re: [PATCH v2] exit.3: Use hex for the status mask.

Hello Ben,

On 9/15/18 7:38 PM, Benjamin Peterson wrote:
> Admittedly, the POSIX specification for exit() also uses octal. However, =
0xFF
> immediately indicates the lowest 8 bits to me whereas I had to think a bi=
t about
> the octal mask.

Thanks. Patch applied. (Mike Frysinger provided a similar patch,
so I've noted you both in the commit.)

Cheers,

Michael

> ---
>  man2/_exit.2 | 2 +-
>  man3/exit.3  | 5 ++---
>  2 files changed, 3 insertions(+), 4 deletions(-)
>
> diff --git a/man2/_exit.2 b/man2/_exit.2
> index c55d2a612..6e656c8f4 100644
> --- a/man2/_exit.2
> +++ b/man2/_exit.2
> @@ -65,7 +65,7 @@ The process's parent is sent a
>  signal.
>  .PP
>  The value
> -.I "status & 0377"
> +.I "status & 0xFF"
>  is returned to the parent process as the process's exit status, and
>  can be collected using one of the
>  .BR wait (2)
> diff --git a/man3/exit.3 b/man3/exit.3
> index 4a30fc39f..b47ba17a1 100644
> --- a/man3/exit.3
> +++ b/man3/exit.3
> @@ -38,9 +38,8 @@ exit \- cause normal process termination
>  .SH DESCRIPTION
>  The
>  .BR exit ()
> -function causes normal process termination and the
> -value of \fIstatus & 0377\fP is returned to the parent
> -(see
> +function causes normal process termination and the value of \fIstatus &
> +0xFF\fP is returned to the parent (see
>  .BR wait (2)).
>  .PP
>  All functions registered with
>


--
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
