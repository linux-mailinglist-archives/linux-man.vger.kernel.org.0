Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DFFD876A421
	for <lists+linux-man@lfdr.de>; Tue,  1 Aug 2023 00:26:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229909AbjGaW0K (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 31 Jul 2023 18:26:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47020 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230231AbjGaW0I (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 31 Jul 2023 18:26:08 -0400
Received: from 1.mo552.mail-out.ovh.net (1.mo552.mail-out.ovh.net [178.32.96.117])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 82D731BF2
        for <linux-man@vger.kernel.org>; Mon, 31 Jul 2023 15:26:00 -0700 (PDT)
Received: from mxplan6.mail.ovh.net (unknown [10.108.1.149])
        by mo552.mail-out.ovh.net (Postfix) with ESMTPS id 90D932D673;
        Mon, 31 Jul 2023 22:16:44 +0000 (UTC)
Received: from jwilk.net (37.59.142.105) by DAG4EX1.mxp6.local (172.16.2.31)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.27; Tue, 1 Aug
 2023 00:16:43 +0200
Authentication-Results: garm.ovh; auth=pass (GARM-105G0064a07a9ca-3744-4a9f-88a2-44c8878ef0b6,
                    CD71657A3D8D1C5A72321D28483D3DB0A220F735) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp: 5.172.255.24
Date:   Tue, 1 Aug 2023 00:16:41 +0200
From:   Jakub Wilk <jwilk@jwilk.net>
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
CC:     Alejandro Colomar <alx@kernel.org>, <linux-man@vger.kernel.org>
Subject: Re: [PATCH v2] man*/: ffix (migrate to `MR`)
Message-ID: <20230731221641.pbkcrdx52gyy4xfz@jwilk.net>
References: <20230731175251.67rgt2r4sweutnay@illithid>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230731175251.67rgt2r4sweutnay@illithid>
X-Originating-IP: [37.59.142.105]
X-ClientProxiedBy: DAG5EX2.mxp6.local (172.16.2.42) To DAG4EX1.mxp6.local
 (172.16.2.31)
X-Ovh-Tracer-GUID: bc54a324-b08f-4989-9e69-493cfee373db
X-Ovh-Tracer-Id: 3660300598148716509
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedviedrjeehgddtkecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpeffhffvvefukfhfgggtugfgjghisehtkeertddttdejnecuhfhrohhmpeflrghkuhgsucghihhlkhcuoehjfihilhhksehjfihilhhkrdhnvghtqeenucggtffrrghtthgvrhhnpeetgedvgfduueegffeftdffueeftedvgfdtteekieevhffhuefgheeuieevgfeijeenucfkphepuddvjedrtddrtddruddpfeejrdehledrudegvddruddthedphedrudejvddrvdehhedrvdegnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehinhgvthepuddvjedrtddrtddruddpmhgrihhlfhhrohhmpeeojhifihhlkhesjhifihhlkhdrnhgvtheqpdhnsggprhgtphhtthhopedupdhrtghpthhtohepghdrsghrrghnuggvnhdrrhhosghinhhsohhnsehgmhgrihhlrdgtohhmpdgrlhigsehkvghrnhgvlhdrohhrghdplhhinhhugidqmhgrnhesvhhgvghrrdhkvghrnhgvlhdrohhrghdpoffvtefjohhsthepmhhoheehvddpmhhouggvpehsmhhtphhouhht
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,
        RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

* G. Branden Robinson <g.branden.robinson@gmail.com>, 2023-07-31 12:52:
>Use the man(7) macro `MR`, new to groff 1.23.0,

Given that this version of groff was released approximately yesterday¹, 
this is very premature.

NACK from me.

>When the text of all Linux man-pages documents (excluding those 
>containing only `so` requests) is dumped, with adjustment mode 'l' 
>("-dAD=l") and automatic hyphenation disabled ("-rHY=0") before and 
>after this change, there is no change to rendered output.

That's not what I'm seeing with Debian groff 1.22.4-10 (which seems to 
have .MR backported).

After applying the patch, the man page references are typeset in 
italics, which is ugly and against man-pages(7) recommendations.


¹ More precisely, about a month ago.

-- 
Jakub Wilk
