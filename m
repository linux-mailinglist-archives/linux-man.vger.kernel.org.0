Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 403FD580768
	for <lists+linux-man@lfdr.de>; Tue, 26 Jul 2022 00:33:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230242AbiGYWdK (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 25 Jul 2022 18:33:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40290 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236627AbiGYWdJ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 25 Jul 2022 18:33:09 -0400
Received: from 10.mo552.mail-out.ovh.net (10.mo552.mail-out.ovh.net [87.98.187.244])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D908925C57
        for <linux-man@vger.kernel.org>; Mon, 25 Jul 2022 15:33:07 -0700 (PDT)
Received: from mxplan6.mail.ovh.net (unknown [10.109.156.148])
        by mo552.mail-out.ovh.net (Postfix) with ESMTPS id 114A721C13;
        Mon, 25 Jul 2022 18:57:07 +0000 (UTC)
Received: from jwilk.net (37.59.142.106) by DAG4EX1.mxp6.local (172.16.2.31)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.9; Mon, 25 Jul
 2022 20:57:06 +0200
Authentication-Results: garm.ovh; auth=pass (GARM-106R0065afc0e42-1a28-49b2-b32f-1092bbd74e21,
                    8C17EC6A3182FB1ECCB9BEA13AA615C8EC8719BC) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp: 5.172.255.66
Date:   Mon, 25 Jul 2022 20:57:04 +0200
From:   Jakub Wilk <jwilk@jwilk.net>
To:     Alejandro Colomar <alx.manpages@gmail.com>
CC:     <linux-man@vger.kernel.org>, <groff@gnu.org>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Ralph Corderoy <ralph@inputplus.co.uk>,
        Ingo Schwarze <schwarze@usta.de>
Subject: Re: [PATCH v3] NULL.3const: Add documentation for NULL
Message-ID: <20220725185704.zbebcx6yjs32uac4@jwilk.net>
References: <20220722153127.14528-1-alx.manpages@gmail.com>
 <20220724191931.15683-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <20220724191931.15683-1-alx.manpages@gmail.com>
X-Originating-IP: [37.59.142.106]
X-ClientProxiedBy: DAG5EX2.mxp6.local (172.16.2.42) To DAG4EX1.mxp6.local
 (172.16.2.31)
X-Ovh-Tracer-GUID: 79a40fbc-a050-4ba9-8f86-b520aa51513f
X-Ovh-Tracer-Id: 16681895973143959334
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvfedrvddtkedgudeftdcutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpeffhffvvefukfhfgggtuggjihesthdtredttddtvdenucfhrhhomheplfgrkhhusgcuhghilhhkuceojhifihhlkhesjhifihhlkhdrnhgvtheqnecuggftrfgrthhtvghrnhepuedttdetlefhffduvdehgfefudejledtkeehudevkeekleefudeuvdegjedufffgnecukfhppedtrddtrddtrddtpdefjedrheelrddugedvrddutdeinecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmohguvgepshhmthhpohhuthdphhgvlhhopehmgihplhgrnheirdhmrghilhdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomhepjhifihhlkhesjhifihhlkhdrnhgvthdpnhgspghrtghpthhtohepuddprhgtphhtthhopehstghhfigrrhiivgesuhhsthgrrdguvgdpoffvtefjohhsthepmhhoheehvd
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

* Alejandro Colomar <alx.manpages@gmail.com>, 2022-07-24, 21:19:
>+.B "#define NULL  ((void *) 0)"
>+.fi
>+.SH DESCRIPTION
>+.B NULL
>+represents a null pointer constant.
>+.PP
>+According to POSIX,
>+it shall expand to an integer constant expression with the value
>+.B 0
>+cast to type
>+.IR "void *" .

Might be worth noting that the cast requirement was added only in 
POSIX.1-2008 aka SUSv4.

>+.SH CONFORMING TO
>+C99 and later;

It's in C89 too.

>+.I NULL \- NULL
>+is, surprisingly, undefined behavior, according to ISO C.

FWIW, I don't find it surprising at all.

-- 
Jakub Wilk
