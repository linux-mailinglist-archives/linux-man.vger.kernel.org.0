Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0337C269FE8
	for <lists+linux-man@lfdr.de>; Tue, 15 Sep 2020 09:36:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726150AbgIOHf6 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 15 Sep 2020 03:35:58 -0400
Received: from smtpout1.mo804.mail-out.ovh.net ([79.137.123.220]:52849 "EHLO
        smtpout1.mo804.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1726189AbgIOHf4 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 15 Sep 2020 03:35:56 -0400
Received: from mxplan6.mail.ovh.net (unknown [10.109.143.210])
        by mo804.mail-out.ovh.net (Postfix) with ESMTPS id 4F2F361B0A1A;
        Tue, 15 Sep 2020 09:35:31 +0200 (CEST)
Received: from jwilk.net (37.59.142.96) by DAG4EX2.mxp6.local (172.16.2.32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2044.4; Tue, 15 Sep
 2020 09:35:23 +0200
Authentication-Results: garm.ovh; auth=pass (GARM-96R0019eed892e-aa72-42d6-b11a-11405515a159,
                    4A00AE00CA0BE945D8E1708F3591CFE595923006) smtp.auth=jwilk@jwilk.net
Date:   Tue, 15 Sep 2020 09:35:22 +0200
From:   Jakub Wilk <jwilk@jwilk.net>
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
CC:     Michael Kerrisk <mtk.manpages@gmail.com>,
        <linux-man@vger.kernel.org>
Subject: Re: [PATCH 01/12] dl_iterate_phdr.3: Cast 'ElfN_Word' to 'uintmax_t'
 for printf()
Message-ID: <20200915073522.ct56hlmeatpcv4mw@jwilk.net>
References: <20200911231411.28406-1-colomar.6.4.3@gmail.com>
 <20200911231411.28406-2-colomar.6.4.3@gmail.com>
 <20200912055232.s6lp2hspbuwvscps@jwilk.net>
 <77bd61be-5044-c14c-a888-a09e64d14d39@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <77bd61be-5044-c14c-a888-a09e64d14d39@gmail.com>
User-Agent: NeoMutt/20180716
X-Originating-IP: [37.59.142.96]
X-ClientProxiedBy: DAG9EX1.mxp6.local (172.16.2.81) To DAG4EX2.mxp6.local
 (172.16.2.32)
X-Ovh-Tracer-GUID: c4b44b0a-2678-478c-a700-a4ac1ac04d40
X-Ovh-Tracer-Id: 7979252643538458589
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduiedrudeijedguddujecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpeffhffvuffkfhggtggujggfihesthdtredttdervdenucfhrhhomheplfgrkhhusgcuhghilhhkuceojhifihhlkhesjhifihhlkhdrnhgvtheqnecuggftrfgrthhtvghrnhephfefvdefheevhfekledtjeegleetfedvfedvuddvfefgudeuiedtieetvddthefgnecukfhppedtrddtrddtrddtpdefjedrheelrddugedvrdelieenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhhouggvpehsmhhtphdqohhuthdphhgvlhhopehmgihplhgrnheirdhmrghilhdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomhepjhifihhlkhesjhifihhlkhdrnhgvthdprhgtphhtthhopehlihhnuhigqdhmrghnsehvghgvrhdrkhgvrhhnvghlrdhorhhg
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

* Alejandro Colomar <colomar.6.4.3@gmail.com>, 2020-09-12, 10:31:
>> * Alejandro Colomar <colomar.6.4.3@gmail.com>, 2020-09-12, 01:14:
>>> -        printf("    %2d: [%14p; memsz:%7lx] flags: %#x; ", j,
>>> +        printf("    %2d: [%14p; memsz:%7jx] flags: %#jx; ", j,
>>>                 (void *) (info\->dlpi_addr +
>>> info\->dlpi_phdr[j].p_vaddr),
>>> -                info\->dlpi_phdr[j].p_memsz,
>>> -                info\->dlpi_phdr[j].p_flags);
>>> +                (uintmax_t) info\->dlpi_phdr[j].p_memsz,
>>> +                (uintmax_t) info\->dlpi_phdr[j].p_flags);
>>
>>The commit message is misleading. ElfN_Word is always uint32_t, 
>>regardless of N. On the other hand, on 64-bit architectures the type 
>>of p_memsz is Elf64_Xword (i.e., uint64_t), not Elf64_Word.
>
>Thanks for noticing that.  I had doubts while reading the man page.
>I think it could be a bit more clear, but maybe it's me that I don't 
>speak elfic :p
>
>Maybe 'ElfW(Word)' would be more appropriate?

I wouldn't know what "ElfW(Word)" means.

I'd write "Cast ELF types to uintmax_t" or something.

-- 
Jakub Wilk
