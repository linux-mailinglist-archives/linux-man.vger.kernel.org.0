Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9CA9D2151AB
	for <lists+linux-man@lfdr.de>; Mon,  6 Jul 2020 06:31:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725895AbgGFEbv (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 6 Jul 2020 00:31:51 -0400
Received: from smtpout1.mo529.mail-out.ovh.net ([178.32.125.2]:34389 "EHLO
        smtpout1.mo529.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1725892AbgGFEbv (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 6 Jul 2020 00:31:51 -0400
Received: from mxplan6.mail.ovh.net (unknown [10.109.138.210])
        by mo529.mail-out.ovh.net (Postfix) with ESMTPS id 136FD4392617;
        Mon,  6 Jul 2020 06:31:48 +0200 (CEST)
Received: from jwilk.net (37.59.142.97) by DAG4EX2.mxp6.local (172.16.2.32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1979.3; Mon, 6 Jul 2020
 06:31:46 +0200
Authentication-Results: garm.ovh; auth=pass (GARM-97G0027c2d57d6-1ac1-480b-9617-e2969ec8176c,46907DD7FEC5841C66EC7F8F4BE39465BDB61822) smtp.auth=jwilk@jwilk.net
Date:   Mon, 6 Jul 2020 06:31:33 +0200
From:   Jakub Wilk <jwilk@jwilk.net>
To:     Bjarni Ingi Gislason <bjarniig@rhi.hi.is>
CC:     Michael Kerrisk <mtk.manpages@gmail.com>,
        <linux-man@vger.kernel.org>
Subject: Re: [PATCH] man3/*: srcfix: remove superfluous quotes around
 space-free arguments
Message-ID: <20200706043133.pznhl57cs5revfun@jwilk.net>
References: <20200705134014.GA10659@rhi.hi.is>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <20200705134014.GA10659@rhi.hi.is>
User-Agent: NeoMutt/20180716
X-Originating-IP: [37.59.142.97]
X-ClientProxiedBy: DAG9EX1.mxp6.local (172.16.2.81) To DAG4EX2.mxp6.local
 (172.16.2.32)
X-Ovh-Tracer-GUID: 26793fa6-ef48-4a53-bf5e-1c968c2f592d
X-Ovh-Tracer-Id: 12192370092618536925
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduiedruddvgdekvdcutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpeffhffvuffkfhggtggujggfihesthdtredttdervdenucfhrhhomheplfgrkhhusgcuhghilhhkuceojhifihhlkhesjhifihhlkhdrnhgvtheqnecuggftrfgrthhtvghrnhephfefvdefheevhfekledtjeegleetfedvfedvuddvfefgudeuiedtieetvddthefgnecukfhppedtrddtrddtrddtpdefjedrheelrddugedvrdeljeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhhouggvpehsmhhtphdqohhuthdphhgvlhhopehmgihplhgrnheirdhmrghilhdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomhepjhifihhlkhesjhifihhlkhdrnhgvthdprhgtphhtthhopehlihhnuhigqdhmrghnsehvghgvrhdrkhgvrhhnvghlrdhorhhg
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

THe strfmon(3) change is unrelated to the other changes, and should have 
been in a separate patch.

* Bjarni Ingi Gislason <bjarniig@rhi.hi.is>, 2020-07-05, 13:40:
>--- a/man3/strfmon.3
>+++ b/man3/strfmon.3
>@@ -29,10 +29,10 @@ strfmon, strfmon_l \- convert monetary value to a string
> .B #include <monetary.h>
> .PP
> .BI "ssize_t strfmon(char *" s ", size_t " max ", const char *" format ,
>-.B "...);"
>+.IB  ... );

For variadic function the convention seems to be to format "..." in 
bold; see scanf(3), printf(3), wprintf(3) and execv(3) man pages. This 
makes sense, because unlike argument names, "..." appear literally in 
the function prototypes.

>-.B const char *" format , "...);"
>+.BI "const char *" format , ... );

Ditto. So this line should be:

.BI "const char *" format ", ...);"

-- 
Jakub Wilk
