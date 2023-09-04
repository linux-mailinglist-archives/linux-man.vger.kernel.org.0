Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 861B5791B04
	for <lists+linux-man@lfdr.de>; Mon,  4 Sep 2023 17:59:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234522AbjIDP7o (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 4 Sep 2023 11:59:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42210 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241641AbjIDP7n (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 4 Sep 2023 11:59:43 -0400
Received: from 1.mo552.mail-out.ovh.net (1.mo552.mail-out.ovh.net [178.32.96.117])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7D079E5B
        for <linux-man@vger.kernel.org>; Mon,  4 Sep 2023 08:59:34 -0700 (PDT)
Received: from mxplan6.mail.ovh.net (unknown [10.108.20.2])
        by mo552.mail-out.ovh.net (Postfix) with ESMTPS id 4B15C2BD00;
        Mon,  4 Sep 2023 15:41:54 +0000 (UTC)
Received: from jwilk.net (37.59.142.101) by DAG4EX1.mxp6.local (172.16.2.31)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.31; Mon, 4 Sep
 2023 17:41:53 +0200
Authentication-Results: garm.ovh; auth=pass (GARM-101G0048c497e84-ae48-47fd-a02f-4f2bd0800abe,
                    DF69EFDA151AD00FE6E47241B0972E00AAAB4AA7) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp: 5.172.255.71
Date:   Mon, 4 Sep 2023 17:41:50 +0200
From:   Jakub Wilk <jwilk@jwilk.net>
To:     =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
CC:     Alejandro Colomar <alx.manpages@gmail.com>,
        <linux-man@vger.kernel.org>
Subject: Re: [PATCH] ioctl.2: note "int request" form, HISTORYise a bit
Message-ID: <20230904154150.25pvoitudtdwqfla@jwilk.net>
References: <israsi2qmpudilwpy2h6vj4dda7jofrc3oolhrcs4cpwvwzl5x@ur3oua7jxgs3>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <israsi2qmpudilwpy2h6vj4dda7jofrc3oolhrcs4cpwvwzl5x@ur3oua7jxgs3>
X-Originating-IP: [37.59.142.101]
X-ClientProxiedBy: DAG1EX2.mxp6.local (172.16.2.2) To DAG4EX1.mxp6.local
 (172.16.2.31)
X-Ovh-Tracer-GUID: e96c69d1-e946-4974-9fa9-c19366c18918
X-Ovh-Tracer-Id: 18069004655201474525
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 23
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedviedrudegkedgleefucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucgfrhhlucfvnfffucdlvdefmdenucfjughrpeffhffvvefukfhfgggtugfgjghisehtkeertddttdejnecuhfhrohhmpeflrghkuhgsucghihhlkhcuoehjfihilhhksehjfihilhhkrdhnvghtqeenucggtffrrghtthgvrhhnpeeitdeltdelheekveefffetheefgfefveevueevleejvddtuddtieetheefgedvudenucffohhmrghinhepohhpvghnghhrohhuphdrohhrghenucfkphepuddvjedrtddrtddruddpfeejrdehledrudegvddruddtuddphedrudejvddrvdehhedrjedunecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehinhgvthepuddvjedrtddrtddruddpmhgrihhlfhhrohhmpeeojhifihhlkhesjhifihhlkhdrnhgvtheqpdhnsggprhgtphhtthhopedupdhrtghpthhtohepnhgrsghijhgrtgiilhgvfigvlhhisehnrggsihhjrggtiihlvgifvghlihdrgiihiidprghlgidrmhgrnhhprghgvghssehgmhgrihhlrdgtohhmpdhlihhnuhigqdhmrghnsehvghgvrhdrkhgvrhhnvghlrdhorhhgpdfovfetjfhoshhtpehmohehhedvpdhmohguvgepshhmthhpohhuth
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

* наб <nabijaczleweli@nabijaczleweli.xyz>, 2023-09-04 16:29:
>POSIX says nothing about ioctl:

Yes it does say _something_:
https://pubs.opengroup.org/onlinepubs/9699919799/functions/ioctl.html

>STREAMS is long dead from POSIX.

What do you mean?

-- 
Jakub Wilk
