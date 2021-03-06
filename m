Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 87CA632FBD2
	for <lists+linux-man@lfdr.de>; Sat,  6 Mar 2021 17:19:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231252AbhCFQTH (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 6 Mar 2021 11:19:07 -0500
Received: from 6.mo52.mail-out.ovh.net ([188.165.49.222]:40460 "EHLO
        6.mo52.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231215AbhCFQSu (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 6 Mar 2021 11:18:50 -0500
X-Greylist: delayed 2147 seconds by postgrey-1.27 at vger.kernel.org; Sat, 06 Mar 2021 11:18:50 EST
Received: from mxplan6.mail.ovh.net (unknown [10.108.20.240])
        by mo52.mail-out.ovh.net (Postfix) with ESMTPS id 6AD3A2468B6;
        Sat,  6 Mar 2021 16:42:56 +0100 (CET)
Received: from jwilk.net (37.59.142.99) by DAG4EX2.mxp6.local (172.16.2.32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2; Sat, 6 Mar 2021
 16:42:55 +0100
Authentication-Results: garm.ovh; auth=pass (GARM-99G003bf2e1bdb-2663-4839-aa03-adf9def96364,
                    C347C0E703519A190E99DE0CFE3AB2FBE17B0FE8) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp: 5.173.80.118
Date:   Sat, 6 Mar 2021 16:42:53 +0100
From:   Jakub Wilk <jwilk@jwilk.net>
To:     Philipp Schuster <phip1611@gmail.com>
CC:     Michael Kerrisk <mtk.manpages@gmail.com>,
        <linux-man@vger.kernel.org>
Subject: Re: Misleading documentation in Netlink(7) man page / doesn't match
 with Kernel
Message-ID: <20210306154253.qedy3ly2uqoouniw@jwilk.net>
References: <CAKmF0pOMR9OMd4=ikHu31QGCVOWu10vvH4OzzgbUtPGGdbW05Q@mail.gmail.com>
 <CAKgNAkgHu8jMNfqcXjxvwSDP73fzA_2iYTRgucRn=UA1t=QHrg@mail.gmail.com>
 <CAKmF0pMWfH1RzEtQCh6yjDVqhtw8QxwPardoGt9ouheUVm0fkQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <CAKmF0pMWfH1RzEtQCh6yjDVqhtw8QxwPardoGt9ouheUVm0fkQ@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-Originating-IP: [37.59.142.99]
X-ClientProxiedBy: DAG7EX2.mxp6.local (172.16.2.62) To DAG4EX2.mxp6.local
 (172.16.2.32)
X-Ovh-Tracer-GUID: 5c1dd90c-4875-45bb-b1ee-36c35b8ad4ae
X-Ovh-Tracer-Id: 11745387830600914909
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduledruddtkedgjeefucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucenucfjughrpeffhffvuffkfhggtggujggfihesthdtredttdervdenucfhrhhomheplfgrkhhusgcuhghilhhkuceojhifihhlkhesjhifihhlkhdrnhgvtheqnecuggftrfgrthhtvghrnhephfefvdefheevhfekledtjeegleetfedvfedvuddvfefgudeuiedtieetvddthefgnecukfhppedtrddtrddtrddtpdefjedrheelrddugedvrdelleenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhhouggvpehsmhhtphdqohhuthdphhgvlhhopehmgihplhgrnheirdhmrghilhdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomhepjhifihhlkhesjhifihhlkhdrnhgvthdprhgtphhtthhopehlihhnuhigqdhmrghnsehvghgvrhdrkhgvrhhnvghlrdhorhhg
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

* Philipp Schuster <phip1611@gmail.com>, 2021-02-20, 23:48:
>+message terminates a multipart message. Error messages get the
>+original request appened, unless the user requests to cap the

s/appened/appended/ ?

-- 
Jakub Wilk
