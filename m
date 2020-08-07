Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 38B5323E81A
	for <lists+linux-man@lfdr.de>; Fri,  7 Aug 2020 09:43:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726923AbgHGHnr (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 7 Aug 2020 03:43:47 -0400
Received: from mx01-sz.bfs.de ([194.94.69.67]:60572 "EHLO mx01-sz.bfs.de"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1725805AbgHGHnr (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Fri, 7 Aug 2020 03:43:47 -0400
X-Greylist: delayed 424 seconds by postgrey-1.27 at vger.kernel.org; Fri, 07 Aug 2020 03:43:45 EDT
Received: from SRVEX01-SZ.bfs.intern (exchange-sz.bfs.de [10.129.90.31])
        by mx01-sz.bfs.de (Postfix) with ESMTPS id 495ED2044F;
        Fri,  7 Aug 2020 09:36:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bfs.de; s=dkim201901;
        t=1596785798;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=uSgnbwZNsvaXAj5ykFB5zMWiBSvvUbcAk6o4CE65DyM=;
        b=fn4ERJecC2ra4sQG8jwDJiIN0bdaqA5FIVStPIrq/uSAciC43AIT8XEEI5kRt2GmbiGvAh
        vObK7/UDJ9f/1EVTuanMzFc4vrFBtLLnh/shqadmglNtJWgnuXvBOqSMFxE4MsNKM/61Lv
        nUhtyR11iuqpHUwFqnbNbAW/JyDbij6wFuP8lp+zM9qW9Fy/aEGLndueiijdAozq8VkaWi
        40hUrQyZiwv1T5imP7RFf1o/i854fKZBV4AUFk08nH5aYISPdMAXUQLXZIzWxu9LxUDkSf
        MXnkvJz4o/SDrIqzdXGBjnGWAAB9/uRT1aCj+yqnqUyCz+B0nC8LusP8gXI5SA==
Received: from SRVEX01-SZ.bfs.intern (10.129.90.31) by SRVEX01-SZ.bfs.intern
 (10.129.90.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.1.2044.4; Fri, 7 Aug 2020
 09:36:37 +0200
Received: from SRVEX01-SZ.bfs.intern ([fe80::7d2d:f9cb:2761:d24a]) by
 SRVEX01-SZ.bfs.intern ([fe80::7d2d:f9cb:2761:d24a%6]) with mapi id
 15.01.2044.004; Fri, 7 Aug 2020 09:36:37 +0200
From:   Walter Harms <wharms@bfs.de>
To:     Yang Xu <xuyang2018.jy@cn.fujitsu.com>,
        "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
Subject: AW: [PATCH v2 2/3] loop.4: add some details about lo_flag
Thread-Topic: [PATCH v2 2/3] loop.4: add some details about lo_flag
Thread-Index: AQHWa9blucxVrdjxxUaJJX0mE9lFJqksP6gn
Date:   Fri, 7 Aug 2020 07:36:37 +0000
Message-ID: <f25c32a3f4934b329523505796964f63@bfs.de>
References: <1596707314-2361-1-git-send-email-xuyang2018.jy@cn.fujitsu.com>,<1596707314-2361-2-git-send-email-xuyang2018.jy@cn.fujitsu.com>
In-Reply-To: <1596707314-2361-2-git-send-email-xuyang2018.jy@cn.fujitsu.com>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.137.16.39]
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Spam-Status: No, score=-0.33
Authentication-Results: mx01-sz.bfs.de;
        none
X-Spamd-Result: default: False [-0.33 / 7.00];
         ARC_NA(0.00)[];
         TO_DN_EQ_ADDR_SOME(0.00)[];
         HAS_XOIP(0.00)[];
         FROM_HAS_DN(0.00)[];
         TO_DN_SOME(0.00)[];
         TO_MATCH_ENVRCPT_ALL(0.00)[];
         MIME_GOOD(-0.10)[text/plain];
         DKIM_SIGNED(0.00)[];
         RCPT_COUNT_TWO(0.00)[2];
         NEURAL_HAM(-0.00)[-1.034];
         RCVD_NO_TLS_LAST(0.10)[];
         FROM_EQ_ENVFROM(0.00)[];
         MIME_TRACE(0.00)[0:+];
         RCVD_COUNT_TWO(0.00)[2];
         MID_RHS_MATCH_FROM(0.00)[];
         BAYES_HAM(-0.33)[75.76%]
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi,
IMHO "first" and "last" is something that should be avoided in documentatio=
n
because the meaning may change in future releases.
I guess you want to say: lo_number and reserved ?

re,
 wh
________________________________________
Von: linux-man-owner@vger.kernel.org [linux-man-owner@vger.kernel.org] im A=
uftrag von Yang Xu [xuyang2018.jy@cn.fujitsu.com]
Gesendet: Donnerstag, 6. August 2020 11:48
An: linux-man@vger.kernel.org
Cc: Yang Xu
Betreff: [PATCH v2 2/3] loop.4: add some details about lo_flag

Signed-off-by: Yang Xu <xuyang2018.jy@cn.fujitsu.com>
---
 man4/loop.4 | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/man4/loop.4 b/man4/loop.4
index 1f8a31ac7..41abe0122 100644
--- a/man4/loop.4
+++ b/man4/loop.4
@@ -136,6 +136,9 @@ Allow automatic partition scanning.
 Use direct io mode to access backing file.
 .RE
 .TP
+.I The LOOP_SET_STATUS can not set the first and last flag because
+they are both set from kernel.
+.TP
 .B LOOP_GET_STATUS
 Get the status of the loop device.
 The (third)
--
2.23.0



