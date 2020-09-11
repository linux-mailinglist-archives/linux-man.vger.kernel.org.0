Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1FABA265BA8
	for <lists+linux-man@lfdr.de>; Fri, 11 Sep 2020 10:32:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725747AbgIKIcz (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 11 Sep 2020 04:32:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54392 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725710AbgIKIcw (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 11 Sep 2020 04:32:52 -0400
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com [IPv6:2a00:1450:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4ABD7C061573;
        Fri, 11 Sep 2020 01:32:49 -0700 (PDT)
Received: by mail-wr1-x444.google.com with SMTP id z4so10625848wrr.4;
        Fri, 11 Sep 2020 01:32:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=Z1BdTesaiWepAKQgkXe2/VRpo4TMuPhA/hVEY2EsNes=;
        b=FCz4mf1TvXnhkZPG/EKBmAkSoRy5n5UqUUUpOwRLyvwAtExoj8ag/7DIFuQeT2UIYe
         9Nvp9Bv6lDlBJ8/DYVSh64kfGwYlCtX5o4u3FB6qTTSlyN6cbbjn0iXF8MkhmZu41HAV
         x8EHJyqiSpZIDJq2P5xd+uSbehV5X48vfLya8VHaZfWUSN/k1khSA2f9xjVBmIsASwmd
         3qvX1pK8c+odgguYiVr2a4f/7DNbGQXjvsiQEsmeXgbtgkubn9g0jEQZidJViLIcL1AE
         mIK5tajmdP9aQbtudrR8hI8eOfZ9lYxKdLiIsi7V8Xm/zQl/qKxS1xpywLR0+j4Ltep5
         Sw2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=Z1BdTesaiWepAKQgkXe2/VRpo4TMuPhA/hVEY2EsNes=;
        b=MMo6uNeec/dCvCdflOEfVjX1hm5gbzT2NrqtKxgjzWUtoWVkJ7awVsJXtg+gLNvjSn
         cngKDSC25nKvtqMKNNqK+oyWujizNH9so3MmD61vMYt5fuOP5Y7yK3bG23pvcE4XUoz+
         +2UZyjDXJq/iYJB945m2F7YboBiA8QfskhJs5+Z7cO5aW1MUr+JMc6i3KMoc6Y9L71HV
         7otCBKLJQklidN3EP9ne6h4TONW7KKaQj4TrpkO3tyhIM6nZno0kTGneU6BUK5YkJWHy
         dQP7Z/p55DiBcp/SEy8be/dWv1wd3/zc8mV1xUsLLdFYiTDEqaxOFCfT+Y7hQVpe5O4W
         q/5w==
X-Gm-Message-State: AOAM530ax1WV76fzrS8NETLlI4OoWORJzNPMfe5q2pwtyMs7QeuZfyAD
        KYTiIf9iDuPBKoGRTT+dUTvaIuAfZwk=
X-Google-Smtp-Source: ABdhPJxOWurkA5YX7UdI/LgvTafEOTuVMTm1UKSLu8O3eGKrM5/MNGhlh75KG8ayCguSP3t09Ixgjg==
X-Received: by 2002:a5d:6a47:: with SMTP id t7mr875493wrw.75.1599813167695;
        Fri, 11 Sep 2020 01:32:47 -0700 (PDT)
Received: from [192.168.1.143] ([170.253.60.68])
        by smtp.gmail.com with ESMTPSA id l16sm3347215wrb.70.2020.09.11.01.32.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Sep 2020 01:32:47 -0700 (PDT)
Subject: Re: [PATCH 19/24] pthread_setname_np.3: ffix
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20200910211344.3562-1-colomar.6.4.3@gmail.com>
 <20200910211344.3562-20-colomar.6.4.3@gmail.com>
 <e651f418-ada8-19e1-359e-9906994108eb@gmail.com>
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Message-ID: <2c2150bc-d4df-e821-1717-6450540b6c71@gmail.com>
Date:   Fri, 11 Sep 2020 10:32:46 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <e651f418-ada8-19e1-359e-9906994108eb@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

The indentation in the original code was a bit weird (specifically, the 
'do {' part had one more indentation level than the closing '} while'), 
so I simply chose something nice.  See the original page, and if you 
think it's ok keep it, else find something nice :)

Cheers,

Alex

On 2020-09-11 09:58, Michael Kerrisk (man-pages) wrote:
> Hi Alex,
> 
> On 9/10/20 11:13 PM, Alejandro Colomar wrote:
>> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
>> ---
>>   man3/pthread_setname_np.3 | 5 +++--
>>   1 file changed, 3 insertions(+), 2 deletions(-)
> 
> What's the rationale for this patch?
> 
> Thanks,
> 
> Michael
>>
>> diff --git a/man3/pthread_setname_np.3 b/man3/pthread_setname_np.3
>> index b206f66c0..4dc4960cd 100644
>> --- a/man3/pthread_setname_np.3
>> +++ b/man3/pthread_setname_np.3
>> @@ -164,8 +164,9 @@ THREADFOO
>>   
>>   #define NAMELEN 16
>>   
>> -#define errExitEN(en, msg) \e
>> -            do { errno = en; perror(msg); exit(EXIT_FAILURE); \e
>> +#define errExitEN(en, msg) do \e
>> +        { \
>> +            errno = en; perror(msg); exit(EXIT_FAILURE); \e
>>           } while (0)
>>   
>>   static void *
>>
> 
> 
