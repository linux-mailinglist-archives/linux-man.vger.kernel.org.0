Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BAEB027CF48
	for <lists+linux-man@lfdr.de>; Tue, 29 Sep 2020 15:35:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728404AbgI2Nfh (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 29 Sep 2020 09:35:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56742 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728273AbgI2Nfg (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 29 Sep 2020 09:35:36 -0400
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com [IPv6:2a00:1450:4864:20::343])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1D66BC061755
        for <linux-man@vger.kernel.org>; Tue, 29 Sep 2020 06:35:35 -0700 (PDT)
Received: by mail-wm1-x343.google.com with SMTP id e11so6663089wme.0
        for <linux-man@vger.kernel.org>; Tue, 29 Sep 2020 06:35:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=Gw7DoBNFx7bFyCeZufL8xHJ23Z4sDuK/+hcsc7aKRaM=;
        b=dlbJ2eIzFJZCvIdaOkrGwXLtarz3lVKxwgNc8YPdcqzLCsQHrz71YAId/ZHov9MKea
         zXvh3HXR3nA6h2aJSSr4ApeNiHeGvOetaFzWkKs2OX60Q99Ab869JSsSyFlsxgzRO0ah
         upTRjpuPtlkW5YAnN+CeQqYnoQD+Ejqcfe6Gzl8O69F7I0T8kQGV2DxBgJx3gYfryCkv
         04r6jdo9ZihETiGSbIBwZMepCX+U44OPHCneN5WPnxjiTulqKywbOCJ0hAikkvEqsFd1
         QagKgXNbe5KCety5jP25BB54I4m6PujDHDikY8NFSdIQ3Tyq6FkI/ZEvWvfqL5RPow3c
         w6EQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=Gw7DoBNFx7bFyCeZufL8xHJ23Z4sDuK/+hcsc7aKRaM=;
        b=qNnWkSvwJ/l7D+sPiVAL1egM8o4d9L6DNuT2cSY9+6qQtGYPx48zfLErw//Ze/7BfT
         vT5aX+YTZD/rtKWfysMitM9KdeXT0X14nGIs+on830Ve+9mLr8nQzy/mAzFWvAMR9OTp
         wzVXl6pEgWI9+fk8yPlW/ETMCq7imUd04WS3Schw5xGMYJ+l4B/zrGAoZ+Z5g/BePGDG
         JRCKUaNkfF3ZCyL2yYbv+bgukmRUgjiXn/CH+PZ1QGAKNaBp7p6eetMHeUL81FJlmF7O
         ZLyxmUUqpOM8RmA5IleCF9ifwz/Fe//2koTYg0SVdJKhKcqQ/ACnC5oBusN1+Q0nrz3c
         JTeg==
X-Gm-Message-State: AOAM531cSIzEoicHctE1AgYjn0tydwrcr2I1VcklhaG9WJKWkTF5LFuV
        RdVajjq/zip+TBAMdfw28+o=
X-Google-Smtp-Source: ABdhPJzPd/HX+pptE6AmIN/eODUssyvELisAgqay94Bk0gthhoAchYB8QoRCr5MNii89vBIDDU55CA==
X-Received: by 2002:a05:600c:2909:: with SMTP id i9mr4885023wmd.160.1601386533756;
        Tue, 29 Sep 2020 06:35:33 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id t17sm6418351wrx.82.2020.09.29.06.35.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Sep 2020 06:35:32 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org, g.branden.robinson@gmail.com
Subject: Re: [PATCH v2 2/3] system_data_types.7: Add 'FILE'
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <1a517588-29c1-f728-37ec-49e9825be321@gmail.com>
 <20200928090657.2221-1-colomar.6.4.3@gmail.com>
 <0a5ee9a4-8787-5bce-92bb-a2ae10eaed54@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <8f408cee-2a52-027e-3912-c6ba4b0b9708@gmail.com>
Date:   Tue, 29 Sep 2020 15:35:32 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <0a5ee9a4-8787-5bce-92bb-a2ae10eaed54@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 9/29/20 3:15 PM, Alejandro Colomar wrote:
> Hi Michael,
> 
> Ping -c2 :)
> 
> patches 2/3 and 3/3 of this set are pending,
> the patch which was holding them has already been applied,
> and should have no conflicts in the current HEAD (tell me if otherwise).

Thanks for the prod! Those two patches are applied and pushed.

Thanks,

Michael

> On 2020-09-28 11:06, Alejandro Colomar wrote:
>> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
>> ---
>>   man7/system_data_types.7 | 23 +++++++++++++++++++++++
>>   1 file changed, 23 insertions(+)
>>
>> Hi Michael,
>>
>> Please hold until the ffix is applied (or not).
>>
>> Thanks,
>>
>> Alex
>>
>> diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
>> index ff0403df9..16930985e 100644
>> --- a/man7/system_data_types.7
>> +++ b/man7/system_data_types.7
>> @@ -197,6 +197,29 @@ Conforming to: C99 and later; POSIX.1-2001 and later.
>>   See also:
>>   .BR fenv (3)
>>   .RE
>> +.\"------------------------------------- FILE -------------------------/
>> +.TP
>> +.I FILE
>> +.RS
>> +.br
>> +Include:
>> +.IR <stdio.h> ;
>> +or
>> +.IR <wchar.h> .
>> +.PP
>> +An object type used for streams.
>> +.PP
>> +Conforming to: C99 and later; POSIX.1-2001 and later.
>> +.PP
>> +See also:
>> +.BR fclose (3),
>> +.BR flockfile (3),
>> +.BR fopen (3),
>> +.BR fprintf (3),
>> +.BR fread (3),
>> +.BR fscanf (3),
>> +.BR stdin (3),
>> +.BR stdio (3)
>> +.RE
>>   .\"------------------------------------- float_t ----------------------/
>>   .TP
>>   .I float_t
>>


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
