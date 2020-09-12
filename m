Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EE548267805
	for <lists+linux-man@lfdr.de>; Sat, 12 Sep 2020 07:55:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725833AbgILFzo (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 12 Sep 2020 01:55:44 -0400
Received: from smtpout1.mo804.mail-out.ovh.net ([79.137.123.220]:42163 "EHLO
        smtpout1.mo804.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1725808AbgILFzn (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 12 Sep 2020 01:55:43 -0400
Received: from mxplan6.mail.ovh.net (unknown [10.109.156.206])
        by mo804.mail-out.ovh.net (Postfix) with ESMTPS id 740CE60C143E;
        Sat, 12 Sep 2020 07:55:41 +0200 (CEST)
Received: from jwilk.net (37.59.142.101) by DAG4EX2.mxp6.local (172.16.2.32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2044.4; Sat, 12 Sep
 2020 07:55:40 +0200
Authentication-Results: garm.ovh; auth=pass (GARM-101G0045a2b1df6-972f-4404-a0d5-0be5a4bb7dbd,
                    843E792B4B45FCF64B3E3BD32F5655EBCB249E20) smtp.auth=jwilk@jwilk.net
Date:   Sat, 12 Sep 2020 07:55:38 +0200
From:   Jakub Wilk <jwilk@jwilk.net>
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
CC:     Michael Kerrisk <mtk.manpages@gmail.com>,
        <linux-man@vger.kernel.org>
Subject: Re: [PATCH 08/12] clock_getres.2: Cast 'time_t' to 'intmax_t' for
 printf() and fix the length modifiers
Message-ID: <20200912055538.sihehmrxj6xwlwxx@jwilk.net>
References: <20200911231411.28406-1-colomar.6.4.3@gmail.com>
 <20200911231411.28406-9-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <20200911231411.28406-9-colomar.6.4.3@gmail.com>
User-Agent: NeoMutt/20180716
X-Originating-IP: [37.59.142.101]
X-ClientProxiedBy: DAG8EX1.mxp6.local (172.16.2.71) To DAG4EX2.mxp6.local
 (172.16.2.32)
X-Ovh-Tracer-GUID: 5c1a1f05-1d5f-47f5-b539-95a5a6f63e8d
X-Ovh-Tracer-Id: 7123850185649739741
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduiedrudeitddgleekucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhepfffhvffukfhfgggtuggjfghisehttdertddtredvnecuhfhrohhmpeflrghkuhgsucghihhlkhcuoehjfihilhhksehjfihilhhkrdhnvghtqeenucggtffrrghtthgvrhhnpefhfedvfeehvefhkeeltdejgeelteefvdefvdduvdefgfduueeitdeitedvtdehgfenucfkpheptddrtddrtddrtddpfeejrdehledrudegvddruddtudenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhhouggvpehsmhhtphdqohhuthdphhgvlhhopehmgihplhgrnheirdhmrghilhdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomhepjhifihhlkhesjhifihhlkhdrnhgvthdprhgtphhtthhopehlihhnuhigqdhmrghnsehvghgvrhdrkhgvrhhnvghlrdhorhhg
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

* Alejandro Colomar <colomar.6.4.3@gmail.com>, 2020-09-12, 01:14:
>-    printf("%2ldh %2ldm %2lds", (ts.tv_sec % SECS_IN_DAY) / 3600,
>-            (ts.tv_sec % 3600) / 60, ts.tv_sec % 60);
>+    printf("%2jdh %2jdm %2jds",
>+            (intmax_t) (ts.tv_sec % SECS_IN_DAY) / 3600,
>+            (intmax_t) (ts.tv_sec % 3600) / 60,
>+            (intmax_t) ts.tv_sec % 60);

All these numbers are small, so %d and int casts would do the trick.

-- 
Jakub Wilk
