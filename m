Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 94BAA58BEAA
	for <lists+linux-man@lfdr.de>; Mon,  8 Aug 2022 03:20:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229967AbiHHBUc (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 7 Aug 2022 21:20:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53368 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229637AbiHHBUb (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 7 Aug 2022 21:20:31 -0400
Received: from szxga01-in.huawei.com (szxga01-in.huawei.com [45.249.212.187])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 405322717
        for <linux-man@vger.kernel.org>; Sun,  7 Aug 2022 18:20:30 -0700 (PDT)
Received: from dggpemm500024.china.huawei.com (unknown [172.30.72.57])
        by szxga01-in.huawei.com (SkyGuard) with ESMTP id 4M1JG7105KzjXZX;
        Mon,  8 Aug 2022 09:17:19 +0800 (CST)
Received: from [10.67.110.173] (10.67.110.173) by
 dggpemm500024.china.huawei.com (7.185.36.203) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.24; Mon, 8 Aug 2022 09:20:27 +0800
Message-ID: <731c226a-0f81-322b-199a-4d5245dd3fb3@huawei.com>
Date:   Mon, 8 Aug 2022 09:20:27 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
Subject: Re: [patch v3] random.4: Update description about O_NONBLOCK flag
Content-Language: en-US
To:     Eric Biggers <ebiggers@kernel.org>,
        Alejandro Colomar <alx.manpages@gmail.com>
CC:     <mtk.manpages@gmail.com>, <Jason@zx2c4.com>,
        <petr.vorel@gmail.com>, <fweimer@redhat.com>,
        <linux-man@vger.kernel.org>
References: <20220803074555.64090-1-guozihua@huawei.com>
 <73ed2877-3135-8463-4c9e-1dcc9f099d7f@gmail.com> <Yu1lQQWRZlPQ2r2V@gmail.com>
From:   "Guozihua (Scott)" <guozihua@huawei.com>
In-Reply-To: <Yu1lQQWRZlPQ2r2V@gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.67.110.173]
X-ClientProxiedBy: dggems702-chm.china.huawei.com (10.3.19.179) To
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

On 2022/8/6 2:45, Eric Biggers wrote:
> On Fri, Aug 05, 2022 at 08:36:02PM +0200, Alejandro Colomar wrote:
>>> +In eariler versions, if
> 
> Typo: eariler => earlier
> 
> - Eric
> .

Good catch Eric!

Am I still able to fix this?

-- 
Best
GUO Zihua
