Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2D6103C608E
	for <lists+linux-man@lfdr.de>; Mon, 12 Jul 2021 18:28:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233486AbhGLQax (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 12 Jul 2021 12:30:53 -0400
Received: from smtpout1.mo3005.mail-out.ovh.net ([79.137.123.220]:51825 "EHLO
        smtpout1.3005.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S234453AbhGLQaw (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 12 Jul 2021 12:30:52 -0400
X-Greylist: delayed 599 seconds by postgrey-1.27 at vger.kernel.org; Mon, 12 Jul 2021 12:30:52 EDT
Received: from mxplan6.mail.ovh.net (unknown [10.108.1.114])
        by mo3005.mail-out.ovh.net (Postfix) with ESMTPS id D2FDE13ED77;
        Mon, 12 Jul 2021 16:12:01 +0000 (UTC)
Received: from jwilk.net (37.59.142.96) by DAG4EX2.mxp6.local (172.16.2.32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2308.8; Mon, 12 Jul
 2021 18:12:00 +0200
Authentication-Results: garm.ovh; auth=pass (GARM-96R0016607ab55-96cc-42a1-81c4-da3d080b591e,
                    5C274AFC0EEBB6A3AE8BBE403DAD1BA76CA38561) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp: 37.30.17.216
Date:   Mon, 12 Jul 2021 18:11:59 +0200
From:   Jakub Wilk <jwilk@jwilk.net>
To:     Richard Palethorpe <rpalethorpe@suse.com>
CC:     <linux-man@vger.kernel.org>,
        Alejandro Colomar <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Subject: Re: [PATCH] wait.2: Add ESRCH for when pid == INT_MIN
Message-ID: <20210712161159.no5qnjjzsrjev2s3@jwilk.net>
References: <20210708100853.17391-1-rpalethorpe@suse.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <20210708100853.17391-1-rpalethorpe@suse.com>
User-Agent: NeoMutt/20180716
X-Originating-IP: [37.59.142.96]
X-ClientProxiedBy: DAG9EX2.mxp6.local (172.16.2.82) To DAG4EX2.mxp6.local
 (172.16.2.32)
X-Ovh-Tracer-GUID: e8b288a4-242d-468b-a5d8-5dfaeb79cbe4
X-Ovh-Tracer-Id: 7624875644419299296
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvtddruddvgdeliecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpeffhffvuffkfhggtggujggfihesthdtredttdervdenucfhrhhomheplfgrkhhusgcuhghilhhkuceojhifihhlkhesjhifihhlkhdrnhgvtheqnecuggftrfgrthhtvghrnhephfefvdefheevhfekledtjeegleetfedvfedvuddvfefgudeuiedtieetvddthefgnecukfhppedtrddtrddtrddtpdefjedrheelrddugedvrdelieenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhhouggvpehsmhhtphdqohhuthdphhgvlhhopehmgihplhgrnheirdhmrghilhdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomhepjhifihhlkhesjhifihhlkhdrnhgvthdprhgtphhtthhopehmthhkrdhmrghnphgrghgvshesghhmrghilhdrtghomh
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

* Richard Palethorpe <rpalethorpe@suse.com>, 2021-07-08, 11:08:
>Please see upstream commit:
>
> commit dd83c161fbcc5d8be637ab159c0de015cbff5ba4
> Author: zhongjiang <zhongjiang@huawei.com>
> Date:   Mon Jul 10 15:53:01 2017 -0700
>
>     kernel/exit.c: avoid undefined behaviour when calling wait4()
>
>It avoids negating INT_MIN by returning early with ESRCH.

That sounds like a bug in the kernel, though?

POSIX says the error should be ECHILD if "the process group specified by 
pid does not exist".

-- 
Jakub Wilk
