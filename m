Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 425E3268800
	for <lists+linux-man@lfdr.de>; Mon, 14 Sep 2020 11:11:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726157AbgINJL4 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 14 Sep 2020 05:11:56 -0400
Received: from smtpout1.mo529.mail-out.ovh.net ([178.32.125.2]:56225 "EHLO
        smtpout1.mo529.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1726110AbgINJLz (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 14 Sep 2020 05:11:55 -0400
Received: from mxplan6.mail.ovh.net (unknown [10.108.20.240])
        by mo529.mail-out.ovh.net (Postfix) with ESMTPS id 6B3FE5AD3AC4;
        Mon, 14 Sep 2020 11:11:53 +0200 (CEST)
Received: from jwilk.net (37.59.142.99) by DAG4EX2.mxp6.local (172.16.2.32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2044.4; Mon, 14 Sep
 2020 11:11:52 +0200
Authentication-Results: garm.ovh; auth=pass (GARM-99G00381758c09-68f1-4eea-ba26-4bb16c4f9dff,
                    A8E0A1E9161A397C22C7A1C69E9582D8773AC3FE) smtp.auth=jwilk@jwilk.net
Date:   Mon, 14 Sep 2020 11:11:50 +0200
From:   Jakub Wilk <jwilk@jwilk.net>
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
CC:     Michael Kerrisk <mtk.manpages@gmail.com>,
        <linux-man@vger.kernel.org>
Subject: Re: [PATCH v2 08/12] clock_getres.2: Cast 'time_t' very small,values
 to 'int' for printf() and fix the length modifiers
Message-ID: <20200914091150.66x6za5cn5s7xc4p@jwilk.net>
References: <20200911231411.28406-1-colomar.6.4.3@gmail.com>
 <20200911231411.28406-9-colomar.6.4.3@gmail.com>
 <20200912055538.sihehmrxj6xwlwxx@jwilk.net>
 <39788961-f3d2-af73-f6fe-9bdd79c1ca14@gmail.com>
 <9d6f2b87-c3b8-60fc-6363-e976b7acbe8b@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <9d6f2b87-c3b8-60fc-6363-e976b7acbe8b@gmail.com>
User-Agent: NeoMutt/20180716
X-Originating-IP: [37.59.142.99]
X-ClientProxiedBy: DAG3EX1.mxp6.local (172.16.2.21) To DAG4EX2.mxp6.local
 (172.16.2.32)
X-Ovh-Tracer-GUID: aecf30b8-bbd4-4b11-b7eb-c7191de1104e
X-Ovh-Tracer-Id: 3736017367320811485
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduiedrudeiiedgudefucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhepfffhvffukfhfgggtuggjfghisehttdertddtredvnecuhfhrohhmpeflrghkuhgsucghihhlkhcuoehjfihilhhksehjfihilhhkrdhnvghtqeenucggtffrrghtthgvrhhnpeeujeekvefhhfefudefueelfeeikeejfeeghfejgeejjeefgfevledvieetfeehteenucffohhmrghinhepkhgvrhhnvghlrdhorhhgnecukfhppedtrddtrddtrddtpdefjedrheelrddugedvrdelleenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhhouggvpehsmhhtphdqohhuthdphhgvlhhopehmgihplhgrnheirdhmrghilhdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomhepjhifihhlkhesjhifihhlkhdrnhgvthdprhgtphhtthhopehlihhnuhigqdhmrghnsehvghgvrhdrkhgvrhhnvghlrdhorhhg
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

* Alejandro Colomar <colomar.6.4.3@gmail.com>, 2020-09-12, 12:06:
>Jakub, I added a line acknowledging your review.
[...]
>Reviewed-by: Jakub Wilk <jwilk@jwilk.net>

I don't know about linux-man policies, but for the kernel development, 
Reviewed-by is not just an acknowledgment. It's a strong statement that 
is supposed to be added by the reviewer, not by the patch author:
https://www.kernel.org/doc/html/v5.8/process/submitting-patches.html#using-reported-by-tested-by-reviewed-by-suggested-by-and-fixes

-- 
Jakub Wilk
