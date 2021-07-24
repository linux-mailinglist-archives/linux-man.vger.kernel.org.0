Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8B9833D48AE
	for <lists+linux-man@lfdr.de>; Sat, 24 Jul 2021 18:59:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229609AbhGXQTD (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 24 Jul 2021 12:19:03 -0400
Received: from 2.mo52.mail-out.ovh.net ([178.33.105.233]:60435 "EHLO
        2.mo52.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229530AbhGXQTD (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 24 Jul 2021 12:19:03 -0400
X-Greylist: delayed 1187 seconds by postgrey-1.27 at vger.kernel.org; Sat, 24 Jul 2021 12:19:03 EDT
Received: from mxplan6.mail.ovh.net (unknown [10.109.143.186])
        by mo52.mail-out.ovh.net (Postfix) with ESMTPS id 0F6352855B0;
        Sat, 24 Jul 2021 18:39:47 +0200 (CEST)
Received: from jwilk.net (37.59.142.101) by DAG4EX2.mxp6.local (172.16.2.32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2308.14; Sat, 24 Jul
 2021 18:39:46 +0200
Authentication-Results: garm.ovh; auth=pass (GARM-101G00451778917-4855-4d75-96d8-5ea852f7ca32,
                    8D5CC3B75530A0E1625F73973F455CDD864D3173) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp: 5.173.65.118
Date:   Sat, 24 Jul 2021 18:39:44 +0200
From:   Jakub Wilk <jwilk@jwilk.net>
To:     Viet Than <thanhoangviet@gmail.com>
CC:     <linux-man@vger.kernel.org>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        Alejandro Colomar <alx.manpages@gmail.com>
Subject: Re: [PATCH] time.2: wfix regarding year-2038
Message-ID: <20210724163944.cqp66jrpipj2khn6@jwilk.net>
References: <CAL9Lf7yvYytb3Q9mHfK-dkxhk+80R1jGB5eRL_w7+qXDQG2RTw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <CAL9Lf7yvYytb3Q9mHfK-dkxhk+80R1jGB5eRL_w7+qXDQG2RTw@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-Originating-IP: [37.59.142.101]
X-ClientProxiedBy: DAG4EX1.mxp6.local (172.16.2.31) To DAG4EX2.mxp6.local
 (172.16.2.32)
X-Ovh-Tracer-GUID: 8733785d-ad68-42fa-afda-30e448bd3e2d
X-Ovh-Tracer-Id: 4778882156541171680
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvtddrgedtgddutdduucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhepfffhvffukfhfgggtuggjfghisehttdertddtredvnecuhfhrohhmpeflrghkuhgsucghihhlkhcuoehjfihilhhksehjfihilhhkrdhnvghtqeenucggtffrrghtthgvrhhnpefhfedvfeehvefhkeeltdejgeelteefvdefvdduvdefgfduueeitdeitedvtdehgfenucfkpheptddrtddrtddrtddpfeejrdehledrudegvddruddtudenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhhouggvpehsmhhtphdqohhuthdphhgvlhhopehmgihplhgrnheirdhmrghilhdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomhepjhifihhlkhesjhifihhlkhdrnhgvthdprhgtphhtthhopegrlhigrdhmrghnphgrghgvshesghhmrghilhdrtghomh
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

* Viet Than <thanhoangviet@gmail.com>, 2021-07-24, 11:52:
>The old description led me to believe 2038-01-19 03:14:08 UTC==2**31

This is correct.

>therefore would still be valid,

No, 2**31 is the first value that doesn't fit 32-bit time_t.

> is a signed 32-bit integer and the clock ticks past the time 2**31
>-(2038-01-19 03:14:08 UTC, ignoring leap seconds).

I suppose this should say "...the clock reaches the time 2**31",
and then we can keep the parenthetical as is.

-- 
Jakub Wilk
