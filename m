Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EAC175B0EA0
	for <lists+linux-man@lfdr.de>; Wed,  7 Sep 2022 22:53:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229494AbiIGUxO (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 7 Sep 2022 16:53:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36682 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229781AbiIGUxN (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 7 Sep 2022 16:53:13 -0400
Received: from 7.mo552.mail-out.ovh.net (7.mo552.mail-out.ovh.net [188.165.59.253])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 817637268B
        for <linux-man@vger.kernel.org>; Wed,  7 Sep 2022 13:53:10 -0700 (PDT)
Received: from mxplan6.mail.ovh.net (unknown [10.108.20.191])
        by mo552.mail-out.ovh.net (Postfix) with ESMTPS id 5505B2A8FB;
        Wed,  7 Sep 2022 20:53:08 +0000 (UTC)
Received: from jwilk.net (37.59.142.102) by DAG4EX1.mxp6.local (172.16.2.31)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.12; Wed, 7 Sep
 2022 22:53:06 +0200
Authentication-Results: garm.ovh; auth=pass (GARM-102R004f421fcb7-a248-4a81-8296-8ec2bb094512,
                    D971F3C7F37D96909529172A2E0995E16F3C5AA5) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp: 5.172.255.181
Date:   Wed, 7 Sep 2022 22:53:04 +0200
From:   Jakub Wilk <jwilk@jwilk.net>
To:     Alejandro Colomar <alx.manpages@gmail.com>
CC:     Petr Vorel <pvorel@suse.cz>, <linux-man@vger.kernel.org>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Subject: Re: Revert 70ac1c478 ("src.mk, All pages: Move man* to man/")
Message-ID: <20220907205304.nlqce37l26gezjqi@jwilk.net>
References: <YxcV4h+Xn7cd6+q2@pevik>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <YxcV4h+Xn7cd6+q2@pevik>
X-Originating-IP: [37.59.142.102]
X-ClientProxiedBy: DAG2EX1.mxp6.local (172.16.2.11) To DAG4EX1.mxp6.local
 (172.16.2.31)
X-Ovh-Tracer-GUID: 4e3ffe33-d791-4a49-892a-6912aaaa632a
X-Ovh-Tracer-Id: 338895873808652256
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvfedrfedttddgudehhecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpeffhffvvefukfhfgggtuggjihesthdtredttddtvdenucfhrhhomheplfgrkhhusgcuhghilhhkuceojhifihhlkhesjhifihhlkhdrnhgvtheqnecuggftrfgrthhtvghrnhepuedttdetlefhffduvdehgfefudejledtkeehudevkeekleefudeuvdegjedufffgnecukfhppedtrddtrddtrddtpdefjedrheelrddugedvrddutddvnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmohguvgepshhmthhpohhuthdphhgvlhhopehmgihplhgrnheirdhmrghilhdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomhepjhifihhlkhesjhifihhlkhdrnhgvthdpnhgspghrtghpthhtohepuddprhgtphhtthhopehmthhkrdhmrghnphgrghgvshesghhmrghilhdrtghomhdpoffvtefjohhsthepmhhoheehvd
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

* Petr Vorel <pvorel@suse.cz>, 2022-09-06 11:41:
>Although I agree that number of man* is quite high and single man 
>directory looks nicer, from practical reasons I'd prefer to revert this 
>commit.

I don't like the new layout either.

-- 
Jakub Wilk
