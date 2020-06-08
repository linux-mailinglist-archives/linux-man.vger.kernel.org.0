Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 75EB91F1D1C
	for <lists+linux-man@lfdr.de>; Mon,  8 Jun 2020 18:18:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730482AbgFHQSz (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 8 Jun 2020 12:18:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59244 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730267AbgFHQSz (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 8 Jun 2020 12:18:55 -0400
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com [IPv6:2a00:1450:4864:20::442])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 58358C08C5C2
        for <linux-man@vger.kernel.org>; Mon,  8 Jun 2020 09:18:54 -0700 (PDT)
Received: by mail-wr1-x442.google.com with SMTP id x14so18069640wrp.2
        for <linux-man@vger.kernel.org>; Mon, 08 Jun 2020 09:18:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=2twqZHMzzQdmQN/dJ0ROpIuO8h/qVnaQzWZMH3G93rQ=;
        b=V50cy6V+yEzJCLzpcyj1cO67RBRVQnsFu7zJQ0x+vKHFXuaSQTSFh+vn4wn1PK+kX7
         PJTckM3bEjSehsZakP7e0EgLIzYEVqx9Mir90ZS7mT6YFAUaZqWYvjVRyc7TrWX4bBae
         Z9gOlzg/FR/+9w7ZsUU+JvmnCK4+n4WTiDcMiwI0HsSSUZAvZK1Rc5UvLufMJg0mGkyt
         Oxt26UJXLswbCt1STu1cBimmIKHhUR68Rj+Xs8IS34yOYyWsbD3bS+Jr0S0NQ8U0dR+3
         BJkjxUFyXYnE9LaBTzQmves6NSAljUssh9xKGTQQ1sIDHY8dw3m/JAgp/OV2EXa+y4VY
         xkhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=2twqZHMzzQdmQN/dJ0ROpIuO8h/qVnaQzWZMH3G93rQ=;
        b=dMyKcF3HljdwnremGf9Y0OnXwDoB/9uIZEe3B8PaQwnx2PVXiD3067/eh6qLumDfbi
         RhJMUztPkrkE5QabGY72IdM4vW3JT+1gmJDmhFf4A+JxI/3QXi9PSiov5QQluMi1rZ7W
         zXZwFJCSCPPUDWKH7Ay5HR9DAyoQXbn7++D6OV4Uc8Lvi4V3giS2M8EV9f7U+6jEHbCi
         PcG5qOpScii+Tzrft5XX8QuQI+x1QwjyEWPpVHlJFvExTp8a2blqXoTBHs66pnJqjXGc
         6n+by14bdj7wnpvEhY2w8S65dV/S3zHpBzIHMiU0f988DjuBqP6Z3SjLA5Q5I6qVTEJX
         OT5A==
X-Gm-Message-State: AOAM530+NhDM0w4IDSG0U8fFqqxbcV8wtVLA73Awqi9e2TXeS2KFS9oH
        /ivXR3c+SrSFPmXK4dAAIt1e0O9GTCg=
X-Google-Smtp-Source: ABdhPJyVM0V0/d7pd8/i0G9wxuLzsz8i6Bsi/atHaw6IhxhHPpxjSwUqQxbyJk0NiaivsLlztn3LDg==
X-Received: by 2002:adf:a51a:: with SMTP id i26mr23780244wrb.406.1591633132878;
        Mon, 08 Jun 2020 09:18:52 -0700 (PDT)
Received: from [192.168.178.63] (x5f734b84.dyn.telefonica.de. [95.115.75.132])
        by smtp.gmail.com with ESMTPSA id j4sm79084wma.7.2020.06.08.09.18.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 08 Jun 2020 09:18:52 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man <linux-man@vger.kernel.org>
Subject: Re: core(5)
To:     Jonny Grant <jg@jguk.org>, Jakub Wilk <jwilk@jwilk.net>
References: <9000a831-9a0f-0577-5755-95b301218383@jguk.org>
 <20200606145003.x37j5hywuyn32lpf@jwilk.net>
 <e8283646-38fd-b9a8-2056-547fecaeb182@jguk.org>
 <20200606183210.2tx7rjuryxrnh7d3@jwilk.net>
 <CAKgNAkiqfE4WETiE4VBMGpnDM0twtB0B6pbMyuoMT5+WWrpKvw@mail.gmail.com>
 <a504a2ab-32d2-ad39-295f-47a1d5de2f34@jguk.org>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <598453e7-9bec-c6bb-11bd-ca19ab90f807@gmail.com>
Date:   Mon, 8 Jun 2020 18:18:51 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <a504a2ab-32d2-ad39-295f-47a1d5de2f34@jguk.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Jonny,

On 6/6/20 11:16 PM, Jonny Grant wrote:
> 
> 
> On 06/06/2020 20:39, Michael Kerrisk (man-pages) wrote:
>> On Sat, 6 Jun 2020 at 20:32, Jakub Wilk <jwilk@jwilk.net> wrote:
>>>
>>> * Jonny Grant <jg@jguk.org>, 2020-06-06, 16:45:
>>>>>> 3) Could i ask to clarify my understanding. For this "The binary
>>>>>> being executed by the process does not have read permission enabled."
>>>>>> -- is this when the binary permissions are changed after it starts
>>>>>> running?
>>>>> No, AFAICS the permission check is done when the process starts.
>>>> How can the process start if the binary file doesn't have read
>>>> permissions enabled?
>>>
>>> It's a bit weird, but the kernel doesn't mind:
>>>
>>>     $ cp /bin/ls .
>>>     $ chmod a-r ls
>>>     $ ./ls -l ls
>>>     --wx--x--x 1 jwilk jwilk 138856 Jun  6 20:22 ls
>>
>> And from core(5):
>>
>>         There are various circumstances in which a core dump file  is  not
>>         produced:
>>         ...
>>         *  The binary being executed by the process  does  not  have  read
>>            permission enabled.
>>
>> So, the binary can be executed, but not read, and will not do a core
>> dump (since that might be readable).
>>
>> Thanks,
>>
>> Michael
> 
> Hi Michael, Jakub,
> 
> It sounds like a good security feature. Could that be documented on the man page as the reason?
> 
> ie something like this:
> 
> *  The binary being executed by the process  does  not  have  read 
> permission enabled, therefore a core file would reveal information in
> a readable file, so it cannot be dumped.

Thanks for the suggested wording. I applied the patch below.

Thanks,

Michael

diff --git a/man5/core.5 b/man5/core.5
index 456366ea6..0d7b7b617 100644
--- a/man5/core.5
+++ b/man5/core.5
@@ -90,6 +90,10 @@ in
 .IP *
 The binary being executed by the process does not have read
 permission enabled.
+(This is a security measure to
+ensure that an executable whose contents are not readable
+does not produce a\(empossibly readable\(emcore dump containing
+an image of the executable.)
 .IP *
 The process is executing a set-user-ID (set-group-ID) program
 that is owned by a user (group) other than the real user (group)
-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
