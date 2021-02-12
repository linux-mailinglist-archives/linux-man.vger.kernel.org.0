Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EB34F319C06
	for <lists+linux-man@lfdr.de>; Fri, 12 Feb 2021 10:44:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229905AbhBLJmM (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 12 Feb 2021 04:42:12 -0500
Received: from smtpout1.mo529.mail-out.ovh.net ([178.32.125.2]:39373 "EHLO
        smtpout1.mo529.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S230039AbhBLJmK (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 12 Feb 2021 04:42:10 -0500
Received: from mxplan6.mail.ovh.net (unknown [10.109.143.25])
        by mo529.mail-out.ovh.net (Postfix) with ESMTPS id C735F85C18D8;
        Fri, 12 Feb 2021 10:41:24 +0100 (CET)
Received: from jwilk.net (37.59.142.105) by DAG4EX2.mxp6.local (172.16.2.32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2; Fri, 12 Feb
 2021 10:41:23 +0100
Authentication-Results: garm.ovh; auth=pass (GARM-105G006c5dd3365-6896-47d8-9eec-ae585c37f2a4,
                    FCF76256F68EFDEA70E8387DD74B31D76C8F81A9) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp: 5.172.255.251
Date:   Fri, 12 Feb 2021 10:41:02 +0100
From:   Jakub Wilk <jwilk@jwilk.net>
To:     Alejandro Colomar <alx.manpages@gmail.com>
CC:     <xenoantares@gmx.net>, <linux-man@vger.kernel.org>,
        Walter Harms <wharms@bfs.de>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Subject: Re: expm1(3p): Mathematical error in given example
Message-ID: <20210212094102.ehxzmqvz2chvzgj5@jwilk.net>
References: <1169008777.20210211105918@gmx.net>
 <2c78f3a8-170a-d7dd-929e-e950d5920dd9@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <2c78f3a8-170a-d7dd-929e-e950d5920dd9@gmail.com>
User-Agent: NeoMutt/20180716
X-Originating-IP: [37.59.142.105]
X-ClientProxiedBy: DAG4EX1.mxp6.local (172.16.2.31) To DAG4EX2.mxp6.local
 (172.16.2.32)
X-Ovh-Tracer-GUID: 60f58432-6dec-48b3-b3f0-3649b937286d
X-Ovh-Tracer-Id: 5567575042737362851
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduledriedugddtjecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpeffhffvuffkfhggtggujggfihesthdtredttdervdenucfhrhhomheplfgrkhhusgcuhghilhhkuceojhifihhlkhesjhifihhlkhdrnhgvtheqnecuggftrfgrthhtvghrnhephfefvdefheevhfekledtjeegleetfedvfedvuddvfefgudeuiedtieetvddthefgnecukfhppedtrddtrddtrddtpdefjedrheelrddugedvrddutdehnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmohguvgepshhmthhpqdhouhhtpdhhvghlohepmhigphhlrghniedrmhgrihhlrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpehjfihilhhksehjfihilhhkrdhnvghtpdhrtghpthhtohepmhhtkhdrmhgrnhhprghgvghssehgmhgrihhlrdgtohhm
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

* Alejandro Colomar <alx.manpages@gmail.com>, 2021-02-11, 16:49:
>>In the APPLICATION USAGE section of expm1(3p)[1] the given example is wrong:
>>
>>===8<=== Snip =========================================
>>
>>[..] calculations of ((1+x)n-1)/x, namely:
>>
>>           expm1(n * log1p(x))/x
>>
>>======== Snap ====================================>8===
>>
>>Actually, both expressions are not equal, rather
>>
>> expm1(n * log1p(x))/x = ((1+x)**n - 1)/x
>>
>>(with a fictional ** as power infix-operator) would be.
[...]
>We don't maintain the source of the POSIX manual pages.  You could file 
>a bug to the Austin Group.

As Walter noted in another mail, the POSIX sources are correct.

This is a problem with conversion to the man page format, which should 
be reported here, not to the Austin Group.

-- 
Jakub Wilk
