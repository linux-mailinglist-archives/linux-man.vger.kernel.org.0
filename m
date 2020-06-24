Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2788220726D
	for <lists+linux-man@lfdr.de>; Wed, 24 Jun 2020 13:46:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2389315AbgFXLqU (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 24 Jun 2020 07:46:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53522 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2388491AbgFXLqU (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 24 Jun 2020 07:46:20 -0400
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com [IPv6:2a00:1450:4864:20::442])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B8F0CC061573
        for <linux-man@vger.kernel.org>; Wed, 24 Jun 2020 04:46:19 -0700 (PDT)
Received: by mail-wr1-x442.google.com with SMTP id o11so1946862wrv.9
        for <linux-man@vger.kernel.org>; Wed, 24 Jun 2020 04:46:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=TG+3Yt794zufQExT0UWyVAX8Qvfy4SNgipPuIvysBSk=;
        b=VQ5LeveCSO35XhetIJEHXtpx6C1TZmIw2v2CLHeifcEHap6od6n8AjII4w/lH0r4Wi
         9Tx1ncl2X2OD2xe9J0TAr4SFWoWYuvTgMrGs+Bn8Gaefmgs9YQY8sPbIA1FWtGMcEdW5
         TVoTyXHMp/oJtqM1F3h+GYW44UGFMFS0FSEQTL28sW1o1YnU0sHg2Vq59/C2h7ac6WRk
         lwVlIxp5NwwKvKG3xqtbYYopAA80PJF63GnCnMNRQr91VjSPjuie/EasltXThpWphbka
         9JCfMSVN2sdNs4wdZALAuU7icIjd65YLeaBYsNxzHr37r2w0ZScv4f+PJdSWnTdz8CMm
         JOMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=TG+3Yt794zufQExT0UWyVAX8Qvfy4SNgipPuIvysBSk=;
        b=PNOaghaznQrNVUKdNixehqNOCIM5EnVouiJUHVMyBe6vPIDd93P6az4QTrI+YKs0Wm
         mmnyZAzCHONK6HjBuIMYLoxiL3mqNnoWf3F9p6Hh2/vgqUMZCUrNx1wY0b4+mu7pxzdi
         Ofl/3YiT9gImW2mwlpjZM/ET8xsfHgFrUsAeeUb3RpgiRI65ghk4ahffSGYVyGn27okw
         vbeRkZPiDJ0vPpUUodk5OO93N4rz1G4ecHBOD5q4E1Wu0ac5ZND2DBqkDeLOdn8L5nWp
         NYEG2WmzE8yuXDcHeb3oY4XtqwL93gW8qkhcbAydYEiMP1hT5/wHQ7f/XxL10C5gtPlw
         1fZw==
X-Gm-Message-State: AOAM5325wg0ZuiUapGaBGE5YLbzwGwr6iVK/fcZKavT4vwIK3kvtbHcb
        sNVuLwSkK6+V1w4rQaqDigJmv/n4
X-Google-Smtp-Source: ABdhPJzHAp0bCJJ7IQjOpvrR1Y4gP6D7oN25uSod/5Xih/GfvAnZvoANqGbOTJnwLWjyJRaFuY1ISw==
X-Received: by 2002:adf:aad7:: with SMTP id i23mr30715979wrc.331.1592999178348;
        Wed, 24 Jun 2020 04:46:18 -0700 (PDT)
Received: from ?IPv6:2001:a61:253c:8201:b2fb:3ef8:ca:1604? ([2001:a61:253c:8201:b2fb:3ef8:ca:1604])
        by smtp.gmail.com with ESMTPSA id w2sm15671831wrs.77.2020.06.24.04.46.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Jun 2020 04:46:17 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] capabilities.7: typo: lowering niceness is special
To:     Dan Kenigsberg <danken@redhat.com>
References: <CAHOEP55A2UKBWrdGcmeT6pu4rTZwu3ZDF1PC0eYvjJa80ghgvg@mail.gmail.com>
 <5e2ac5a7-628d-a798-8c55-5819a9d765d2@gmail.com>
 <CAHOEP54tRnJjon8rncyiKWVnkPXMYEk8Rom3d9_AO0SwfpNCiA@mail.gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <72093794-fc30-2500-b082-6392de440146@gmail.com>
Date:   Wed, 24 Jun 2020 13:46:15 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <CAHOEP54tRnJjon8rncyiKWVnkPXMYEk8Rom3d9_AO0SwfpNCiA@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Dan,

On 6/24/20 1:17 PM, Dan Kenigsberg wrote:
> On Wed, Jun 24, 2020 at 1:16 PM Michael Kerrisk (man-pages)
> <mtk.manpages@gmail.com> wrote:
>>
>> Hi Dan,
>>
>> On 6/11/20 7:13 AM, Dan Kenigsberg wrote:
>>> Anyone can raise the niceness value. Only lowering requires CAP_SYS_NICE.
>>>
>>>     $ nice -n +2 nice
>>>     2
>>>     $ nice -n -2 nice
>>>     nice: cannot set niceness: Permission denied
>>>     0
>>>     $ sudo nice -n -2 nice
>>>     -2
>>>
>>> Signed-off-by: Dan Kenigsberg <danken@redhat.com>
>>
>> As I'm sure you're aware, the meaning of the nice value
>> is always a source of confusion! In writing the original text,
>> my intent was that the reader would understand that [higher nice
>> value] == [more negative nice value], but obviously that that
>> could be ambiguous.
> 
> Indeed, I'm aware of the old confusion. Some of it stems from people
> thinking about this value as a priority. However, it was named
> "niceness" because higher value means lesser cpu time. I think that
> the man page language should stick to the code and command line
> arguments (`nice -n +2` makes the value higher and the process less
> likely to run)
> 
>>
>>> ---
>>>  man7/capabilities.7 | 2 +-
>>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>>
>>> diff --git a/man7/capabilities.7 b/man7/capabilities.7
>>> index 6254c0ac0..64a9f8e34 100644
>>> --- a/man7/capabilities.7
>>> +++ b/man7/capabilities.7
>>> @@ -527,7 +527,7 @@ drop capabilities from the system-wide capability
>>> bounding set.
>>>  .PD 0
>>>  .RS
>>>  .IP * 2
>>> -Raise process nice value
>>> +Lower process nice value
>>>  .RB ( nice (2),
>>>  .BR setpriority (2))
>>>  and change the nice value for arbitrary processes;
>>
>> I instead applied a differnt patch, as below.
>> I hope it works for you.
>>
>> Cheers,
>>
>> Michael
>>
>> diff --git a/man7/capabilities.7 b/man7/capabilities.7
>> index 8f212bead..bf9949ad2 100644
>> --- a/man7/capabilities.7
>> +++ b/man7/capabilities.7
>> @@ -556,7 +556,7 @@ drop capabilities from the system-wide capability bounding set.
>>  .PD 0
>>  .RS
>>  .IP * 2
>> -Raise process nice value
>> +Give process a higher (i.e., more negative) nice value
> 
> To me, this suggestion adds to the confusion. Higher numbers are
> typically considered "less negative", not more.
> How about saying:
> 
> Lower process nice value (i.e. make it less nice to other processes)
> 
>>  .RB ( nice (2),
>>  .BR setpriority (2))
>>  and change the nice value for arbitrary processes;

You know what, I think I should have just gone with your original proposal!
And now I've done that. If people are confused, they can read nice(2) and 
sched(7).

Thanks,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
