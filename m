Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5E28A3170E9
	for <lists+linux-man@lfdr.de>; Wed, 10 Feb 2021 21:09:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232754AbhBJUJD (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 10 Feb 2021 15:09:03 -0500
Received: from 4.mo51.mail-out.ovh.net ([188.165.42.229]:38489 "EHLO
        4.mo51.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232579AbhBJUJD (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 10 Feb 2021 15:09:03 -0500
X-Greylist: delayed 3602 seconds by postgrey-1.27 at vger.kernel.org; Wed, 10 Feb 2021 15:09:02 EST
Received: from mxplan6.mail.ovh.net (unknown [10.109.156.216])
        by mo51.mail-out.ovh.net (Postfix) with ESMTPS id 2EE5726531F;
        Wed, 10 Feb 2021 19:12:54 +0100 (CET)
Received: from jwilk.net (37.59.142.102) by DAG4EX2.mxp6.local (172.16.2.32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2; Wed, 10 Feb
 2021 19:12:53 +0100
Authentication-Results: garm.ovh; auth=pass (GARM-102R0043e82b5da-a01c-48ab-bee7-b93817edda5c,
                    10E0D6DA83A412C579D91B3E91F1F000D068A5F7) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp: 5.172.255.230
Date:   Wed, 10 Feb 2021 19:12:52 +0100
From:   Jakub Wilk <jwilk@jwilk.net>
To:     Alyssa Ross <hi@alyssa.is>
CC:     <linux-man@vger.kernel.org>,
        Alejandro Colomar <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Subject: Re: [PATCH] open.2, rename.2: refer to tmpfs rather than shmem
Message-ID: <20210210181252.pnteiqm5mj3zljse@jwilk.net>
References: <20210210174245.17027-1-hi@alyssa.is>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <20210210174245.17027-1-hi@alyssa.is>
User-Agent: NeoMutt/20180716
X-Originating-IP: [37.59.142.102]
X-ClientProxiedBy: DAG8EX2.mxp6.local (172.16.2.72) To DAG4EX2.mxp6.local
 (172.16.2.32)
X-Ovh-Tracer-GUID: 4dba5c60-d098-4b69-8879-ee170c8bcca6
X-Ovh-Tracer-Id: 2460654247936710624
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduledrheejgddutdelucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucenucfjughrpeffhffvuffkfhggtggujggfihesthdtredttdervdenucfhrhhomheplfgrkhhusgcuhghilhhkuceojhifihhlkhesjhifihhlkhdrnhgvtheqnecuggftrfgrthhtvghrnhepkeeftdeiudeiuddutdffgfdvueefhfetjefhffeuheeutefgkedvueffleelfeefnecuffhomhgrihhnpehsphhinhhitghsrdhnvghtnecukfhppedtrddtrddtrddtpdefjedrheelrddugedvrddutddvnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmohguvgepshhmthhpqdhouhhtpdhhvghlohepmhigphhlrghniedrmhgrihhlrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpehjfihilhhksehjfihilhhkrdhnvghtpdhrtghpthhtohepmhhtkhdrmhgrnhhprghgvghssehgmhgrihhlrdgtohhm
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alyssa!

* Alyssa Ross <hi@alyssa.is>, 2021-02-10, 17:42:
>Skimming open(2), I was surprised not to see tmpfs mentioned as a 
>filesystem supported by O_TMPFILE.
>
>If I'm understanding correctly (I'm very possibly not!), tmpfs is a 
>filesystem built on shmem, so I think it's more correct (and probably 
>much more widely understandable) to refer to tmpfs here.

This is my understanding too. See 
https://www.spinics.net/lists/linux-man/msg13703.html for previous 
discussion.

(Michael was going to fix rename.2 back then, but something went wrong.)

-- 
Jakub Wilk
