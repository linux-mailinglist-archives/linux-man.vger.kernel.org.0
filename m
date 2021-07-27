Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DF4F53D7E48
	for <lists+linux-man@lfdr.de>; Tue, 27 Jul 2021 21:09:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230136AbhG0TJK (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 27 Jul 2021 15:09:10 -0400
Received: from 5.mo548.mail-out.ovh.net ([188.165.49.213]:51959 "EHLO
        5.mo548.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230153AbhG0TJK (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 27 Jul 2021 15:09:10 -0400
Received: from mxplan6.mail.ovh.net (unknown [10.108.20.10])
        by mo548.mail-out.ovh.net (Postfix) with ESMTPS id 0EDDC20691;
        Tue, 27 Jul 2021 19:03:18 +0000 (UTC)
Received: from jwilk.net (37.59.142.97) by DAG4EX2.mxp6.local (172.16.2.32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2308.14; Tue, 27 Jul
 2021 21:03:17 +0200
Authentication-Results: garm.ovh; auth=pass (GARM-97G002d4f70c74-f1c4-4a57-b268-9c6be867040c,
                    10C3B95088071761BE52F856AC2660B886717A5C) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp: 5.173.40.86
Date:   Tue, 27 Jul 2021 21:03:15 +0200
From:   Jakub Wilk <jwilk@jwilk.net>
To:     Michael Kerrisk <mtk.manpages@gmail.com>
CC:     Helge Kreutzmann <debian@helgefjell.de>,
        <linux-man@vger.kernel.org>
Subject: Re: Errors in man pages, here: signal.2
Message-ID: <20210727190315.i55sv2pap6ffhkuv@jwilk.net>
References: <20210725170929.GA16841@Debian-50-lenny-64-minimal>
 <CAKgNAki+-u-7MY8pD5WB95ss_0_f=2B4zk7HnckxNDD6mD=UDA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <CAKgNAki+-u-7MY8pD5WB95ss_0_f=2B4zk7HnckxNDD6mD=UDA@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-Originating-IP: [37.59.142.97]
X-ClientProxiedBy: DAG5EX2.mxp6.local (172.16.2.42) To DAG4EX2.mxp6.local
 (172.16.2.32)
X-Ovh-Tracer-GUID: 7be526b9-fb81-41b9-a087-3672f46c8b13
X-Ovh-Tracer-Id: 6374000851907696605
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvtddrgeejgdduvdehucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucenucfjughrpeffhffvuffkfhggtggujggfihesthdtredttdervdenucfhrhhomheplfgrkhhusgcuhghilhhkuceojhifihhlkhesjhifihhlkhdrnhgvtheqnecuggftrfgrthhtvghrnhephfefvdefheevhfekledtjeegleetfedvfedvuddvfefgudeuiedtieetvddthefgnecukfhppedtrddtrddtrddtpdefjedrheelrddugedvrdeljeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhhouggvpehsmhhtphdqohhuthdphhgvlhhopehmgihplhgrnheirdhmrghilhdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomhepjhifihhlkhesjhifihhlkhdrnhgvthdprhgtphhtthhopehlihhnuhigqdhmrghnsehvghgvrhdrkhgvrhhnvghlrdhorhhg
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

* Michael Kerrisk <mtk.manpages@gmail.com>, 2021-07-25, 23:02:
>>Man page: signal.2
>>Issue: Such paragraphs shouldn't be no-wrap
>>
>>"B<WARNING>:\n"
>>" the behavior of\n"
>>"B<signal>()\n"
>>"varies across UNIX versions,\n"
>>"and has also varied historically across different versions of Linux.\n"
>>"B<Avoid its use>: use\n"
>>"B<sigaction>(2)\n"
>>"instead.\n"
>>"See I<Portability> below.\n"
>
>I don't understand this report, and can't see a problem. Please 
>elaborate.

I think the problem is that the spurious space before "the behavior" is 
confusing po4a.

-- 
Jakub Wilk
