Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F046F2E7AB2
	for <lists+linux-man@lfdr.de>; Wed, 30 Dec 2020 16:52:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726549AbgL3PwW (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 30 Dec 2020 10:52:22 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37846 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726546AbgL3PwV (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 30 Dec 2020 10:52:21 -0500
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com [IPv6:2a00:1450:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 47B09C061799
        for <linux-man@vger.kernel.org>; Wed, 30 Dec 2020 07:51:41 -0800 (PST)
Received: by mail-ej1-x62e.google.com with SMTP id d17so22334640ejy.9
        for <linux-man@vger.kernel.org>; Wed, 30 Dec 2020 07:51:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=SrRsk7rzBgwL68HBxOa9zp7Om394BL123zu+aw6dVWw=;
        b=IVIe4pg557rnpVfbw02kwdjYTBF7SsG97xq2IA2a8avM3yCU3By5m85wv5OFaOPtmk
         02ITcehRf5+WuJ3oD6P7SuAbJPh5/YcW8CBk2SwaFLjeQOGYOUrnkQPTlMjt8iwo9rBO
         RN4Od5deAdq4wIgBRSDBJIFE2w9xg/zjSTWujU245gH9FKpTeoFbDS3aEKNUUHj007Vd
         PtIPUf3bVPRGe4vW29jxMB4DNOJ/nRmaiiKUxo4g/fjDn4IjvAExa1wiu7shYUUdvhCL
         e/y9Gz0ZSbNWZUPtzxk518pLfb8YdF8iTChLwycTBd8cgLiU/G0D9Uk04KkICX28HWoK
         njug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=SrRsk7rzBgwL68HBxOa9zp7Om394BL123zu+aw6dVWw=;
        b=qwF8ufovg6J7HndagBALC0jFBeiFTcvr3GPpdvxQ9mKclsh5jyUbHHCZQit3pu1yEA
         WppP+ScbrgKwZX8s/dtw7AtoGsgacybPgE5P950OQnVmCjXrMQ61racs56c4xCzEGz2q
         SE4CjpmFVUKaiz/mhf79aNhR7qBs2PEXG9/mosucB4X6wgGtKqJq7pMAYwPy5aVnJ5PS
         h+NNRYvd6elTJCQA6bBwqxWaK3AM9HsaNhcz31StIKuQZg5zBe5RHoHzMKxXC2+9vthf
         tFMBNMnCGVL6NPU7RG8IWwQNcSkzrAGUiGgs8l5pA38SmVbRM+xRfuXmqUS7aPnhpU16
         V8kQ==
X-Gm-Message-State: AOAM531I49v3Yhvj7zq8GDITwsDsYtHKPAEpwvhXuwk46+fZE875Q1Tb
        Kq59zOJe639uzo5+bBReas4=
X-Google-Smtp-Source: ABdhPJydSnklsC56PZI3LIqA9cs9K+A8Xg2GO7jr3PYbzCDlHK7qLSIgdT68QCGmZthONT2pGbZ1HA==
X-Received: by 2002:a17:906:5f97:: with SMTP id a23mr51479916eju.128.1609343499817;
        Wed, 30 Dec 2020 07:51:39 -0800 (PST)
Received: from ?IPv6:2001:a61:2467:2f01:faca:3d43:5e40:30d1? ([2001:a61:2467:2f01:faca:3d43:5e40:30d1])
        by smtp.gmail.com with ESMTPSA id n20sm19142423ejo.83.2020.12.30.07.51.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Dec 2020 07:51:38 -0800 (PST)
Cc:     mtk.manpages@gmail.com,
        "Alejandro Colomar (mailing lists, readonly)" 
        <alx.mailinglists@gmail.com>, Davidlohr Bueso <dbueso@suse.de>,
        linux-man@vger.kernel.org, Joe Lawrence <joe.lawrence@redhat.com>,
        Robert Kettler <robert.kettler@outlook.com>,
        "Eric W. Biederman" <ebiederm@xmission.com>,
        Kees Cook <keescook@chromium.org>,
        Michal Hocko <mhocko@kernel.org>
Subject: Re: [PATCH] semctl.2: Correct SEM_STAT_ANY description
To:     Manfred Spraul <manfred@colorfullife.com>,
        Yang Xu <xuyang2018.jy@cn.fujitsu.com>
References: <1608616543-21436-1-git-send-email-xuyang2018.jy@cn.fujitsu.com>
 <746deff0-e919-173b-25f6-34fc465a7ba0@gmail.com>
 <e7b0eb9e-b1d2-ed46-f7ac-66f22ef3faf1@colorfullife.com>
 <5FEBDFF3.7020606@cn.fujitsu.com>
 <265f82a2-42e7-45a4-1f80-8d24d66fceda@colorfullife.com>
 <516a60fc-bb97-1b36-1830-fb5191617ed5@gmail.com>
 <d588d638-5abe-eb2a-e336-3e6fe31ad525@colorfullife.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <38525dfc-e909-8fc2-ffc7-f38f7c280166@gmail.com>
Date:   Wed, 30 Dec 2020 16:51:37 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <d588d638-5abe-eb2a-e336-3e6fe31ad525@colorfullife.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 12/30/20 3:33 PM, Manfred Spraul wrote:
> Hi Michael,
> 
> On 12/30/20 2:35 PM, Michael Kerrisk (man-pages) wrote:
>> Hi Manfred,
>>
>> On 12/30/20 12:20 PM, Manfred Spraul wrote:
>>> On 12/30/20 3:03 AM, Yang Xu wrote:
>>>> Hi Manfred
>>>>> Hi,
>>>>>
>>>>>
>>>>> On 12/22/20 12:55 PM, Alejandro Colomar (mailing lists; readonly) wrote:
>>>>>> Hi Yang,
>>>>>>
>>>>>> It looks good to me.
>>>>>> I'll add a few people that might want to comment.
>>>>> The code returns a semid_ds structure, and if I take strace as reference
>>>>> implementation, then user space expects a semid_ds as well.
>>>>> https://github.com/strace/strace/commit/8f0870a780bfd8cd9a91c3b7ad05baccda10bc84
>>>>>
>>>>>
>>>>>
>>>>> In addition, the current page is self-inconsistent: seminfo doesn't
>>>>> contain sem_perm.
>>>> semctl manpage doesn't say seminfo contain sem_perm. Or, I miss something?
>>> The current man page says that SEM_STAT_ANY returns a seminfo structure,
>>> without checking sem_perm.
>>>
>>> This is self-inconsistent: struct seminfo contains global
>>> (per-namespace) information, sem_perm.mode is a per-array information.
>>>
>>> I.e.: It is clear that the man page needs to be updated, and not the code.
>> After reading this thread, I'm not quite clear. Do you mean some
>> additional change is required after Xang Yu's patch?
> 
> Sorry for the confusion:
> 
> No further changes are required.
> 
> (I have crosschecked shmctl, msgctl, actual code, and strace as user 
> space example: After Xang Yu's patch is applied, everything is consistent)

Thanks, Manfred! It's clear to me now.

Cheers,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
