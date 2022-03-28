Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5EDFA4EA31C
	for <lists+linux-man@lfdr.de>; Tue, 29 Mar 2022 00:41:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230086AbiC1Wjc (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 28 Mar 2022 18:39:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60620 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230058AbiC1Wja (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 28 Mar 2022 18:39:30 -0400
X-Greylist: delayed 461 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Mon, 28 Mar 2022 15:37:45 PDT
Received: from smtpout3.mo529.mail-out.ovh.net (smtpout3.mo529.mail-out.ovh.net [46.105.54.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 35CA813CDB
        for <linux-man@vger.kernel.org>; Mon, 28 Mar 2022 15:37:44 -0700 (PDT)
Received: from mxplan6.mail.ovh.net (unknown [10.108.16.220])
        by mo529.mail-out.ovh.net (Postfix) with ESMTPS id 79A84F0A5AE5;
        Tue, 29 Mar 2022 00:30:01 +0200 (CEST)
Received: from jwilk.net (37.59.142.106) by DAG4EX2.mxp6.local (172.16.2.32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.24; Tue, 29 Mar
 2022 00:30:00 +0200
Authentication-Results: garm.ovh; auth=pass (GARM-106R006d6bea4c1-38cd-49f1-abcc-716f033b7841,
                    5BC8941282AD13F27FBCCA502C4619D7E7050EA5) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp: 5.172.255.167
Date:   Tue, 29 Mar 2022 00:29:58 +0200
From:   Jakub Wilk <jwilk@jwilk.net>
To:     Alejandro Colomar <alx.manpages@gmail.com>
CC:     <linux-man@vger.kernel.org>, NGINX Unit <unit@nginx.org>
Subject: Re: [PATCH] uri.7: Update RFC reference (2718 -> 7595)
Message-ID: <20220328222958.6tubgws7z6dv3lk5@jwilk.net>
References: <20220328185621.7650-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <20220328185621.7650-1-alx.manpages@gmail.com>
X-Originating-IP: [37.59.142.106]
X-ClientProxiedBy: DAG4EX2.mxp6.local (172.16.2.32) To DAG4EX2.mxp6.local
 (172.16.2.32)
X-Ovh-Tracer-GUID: d701864a-a200-434b-94fd-c90d4cfbd3aa
X-Ovh-Tracer-Id: 3956693751892465629
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvvddrudehkedguddtucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhepfffhvffukfhfgggtuggjihesthdtredttddtvdenucfhrhhomheplfgrkhhusgcuhghilhhkuceojhifihhlkhesjhifihhlkhdrnhgvtheqnecuggftrfgrthhtvghrnhepleffudeuleehvefhvdejjeefuddvhfeuvdejtddtheegudfgteeggfdugfejffdunecukfhppedtrddtrddtrddtpdefjedrheelrddugedvrddutdeinecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmohguvgepshhmthhpohhuthdphhgvlhhopehmgihplhgrnheirdhmrghilhdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomhepjhifihhlkhesjhifihhlkhdrnhgvthdpnhgspghrtghpthhtohepuddprhgtphhtthhopehunhhithesnhhgihhngidrohhrgh
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_MSPIKE_H3,
        RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

* Alejandro Colomar <alx.manpages@gmail.com>, 2022-03-28, 20:56:
>-IETF RFC\ 2718 (section 2.2.5) recommend the following approach:
>+IETF RFC\~7595 (section 3.6) recommend the following approach:

The new RFC doesn't directly contain the recipe in question.
Can we point to the last paragraph of section 2.5 of RFC 3986 instead?

-- 
Jakub Wilk
