Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EA46D3188E2
	for <lists+linux-man@lfdr.de>; Thu, 11 Feb 2021 12:01:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229803AbhBKK65 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 11 Feb 2021 05:58:57 -0500
Received: from mx01-muc.bfs.de ([193.174.230.67]:33360 "EHLO mx01-muc.bfs.de"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S231204AbhBKKzo (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Thu, 11 Feb 2021 05:55:44 -0500
Received: from SRVEX01-SZ.bfs.intern (exchange-sz.bfs.de [10.129.90.31])
        by mx01-muc.bfs.de (Postfix) with ESMTPS id 3AE002040F;
        Thu, 11 Feb 2021 11:54:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bfs.de; s=dkim201901;
        t=1613040888;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=sKBlI3MXHMcbVUN3sti9XQgmnbx/w/YLULoRL7iLCdg=;
        b=gBFlrfG74sAYnwFN+IYw3S5T1kHt3xP/gavD5WqiavZ6rokDI/Fyub+eiWj3/xYuQ7qz56
        MQLsJHEU7c19vyQV8G/XG+MM++WaZEthgXK5IAjUyjlROaDVJaasva70KxDsz7c1ihiSys
        WzWDW19cLV4OBDEhN0qU4GwktqSJGoZx3vOo0sxuTRRdk/rGLz8qylDwp/zDui0+072kWR
        FDgN3MolWo2UuZa6Wf5XdkJKUdbb2wQqDNC2qSyqHAws8IpeSZMrRNgvvvN3/5IKQ0zVpt
        zofEsfw+RK8VdU9ci6/lnMsjY/6hBAOYXW/ulZYPYSnprEjeSRmtXwRTg9p1mw==
Received: from SRVEX01-SZ.bfs.intern (10.129.90.31) by SRVEX01-SZ.bfs.intern
 (10.129.90.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.1.2176.2; Thu, 11 Feb
 2021 11:54:47 +0100
Received: from SRVEX01-SZ.bfs.intern ([fe80::7d2d:f9cb:2761:d24a]) by
 SRVEX01-SZ.bfs.intern ([fe80::7d2d:f9cb:2761:d24a%13]) with mapi id
 15.01.2176.002; Thu, 11 Feb 2021 11:54:47 +0100
From:   Walter Harms <wharms@bfs.de>
To:     "xenoantares@gmx.net" <xenoantares@gmx.net>,
        "mtk.manpages@gmail.com" <mtk.manpages@gmail.com>,
        "alx.manpages@gmail.com" <alx.manpages@gmail.com>
CC:     "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
Subject: AW: expm1(3p): Mathematical error in given example
Thread-Topic: expm1(3p): Mathematical error in given example
Thread-Index: AQHXAF3aiVF9qJ38E06xMmokJnZeDqpSxqst
Date:   Thu, 11 Feb 2021 10:54:47 +0000
Message-ID: <58d4a802d07e43cb9a819ddd5b974ed3@bfs.de>
References: <1169008777.20210211105918@gmx.net>
In-Reply-To: <1169008777.20210211105918@gmx.net>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.137.16.40]
x-tm-as-product-ver: SMEX-14.0.0.3080-8.6.1012-25966.007
x-tm-as-result: No-10--0.169900-5.000000
x-tmase-matchedrid: m4O0KhaxV9YI9V8p1Mx66RvgzEPRJaDEKQNhMboqZloTiSW9r3PknMru
        gDwhJXcQFw3Dcysa71eK1ER6Kzgw0bUTHWEyxwgubWgRGvgWOREtxMagbN9/PDqUJVT3gpbTCKY
        y3pNJdaWDhe3PfUIRg4YO7tKEBY9ncWEseiwTynqayB7gmaTM5U+crEA4+nhZKRCWXb5AiRVm+j
        6YVbX2YFdXWty7IWL1PJ5LkgpVFu9izSFnFvAKDZ1U1lojafr/ZU1VUH/N/qSbKItl61J/yZkw8
        KdMzN86KrauXd3MZDUx3aOcczvmuL/1+Uc5TxrXhES6e799D0NZSp1HgJ9pvQ5cAmjp9k/ifFCu
        wNzrjRe0OCrl9k5AJkwDChkIOQwKQw0dk3cPGu3FYFuX4xC9sXApsmbw8EMtreWoUbwyBi2trdV
        Vx3oRXuqhTICYOFJ/
x-tm-as-user-approved-sender: No
x-tm-as-user-blocked-sender: No
x-tmase-result: 10--0.169900-5.000000
x-tmase-version: SMEX-14.0.0.3080-8.6.1012-25966.007
x-tm-snts-smtp: EC82D99EC79DBFEFE9EAC6BAA646B1BC0FEF1E2A27AC3D19FB61F07687A821B92000:9
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Spam-Status: No, score=0.01
X-Spamd-Result: default: False [0.01 / 7.00];
         ARC_NA(0.00)[];
         TO_DN_EQ_ADDR_SOME(0.00)[];
         HAS_XOIP(0.00)[];
         FROM_HAS_DN(0.00)[];
         RCPT_COUNT_THREE(0.00)[4];
         FREEMAIL_ENVRCPT(0.00)[gmx.net,gmail.com];
         TO_MATCH_ENVRCPT_ALL(0.00)[];
         TAGGED_RCPT(0.00)[];
         MIME_GOOD(-0.10)[text/plain];
         TO_DN_SOME(0.00)[];
         BAYES_HAM(-1.49)[91.59%];
         DKIM_SIGNED(0.00)[bfs.de:s=dkim201901];
         NEURAL_HAM(-0.00)[-1.000];
         FREEMAIL_TO(0.00)[gmx.net,gmail.com];
         RCVD_NO_TLS_LAST(0.10)[];
         FROM_EQ_ENVFROM(0.00)[];
         MIME_TRACE(0.00)[0:+];
         RCVD_COUNT_TWO(0.00)[2];
         MID_RHS_MATCH_FROM(0.00)[];
         SUSPICIOUS_RECIPS(1.50)[]
Authentication-Results: mx01-muc.bfs.de;
        none
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

yes, this is wrong on the webpage but issems a converter bug.
when i look at the page in ascii i see:  ((1+x)**n-1)/x.

the same problem arises on other place like:
These functions shall compute ex-1.0.
should read: e**x-1.0

NTL: thx for info

 wh
________________________________________
Von: xenoantares@gmx.net <xenoantares@gmx.net>
Gesendet: Donnerstag, 11. Februar 2021 10:59:18
An: mtk.manpages@gmail.com; alx.manpages@gmail.com
Cc: linux-man@vger.kernel.org
Betreff: expm1(3p): Mathematical error in given example

  Hi there!

In the APPLICATION USAGE section of expm1(3p)[1] the given example is wrong=
:

=3D=3D=3D8<=3D=3D=3D Snip =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

[..] calculations of ((1+x)n-1)/x, namely:

           expm1(n * log1p(x))/x

=3D=3D=3D=3D=3D=3D=3D=3D Snap =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D>8=3D=3D=3D

Actually, both expressions are not equal, rather

 expm1(n * log1p(x))/x =3D ((1+x)**n - 1)/x

(with a fictional ** as power infix-operator) would be.


  Best regards
          -- XA

____
[1] As of version to be found at
    https://man7.org/linux/man-pages/man3/expm1.3p.html
--
XenoAntares

