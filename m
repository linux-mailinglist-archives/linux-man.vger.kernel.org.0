Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F411C58D1A9
	for <lists+linux-man@lfdr.de>; Tue,  9 Aug 2022 03:15:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244435AbiHIBP6 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 8 Aug 2022 21:15:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58944 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236939AbiHIBPZ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 8 Aug 2022 21:15:25 -0400
Received: from szxga03-in.huawei.com (szxga03-in.huawei.com [45.249.212.189])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C93FC1E3F1
        for <linux-man@vger.kernel.org>; Mon,  8 Aug 2022 18:15:08 -0700 (PDT)
Received: from dggpemm500024.china.huawei.com (unknown [172.30.72.55])
        by szxga03-in.huawei.com (SkyGuard) with ESMTP id 4M1w7T4znnz1HBXJ;
        Tue,  9 Aug 2022 09:13:41 +0800 (CST)
Received: from [10.67.110.173] (10.67.110.173) by
 dggpemm500024.china.huawei.com (7.185.36.203) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.24; Tue, 9 Aug 2022 09:15:05 +0800
Message-ID: <d4726539-0476-f7c2-6a93-31da9ad7be05@huawei.com>
Date:   Tue, 9 Aug 2022 09:15:05 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
Subject: Re: [patch v3] random.4: Update description about O_NONBLOCK flag
Content-Language: en-US
To:     Alejandro Colomar <alx.manpages@gmail.com>,
        Eric Biggers <ebiggers@kernel.org>
CC:     <mtk.manpages@gmail.com>, <Jason@zx2c4.com>,
        <petr.vorel@gmail.com>, <fweimer@redhat.com>,
        <linux-man@vger.kernel.org>
References: <20220803074555.64090-1-guozihua@huawei.com>
 <73ed2877-3135-8463-4c9e-1dcc9f099d7f@gmail.com> <Yu1lQQWRZlPQ2r2V@gmail.com>
 <731c226a-0f81-322b-199a-4d5245dd3fb3@huawei.com>
 <f19171e3-ac26-0bc7-a92a-2e8f31551d42@gmail.com>
From:   "Guozihua (Scott)" <guozihua@huawei.com>
In-Reply-To: <f19171e3-ac26-0bc7-a92a-2e8f31551d42@gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-Originating-IP: [10.67.110.173]
X-ClientProxiedBy: dggems705-chm.china.huawei.com (10.3.19.182) To
 dggpemm500024.china.huawei.com (7.185.36.203)
X-CFilter-Loop: Reflected
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 2022/8/9 2:28, Alejandro Colomar wrote:
> Hi.
> 
> On 8/8/22 03:20, Guozihua (Scott) wrote:
>> On 2022/8/6 2:45, Eric Biggers wrote:
>>> On Fri, Aug 05, 2022 at 08:36:02PM +0200, Alejandro Colomar wrote:
>>>>> +In eariler versions, if
>>>
>>> Typo: eariler => earlier
>>>
>>> - Eric
>>> .
>>
>> Good catch Eric!
>>
>> Am I still able to fix this?
> 
> Heh, sorry but I pushed already.  I forgot to fix it, so I fixed it in a 
> separate commit:
> 
> <https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/commit/?id=226cd95d78c24dee169bb96913721221fb8f656a> 
> 
> 
> Cheers,
> 
> Alex
> 

Thanks Alex, no problem.

-- 
Best
GUO Zihua
