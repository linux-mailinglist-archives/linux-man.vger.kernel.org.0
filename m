Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CEEC73371A1
	for <lists+linux-man@lfdr.de>; Thu, 11 Mar 2021 12:45:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232814AbhCKLoj (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 11 Mar 2021 06:44:39 -0500
Received: from mx01-muc.bfs.de ([193.174.230.67]:19727 "EHLO mx01-muc.bfs.de"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S232762AbhCKLoZ (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Thu, 11 Mar 2021 06:44:25 -0500
Received: from SRVEX01-SZ.bfs.intern (exchange-sz.bfs.de [10.129.90.31])
        by mx01-muc.bfs.de (Postfix) with ESMTPS id DF997205FB;
        Thu, 11 Mar 2021 12:44:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bfs.de; s=dkim201901;
        t=1615463063;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=3r73CCJCkn7xfeT3keBDrjMCkA3SThYvZU/P6lzf2s0=;
        b=o7aDtX/+DmLvp28kVGg4Y7jR++wOc0NiT/tFbphwRKOLZhuJJ4jUfdm3R+JxUDZ7q+ejvt
        aM/Cn02zipAyAJDGY12jDzSoL29SdfrEVPz8GH0Chds2AX1rMAgoyDIpZ10vW6kCK55umm
        8w9SpnuCXHu9eZt33QsbPxLc9I6C1EaxjcK04Yg8rAoAGCRG4j3PaQAJMdaR24VsVFct2B
        tdndJAOnh1ho8U4CYj++Wf6tD5ITA8/ORHo6V1hiafpmhjgjtGRSdr31iUhAz+7p5iZXsp
        cMJ54dxEKXElDDSsnD5g/1QDa31q3IRW6Sm7JUD7DfU28LnzLUmwhQmj3z3JGA==
Received: from SRVEX01-SZ.bfs.intern (10.129.90.31) by SRVEX01-SZ.bfs.intern
 (10.129.90.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.1.2176.2; Thu, 11 Mar
 2021 12:44:23 +0100
Received: from SRVEX01-SZ.bfs.intern ([fe80::7d2d:f9cb:2761:d24a]) by
 SRVEX01-SZ.bfs.intern ([fe80::7d2d:f9cb:2761:d24a%13]) with mapi id
 15.01.2176.009; Thu, 11 Mar 2021 12:44:23 +0100
From:   Walter Harms <wharms@bfs.de>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>,
        "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
CC:     linux-man <linux-man@vger.kernel.org>
Subject: AW: Formatting very long function parameters
Thread-Topic: Formatting very long function parameters
Thread-Index: AQHXFCK3Gm6M4rlbKkqG8Km0tyjM16p+o1Dt
Date:   Thu, 11 Mar 2021 11:44:22 +0000
Message-ID: <d461cc53f343497f81c6d69ddd6e39e0@bfs.de>
References: <2e686e13-f846-573f-1468-5e652d571e89@gmail.com>
In-Reply-To: <2e686e13-f846-573f-1468-5e652d571e89@gmail.com>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.137.16.39]
x-tm-as-product-ver: SMEX-14.0.0.3080-8.6.1012-26022.007
x-tm-as-result: No-10--1.107300-5.000000
x-tmase-matchedrid: lfH7Ftdh6lTRubRCcrbc5grcxrzwsv5u3dCmvEa6IiGoLZarzrrPmfHu
        /mWxDlWEd04MXTR6LNtjGvdUjvxVIwtIvqWw+95Bfc7cX82yHHn4T77osY+qZLZ52dbbIRC1eGa
        nbc2gJXrHE4B47ECvKw+TJ37QYCKfwBhAKrgQyUzxWp8B+pjaLLhtqao0t6AyL8T/ZwUMtp2kxz
        5YYxZPVtuVSfsUemGzD7DIkiE79VUhHNYjiLo2mqJVTu7sjgg1ihzZ9XQG969psnGGIgWMmR/po
        FKGNxRgR/bO+8EaduOgoXoUEzjiCYJeUXYfLk0B3nHtGkYl/VrId1+nCKlIfuCbuVI7hVbLhmPN
        hzYtFr6L+MyqpPkqmhrMy4f0beZvr78SC5iivxyDGx/OQ1GV8t0H8LFZNFG76sBnwpOylLMZLAI
        GGrBDHeh3MveuqWJQAvKfR9tR5fJZ61riwupJKI0eDYFPqxupTV7VBYl+y3DW2CtZS25f4DAXyc
        obXYegFA9mgOQ/qoWpwXEL6auHLVbBLfKusMEl3q5/wFAM7/sldSrg7jJgh37cGd19dSFd
x-tm-as-user-approved-sender: No
x-tm-as-user-blocked-sender: No
x-tmase-result: 10--1.107300-5.000000
x-tmase-version: SMEX-14.0.0.3080-8.6.1012-26022.007
x-tm-snts-smtp: 0624E821570D716750802EE0C708D0EEFB0DB84A259DB8BA6B77C56B7F76ABFA2000:9
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Spamd-Result: default: False [-16.67 / 7.00];
         ARC_NA(0.00)[];
         HAS_XOIP(0.00)[];
         FROM_HAS_DN(0.00)[];
         RCPT_COUNT_THREE(0.00)[3];
         FREEMAIL_ENVRCPT(0.00)[gmail.com];
         TO_MATCH_ENVRCPT_ALL(0.00)[];
         TAGGED_RCPT(0.00)[];
         MIME_GOOD(-0.10)[text/plain];
         URIBL_BLOCKED(0.00)[alejandro-colomar.es:url];
         DKIM_SIGNED(0.00)[bfs.de:s=dkim201901];
         TO_DN_ALL(0.00)[];
         WHITELIST_LOCAL_IP(-15.00)[10.129.90.31];
         FREEMAIL_TO(0.00)[gmail.com];
         RCVD_NO_TLS_LAST(0.10)[];
         FROM_EQ_ENVFROM(0.00)[];
         MIME_TRACE(0.00)[0:+];
         RCVD_COUNT_TWO(0.00)[2];
         MID_RHS_MATCH_FROM(0.00)[];
         BAYES_HAM(-1.67)[92.92%]
Authentication-Results: mx01-muc.bfs.de;
        none
X-Spam-Status: No, score=-16.67
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

hi,
since no one answered i will give my personal view:
I would go for A)
if that does not fit try to compress names (if possible)
and ignore the 78 Char boundary.

NTL:
having names that long is questionable in the first place
(not your fault, i know).

re,
 wh
________________________________________
Von: Alejandro Colomar (man-pages) <alx.manpages@gmail.com>
Gesendet: Montag, 8. M=E4rz 2021 14:54:01
An: Michael Kerrisk (man-pages)
Cc: linux-man
Betreff: Formatting very long function parameters

Hi Michael,

I have a problem with pthread_mutexattr_getpshared(3).
After adding 'restrict', the first parameter alone would use 81 columns,
so I came with 3 options:

A)      Move the parameter to a new line,
        leaving the open parenthesis at the end of a line.

[
        int pthread_mutexattr_getpshared(
                                      const pthread_mutexattr_t
*restrict attr,
                                      int *restrict pshared);
        int pthread_mutexattr_setpshared(pthread_mutexattr_t *attr,
                                      int pshared);
]

B)      Compact the pointer to use only 80 columns,
        by deleting a cosmetic whitespace,
        and exceptionally ignore the 78-column right margin.

[
        int pthread_mutexattr_getpshared(const
pthread_mutexattr_t*restrict attr,
                                         int *restrict pshared);
        int pthread_mutexattr_setpshared(pthread_mutexattr_t *attr,
                                         int pshared);
]

C)      (What POSIX does) Break the 1st parameter at the pointer:

[
        int pthread_mutexattr_getpshared(const pthread_mutexattr_t
                                         *restrict attr,
                                         int *restrict pshared);
        int pthread_mutexattr_setpshared(pthread_mutexattr_t *attr,
                                         int pshared);
]


I did the 1st one, but I'm not sure about it.  Do you have any preference?

This is only problematic when both the function name and the 1st
parameter are very long, which is rare, so it shouldn't appear in many
pages.  I don't expect to find another case.  Option B) might not be an
option if there are more like this (if those use >82 columns).

Thanks,

Alex

--
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
