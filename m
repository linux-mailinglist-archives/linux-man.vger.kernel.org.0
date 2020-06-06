Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0253C1F068E
	for <lists+linux-man@lfdr.de>; Sat,  6 Jun 2020 14:46:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728831AbgFFMqC (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 6 Jun 2020 08:46:02 -0400
Received: from mx01-sz.bfs.de ([194.94.69.67]:19505 "EHLO mx01-sz.bfs.de"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1728828AbgFFMqB (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Sat, 6 Jun 2020 08:46:01 -0400
Received: from SRVEX01-SZ.bfs.intern (exchange-sz.bfs.de [10.129.90.31])
        by mx01-sz.bfs.de (Postfix) with ESMTPS id A27F120302;
        Sat,  6 Jun 2020 14:45:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bfs.de; s=dkim201901;
        t=1591447558;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=jz6qrPJ6eZbTOtVMGVjU4LpVNJP3TfwzwcJrkov5IP4=;
        b=EF4Qo6RdAbk6evjjwQJAHifszaV+TtBzgYrIeemIgxkN4FkIu3E6F3L4W32akrQK5qc+uR
        Ec5f/H8lWgevyzdxmhnKB0lzr0+9nUesn1TJiympYHA8hRJKZ1AfmNafQu6JH3mW2Vng9p
        WnWQr+Xlhxr+T/IFHBUNVqgh/YoYYnq8dPq21qXBXPi/tZXvPIF7al3lmzopcgRqfCQ3lU
        9QFqw+1KYWFnMayyXrET5psyVhgH4qGtOGkqk7c9XrfyBBTROnGAFvUkFSeit4st6LH9pJ
        c+PAAmJ+quGftGAuseEBoGn+WG+e60ljhjQm0yzyGfabGb3lQOxgfBFtRSizBA==
Received: from SRVEX01-SZ.bfs.intern (10.129.90.31) by SRVEX01-SZ.bfs.intern
 (10.129.90.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.1.1913.5; Sat, 6 Jun 2020
 14:45:58 +0200
Received: from SRVEX01-SZ.bfs.intern ([fe80::7d2d:f9cb:2761:d24a]) by
 SRVEX01-SZ.bfs.intern ([fe80::7d2d:f9cb:2761:d24a%6]) with mapi id
 15.01.1913.005; Sat, 6 Jun 2020 14:45:58 +0200
From:   Walter Harms <wharms@bfs.de>
To:     John Marshall <John.W.Marshall@glasgow.ac.uk>,
        "mtk.manpages@gmail.com" <mtk.manpages@gmail.com>
CC:     "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
Subject: AW: random(3) and RAND_MAX
Thread-Topic: random(3) and RAND_MAX
Thread-Index: AQHWO12uQc3q+9KhbEeQvdYRDsPD3KjLh8mk
Date:   Sat, 6 Jun 2020 12:45:58 +0000
Message-ID: <627c601ec03b4da9b1ce98ee0e61a6ba@bfs.de>
References: <02185B3C-F6E5-4674-BB34-E549E04C5B37@glasgow.ac.uk>
In-Reply-To: <02185B3C-F6E5-4674-BB34-E549E04C5B37@glasgow.ac.uk>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.137.16.40]
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Spam-Status: No, score=-0.13
Authentication-Results: mx01-sz.bfs.de;
        none
X-Spamd-Result: default: False [-0.13 / 7.00];
         ARC_NA(0.00)[];
         TO_DN_EQ_ADDR_SOME(0.00)[];
         HAS_XOIP(0.00)[];
         FROM_HAS_DN(0.00)[];
         RCPT_COUNT_THREE(0.00)[3];
         FREEMAIL_ENVRCPT(0.00)[gmail.com];
         TO_MATCH_ENVRCPT_ALL(0.00)[];
         TAGGED_RCPT(0.00)[];
         MIME_GOOD(-0.10)[text/plain];
         TO_DN_SOME(0.00)[];
         DKIM_SIGNED(0.00)[];
         NEURAL_HAM(-0.00)[-1.000];
         FREEMAIL_TO(0.00)[glasgow.ac.uk,gmail.com];
         RCVD_NO_TLS_LAST(0.10)[];
         FROM_EQ_ENVFROM(0.00)[];
         MIME_TRACE(0.00)[0:+];
         RCVD_COUNT_TWO(0.00)[2];
         MID_RHS_MATCH_FROM(0.00)[];
         BAYES_HAM(-0.13)[67.40%]
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi John,
i have read the pages and you are right. POSIX says:
rand -> 0...RAND_MAX
random -> 0...2^31-1

that RAND_MAX is 2^31-1 in some cases does not matter. IMHO
it is wrong to mention RAND_MAX in the random page. it can
simply be replaced with (2**31-1)


re,
 wh
________________________________________
Von: linux-man-owner@vger.kernel.org <linux-man-owner@vger.kernel.org> im A=
uftrag von John Marshall <John.W.Marshall@glasgow.ac.uk>
Gesendet: Freitag, 5. Juni 2020 19:21:00
An: mtk.manpages@gmail.com
Cc: linux-man@vger.kernel.org
Betreff: random(3) and RAND_MAX

Observed in CentOS 8's man-pages-4.15-6.el8.x86_64 and also on man-pages Gi=
t master:

Man-pages's rand.3 says rand() returns values in the range [0, RAND_MAX] an=
d is very clear that this is inclusive. This is the same as the POSIX descr=
iption of rand(3).

Man-pages's random.3 says random() returns values "in the range from 0 to R=
AND_MAX". However POSIX describes random() as returning values "in the rang=
e from 0 to 2^31-1".

In practice glibc and musl both fix RAND_MAX as a constant 2^31-1 so on the=
se platforms it is the same thing. Similarly on macOS. It appears that Free=
BSD used to have a slightly lower value of RAND_MAX but several months ago =
raised it to 2^31-1 similarly. OTOH it appears that Windows, Cygwin, etc st=
ill use a much smaller value for RAND_MAX (32767) but the full POSIX range =
for random(3).

So random.3 describing the range as 0..RAND_MAX is correct on Linux (unless=
 you're using a very unusual libc) but misleading when used as a reference =
for writing code portable to other platforms. It would be good to change ra=
ndom.3 to refer to the hardcoded constant (2^31-1) instead of RAND_MAX (and=
 perhaps add a note that on Linux this is the same as RAND_MAX), or at leas=
t to add a note saying that RAND_MAX may be an unrelated value on other pla=
tforms.

Thanks,

    John
