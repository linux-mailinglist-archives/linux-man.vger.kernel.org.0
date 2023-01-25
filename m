Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 40E5E67BC70
	for <lists+linux-man@lfdr.de>; Wed, 25 Jan 2023 21:20:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234642AbjAYUUI (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 25 Jan 2023 15:20:08 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54194 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235846AbjAYUUH (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 25 Jan 2023 15:20:07 -0500
X-Greylist: delayed 1128 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Wed, 25 Jan 2023 12:20:05 PST
Received: from smtpout3.mo529.mail-out.ovh.net (smtpout3.mo529.mail-out.ovh.net [46.105.54.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D01DF5925A
        for <linux-man@vger.kernel.org>; Wed, 25 Jan 2023 12:20:05 -0800 (PST)
Received: from mxplan6.mail.ovh.net (unknown [10.109.146.239])
        by mo529.mail-out.ovh.net (Postfix) with ESMTPS id 16BA222B22;
        Wed, 25 Jan 2023 20:01:15 +0000 (UTC)
Received: from jwilk.net (37.59.142.109) by DAG4EX1.mxp6.local (172.16.2.31)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.17; Wed, 25 Jan
 2023 21:01:14 +0100
Authentication-Results: garm.ovh; auth=pass (GARM-109S0039836103c-89c9-430f-b004-61bb7703a870,
                    1F687A1444F9BFD9A03C4A3924F05843A5FA2A9E) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp: 5.172.255.200
Date:   Wed, 25 Jan 2023 21:01:11 +0100
From:   Jakub Wilk <jwilk@jwilk.net>
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
CC:     Helge Kreutzmann <debian@helgefjell.de>,
        Alejandro Colomar <alx.manpages@gmail.com>,
        <mario.blaettermann@gmail.com>, <linux-man@vger.kernel.org>
Subject: Re: Issue in man page wcsncpy.3
Message-ID: <20230125200111.z4gblsqs7uouavp7@jwilk.net>
References: <20221204090724.GA1249@Debian-50-lenny-64-minimal>
 <e358f853-93e5-a30a-2d59-1115d64a61af@gmail.com>
 <20221205170935.GE5000@Debian-50-lenny-64-minimal>
 <20221205175503.ts7a3agzslnoycqb@illithid>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20221205175503.ts7a3agzslnoycqb@illithid>
X-Originating-IP: [37.59.142.109]
X-ClientProxiedBy: DAG8EX2.mxp6.local (172.16.2.72) To DAG4EX1.mxp6.local
 (172.16.2.31)
X-Ovh-Tracer-GUID: 1a671301-539a-4035-8bda-3c9fcc61e324
X-Ovh-Tracer-Id: 9983072999029266339
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvhedruddvvddgudeffecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpeffhffvvefukfhfgggtugfgjghisehtkeertddttdejnecuhfhrohhmpeflrghkuhgsucghihhlkhcuoehjfihilhhksehjfihilhhkrdhnvghtqeenucggtffrrghtthgvrhhnpeetgedvgfduueegffeftdffueeftedvgfdtteekieevhffhuefgheeuieevgfeijeenucfkphepuddvjedrtddrtddruddpfeejrdehledrudegvddruddtleenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepihhnvghtpeduvdejrddtrddtrddupdhmrghilhhfrhhomhepoehjfihilhhksehjfihilhhkrdhnvghtqedpnhgspghrtghpthhtohepuddprhgtphhtthhopehgrdgsrhgrnhguvghnrdhrohgsihhnshhonhesghhmrghilhdrtghomhdpuggvsghirghnsehhvghlghgvfhhjvghllhdruggvpdgrlhigrdhmrghnphgrghgvshesghhmrghilhdrtghomhdpmhgrrhhiohdrsghlrggvthhtvghrmhgrnhhnsehgmhgrihhlrdgtohhmpdhlihhnuhigqdhmrghnsehvghgvrhdrkhgvrhhnvghlrdhorhhgpdfovfetjfhoshhtpehmohehvdelpdhmohguvgepshhmthhpohhuth
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_NONE,
        SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

* G. Branden Robinson <g.branden.robinson@gmail.com>, 2022-12-05 11:55:
>The following compiles without warnings on my system, even with -Wall.
>
>int main(int argc, char *argv[]) {
>        wchar_t w1 = '\0', w2 = L'\0';
>        printf("%d\n", (w1 + w2));
>}
>
>For me this reliably writes "0" to the standard output.
>
>However it is conceivable, depending on the implementation, that bits 
>8+ of w1 come from uninitialized memory, and a large positive or 
>negative value would be written to stdout.

Er, no? Both assignments and additions in this code are well defined. 
You're just operating with zeros of different types, which is completely 
fine.

The only potential for undefined behavior is printf, because %d may not 
be compatible with wchar_t. In fact, it isn't on my system (i386):

wchar.c:5:18: warning: format ‘%d’ expects argument of type ‘int’, but argument 2 has type ‘wchar_t’ {aka ‘long int’} [-Wformat=]

-- 
Jakub Wilk
