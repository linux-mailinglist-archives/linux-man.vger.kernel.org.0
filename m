Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5C28324E670
	for <lists+linux-man@lfdr.de>; Sat, 22 Aug 2020 10:42:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725924AbgHVImo (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 22 Aug 2020 04:42:44 -0400
Received: from smtpout1.mo804.mail-out.ovh.net ([79.137.123.220]:51505 "EHLO
        smtpout1.mo804.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1725877AbgHVImn (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 22 Aug 2020 04:42:43 -0400
Received: from mxplan6.mail.ovh.net (unknown [10.109.143.167])
        by mo804.mail-out.ovh.net (Postfix) with ESMTPS id F01475992276;
        Sat, 22 Aug 2020 10:42:40 +0200 (CEST)
Received: from jwilk.net (37.59.142.103) by DAG4EX2.mxp6.local (172.16.2.32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1979.3; Sat, 22 Aug
 2020 10:42:40 +0200
Authentication-Results: garm.ovh; auth=pass (GARM-103G005887434ee-3065-4501-a5c6-9ba4f763b720,
                    0757F9ECDC574B1294C6F9B57BB3441E5D059665) smtp.auth=jwilk@jwilk.net
Date:   Sat, 22 Aug 2020 10:42:38 +0200
From:   Jakub Wilk <jwilk@jwilk.net>
To:     Michael Kerrisk <mtk.manpages@gmail.com>
CC:     Thomas Piekarski <t.piekarski@deloquencia.de>,
        <linux-man@vger.kernel.org>
Subject: Re: [PATCH] bpf-helpers.7: wfix
Message-ID: <20200822084238.o5g4ethy5uhpng6m@jwilk.net>
References: <e95bd107-7a2a-1595-a796-8305badf97d7@deloquencia.de>
 <3e3f07ef-d48c-2469-f95c-0964f7ae42d9@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <3e3f07ef-d48c-2469-f95c-0964f7ae42d9@gmail.com>
User-Agent: NeoMutt/20180716
X-Originating-IP: [37.59.142.103]
X-ClientProxiedBy: DAG2EX1.mxp6.local (172.16.2.11) To DAG4EX2.mxp6.local
 (172.16.2.32)
X-Ovh-Tracer-GUID: 1bc3bf59-40e6-4f94-86aa-ad9c5ffc88ed
X-Ovh-Tracer-Id: 15744584297456457693
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduiedruddugedgtdekucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhepfffhvffukfhfgggtuggjfghisehttdertddtredvnecuhfhrohhmpeflrghkuhgsucghihhlkhcuoehjfihilhhksehjfihilhhkrdhnvghtqeenucggtffrrghtthgvrhhnpeeujeekvefhhfefudefueelfeeikeejfeeghfejgeejjeefgfevledvieetfeehteenucffohhmrghinhepkhgvrhhnvghlrdhorhhgnecukfhppedtrddtrddtrddtpdefjedrheelrddugedvrddutdefnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmohguvgepshhmthhpqdhouhhtpdhhvghlohepmhigphhlrghniedrmhgrihhlrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpehjfihilhhksehjfihilhhkrdhnvghtpdhrtghpthhtoheplhhinhhugidqmhgrnhesvhhgvghrrdhkvghrnhgvlhdrohhrgh
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

* Michael Kerrisk (man-pages) <mtk.manpages@gmail.com>, 2020-08-22, 10:26:
>On 8/19/20 5:18 PM, Thomas Piekarski wrote:
>>Removing repeated word "will"
>>
>>Signed-off-by: Thomas Piekarski <t.piekarski@deloquencia.de>
>
>Hi Thomas,
>
>
>This one is a little difficult, because the page is generated from 
>scripts. (It is pretty much unique in this respect in the man-pages 
>set.)
>
>Looks like a patch is needed against the kernel source file 
>include/uapi/linux/bpf.h. Do you want to send a patch for that?

It's already fixed there:
https://git.kernel.org/linus/bfdfa51702dec67e9fcd52568b4cf3c7f799db8b

-- 
Jakub Wilk
