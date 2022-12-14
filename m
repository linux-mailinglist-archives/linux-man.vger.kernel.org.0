Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0C41264D18E
	for <lists+linux-man@lfdr.de>; Wed, 14 Dec 2022 22:01:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229451AbiLNVBI (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 14 Dec 2022 16:01:08 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50746 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229441AbiLNVBG (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 14 Dec 2022 16:01:06 -0500
Received: from hosted.mailcow.de (hosted.mailcow.de [5.1.76.202])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 35E292BB2A
        for <linux-man@vger.kernel.org>; Wed, 14 Dec 2022 13:01:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pearson.onl; s=default;
        t=1671051660; h=from:subject:date:message-id:to:cc:mime-version:content-type:
         content-transfer-encoding:in-reply-to:references;
        bh=VrxBfg+sylcUyJ1AzyUdfi/CoRQGSt3tYlbHTFTd1X8=;
        b=bVLfQAX+Ntd9YNhKVkBckVMn5wpaJxJsz4x9GrcG1X+Hx3EQzPbboN2GME+0IRYz9llxOX
        6UH1aqebq+8l8k8SncWwlFUZFHEdX25WY8PX0ovc09jXKYaT2gI5T+e4RXp4LYhcCfuAYl
        ZWtADhYQMlLKIOqFDsbdUJwq/mfxXpSVrNLhfA6Yjfs0tdHExRtGhm0LaceYW1nEha7UrW
        adM3rSuSD+YHquVeFLKdv0pXNMW/7ALuyQOelJX8Nj3a0iY5rbGEt5ePIjrwT5kxBJUhM1
        L0C2jMbjq4HBDOa34AIlz8Y2yNAN0Wfk+bX4YomXfUwhUnCkbbPTvHP/lH+GvQ==
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id A27D97C14B5;
        Wed, 14 Dec 2022 22:00:59 +0100 (CET)
Message-ID: <6223bdf7-bbb4-890f-ad41-3ee75ecb0fb4@pearson.onl>
Date:   Wed, 14 Dec 2022 13:00:57 -0800
MIME-Version: 1.0
Subject: Re: [PATCH] clone.2: note EINVAL when exit_signal + bad flags
Content-Language: en-US
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
References: <20221202224419.231717-1-jack@pearson.onl>
 <606b744f-131d-15b5-3242-745b400b3fa9@gmail.com>
 <d96be4c5-b8b5-38da-57d0-55e02a41abcd@redhat.com>
From:   Jack Pearson <jack@pearson.onl>
In-Reply-To: <d96be4c5-b8b5-38da-57d0-55e02a41abcd@redhat.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,SPF_HELO_PASS,
        T_SPF_PERMERROR autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 12/12/22 18:53, Carlos O'Donell wrote:
> On 12/9/22 14:49, Alejandro Colomar wrote:
>> Hi Jack,
>>
>> On 12/2/22 23:44, Jack Pearson wrote:
>>> Document that Linux will report EINVAL when exit_signal is specified and
>>> either CLONE_THREAD or CLONE_PARENT is specified.
>>>
>>>   From clone3_args_valid in Linux:
>>> ```
>>>      if ((kargs->flags & (CLONE_THREAD | CLONE_PARENT)) &&
>>>          kargs->exit_signal)
>>>          return false;
>>> ```
>>>
>>> I have verified that this happens on my kernel with a small program, and
>>> that this doesn't happen with normal `clone` through the glibc helper.
>>
>> Could you please also send a test program with the glibc wrapper?
>>
>> BTW, glibc has a clone3(2) wrapper since last year.  It would be interesting to document it instead of the raw syscall.
> 
> glibc does not have a clone3 wrapper.
> 
> glibc has an internal non-exported __clone3 interface that we use for pthreads,
> and likely soon for posix_spawn.
> 
> We have not yet chosen to export clone3 as a public global symbol that developers
> can use.
> 

Ahhh, that's why I couldn't find it in the headers.

Incoming patch with the glibc clone wrapper test program.


Jack
