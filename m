Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9B7FE5A0BC2
	for <lists+linux-man@lfdr.de>; Thu, 25 Aug 2022 10:43:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237652AbiHYInR (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 25 Aug 2022 04:43:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54366 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237962AbiHYInD (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 25 Aug 2022 04:43:03 -0400
Received: from 5.mo548.mail-out.ovh.net (5.mo548.mail-out.ovh.net [188.165.49.213])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 952EDA7A82
        for <linux-man@vger.kernel.org>; Thu, 25 Aug 2022 01:43:01 -0700 (PDT)
Received: from mxplan6.mail.ovh.net (unknown [10.109.156.124])
        by mo548.mail-out.ovh.net (Postfix) with ESMTPS id 2AB7F20C43;
        Thu, 25 Aug 2022 08:37:46 +0000 (UTC)
Received: from jwilk.net (37.59.142.109) by DAG4EX1.mxp6.local (172.16.2.31)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.12; Thu, 25 Aug
 2022 10:37:43 +0200
Authentication-Results: garm.ovh; auth=pass (GARM-109S00350885dc6-0bcd-4cdf-8705-017ecfc7fe4c,
                    7E6AE0283D4A57E58743953EE7A8FB9473A8110D) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp: 5.172.255.6
Date:   Thu, 25 Aug 2022 10:37:36 +0200
From:   Jakub Wilk <jwilk@jwilk.net>
To:     <linux-man@vger.kernel.org>
CC:     NeilBrown <neilb@suse.de>,
        Alejandro Colomar <alx.manpages@gmail.com>,
        Jeff Layton <jlayton@kernel.org>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Subject: Re: [PATCH] utime.2, utimensat.2: explicitly mention ctime changing.
Message-ID: <20220825083736.pnwuytunzhvq4hwx@jwilk.net>
References: <166130409455.27490.3548169201261980550@noble.neil.brown.name>
 <22fdfff7e210aef79ea9e65d779e87cb6bcd5295.camel@kernel.org>
 <38bbc417-9d74-2407-b7c6-f9b2554cc837@gmail.com>
 <166138683612.27490.13474817287495072119@noble.neil.brown.name>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <166138683612.27490.13474817287495072119@noble.neil.brown.name>
X-Originating-IP: [37.59.142.109]
X-ClientProxiedBy: DAG9EX2.mxp6.local (172.16.2.82) To DAG4EX1.mxp6.local
 (172.16.2.31)
X-Ovh-Tracer-GUID: 6a33306e-6da0-485a-9ec3-ef0caa5b1ab1
X-Ovh-Tracer-Id: 3808356438639957923
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvfedrvdejfedgtdehucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhepfffhvfevuffkfhggtggujghisehttdertddttddvnecuhfhrohhmpeflrghkuhgsucghihhlkhcuoehjfihilhhksehjfihilhhkrdhnvghtqeenucggtffrrghtthgvrhhnpeduteffieelhfejuedtgeekkefgiedvkeeivdeuteevffeuieefieekuefhhedtgfenucffohhmrghinhepkhgvrhhnvghlrdhorhhgnecukfhppedtrddtrddtrddtpdefjedrheelrddugedvrddutdelnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmohguvgepshhmthhpohhuthdphhgvlhhopehmgihplhgrnheirdhmrghilhdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomhepjhifihhlkhesjhifihhlkhdrnhgvthdpnhgspghrtghpthhtohepuddprhgtphhtthhopehmthhkrdhmrghnphgrghgvshesghhmrghilhdrtghomhdpoffvtefjohhsthepmhhoheegke
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

* NeilBrown <neilb@suse.de>, 2022-08-25 10:20:
>I will in future, but you might like to update 
>https://www.kernel.org/doc/man-pages/patches.html to make it clear that 
>"either" isn't really wanted and "both" maintainers should get the 
>patch.

Also: can we have this information directly in the CONTRIBUTING file?

-- 
Jakub Wilk
