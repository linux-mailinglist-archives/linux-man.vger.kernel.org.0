Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C7C3A6A63DC
	for <lists+linux-man@lfdr.de>; Wed,  1 Mar 2023 00:44:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229629AbjB1XoH (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 28 Feb 2023 18:44:07 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58128 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229656AbjB1XoG (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 28 Feb 2023 18:44:06 -0500
Received: from hosted.mailcow.de (hosted.mailcow.de [IPv6:2a00:f820:417::202])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F1CF323648
        for <linux-man@vger.kernel.org>; Tue, 28 Feb 2023 15:44:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pearson.onl; s=default;
        t=1677627840; h=from:subject:date:message-id:to:cc:mime-version:content-type:
         content-transfer-encoding:in-reply-to:references;
        bh=VYTIAMkEn4WwejVRZbeLslPriY63+RDNMkIwkN50y+Y=;
        b=dqj/QpjPq78+9c6dR0gqe46jKtEt6oThdgjfhoSswA1OY848GGyAw/JPelJXVPAbGzG3Q+
        aAxhlpsn7ONnDpQb9x6H7eVJ/3/ofnXAndmfGPRltuwOvCTKSFf0OFR6JmFyUhiNL7FUE9
        StJ3ewsn4/dBIrGAGJUZCWWBGZlcQQD39YrXuiCs3VR926zuAUGvkRLdstkNRXFvRHMHMp
        mW/wMVympPczvyLjEljtstUvcRfo9Euut9STyfLka7t23JJZkBTH3SWYYzXUfaVBt3JTes
        FrJXdxjfRBuhTTkqixTCfdjB4XSvX/yVsHjcux96YnRmEjFLaMon4SfutRxvlw==
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 4D8B45C0569;
        Wed,  1 Mar 2023 00:43:59 +0100 (CET)
Message-ID: <68576ad9-3e29-c609-b9aa-88806152b8a0@pearson.onl>
Date:   Tue, 28 Feb 2023 15:43:54 -0800
MIME-Version: 1.0
Subject: Re: [PATCH v2] clone.2: note EINVAL when exit_signal + bad flags
Content-Language: en-US
To:     Alex Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org,
        GNU C Library <libc-alpha@sourceware.org>,
        Carlos O'Donell <carlos@redhat.com>
References: <20221214212849.17388-1-jack@pearson.onl>
 <9e2b4a99-7e68-844f-bffb-3c8efcc277fe@pearson.onl>
 <e7f4a2ad-7b84-d678-921c-ec1e790b3614@gmail.com>
From:   Jack Pearson <jack@pearson.onl>
In-Reply-To: <e7f4a2ad-7b84-d678-921c-ec1e790b3614@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,SPF_HELO_PASS,
        T_SPF_PERMERROR autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Alright, done!

Thanks,

Jack

On 2/24/23 17:04, Alex Colomar wrote:
> Hi Jack,
> 
> On 2/22/23 03:28, Jack Pearson wrote:
>> Hello,
>>
>> In this patch, I included my test program for the absence of this behavior with
>> normal `clone` per Alex's request:
>>
>> https://lore.kernel.org/linux-man/fba3de52-91cc-6cbe-b4ae-7140564e9ad2@pearson.onl/T/#mde63a642e9c8d0b4e367b0a2817248e8e0b29a50
>>
>> Let me know if there's anything else I should do.
> 
> Could you please resend the patch (keeping all CCs), and I'll have a look at it again?
> 
> Thanks for the ping,
> 
> Alex
> 
>>
>> Thanks,
>> Jack
>>
>> On 12/14/22 13:28, Jack Pearson wrote:
>>> Document that Linux will report EINVAL when exit_signal is specified and
>>> either CLONE_THREAD or CLONE_PARENT is specified.
>>>
>> ...
> 
