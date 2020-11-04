Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C310A2A60A8
	for <lists+linux-man@lfdr.de>; Wed,  4 Nov 2020 10:40:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727001AbgKDJkB (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 4 Nov 2020 04:40:01 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56324 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726029AbgKDJkA (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 4 Nov 2020 04:40:00 -0500
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com [IPv6:2a00:1450:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BB8E8C0613D3
        for <linux-man@vger.kernel.org>; Wed,  4 Nov 2020 01:39:58 -0800 (PST)
Received: by mail-wr1-x443.google.com with SMTP id c17so1921597wrc.11
        for <linux-man@vger.kernel.org>; Wed, 04 Nov 2020 01:39:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:from:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=RcKTgSPq41L+HfyK70P4OOh4HLdiezKMa/vPKACvUEs=;
        b=VJU0id7Nzo2prjBuR1zDQsCdfDwDdnoJRzSHn3ud54MEkZL2E15VZCWs+29roqI3rf
         S9o1I62NNEW/oow67BRpCR4S0hBinhAtnK3ykX1qdsjtO/vs5TEP3FJS2+RtMTVQa01l
         RMwgF/yFDnd/+tn7c4nTHJ60wKshQdygQCGgCDRMReO5s2Q2WAvsmTF860txhlgZR+xd
         k5U4IkJ2ISjuqGu0YQ8q7z6Y/VsnhSK/8yLA5O2+QgTyt3JZFqy74TUn0i53JYIdGTcM
         HdypL1qi0wD+mf+kcYbz45KSocxR+EZTEkRJMPGVoydxqDc9coeLxAwoQb3gFS7yRIrx
         5pRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:from:to:cc:references:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=RcKTgSPq41L+HfyK70P4OOh4HLdiezKMa/vPKACvUEs=;
        b=rfNqnKaWId7LPdOL/wbMPFqAqoEeIP9PE9t10yDyNSZa4YPi2UTkglacj06su4KtLQ
         ZK+pfNA0nsmVWopRNXzeRmRb/XLboCAjHCPUyIKZPgjWmXoT8cc+cK6jCdkvkAvhe3Wa
         CRGzwU7Q+rpOw1ZDuqkB5A6IMoyUzI49kGur9cig7FPVZd5zrcS+pNNRq8BCozoeNsFc
         t3+nD4/JeTUOdVNVP7cvb3h6JeHYD+gPLgw92h+KkuHbpnqOYCDSRZjzT3IAyL5JbZCV
         T8h1JLcBk2/xrn96eGoE14jL5Hq7UJYpy9gxjaUiJ9cr77pHK0ojyxVrcgvaszKbTos/
         i3cA==
X-Gm-Message-State: AOAM531NG3rtwetl/4H6r+nOeX2WLKPyl9BDE388ppn3EhEPVajuJezS
        W8CgJwWesjK0KMCYVZtlX0H8wx/iZDw=
X-Google-Smtp-Source: ABdhPJzHnzNDzjA0zfNzsZiMUXZ6sR8gKGOaJzW9n/5hlpFaV0NwmOXcaXUjYCJgzCE0l76blWqiTg==
X-Received: by 2002:adf:eb4c:: with SMTP id u12mr29406794wrn.73.1604482797549;
        Wed, 04 Nov 2020 01:39:57 -0800 (PST)
Received: from [192.168.1.143] ([170.253.60.68])
        by smtp.gmail.com with ESMTPSA id v19sm1473313wmj.31.2020.11.04.01.39.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Nov 2020 01:39:56 -0800 (PST)
Subject: Re: [PATCH] membarrier.2: Update membarrier manpage for 5.10
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     Peter Oskolkov <posk@google.com>, mtk.manpages@gmail.com,
        Mathieu Desnoyers <mathieu.desnoyers@efficios.com>
Cc:     linux-man@vger.kernel.org,
        "Paul E . McKenney" <paulmck@kernel.org>,
        Peter Zijlstra <peterz@infradead.org>,
        Boqun Feng <boqun.feng@gmail.com>,
        Paul Turner <pjt@google.com>,
        Chris Kennelly <ckennelly@google.com>,
        Peter Oskolkov <posk@posk.io>
References: <20201103190433.373528-1-posk@google.com>
 <042cd0b4-236f-ceca-2760-9a4fbbcd3e3f@gmail.com>
Message-ID: <315a032d-26e8-b6db-ec74-82ec8db37a4f@gmail.com>
Date:   Wed, 4 Nov 2020 10:39:55 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <042cd0b4-236f-ceca-2760-9a4fbbcd3e3f@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Maybe I'd also add a paragraph in VERSIONS, saying there was an old 
version with a different prototype (and maybe show it there).

What do you think about it?

Thanks,

Alex

On 2020-11-03 22:01, Alejandro Colomar wrote:
> Hi Peter,
> 
> It looks very good! Just one typo:
> 
> [[
> .BI "int membarrier(int " cmd ", unsigned int " flags ", int " cpu_id );"
> ]]
> should be:
> [[
> .BI "int membarrier(int " cmd ", unsigned int " flags ", int " cpu_id );
> ]]
> 
> Note the removal of the last '"', which was unpaired.
> 
> 
> Thanks,
> 
> Alex
> 
> On 2020-11-03 20:04, Peter Oskolkov wrote:
>> Linux kernel commit 2a36ab717e8fe678d98f81c14a0b124712719840
>> (part of 5.10 release) changed sys_membarrier prototype/parameters
>> and added two new commands. This manpages patch reflects these
>> changes, by mostly copying comments from the kernel patch
>> into the manpage (I was also the author of the kernel change).
>> ---
>>   man2/membarrier.2 | 41 +++++++++++++++++++++++++++++++++++++++--
>>   1 file changed, 39 insertions(+), 2 deletions(-)
>>
>> diff --git a/man2/membarrier.2 b/man2/membarrier.2
>> index 3064b2d2e..c95e97cb6 100644
>> --- a/man2/membarrier.2
>> +++ b/man2/membarrier.2
>> @@ -30,7 +30,7 @@ membarrier \- issue memory barriers on a set of threads
>>   .PP
>>   .B #include <linux/membarrier.h>
>>   .PP
>> -.BI "int membarrier(int " cmd ", int " flags ");"
>> +.BI "int membarrier(int " cmd ", unsigned int " flags ", int " cpu_id 
>> );"
>>   .fi
>>   .PP
>>   .IR Note :
>> @@ -165,6 +165,29 @@ core command prior to using it.
>>   Register the process's intent to use
>>   .BR MEMBARRIER_CMD_PRIVATE_EXPEDITED_SYNC_CORE .
>>   .TP
>> +.BR MEMBARRIER_CMD_PRIVATE_EXPEDITED_RSEQ " (since Linux 5.10)"
>> +Ensure the caller thread, upon return from system call, that all its
>> +running thread siblings have any currently running rseq critical 
>> sections
>> +restarted if
>> +.I flags
>> +parameter is 0; if
>> +.I flags
>> +parameter is
>> +.BR MEMBARRIER_CMD_FLAG_CPU ,
>> +then this operation is performed only on CPU indicated by
>> +.I cpu_id .
>> +This guarantee is provided only for threads in
>> +the same process as the calling thread.
>> +.IP
>> +RSEQ membarrier is only available in the "private expedited" form.
>> +.IP
>> +A process must register its intent to use the private expedited rseq
>> +command prior to using it.
>> +.TP
>> +.BR MEMBARRIER_CMD_REGISTER_PRIVATE_EXPEDITED_RSEQ " (since Linux 5.10)"
>> +Register the process's intent to use
>> +.BR MEMBARRIER_CMD_PRIVATE_EXPEDITED_RSEQ .
>> +.TP
>>   .BR MEMBARRIER_CMD_SHARED " (since Linux 4.3)"
>>   This is an alias for
>>   .BR MEMBARRIER_CMD_GLOBAL
>> @@ -172,7 +195,21 @@ that exists for header backward compatibility.
>>   .PP
>>   The
>>   .I flags
>> -argument is currently unused and must be specified as 0.
>> +argument must be specified as 0 unless the command is
>> +.BR MEMBARRIER_CMD_PRIVATE_EXPEDITED_RSEQ ,
>> +in which case
>> +.I flags
>> +can be either 0 or
>> +.BR MEMBARRIER_CMD_FLAG_CPU .
>> +.PP
>> +The
>> +.I cpu_id
>> +argument is ignored unless
>> +.I flags
>> +is
>> +.BR MEMBARRIER_CMD_FLAG_CPU ,
>> +in which case it must specify the CPU targeted by this membarrier
>> +command.
>>   .PP
>>   All memory accesses performed in program order from each targeted 
>> thread
>>   are guaranteed to be ordered with respect to
>>
