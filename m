Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 319E14FA618
	for <lists+linux-man@lfdr.de>; Sat,  9 Apr 2022 10:57:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229653AbiDII75 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 9 Apr 2022 04:59:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58904 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235914AbiDII74 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 9 Apr 2022 04:59:56 -0400
X-Greylist: delayed 983 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Sat, 09 Apr 2022 01:57:49 PDT
Received: from smtpout2.mo529.mail-out.ovh.net (smtpout2.mo529.mail-out.ovh.net [79.137.123.220])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1651B237C9
        for <linux-man@vger.kernel.org>; Sat,  9 Apr 2022 01:57:48 -0700 (PDT)
Received: from mxplan6.mail.ovh.net (unknown [10.108.1.93])
        by mo529.mail-out.ovh.net (Postfix) with ESMTPS id 5BDC0F4AC6EE;
        Sat,  9 Apr 2022 10:41:23 +0200 (CEST)
Received: from jwilk.net (37.59.142.98) by DAG4EX2.mxp6.local (172.16.2.32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.24; Sat, 9 Apr
 2022 10:41:22 +0200
Authentication-Results: garm.ovh; auth=pass (GARM-98R002d1d5f7dd-1258-4741-a901-2024e0cba229,
                    5AACF716698E0919AC83C39C7FE0199B80E7AB69) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp: 5.172.255.113
Date:   Sat, 9 Apr 2022 10:41:20 +0200
From:   Jakub Wilk <jwilk@jwilk.net>
To:     Alejandro Colomar <alx.manpages@gmail.com>
CC:     Michael Kerrisk <mtk.manpages@gmail.com>,
        <linux-man@vger.kernel.org>, NGINX Unit <unit@nginx.org>
Subject: Re: [PATCH] uri.7: The term URL is deprecated, in favor of URI
Message-ID: <20220409084120.knmtrvd5jgqene7k@jwilk.net>
References: <20220328182707.6935-1-alx.manpages@gmail.com>
 <20220328221557.njqx4jtbvrgv44lc@jwilk.net>
 <36b89bec-1def-e87c-5477-c87f2f0e48e9@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <36b89bec-1def-e87c-5477-c87f2f0e48e9@gmail.com>
X-Originating-IP: [37.59.142.98]
X-ClientProxiedBy: DAG8EX1.mxp6.local (172.16.2.71) To DAG4EX2.mxp6.local
 (172.16.2.32)
X-Ovh-Tracer-GUID: 873cecc4-f72c-4b1b-ab1f-52a905721307
X-Ovh-Tracer-Id: 5094415604472010720
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvvddrudekuddgudeffecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpeffhffvuffkfhggtggujghisehttdertddttddvnecuhfhrohhmpeflrghkuhgsucghihhlkhcuoehjfihilhhksehjfihilhhkrdhnvghtqeenucggtffrrghtthgvrhhnpeelffduueelheevhfdvjeejfeduvdfhuedvjedttdehgedugfetgefgudfgjeffudenucfkpheptddrtddrtddrtddpfeejrdehledrudegvddrleeknecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmohguvgepshhmthhpohhuthdphhgvlhhopehmgihplhgrnheirdhmrghilhdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomhepjhifihhlkhesjhifihhlkhdrnhgvthdpnhgspghrtghpthhtohepuddprhgtphhtthhopehunhhithesnhhgihhngidrohhrgh
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H4,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

* Alejandro Colomar <alx.manpages@gmail.com>, 2022-03-29, 18:23:
>If you feel like you could update the page, since you seem to know more 
>than me in this regard, that would be great.

Don't count on me for that. Sorry!

-- 
Jakub Wilk
