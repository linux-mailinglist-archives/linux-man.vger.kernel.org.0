Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BEB2B342CE6
	for <lists+linux-man@lfdr.de>; Sat, 20 Mar 2021 13:56:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229872AbhCTMzz (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 20 Mar 2021 08:55:55 -0400
Received: from smtpout1.mo529.mail-out.ovh.net ([178.32.125.2]:45309 "EHLO
        smtpout1.mo529.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S229870AbhCTMzu (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 20 Mar 2021 08:55:50 -0400
X-Greylist: delayed 4197 seconds by postgrey-1.27 at vger.kernel.org; Sat, 20 Mar 2021 08:55:50 EDT
Received: from mxplan6.mail.ovh.net (unknown [10.109.146.44])
        by mo529.mail-out.ovh.net (Postfix) with ESMTPS id ED91592C51DF;
        Sat, 20 Mar 2021 10:58:20 +0100 (CET)
Received: from jwilk.net (37.59.142.102) by DAG4EX2.mxp6.local (172.16.2.32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2; Sat, 20 Mar
 2021 10:58:20 +0100
Authentication-Results: garm.ovh; auth=pass (GARM-102R004f27b8e8a-76de-422b-aa71-89e42377b1ab,
                    E3D8B16A4C4033EC220E688831C5892F18962311) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp: 5.173.72.230
Date:   Sat, 20 Mar 2021 10:58:19 +0100
From:   Jakub Wilk <jwilk@jwilk.net>
To:     Alejandro Colomar <alx.manpages@gmail.com>
CC:     Michael Kerrisk <mtk.manpages@gmail.com>,
        <linux-man@vger.kernel.org>, Mark Kettenis <kettenis@openbsd.org>
Subject: Re: [PATCH] errno.3: ENODATA is an XSI STREAMS extension
Message-ID: <20210320095818.qdhi4rtwy3r2bflf@jwilk.net>
References: <20210319235717.28264-7-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <20210319235717.28264-7-alx.manpages@gmail.com>
User-Agent: NeoMutt/20180716
X-Originating-IP: [37.59.142.102]
X-ClientProxiedBy: DAG3EX2.mxp6.local (172.16.2.22) To DAG4EX2.mxp6.local
 (172.16.2.32)
X-Ovh-Tracer-GUID: 5d25b835-4834-4d36-bd24-3a1e4c99c09b
X-Ovh-Tracer-Id: 14356349715216062432
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduledrudegtddgtdegucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhepfffhvffukfhfgggtuggjfghisehttdertddtredvnecuhfhrohhmpeflrghkuhgsucghihhlkhcuoehjfihilhhksehjfihilhhkrdhnvghtqeenucggtffrrghtthgvrhhnpedvjefftdekudehhfdvleeihfekudekjeevkeeuteekgffgvefftdffkeehfeefheenucffohhmrghinhepuddqvddttddurdhnohenucfkpheptddrtddrtddrtddpfeejrdehledrudegvddruddtvdenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhhouggvpehsmhhtphdqohhuthdphhgvlhhopehmgihplhgrnheirdhmrghilhdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomhepjhifihhlkhesjhifihhlkhdrnhgvthdprhgtphhtthhopehkvghtthgvnhhishesohhpvghnsghsugdrohhrgh
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

* Alejandro Colomar <alx.manpages@gmail.com>, 2021-03-20, 00:57:
>-No message is available on the STREAM head read queue (POSIX.1-2001).
>+No message is available on the STREAM head read queue
>+(POSIX.1-2001 (XSI STREAMS option).

The parentheses are unbalanced.

-- 
Jakub Wilk
