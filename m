Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 62F5D588823
	for <lists+linux-man@lfdr.de>; Wed,  3 Aug 2022 09:43:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233565AbiHCHn3 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 3 Aug 2022 03:43:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35154 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231898AbiHCHn2 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 3 Aug 2022 03:43:28 -0400
Received: from szxga03-in.huawei.com (szxga03-in.huawei.com [45.249.212.189])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 50F0F205C2
        for <linux-man@vger.kernel.org>; Wed,  3 Aug 2022 00:43:27 -0700 (PDT)
Received: from dggpemm500024.china.huawei.com (unknown [172.30.72.57])
        by szxga03-in.huawei.com (SkyGuard) with ESMTP id 4LyP2Q37cLzTgT2;
        Wed,  3 Aug 2022 15:42:06 +0800 (CST)
Received: from [10.67.110.173] (10.67.110.173) by
 dggpemm500024.china.huawei.com (7.185.36.203) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.24; Wed, 3 Aug 2022 15:43:23 +0800
Message-ID: <d3e06f9d-dcd4-80e9-c6d5-d1723aca4df5@huawei.com>
Date:   Wed, 3 Aug 2022 15:43:19 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
Subject: Re: [patch] random.4: Update description about O_NONBLOCK flag
Content-Language: en-US
To:     Florian Weimer <fweimer@redhat.com>
CC:     <linux-man@vger.kernel.org>, <alx.manpages@gmail.com>,
        <mtk.manpages@gmail.com>, <Jason@zx2c4.com>, <ebiggers@kernel.org>
References: <20220802035336.33772-1-guozihua@huawei.com>
 <87y1w5dby0.fsf@oldenburg.str.redhat.com>
From:   "Guozihua (Scott)" <guozihua@huawei.com>
In-Reply-To: <87y1w5dby0.fsf@oldenburg.str.redhat.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-Originating-IP: [10.67.110.173]
X-ClientProxiedBy: dggems702-chm.china.huawei.com (10.3.19.179) To
 dggpemm500024.china.huawei.com (7.185.36.203)
X-CFilter-Loop: Reflected
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 2022/8/3 15:27, Florian Weimer wrote:
> * GUO Zihua:
> 
>> diff --git a/man4/random.4 b/man4/random.4
>> index bea860e7f0d7..5b2094931449 100644
>> --- a/man4/random.4
>> +++ b/man4/random.4
>> @@ -68,7 +68,12 @@ high quality randomness, and can afford indeterminate delays.
>>   .PP
>>   When the entropy pool is empty, reads from \fI/dev/random\fP will block
>>   until additional environmental noise is gathered.
>> -If
>> +Since Linux 5.6, the
>> +.B O_NONBLOCK
>> +flag is removed as
>> +.I /dev/random
>> +will no longer block except during
>> +early boot process. In eariler versions, if
>>   .BR open (2)
>>   is called for
>>   .I /dev/random
> 
> Is ”is removed” correct here?  Should it be “is ignored” instead?
> 
> Thanks,
> Florian
> 
> .

Hi Florian

Indeed this could be even more precise.

-- 
Best
GUO Zihua
