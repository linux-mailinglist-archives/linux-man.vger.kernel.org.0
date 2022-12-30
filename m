Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E5260659681
	for <lists+linux-man@lfdr.de>; Fri, 30 Dec 2022 10:03:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230056AbiL3JDl (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 30 Dec 2022 04:03:41 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53746 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229519AbiL3JDk (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 30 Dec 2022 04:03:40 -0500
X-Greylist: delayed 340 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Fri, 30 Dec 2022 01:03:38 PST
Received: from 2.mo552.mail-out.ovh.net (2.mo552.mail-out.ovh.net [178.33.105.233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AB17D12614
        for <linux-man@vger.kernel.org>; Fri, 30 Dec 2022 01:03:38 -0800 (PST)
Received: from mxplan6.mail.ovh.net (unknown [10.109.146.197])
        by mo552.mail-out.ovh.net (Postfix) with ESMTPS id 6DB8B2C9A4;
        Fri, 30 Dec 2022 08:57:56 +0000 (UTC)
Received: from jwilk.net (37.59.142.104) by DAG4EX1.mxp6.local (172.16.2.31)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.16; Fri, 30 Dec
 2022 09:57:55 +0100
Authentication-Results: garm.ovh; auth=pass (GARM-104R00560f9776a-5f6f-415f-9e4b-ec64830fc63d,
                    61162F1CAD51C30F4082BD59ECF03BCF2A04D20D) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp: 5.172.255.159
Date:   Fri, 30 Dec 2022 09:57:54 +0100
From:   Jakub Wilk <jwilk@jwilk.net>
To:     Helge Kreutzmann <debian@helgefjell.de>
CC:     Alejandro Colomar <alx.manpages@gmail.com>,
        Mario =?utf-8?Q?Bl=C3=A4ttermann?= <mario.blaettermann@gmail.com>,
        <linux-man@vger.kernel.org>
Subject: Re: Issue in man page uri.7
Message-ID: <20221230085754.y7njdq623sjz45jr@jwilk.net>
References: <20221204090719.GA902@Debian-50-lenny-64-minimal>
 <20221205170925.meppalvtfqsoe4vj@jwilk.net>
 <20221205171626.GG5000@Debian-50-lenny-64-minimal>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20221205171626.GG5000@Debian-50-lenny-64-minimal>
X-Originating-IP: [37.59.142.104]
X-ClientProxiedBy: DAG4EX2.mxp6.local (172.16.2.32) To DAG4EX1.mxp6.local
 (172.16.2.31)
X-Ovh-Tracer-GUID: ef0ae116-0ea1-47e2-94be-59b493c5e0ba
X-Ovh-Tracer-Id: 12111305298098706400
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvhedrieehgdduvdejucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucenucfjughrpeffhffvvefukfhfgggtugfgjghisehtkeertddttdejnecuhfhrohhmpeflrghkuhgsucghihhlkhcuoehjfihilhhksehjfihilhhkrdhnvghtqeenucggtffrrghtthgvrhhnpeetgedvgfduueegffeftdffueeftedvgfdtteekieevhffhuefgheeuieevgfeijeenucfkphepuddvjedrtddrtddruddpfeejrdehledrudegvddruddtgeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepihhnvghtpeduvdejrddtrddtrddupdhmrghilhhfrhhomhepoehjfihilhhksehjfihilhhkrdhnvghtqedpnhgspghrtghpthhtohepuddprhgtphhtthhopeguvggsihgrnheshhgvlhhgvghfjhgvlhhlrdguvgdprghlgidrmhgrnhhprghgvghssehgmhgrihhlrdgtohhmpdhmrghrihhordgslhgrvghtthgvrhhmrghnnhesghhmrghilhdrtghomhdplhhinhhugidqmhgrnhesvhhgvghrrdhkvghrnhgvlhdrohhrghdpoffvtefjohhsthepmhhoheehvddpmhhouggvpehsmhhtphhouhht
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

* Helge Kreutzmann <debian@helgefjell.de>, 2022-12-05 18:16:
>>>Issue:    Gopher selector string → Gopher type selector string?
>>
>>No, it's just "selector", not "type selector".
>>See RFC 4266, section 2.1.
>>
>>(Can we add that RFC reference to the man page, so that's it's easier 
>>to find?)
>
>A little bit up in that page it says (several similar times):
>msgid "gopher://I<ip_server>/I<gophertype selector>"
>                                     ~~~~~~~~~~~~~

I was confused for a moment with this too. There are two variables here, 
one is "grophertype" and the other is "selector". They are described in 
separate paragraphs.

The way it's typeset in the RFC makes it clearer:

   <gophertype><selector>%09<search>%09<gopher+_string>

-- 
Jakub Wilk
