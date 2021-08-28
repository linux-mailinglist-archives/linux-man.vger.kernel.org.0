Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3E7373FA3ED
	for <lists+linux-man@lfdr.de>; Sat, 28 Aug 2021 08:02:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231277AbhH1GDU (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 28 Aug 2021 02:03:20 -0400
Received: from 2.mo52.mail-out.ovh.net ([178.33.105.233]:47741 "EHLO
        2.mo52.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229555AbhH1GDT (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 28 Aug 2021 02:03:19 -0400
Received: from mxplan6.mail.ovh.net (unknown [10.109.138.84])
        by mo52.mail-out.ovh.net (Postfix) with ESMTPS id 095DF29362C;
        Sat, 28 Aug 2021 07:43:57 +0200 (CEST)
Received: from jwilk.net (37.59.142.98) by DAG4EX2.mxp6.local (172.16.2.32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2308.14; Sat, 28 Aug
 2021 07:43:56 +0200
Authentication-Results: garm.ovh; auth=pass (GARM-98R0028ec08f19-d282-4bb5-8793-9cb570d5b6a4,
                    A7100FD8A71B160B0718D30BD9623DBC5BAA9910) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp: 5.173.41.13
Date:   Sat, 28 Aug 2021 07:43:55 +0200
From:   Jakub Wilk <jwilk@jwilk.net>
To:     Alejandro Colomar <alx.manpages@gmail.com>
CC:     David Sletten <david.paul.sletten@gmail.com>,
        <linux-man@vger.kernel.org>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Subject: Re: Error in 'man operator'
Message-ID: <20210828054326.nh4tsfce3nvlxirc@jwilk.net>
References: <4cc4d818-58ad-529e-dd25-df3cb0fae66d@gmail.com>
 <71c78812-940e-8c15-c9ae-0dcde955232d@gmail.com>
 <40cbdcb1-1356-b749-ed53-61ed9dc2dd2e@gmail.com>
 <6666465a-ad5d-d8f7-92b1-35733f645961@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <6666465a-ad5d-d8f7-92b1-35733f645961@gmail.com>
User-Agent: NeoMutt/20180716
X-Originating-IP: [37.59.142.98]
X-ClientProxiedBy: DAG9EX1.mxp6.local (172.16.2.81) To DAG4EX2.mxp6.local
 (172.16.2.32)
X-Ovh-Tracer-GUID: 32a5e4ea-bf7e-43a8-9739-d88d392edd29
X-Ovh-Tracer-Id: 14779688079781582816
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvtddruddugedgleekucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhepfffhvffukfhfgggtuggjfghisehttdertddtredvnecuhfhrohhmpeflrghkuhgsucghihhlkhcuoehjfihilhhksehjfihilhhkrdhnvghtqeenucggtffrrghtthgvrhhnpefhfedvfeehvefhkeeltdejgeelteefvdefvdduvdefgfduueeitdeitedvtdehgfenucfkpheptddrtddrtddrtddpfeejrdehledrudegvddrleeknecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmohguvgepshhmthhpqdhouhhtpdhhvghlohepmhigphhlrghniedrmhgrihhlrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpehjfihilhhksehjfihilhhkrdhnvghtpdhrtghpthhtohepmhhtkhdrmhgrnhhprghgvghssehgmhgrihhlrdgtohhm
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

* Alejandro Colomar <alx.manpages@gmail.com>, 2021-08-28, 02:17:
>Hmm, I just came up with some very stupid piece of code that can show 
>the different precedence between "unary operators" and "cast 
>operators":
>
>sizeof(int)x;

Perhaps a more vivid example would be:

   sizeof (int) + 1

which is parsed as 

   (sizeof (int)) + 1

rather than:

   sizeof ((int) +1)

-- 
Jakub Wilk
