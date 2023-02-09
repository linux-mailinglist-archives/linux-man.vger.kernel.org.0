Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7C3EA6907B7
	for <lists+linux-man@lfdr.de>; Thu,  9 Feb 2023 12:50:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229807AbjBILuf (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 9 Feb 2023 06:50:35 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54574 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229818AbjBILuJ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 9 Feb 2023 06:50:09 -0500
Received: from smtpout3.mo529.mail-out.ovh.net (smtpout3.mo529.mail-out.ovh.net [46.105.54.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2378972A0
        for <linux-man@vger.kernel.org>; Thu,  9 Feb 2023 03:36:46 -0800 (PST)
Received: from mxplan6.mail.ovh.net (unknown [10.108.20.7])
        by mo529.mail-out.ovh.net (Postfix) with ESMTPS id F1B70213F7;
        Thu,  9 Feb 2023 11:36:43 +0000 (UTC)
Received: from jwilk.net (37.59.142.98) by DAG4EX1.mxp6.local (172.16.2.31)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.17; Thu, 9 Feb
 2023 12:36:42 +0100
Authentication-Results: garm.ovh; auth=pass (GARM-98R002cd5b539b-0cd6-4fbe-8861-e7a2e0cddf58,
                    EB8630D0C044EBEA0B993F6F6CF5EF68C533E3D3) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp: 5.172.255.92
Date:   Thu, 9 Feb 2023 12:36:37 +0100
From:   Jakub Wilk <jwilk@jwilk.net>
To:     Brian Inglis <Brian.Inglis@Shaw.ca>
CC:     <linux-man@vger.kernel.org>, Tom Schwindl <schwindl@posteo.de>,
        Alejandro Colomar <alx.manpages@gmail.com>
Subject: Re: [PATCH v2 10/11] man2/futex.2: change limit to use ISO multiple
 symbol
Message-ID: <20230209113637.yifd3ojsgqameauz@jwilk.net>
References: <cover.1675830945.git.Brian.Inglis@Shaw.ca>
 <dbcc41d977d4eeac999a0381ff9a411453b838fe.1675830945.git.Brian.Inglis@Shaw.ca>
 <b10498de-f55e-e39f-a051-3bbab2682ea5@gmail.com>
 <716eb1e9-8e51-b25f-2476-6e3d635d2538@Shaw.ca>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <716eb1e9-8e51-b25f-2476-6e3d635d2538@Shaw.ca>
X-Originating-IP: [37.59.142.98]
X-ClientProxiedBy: DAG5EX2.mxp6.local (172.16.2.42) To DAG4EX1.mxp6.local
 (172.16.2.31)
X-Ovh-Tracer-GUID: 1f72d3e6-6857-4167-9850-c90689f202b4
X-Ovh-Tracer-Id: 15765694923564111840
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvhedrudehfedgvdekucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhepfffhvfevuffkfhggtggujghisehttdertddttddvnecuhfhrohhmpeflrghkuhgsucghihhlkhcuoehjfihilhhksehjfihilhhkrdhnvghtqeenucggtffrrghtthgvrhhnpeeutddtteelhfffuddvhefgfedujeeltdekheduveekkeelfeduuedvgeejudffgfenucfkphepuddvjedrtddrtddruddpfeejrdehledrudegvddrleeknecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehinhgvthepuddvjedrtddrtddruddpmhgrihhlfhhrohhmpeeojhifihhlkhesjhifihhlkhdrnhgvtheqpdhnsggprhgtphhtthhopedupdhrtghpthhtohepuehrihgrnhdrkfhnghhlihhssefuhhgrfidrtggrpdhlihhnuhigqdhmrghnsehvghgvrhdrkhgvrhhnvghlrdhorhhgpdhstghhfihinhgulhesphhoshhtvghordguvgdprghlgidrmhgrnhhprghgvghssehgmhgrihhlrdgtohhmpdfovfetjfhoshhtpehmohehvdelpdhmohguvgepshhmthhpohhuth
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_NONE,
        SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

* Brian Inglis <Brian.Inglis@Shaw.ca>, 2023-02-08 15:33:
>>>-was not less than 1,000,000,000).
>>>+was not less than 1G).
>>
>>For nanoseconds, I think 1G is a bit weird.

Not only weird, but also not allowed by SI. From the brochure: "Prefix 
symbols can neither stand alone nor be attached to the number 1".

>SI actually allows Gns (/nGs?)

Nope: "Compound prefix symbols, i.e. prefix symbols formed by the 
juxtaposition of two or more prefix symbols, are not permitted."

-- 
Jakub Wilk
