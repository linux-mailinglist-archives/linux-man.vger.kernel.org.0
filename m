Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E90941F0824
	for <lists+linux-man@lfdr.de>; Sat,  6 Jun 2020 20:32:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728823AbgFFScR (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 6 Jun 2020 14:32:17 -0400
Received: from smtpout1.mo529.mail-out.ovh.net ([178.32.125.2]:52237 "EHLO
        smtpout1.mo529.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1728843AbgFFScQ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 6 Jun 2020 14:32:16 -0400
Received: from mxplan6.mail.ovh.net (unknown [10.108.1.31])
        by mo529.mail-out.ovh.net (Postfix) with ESMTPS id 53B0A3AA7ECB;
        Sat,  6 Jun 2020 20:32:15 +0200 (CEST)
Received: from jwilk.net (37.59.142.95) by DAG4EX2.mxp6.local (172.16.2.32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1779.2; Sat, 6 Jun 2020
 20:32:14 +0200
Authentication-Results: garm.ovh; auth=pass (GARM-95G001ccc0db75-9f00-4830-bd62-53ec6447e63f,58FC589207A6C1BE588D5DA612DEF25583F6B3FC) smtp.auth=jwilk@jwilk.net
Date:   Sat, 6 Jun 2020 20:32:10 +0200
From:   Jakub Wilk <jwilk@jwilk.net>
To:     Jonny Grant <jg@jguk.org>
CC:     Michael Kerrisk <mtk.manpages@gmail.com>,
        <linux-man@vger.kernel.org>
Subject: Re: core(5)
Message-ID: <20200606183210.2tx7rjuryxrnh7d3@jwilk.net>
References: <9000a831-9a0f-0577-5755-95b301218383@jguk.org>
 <20200606145003.x37j5hywuyn32lpf@jwilk.net>
 <e8283646-38fd-b9a8-2056-547fecaeb182@jguk.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <e8283646-38fd-b9a8-2056-547fecaeb182@jguk.org>
User-Agent: NeoMutt/20180716
X-Originating-IP: [37.59.142.95]
X-ClientProxiedBy: DAG3EX2.mxp6.local (172.16.2.22) To DAG4EX2.mxp6.local
 (172.16.2.32)
X-Ovh-Tracer-GUID: 088e824b-c580-4680-9c74-398ea60cc240
X-Ovh-Tracer-Id: 16226187983067600861
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduhedrudeghedgudeffecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpeffhffvuffkfhggtggujggfihesthdtredttdervdenucfhrhhomheplfgrkhhusgcuhghilhhkuceojhifihhlkhesjhifihhlkhdrnhgvtheqnecuggftrfgrthhtvghrnhephfefvdefheevhfekledtjeegleetfedvfedvuddvfefgudeuiedtieetvddthefgnecukfhppedtrddtrddtrddtpdefjedrheelrddugedvrdelheenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhhouggvpehsmhhtphdqohhuthdphhgvlhhopehmgihplhgrnheirdhmrghilhdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomhepjhifihhlkhesjhifihhlkhdrnhgvthdprhgtphhtthhopehlihhnuhigqdhmrghnsehvghgvrhdrkhgvrhhnvghlrdhorhhg
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

* Jonny Grant <jg@jguk.org>, 2020-06-06, 16:45:
>>>3) Could i ask to clarify my understanding. For this "The binary 
>>>being executed by the process does not have read permission enabled."
>>>-- is this when the binary permissions are changed after it starts 
>>>running?
>>No, AFAICS the permission check is done when the process starts.
>How can the process start if the binary file doesn't have read 
>permissions enabled?

It's a bit weird, but the kernel doesn't mind:

   $ cp /bin/ls .
   $ chmod a-r ls
   $ ./ls -l ls
   --wx--x--x 1 jwilk jwilk 138856 Jun  6 20:22 ls

-- 
Jakub Wilk
