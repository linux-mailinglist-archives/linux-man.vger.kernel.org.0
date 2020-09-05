Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BACF025E613
	for <lists+linux-man@lfdr.de>; Sat,  5 Sep 2020 10:07:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726261AbgIEIH2 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 5 Sep 2020 04:07:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53022 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725818AbgIEIH1 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 5 Sep 2020 04:07:27 -0400
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com [IPv6:2a00:1450:4864:20::441])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8B5AFC061244
        for <linux-man@vger.kernel.org>; Sat,  5 Sep 2020 01:07:24 -0700 (PDT)
Received: by mail-wr1-x441.google.com with SMTP id g4so9643355wrs.5
        for <linux-man@vger.kernel.org>; Sat, 05 Sep 2020 01:07:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=3FSh0VnzSNhd4M1r5wug5Dtx3sspZOjk34NTx18RDv4=;
        b=nencwAf1U4yWKngpygIhEqv8nteo1AHkEW9G+kAkSq78mbYL7TOoac/Z1J9ywKsAtV
         BrN/dW2KCwJQ3jyD4qL0FBiUHGZT/KsI0AwRfW2cuU+Y6ISoOhQCcYuc2hfDUatiea2S
         u/55hfs0arKchCQzWRWlha5lhNeveVrgjyCbUpLbduM9ragvztKUPnn0BUXuPWRAb9w9
         HPSS7IoXA3fOb9nYB7nu3SlW45Y7SGlm4CIiHOLZkLOfxc9Z9aKQw6kpAOFke0nz8EkO
         KzqeqTWw02d5U4wdi2COnb7NLodxp49hDujW//mvCnfPhgrVdLfgsk6h/cZQnBxl2HH9
         O/Rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=3FSh0VnzSNhd4M1r5wug5Dtx3sspZOjk34NTx18RDv4=;
        b=i51uHiD1UuH7C1gMj7p6whKe41QMDIC0qIn8bY5H4DfCD6pnKkGgw/LJWnBWWvROzY
         cVi8p0EQlJPJMnzdZYMT0c4c3hlxqkfYWu2Oim1rwIwqNzfFzaDzarBccu8UvTU3kO2F
         2PriOQtZhW8kquLpOgabhO+vgV7YWWudVfv12yygdwvtzXsOpPAO7gI4Vu6kolM+0zOV
         VOI6S6JwpyRu2t1ykpUiAQPVOWB7c+V9ZlYtQkH1cjh+UiXogJgm6rmS0cKvztn5jFe1
         vRallkQbPsqrcaLaQ/w7LlTlwWGVvxYTSgBHZgoUEfZihokoaL/9tw1IIl+ONSTTbdkW
         tRfA==
X-Gm-Message-State: AOAM530A0KwxZYCRt2mEiN1aQrB5LSwg3EaQSrtc7hXoNlUlK4+PEqbK
        vMTzpsRrjKpSgHQ9DF3hHw4=
X-Google-Smtp-Source: ABdhPJxDUlttlO6Ke0lr/ezAn5Ts2EPkOT1qrj1m2+icc5/Fg9T/7eKQ5k7eXECZKkCdqYRRdvu0lQ==
X-Received: by 2002:adf:f5ce:: with SMTP id k14mr10883042wrp.286.1599293243130;
        Sat, 05 Sep 2020 01:07:23 -0700 (PDT)
Received: from ?IPv6:2001:a61:3ab0:7001:e081:d401:3da8:e4bc? ([2001:a61:3ab0:7001:e081:d401:3da8:e4bc])
        by smtp.gmail.com with ESMTPSA id q192sm18017244wme.13.2020.09.05.01.07.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 05 Sep 2020 01:07:22 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        Jakub Wilk <jwilk@jwilk.net>
