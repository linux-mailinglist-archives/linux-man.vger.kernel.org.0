Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 956732E9606
	for <lists+linux-man@lfdr.de>; Mon,  4 Jan 2021 14:30:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727146AbhADNaK (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 4 Jan 2021 08:30:10 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50374 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727297AbhADNaI (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 4 Jan 2021 08:30:08 -0500
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 770F3C06179F
        for <linux-man@vger.kernel.org>; Mon,  4 Jan 2021 05:29:20 -0800 (PST)
Received: by mail-wr1-x434.google.com with SMTP id d26so32114834wrb.12
        for <linux-man@vger.kernel.org>; Mon, 04 Jan 2021 05:29:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=ZI65iXxsTNLOb6e7qsNdATnuOWDssAN2LihEaop0S0M=;
        b=u0haUiU8pkOKD8ezYALC7uCmVV5sufohzsjtBcyvptiTKtSia7UoSbJgTEoGev7//V
         9vXJVnAkTuc3NadtP5mTw7Q0S7gDt6wzjJbs/1URpMNouozuSbNPO1ZlL3H8ORZ13JNT
         IEue7/tTrfjp/7QSISZiwm1nidFe88Q8NYn6wMoImlHbHb5NElZD/TWNBsAa0GgAQ6Bw
         injwkVveEdetYfOtiuf5UcPYSudLqkH+tmhYjKIN2Y4oj6qQoiWiL/xAtOwHlZh5mI+j
         RaSWxTkvFg4kRxIuLgi7MibRv8luKAxox/jLT/WgHu8rgkoyuMUsmlBgwALfhaQhpeaL
         egKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=ZI65iXxsTNLOb6e7qsNdATnuOWDssAN2LihEaop0S0M=;
        b=KfeUftvZBrlLSt75O9awJT4dsCksEmE6dUS/UHNuEOk/kkilvI5TtQUJU5/9gXchV1
         O5GbCyX59MjOW12s2Zhs8gRv39/ubE2bpr4VqgBKnNGoCWKbbd3e85+AA1jMfD/58Dd9
         faFkciYA8b7+9w6IJ9xHmKusJLxC2tA1M815xl04iET62gR1shCFNbpT6WowrlVHNnMU
         xCaxeEjgMJaHLswQ32F0fUtM7NwBeHPlFTUic0l2MD6vCRkfJM6LUSe/OLpwrLtTLNGp
         T4N2Ub7B1j9KF1ECAxkDeHoIvMaateS5WqBZGMLOylLOXKmEJeRyZSAGC9nDGL2ykkVN
         p/vQ==
X-Gm-Message-State: AOAM531rl64wu9K1LgZKWSjydMlKKMdh0g+wRFfCuOWFPKmqcO95eRDX
        Gx/vDaP21EvTFNJtvmfZ0WU=
X-Google-Smtp-Source: ABdhPJxnkzfq8IyRipsq4CoVRtY0C8OOkF/k+WMBqDOCG80AiBYy+k4Gv69HM3gVc9MRFx17M9HUfg==
X-Received: by 2002:adf:c18d:: with SMTP id x13mr79002246wre.128.1609766959280;
        Mon, 04 Jan 2021 05:29:19 -0800 (PST)
Received: from ?IPv6:2001:a61:244d:fe01:9fb1:d962:461a:45e8? ([2001:a61:244d:fe01:9fb1:d962:461a:45e8])
        by smtp.gmail.com with ESMTPSA id x17sm91189435wro.40.2021.01.04.05.29.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Jan 2021 05:29:18 -0800 (PST)
Cc:     mtk.manpages@gmail.com, Amir Goldstein <amir73il@gmail.com>,
        Matthew Bobrowski <mbobrowski@mbobrowski.org>,
        linux-man@vger.kernel.org, Steve Grubb <sgrubb@redhat.com>
Subject: Re: [PATCH] fanotify.7: fix outdated description
To:     Jan Kara <jack@suse.cz>
References: <20201124152109.30027-1-amir73il@gmail.com>
 <d698116e-4f7f-1b50-538f-7f5d83c9e697@gmail.com>
 <20201126132912.GE422@quack2.suse.cz>
 <32752c59-fd33-447d-a212-c255b6f32c0f@gmail.com>
 <20210104115548.GC4018@quack2.suse.cz>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <9b9519a2-9d61-049a-a314-a9f8f880baf0@gmail.com>
Date:   Mon, 4 Jan 2021 14:29:17 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <20210104115548.GC4018@quack2.suse.cz>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Jan,

On 1/4/21 12:55 PM, Jan Kara wrote:
> On Wed 30-12-20 15:17:29, Michael Kerrisk (man-pages) wrote:
>> On 11/26/20 2:29 PM, Jan Kara wrote:
>>> On Thu 26-11-20 10:48:09, Michael Kerrisk (man-pages) wrote:
>>>> On 11/24/20 4:21 PM, Amir Goldstein wrote:
>>>>> Signed-off-by: Amir Goldstein <amir73il@gmail.com>
>>>>> ---
>>>>>  man7/fanotify.7 | 7 ++++---
>>>>>  1 file changed, 4 insertions(+), 3 deletions(-)
>>>>>
>>>>> diff --git a/man7/fanotify.7 b/man7/fanotify.7
>>>>> index c4f5397e4..5804a1f30 100644
>>>>> --- a/man7/fanotify.7
>>>>> +++ b/man7/fanotify.7
>>>>> @@ -29,11 +29,12 @@ fanotify \- monitoring filesystem events
>>>>>  The fanotify API provides notification and interception of
>>>>>  filesystem events.
>>>>>  Use cases include virus scanning and hierarchical storage management.
>>>>> -Currently, only a limited set of events is supported.
>>>>> -In particular, there is no support for create, delete, and move events.
>>>>> +In the original fanotify API, only a limited set of events was supported.
>>>>> +In particular, there was no support for create, delete, and move events.
>>>>> +The support for those events was added in Linux 5.1.
>>>>>  (See
>>>>>  .BR inotify (7)
>>>>> -for details of an API that does notify those events.)
>>>>> +for details of an API that did notify those events pre Linux 5.1.)
>>>>>  .PP
>>>>>  Additional capabilities compared to the
>>>>>  .BR inotify (7)
>>>>
>>>> Thanks, Amir. Applied, with Jan's Reviewed-by.
>>>>
>>>> By the way, I see that there's still no documentation for
>>>> FAN_AUDIT/FAN_ENABLE_AUDIT, added in:
>>>>
>>>>     commit de8cd83e91bc3ee212b3e6ec6e4283af9e4ab269
>>>>     Author: Steve Grubb <sgrubb@redhat.com>
>>>>     Date:   Mon Oct 2 20:21:39 2017 -0400
>>>>
>>>>         audit: Record fanotify access control decisions
>>>>
>>>>
>>>> Can anyone help with that?
>>>
>>> Thanks for a notification. If Steve doesn't beat me to it, I'll write the
>>> doc likely next week.
>>
>> Ping!
> 
> I've already sent it and Steve has acked it [1]. So the ball is on your
> side ;).
> 
> 								Honza
> 
> [1] https://lore.kernel.org/linux-man/4619055.31r3eYUQgx@x2

I was slightly confused because you mentioned in that thread
that you might revise the patych after the comments from Alex.

Anyway, I applied now, and did some light editing. Thank you 
for the patch!

Cheers,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
