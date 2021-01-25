Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4AD073023A9
	for <lists+linux-man@lfdr.de>; Mon, 25 Jan 2021 11:31:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727614AbhAYK0t (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 25 Jan 2021 05:26:49 -0500
Received: from mx01-sz.bfs.de ([194.94.69.67]:61445 "EHLO mx01-sz.bfs.de"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1727584AbhAYK0P (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Mon, 25 Jan 2021 05:26:15 -0500
Received: from SRVEX01-SZ.bfs.intern (exchange-sz.bfs.de [10.129.90.31])
        by mx01-sz.bfs.de (Postfix) with ESMTPS id C76B02035F;
        Mon, 25 Jan 2021 11:25:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bfs.de; s=dkim201901;
        t=1611570304;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=TgwpB4rgRr16/Mp5T5gRuwTLBAjbxLiKLNwqLtzdTrc=;
        b=mTThv+VsZ5gSP7XubSfrTol1RSmlg6p6jEuF82axTeC26Jia7xMMtbMPMaTJHmXMY/WOCs
        YMqIerL9Mlrg3+F8v0UzdJH9DX9pGtdqw4CMY282y9t2lYPjh7OdOX3v6S+yTYjMu7jZGp
        l5fqcjCn255p9sjQyOfwgPWPiwu4cmBCg6ldDQij8+Zy+hAorCOywONeVtJ8a7LqFI3fnz
        dLNeXvVPONABJre0l1bnEGNEC9DH52TIrKtmUCIdTfisQbw/kzemx0AGEodPCHwLE9fTcG
        lJZBjExvqvEjlBFCWA0FpI2UnRl//r2UMc6YrU9kKYYUTmky38ITdUd9DORPEA==
Received: from SRVEX01-SZ.bfs.intern (10.129.90.31) by SRVEX01-SZ.bfs.intern
 (10.129.90.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.1.2176.2; Mon, 25 Jan
 2021 11:25:04 +0100
Received: from SRVEX01-SZ.bfs.intern ([fe80::7d2d:f9cb:2761:d24a]) by
 SRVEX01-SZ.bfs.intern ([fe80::7d2d:f9cb:2761:d24a%13]) with mapi id
 15.01.2176.002; Mon, 25 Jan 2021 11:25:04 +0100
From:   Walter Harms <wharms@bfs.de>
To:     Peng Yu <pengyu.ut@gmail.com>,
        "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
Subject: AW: How to deal with colliding filenames?
Thread-Topic: How to deal with colliding filenames?
Thread-Index: AQHW8bFLjagCy6c+70+c3OFnum7OOqo4JIBP
Date:   Mon, 25 Jan 2021 10:25:03 +0000
Message-ID: <0a6cb23035a64fb4aacb165b5f6ad5b8@bfs.de>
References: <CABrM6wk4Fy5d7EiqgdZEDGw8Cz31n47MLDUV7=eantZu1Apb4w@mail.gmail.com>
In-Reply-To: <CABrM6wk4Fy5d7EiqgdZEDGw8Cz31n47MLDUV7=eantZu1Apb4w@mail.gmail.com>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.137.16.40]
x-tm-as-product-ver: SMEX-14.0.0.3080-8.6.1012-25754.007
x-tm-as-result: No-10--1.486800-5.000000
x-tmase-matchedrid: CDTSlS88fVTRubRCcrbc5pzEHTUOuMX33dCmvEa6IiGoLZarzrrPme6m
        nNpCpq8IG1+TaFaL9YjuJw5dHIOpquNEP5iPYOC2oBIBeify7bwCn5QffvZFlYopDG0xp4MKsKF
        vJaID/xRtGpev2mVwX9TIWL7zq2viR9fQDKDdQ3eJUlmL3Uj0mLFPTb5VFSmp5DjmdW0+qbH4Rs
        ZrLYK1/I38/gUUnm0IVWMmXrD714fuKBhavMuvYyqRJ4M9q7OvekMgTOQbVFvjDtHs/gjS0i93G
        1kmDedMLo6CL02K6KsErxo5p8V1/L9ZdlL8eonat8gNin+iCMfEQdG7H66TyHEqm8QYBtMOoebX
        YhnCFK5kEsN/A/s664JPWJB37hIzoQuZceucyFk0j0ORHoFKHZ2lsXz1bhzjnn/KzbwPFBus2L/
        bJiaC5Qi04O/UVkO4N1pRFGSs9tESqYjk3fnDyLppqnzBg9PkSY5jHiC5roY=
x-tm-as-user-approved-sender: No
x-tm-as-user-blocked-sender: No
x-tmase-result: 10--1.486800-5.000000
x-tmase-version: SMEX-14.0.0.3080-8.6.1012-25754.007
x-tm-snts-smtp: 80E0ED713539366A707AA98FD310E1C45CC3B8CAFCE8328C060F841AA2B9BFF92000:9
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Authentication-Results: mx01-sz.bfs.de;
        none
X-Spam-Status: No, score=0.83
X-Spamd-Result: default: False [0.83 / 7.00];
         ARC_NA(0.00)[];
         TO_DN_EQ_ADDR_SOME(0.00)[];
         HAS_XOIP(0.00)[];
         FROM_HAS_DN(0.00)[];
         TO_DN_SOME(0.00)[];
         FREEMAIL_ENVRCPT(0.00)[gmail.com];
         TO_MATCH_ENVRCPT_ALL(0.00)[];
         TAGGED_RCPT(0.00)[];
         MIME_GOOD(-0.10)[text/plain];
         DKIM_SIGNED(0.00)[bfs.de:s=dkim201901];
         RCPT_COUNT_TWO(0.00)[2];
         NEURAL_HAM(-0.00)[-1.000];
         FREEMAIL_TO(0.00)[gmail.com,vger.kernel.org];
         RCVD_NO_TLS_LAST(0.10)[];
         FROM_EQ_ENVFROM(0.00)[];
         MIME_TRACE(0.00)[0:+];
         SUBJECT_ENDS_QUESTION(1.00)[];
         RCVD_COUNT_TWO(0.00)[2];
         MID_RHS_MATCH_FROM(0.00)[];
         BAYES_HAM(-0.17)[69.63%]
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

I quick search on the  net revealed:

https://documentation.spryker.com/docs/ht-case-sensitive-file-system-mac

It seams that the FS is actually case sensitive but someone wanted compatib=
ility with buggy Win-ports.
________________________________________
Von: Peng Yu <pengyu.ut@gmail.com>
Gesendet: Samstag, 23. Januar 2021 18:54:05
An: linux-man@vger.kernel.org
Betreff: How to deal with colliding filenames?

Hi,

https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git
https://git.kernel.org/pub/scm/docs/man-pages/man-pages-posix.git

When I tried to clone the above repos on Mac OS X, I got the following
errors. The default disk on Mac OS X is not case sensitive. How to
deal with such a problem? Thanks.

warning: the following paths have collided (e.g. case-sensitive paths
on a case-insensitive filesystem) and only one from the same
colliding group is in the working tree:

  'man2/_Exit.2'
  'man2/_exit.2'
  'man3/NAN.3'
  'man3/nan.3'

warning: the following paths have collided (e.g. case-sensitive paths
on a case-insensitive filesystem) and only one from the same
colliding group is in the working tree:

  'man-pages-posix-2003/man3p/_Exit.3p'
  'man-pages-posix-2003/man3p/_exit.3p'

--
Regards,
Peng
