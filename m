Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0ECD61BC78B
	for <lists+linux-man@lfdr.de>; Tue, 28 Apr 2020 20:09:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728313AbgD1SJs (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 28 Apr 2020 14:09:48 -0400
Received: from smtpout1.mo804.mail-out.ovh.net ([79.137.123.220]:35511 "EHLO
        smtpout1.mo804.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1728023AbgD1SJs (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 28 Apr 2020 14:09:48 -0400
Received: from mxplan6.mail.ovh.net (unknown [10.108.4.51])
        by mo804.mail-out.ovh.net (Postfix) with ESMTPS id 035BB38D6C17;
        Tue, 28 Apr 2020 20:09:45 +0200 (CEST)
Received: from jwilk.net (37.59.142.96) by DAG4EX2.mxp6.local (172.16.2.32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1779.2; Tue, 28 Apr
 2020 20:09:44 +0200
Date:   Tue, 28 Apr 2020 20:09:42 +0200
From:   Jakub Wilk <jwilk@jwilk.net>
To:     Adam Langley <agl@google.com>
CC:     Michael Kerrisk <mtk.manpages@gmail.com>,
        <linux-man@vger.kernel.org>, <alangley@gmail.com>
Subject: Re: [PATCH] madvise.2: MADV_WIPEONFORK affects semantics
Message-ID: <20200428180942.qwjjmp2e5sbx3opn@jwilk.net>
References: <000000000000b27fc105a45d533e@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <000000000000b27fc105a45d533e@google.com>
User-Agent: NeoMutt/20180716
X-Originating-IP: [37.59.142.96]
X-ClientProxiedBy: DAG5EX1.mxp6.local (172.16.2.41) To DAG4EX2.mxp6.local
 (172.16.2.32)
X-Ovh-Tracer-GUID: 1996fa8d-fef5-4bce-b039-6c020e2fbb77
X-Ovh-Tracer-Id: 8172063002397431776
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduhedriedugdduvddtucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucenucfjughrpeffhffvuffkfhggtggujggfihesthdtredttdervdenucfhrhhomheplfgrkhhusgcuhghilhhkuceojhifihhlkhesjhifihhlkhdrnhgvtheqnecukfhppedtrddtrddtrddtpdefjedrheelrddugedvrdelieenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhhouggvpehsmhhtphdqohhuthdphhgvlhhopehmgihplhgrnheirdhmrghilhdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomhepjhifihhlkhesjhifihhlkhdrnhgvthdprhgtphhtthhopegrlhgrnhhglhgvhiesghhmrghilhdrtghomh
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Adam!

* Adam Langley <agl@google.com>, 2020-04-28, 17:40:
> These
> .I advice
> values do not influence the semantics of the application
> (except in the case of
>-.BR MADV_DONTNEED ),
>+.BR MADV_DONTNEED
>+and
>+.BR MADV_WIPEONFORK ),
> but may influence its performance.

This sentence is in the "Conventional advice value" subsection, which 
defines only MADV_NORMAL, MADV_RANDOM, MADV_SEQUENTIAL, MADV_WILLNEED, 
and MADV_DONTNEED.

MADV_WIPEONFORK is defined in the "Linux-specific advice values" 
subsection, which already notes that "some of these operations change 
the semantics of memory accesses". (Perhaps s/some/most/ would be better 
wording.)

-- 
Jakub Wilk