Subject: Re: [PATCH (2) 11/34] timerfd_create.2: Use sizeof consistently
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <cc176298-50e2-7831-f2f7-21be8cae9075@gmail.com>
 <d72263bb-7c84-3f33-ee44-a2cac2e2662c@gmail.com>
 <806999b7-8947-d350-2125-f04b69846f37@gmail.com>
 <d3537144-e4da-8359-bc08-4eaf8c7bd059@gmail.com>
 <9fcc512e-a12c-5b28-126f-aaf1854ed290@gmail.com>
 <2b288808-c840-343f-9e56-8097765e5528@gmail.com>
 <876dcc97-8151-7160-5eda-19307f0483c1@gmail.com>
 <462b75ca-bef8-063d-b6ec-d1c845fb1580@gmail.com>
 <d38d3644-698c-41e4-4d6a-5d999c0a3fdd@gmail.com>
 <26629635-bf4c-1279-314d-db92f11adbb7@gmail.com>
 <d38b1e35-2471-09a1-ad49-4509a30fd14a@gmail.com>
 <edf9e2a1-0612-437d-9fbf-e255e0d1df97@gmail.com>
 <c2636c53-e81c-881a-2938-08871e1b176c@gmail.com>
 <257c9374-3253-9091-c116-045ee16590c0@gmail.com>
 <40ba6e68-c2f6-649c-2225-6037e3c0c077@gmail.com>
 <afec3122-19aa-02f4-0850-7000552ceb95@gmail.com>
 <da654939-dcc2-e1f8-65d9-a873325d4609@gmail.com>
 <aec8bb20-6693-f876-0e2e-5574bd3b7af6@gmail.com>
 <d0fad983-97f0-f855-1b1d-cb0770e7f0a9@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <ab62123b-28ea-1eb5-a3df-7411dc90d7c5@gmail.com>
Date:   Sat, 5 Sep 2020 10:07:19 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <d0fad983-97f0-f855-1b1d-cb0770e7f0a9@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 9/4/20 5:14 PM, Michael Kerrisk (man-pages) wrote:
> Hello Alex,
> 
> On 9/4/20 3:45 PM, Alejandro Colomar wrote:
>> >From d347c933a8c253028f8f76c4170b65b85ce7d605 Mon Sep 17 00:00:00 2001
>> From: Alejandro Colomar <colomar.6.4.3@gmail.com>
>> Date: Thu, 3 Sep 2020 21:42:28 +0200
>> Subject: [PATCH 11/34] timerfd_create.2: Use sizeof consistently
>>
>> Use ``sizeof`` consistently through all the examples in the following
>> way:
>>
>> - Use the name of the variable instead of its type as argument for
>>   ``sizeof``.
>>
>> 	Rationale:
>> 	https://www.kernel.org/doc/html/v5.8/process/coding-style.html#allocating-memory
>>
>> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
> 
> Applied. Thanks!
> 
> Michael

I've changed my mind on this one (for similar reasons to patch 03/34).
The buffer here must be an 8-byte integer; it's baked into the API,
and I think it's helpful to show the type, to emphasize this point.
I've decided not to apply this patch.

Thanks,

Michael

>> ---
>>  man2/timerfd_create.2 | 4 ++--
>>  1 file changed, 2 insertions(+), 2 deletions(-)
>>
>> diff --git a/man2/timerfd_create.2 b/man2/timerfd_create.2
>> index 67a13dba3..fd4acf3e9 100644
>> --- a/man2/timerfd_create.2
>> +++ b/man2/timerfd_create.2
>> @@ -700,8 +700,8 @@ main(int argc, char *argv[])
>>      printf("timer started\en");
>>
>>      for (tot_exp = 0; tot_exp < max_exp;) {
>> -        s = read(fd, &exp, sizeof(uint64_t));
>> -        if (s != sizeof(uint64_t))
>> +        s = read(fd, &exp, sizeof(exp));
>> +        if (s != sizeof(exp))
>>              handle_error("read");
>>
>>          tot_exp += exp;
>>
> 
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
