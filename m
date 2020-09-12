Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1F121267804
	for <lists+linux-man@lfdr.de>; Sat, 12 Sep 2020 07:52:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725824AbgILFwh (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 12 Sep 2020 01:52:37 -0400
Received: from smtpout1.mo804.mail-out.ovh.net ([79.137.123.220]:34201 "EHLO
        smtpout1.mo804.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1725808AbgILFwh (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 12 Sep 2020 01:52:37 -0400
Received: from mxplan6.mail.ovh.net (unknown [10.108.1.249])
        by mo804.mail-out.ovh.net (Postfix) with ESMTPS id 6AA7C60C12D6;
        Sat, 12 Sep 2020 07:52:35 +0200 (CEST)
Received: from jwilk.net (37.59.142.105) by DAG4EX2.mxp6.local (172.16.2.32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2044.4; Sat, 12 Sep
 2020 07:52:34 +0200
Authentication-Results: garm.ovh; auth=pass (GARM-105G006004a689d-86c0-419d-bebf-afaac483bc93,
                    843E792B4B45FCF64B3E3BD32F5655EBCB249E20) smtp.auth=jwilk@jwilk.net
Date:   Sat, 12 Sep 2020 07:52:32 +0200
From:   Jakub Wilk <jwilk@jwilk.net>
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
CC:     Michael Kerrisk <mtk.manpages@gmail.com>,
        <linux-man@vger.kernel.org>
Subject: Re: [PATCH 01/12] dl_iterate_phdr.3: Cast 'ElfN_Word' to 'uintmax_t'
 for printf()
Message-ID: <20200912055232.s6lp2hspbuwvscps@jwilk.net>
References: <20200911231411.28406-1-colomar.6.4.3@gmail.com>
 <20200911231411.28406-2-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <20200911231411.28406-2-colomar.6.4.3@gmail.com>
User-Agent: NeoMutt/20180716
X-Originating-IP: [37.59.142.105]
X-ClientProxiedBy: DAG9EX1.mxp6.local (172.16.2.81) To DAG4EX2.mxp6.local
 (172.16.2.32)
X-Ovh-Tracer-GUID: db6ebf50-1183-41ea-8c4a-47546a8ed1f9
X-Ovh-Tracer-Id: 7071495842555287517
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduiedrudeitddgleejucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhepfffhvffukfhfgggtuggjfghisehttdertddtredvnecuhfhrohhmpeflrghkuhgsucghihhlkhcuoehjfihilhhksehjfihilhhkrdhnvghtqeenucggtffrrghtthgvrhhnpefhfedvfeehvefhkeeltdejgeelteefvdefvdduvdefgfduueeitdeitedvtdehgfenucfkpheptddrtddrtddrtddpfeejrdehledrudegvddruddtheenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhhouggvpehsmhhtphdqohhuthdphhgvlhhopehmgihplhgrnheirdhmrghilhdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomhepjhifihhlkhesjhifihhlkhdrnhgvthdprhgtphhtthhopehlihhnuhigqdhmrghnsehvghgvrhdrkhgvrhhnvghlrdhorhhg
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

* Alejandro Colomar <colomar.6.4.3@gmail.com>, 2020-09-12, 01:14:
>-        printf("    %2d: [%14p; memsz:%7lx] flags: %#x; ", j,
>+        printf("    %2d: [%14p; memsz:%7jx] flags: %#jx; ", j,
>                 (void *) (info\->dlpi_addr + info\->dlpi_phdr[j].p_vaddr),
>-                info\->dlpi_phdr[j].p_memsz,
>-                info\->dlpi_phdr[j].p_flags);
>+                (uintmax_t) info\->dlpi_phdr[j].p_memsz,
>+                (uintmax_t) info\->dlpi_phdr[j].p_flags);

The commit message is misleading. ElfN_Word is always uint32_t, 
regardless of N. On the other hand, on 64-bit architectures the type of 
p_memsz is Elf64_Xword (i.e., uint64_t), not Elf64_Word.

-- 
Jakub Wilk
