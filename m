Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BD76D2A3034
	for <lists+linux-man@lfdr.de>; Mon,  2 Nov 2020 17:46:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726992AbgKBQq6 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 2 Nov 2020 11:46:58 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42194 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726913AbgKBQq6 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 2 Nov 2020 11:46:58 -0500
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com [IPv6:2a00:1450:4864:20::441])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C1B29C0617A6;
        Mon,  2 Nov 2020 08:46:57 -0800 (PST)
Received: by mail-wr1-x441.google.com with SMTP id g12so15377738wrp.10;
        Mon, 02 Nov 2020 08:46:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=BBKHOAONY83SW1vlhm/JZC0WRhdz2JwGQNdOVZi0yHs=;
        b=pCffTFJsaWm4mkFUV7wtUCgeDXKkOSaiiPdlqIamZgdCiSb32yaC3ihTJ4dNKDuhEI
         CGOYf8PtquNKQCpxryLvfHBOckpCJikwQd0sFr8WKzinaFzeZDMwm2fSnWm4e9l0ZvQH
         n/Cn9qyI0vdza2iCL7G/mBJ4rUoZ7h30oPCsV0CvX8LZpGViqCBw8/aaGbpRLsd46XlP
         J51DhNSrjtiHLqgNmIvlNIgXL7yEus1dC1v5dIyIsW4stGs0Z1QyE9SQKDhXqsBWFvbw
         wbnYxk4SdfMKzakIarrpauJxZirq4N0Q7Tcx+yM1ZfkOC0O+ye3UZKOyqwaK3l345MgT
         IIHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=BBKHOAONY83SW1vlhm/JZC0WRhdz2JwGQNdOVZi0yHs=;
        b=mUU9V2wN4RhzsIyttL3JC7DLaO8ORpNujTFIMH3fzoMCRzSdIhhr5Ruf6B1s5iCmoZ
         6l48o10uIP6DT4aVOZS+J1A/5YuGon4mKwPaA/p0dEflkSJ4qc8rBHVs6+zAcwtMlm32
         fzI6lFA/EvfGG4MleKcUNqP8Yja+SBUxuh0bOqovdIv0fHz6S1uAFyzYe96xr3CYerik
         g+HtENAL8cXU0LOiUxDklowk+4T9hKHnOcAX/oqknZdsXU6rJw2CoPZ8z8GcN0lJTqJI
         VK7/9vhz7uqi2Wmei5cWL3fbKB+P0Mw0qXoWn4H/uJKLLSNGfwORpRa08nEl98HcTIRY
         1aug==
X-Gm-Message-State: AOAM532c2eJ67Ldm69A8QJIRdA30/r/ZXTwG8V6zDL4nnciy2Z6gO/3Q
        3Q31CxdlbrhNULXhqRSiCTbxJ0ImVD0/YA==
X-Google-Smtp-Source: ABdhPJxNUvFp1B7noOvO1NLVQp3YDr6nJvVzlduKyvUj09w2MCzMdV6/653N1x76qBv453X3VT5JTw==
X-Received: by 2002:adf:9f49:: with SMTP id f9mr13942786wrg.122.1604335616580;
        Mon, 02 Nov 2020 08:46:56 -0800 (PST)
Received: from [192.168.1.143] ([170.253.60.68])
        by smtp.gmail.com with ESMTPSA id y11sm9309469wmj.36.2020.11.02.08.46.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Nov 2020 08:46:55 -0800 (PST)
Subject: Re: [PATCH] membarrier.2: Update prototype
To:     Mathieu Desnoyers <mathieu.desnoyers@efficios.com>
Cc:     Peter Oskolkov <posk@posk.io>, Peter Oskolkov <posk@google.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-man <linux-man@vger.kernel.org>,
        Peter Zijlstra <peterz@infradead.org>,
        paulmck <paulmck@kernel.org>, Boqun Feng <boqun.feng@gmail.com>,
        linux-kernel <linux-kernel@vger.kernel.org>,
        Paul Turner <pjt@google.com>,
        Chris Kennelly <ckennelly@google.com>, shuah <shuah@kernel.org>
References: <20201101200440.17328-1-colomar.6.4.3@gmail.com>
 <786665141.6911.1604320238880.JavaMail.zimbra@efficios.com>
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Message-ID: <0a4dfb59-8207-37af-1a77-561848bb0828@gmail.com>
Date:   Mon, 2 Nov 2020 17:46:54 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <786665141.6911.1604320238880.JavaMail.zimbra@efficios.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



On 2020-11-02 13:30, Mathieu Desnoyers wrote:
> ----- On Nov 1, 2020, at 3:04 PM, Alejandro Colomar colomar.6.4.3@gmail.com wrote:
> 
>> The Linux kernel now uses 'flags' and added a new argument: 'cpu_id'.
>> These changes were introduced to the kernel
>> in commit 2a36ab717e8fe678d98f81c14a0b124712719840.
> 
> I doubt the proposed patch with a FIXME and a TODO is appropriate for the man pages project.
> It does point out the fact that the membarrier man page needs updating following
> Peter's commit though.

Hi Mathieu,

Agree; I didn't intend this to be directly applied,
but to attract the attention of someone who knows the details,
and hopefully fix the whole issue at once :)

Thanks,

Alex

> 
> Peter (Oskolkov), can you contribute a patch detailing the new membarrier flags and cpu_id
> arguments to the man pages project ?
> 
> Thanks,
> 
> Mathieu
> 
>>
>> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
>> ---
>> man2/membarrier.2 | 9 ++++++++-
>> 1 file changed, 8 insertions(+), 1 deletion(-)
>>
>> diff --git a/man2/membarrier.2 b/man2/membarrier.2
>> index 24a24ba86..42b7e2acc 100644
>> --- a/man2/membarrier.2
>> +++ b/man2/membarrier.2
>> @@ -23,6 +23,13 @@
>> .\" %%%LICENSE_END
>> .\"
>> .TH MEMBARRIER 2 2020-06-09 "Linux" "Linux Programmer's Manual"
>> +.\" FIXME:
>> +.\" The Linux kernel now uses 'flags' and added a new argument: 'cpu_id'.
>> +.\" These changes were introduced to the kernel
>> +.\" in commit 2a36ab717e8fe678d98f81c14a0b124712719840.
>> +.\" The prototype has been updated,
>> +.\" but the new features have not yet been documented.
>> +.\" TODO: Document those new features.
>> .SH NAME
>> membarrier \- issue memory barriers on a set of threads
>> .SH SYNOPSIS
>> @@ -30,7 +37,7 @@ membarrier \- issue memory barriers on a set of threads
>> .PP
>> .B #include <linux/membarrier.h>
>> .PP
>> -.BI "int membarrier(int " cmd ", int " flags ");"
>> +.BI "int membarrier(int " cmd ", unsigned int " flags ", int " cpu_id );
>> .fi
>> .PP
>> .IR Note :
>> --
>> 2.28.0
> 
