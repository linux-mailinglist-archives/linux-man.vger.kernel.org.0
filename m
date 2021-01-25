Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A3DF73034C8
	for <lists+linux-man@lfdr.de>; Tue, 26 Jan 2021 06:28:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730882AbhAZF1b (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 26 Jan 2021 00:27:31 -0500
Received: from smtpout1.mo804.mail-out.ovh.net ([79.137.123.220]:47423 "EHLO
        smtpout1.mo804.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1726438AbhAYJX3 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 25 Jan 2021 04:23:29 -0500
Received: from mxplan6.mail.ovh.net (unknown [10.108.1.125])
        by mo804.mail-out.ovh.net (Postfix) with ESMTPS id 2CAFE85AD699;
        Mon, 25 Jan 2021 10:21:40 +0100 (CET)
Received: from jwilk.net (37.59.142.104) by DAG4EX2.mxp6.local (172.16.2.32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2044.4; Mon, 25 Jan
 2021 10:21:36 +0100
Authentication-Results: garm.ovh; auth=pass (GARM-104R005665ab5a4-7aac-498a-b37a-4bfe45cd235f,
                    0D706BE754B68603FDA3D51A3D44F01D62F54E1F) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp: 5.172.255.171
Date:   Mon, 25 Jan 2021 10:21:33 +0100
From:   Jakub Wilk <jwilk@jwilk.net>
To:     Rolf Eike Beer <eb@emlix.com>
CC:     Michael Kerrisk <mtk.manpages@gmail.com>,
        Alejandro Colomar <alx.manpages@gmail.com>,
        <linux-man@vger.kernel.org>
Subject: Re: contradictional sentence in clone(2) man page
Message-ID: <20210125092132.cae6sdat3wupkijh@jwilk.net>
References: <4530567.a0Z4EEqLWd@devpool47>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <4530567.a0Z4EEqLWd@devpool47>
User-Agent: NeoMutt/20180716
X-Originating-IP: [37.59.142.104]
X-ClientProxiedBy: DAG9EX1.mxp6.local (172.16.2.81) To DAG4EX2.mxp6.local
 (172.16.2.32)
X-Ovh-Tracer-GUID: ab323501-3b8e-4f88-baca-f2267576b7c8
X-Ovh-Tracer-Id: 10206001182538127328
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduledrvdefgddtudcutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpeffhffvuffkfhggtggujggfihesthdtredttdervdenucfhrhhomheplfgrkhhusgcuhghilhhkuceojhifihhlkhesjhifihhlkhdrnhgvtheqnecuggftrfgrthhtvghrnhepueejkeevhffhfedufeeuleefieekjeefgefhjeegjeejfefgveelvdeiteefheetnecuffhomhgrihhnpehkvghrnhgvlhdrohhrghenucfkpheptddrtddrtddrtddpfeejrdehledrudegvddruddtgeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhhouggvpehsmhhtphdqohhuthdphhgvlhhopehmgihplhgrnheirdhmrghilhdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomhepjhifihhlkhesjhifihhlkhdrnhgvthdprhgtphhtthhopehlihhnuhigqdhmrghnsehvghgvrhdrkhgvrhhnvghlrdhorhhg
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

>
* Rolf Eike Beer <eb@emlix.com>, 2021-01-25, 09:33:
>In the discussion of CLONE_VM I find this sentence:
>
>>If the CLONE_VM flag is specified and the CLONE_VM flag is not 
>>specified, then any alternate signal stack that was established by 
>>sigaltstack(2) is cleared in the child process.
>
>Which simply doesn't make sense. I guess one of them should have been 
>the name of another flag.

Yup, already fixed in git:
https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/commit/?id=2a1b1111ca1a75e3

-- 
Jakub Wilk
