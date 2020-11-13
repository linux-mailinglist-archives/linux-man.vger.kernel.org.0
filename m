Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 029D12B17B3
	for <lists+linux-man@lfdr.de>; Fri, 13 Nov 2020 10:00:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726275AbgKMJAY (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 13 Nov 2020 04:00:24 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34924 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726221AbgKMJAY (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 13 Nov 2020 04:00:24 -0500
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BFF1FC0613D1
        for <linux-man@vger.kernel.org>; Fri, 13 Nov 2020 01:00:23 -0800 (PST)
Received: by mail-wr1-x436.google.com with SMTP id l1so8860142wrb.9
        for <linux-man@vger.kernel.org>; Fri, 13 Nov 2020 01:00:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=RQ/p9MCgkhfADWRadnk6JUoazXjtziVHoMgr1I+hoyI=;
        b=bUo4Lj3rdooG9qFp9uOn0oE/gy8lsrBr89YXpSeSaXdKetp87J+/pdw2Q1H6a8tgLM
         avp5eAk4j8zFW3xLJubrAL/CquCFDQvTV1IzL8A4GG/e5KZjB+FGAJP+FZSYd/Xl+uPa
         gY9iH2HVfU9ai0o3KojeesHWpfCQOcMXSWjAv26i+UT6MufwM5q7njWWj1UhVz9Dnepg
         +iimg+uM1dYXT3rCDiqDWgwV7KxCnyhQcjlGgjA0iCMNKin9xRM9YjKOYFOlDttaA9o0
         p5Ugq/sqlmrgyVhQ98sgNSdZWhkeL3tm1j3aDg5PvjPK+BSn4NA9famjEBBj3y/ALo/3
         SOCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=RQ/p9MCgkhfADWRadnk6JUoazXjtziVHoMgr1I+hoyI=;
        b=Ln6o4Uhlinc/Ld+011yhQyiWnYwIIX01hkjLk9YttCxXkjBYGYaApGmxYF3y2hY7tY
         DnM8RvMmht3P4UxpYdKEM2Pukw8BbA89nBod/SqK6NHxQO35WyT1K+yySk2PFju5tpJU
         FnMKvd7eNcpUYcxdbc+Ur/TrH8mI1b0LhtoRLjmjgPJDYTb1qHM2pZvUQthvOyp2ioW3
         ArB+wqJloCgLEznqDA3CkdTBPDFaLFh4azaWWRSoW58YHZYBf4XRpcq3jy8gbfGec1Lm
         lNf7kiMcg6z+LGoWC4Oi+DclO2P7TVpCJE4jZr8NMh6FTM8YSnjNE4E7RFDxXFcj/qwD
         kFAg==
X-Gm-Message-State: AOAM530P8ZfPp4xqE/ywXagZl68PIytVV/X1mUXDCEJFIIBHZZY8oBEQ
        xvZlNa2uBSjPmtz/PMnagB1LXiX4f5c=
X-Google-Smtp-Source: ABdhPJyW5wnHacLzCnUAZ8Wv+Uvgukf2UMS0aPj7HF9MN2SXhmCn4IaoWwCQvOT48Y6qiP8BjnHhnQ==
X-Received: by 2002:a5d:42c9:: with SMTP id t9mr1990007wrr.13.1605258022280;
        Fri, 13 Nov 2020 01:00:22 -0800 (PST)
Received: from ?IPv6:2001:a61:24b3:de01:7310:e730:497d:ea6a? ([2001:a61:24b3:de01:7310:e730:497d:ea6a])
        by smtp.gmail.com with ESMTPSA id b8sm10744448wrv.57.2020.11.13.01.00.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Nov 2020 01:00:21 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man <linux-man@vger.kernel.org>
Subject: Re: Format inline code
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <f10acb37-f929-c1fd-9827-c33aaf2955a1@gmail.com>
 <20201106093845.12897-1-colomar.6.4.3@gmail.com>
 <3f041e44-c5c7-f17a-9e99-125eeb6ccb0c@gmail.com>
 <387259c5-3051-8058-e99c-b17873fe7187@gmail.com>
 <CAKgNAkjsnu9+rxdLgZ5VzYxjFf_c1Ed0JUQ8=KHkK6Qw9X4B-Q@mail.gmail.com>
 <bb5f3aad-d766-fb9e-e77a-09009fb7b599@gmail.com>
 <20201113082759.vqeufvucqg3agdhh@localhost.localdomain>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <0323a942-1d12-9378-bdc0-8690adc1aaee@gmail.com>
Date:   Fri, 13 Nov 2020 10:00:20 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.1
MIME-Version: 1.0
In-Reply-To: <20201113082759.vqeufvucqg3agdhh@localhost.localdomain>
Content-Type: text/plain; charset=windows-1252
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Alex, Branden,

On 11/13/20 9:28 AM, G. Branden Robinson wrote:
> At 2020-11-12T22:17:34+0100, Alejandro Colomar wrote:
>> There are some cases using [.nf/.fi] instead of [.EX/.EE].
>> I would replace those by [.EX/.EE].
> 
> Yes!  I strongly encourage this, and recently finished fixing all of
> groff's man pages (about 60 of them) to clear the last vestiges of
> .nf/.fi.
> 
>> However, I would still do the change [.IP] -> [(.RS + .PP)/.RE],
>> so almost always you'll have [.PP] surrounding code examples,
>> and you'll only see [.IP] when it is really needed:
>> in cases where you use its argument ([.IP * n]).
> 
> I think this is a good idea, too.  As I have tried to explain in
> groff_man(7)--at some length because this issue bedeviled me a long
> time--the "relative inset" macros should really be thought of separately
> from paragraph indentation.  In a way it is regrettable that the default
> indent for paragraphs is different from the increment used for relative
> insets; if they were different, the distinction would be much more
> obvious to people.  But perhaps not, in the end, much less frustrating.
> 
> If you'd like to give me some feedback on the subsections "Horizontal
> and vertical spacing" and the .RS-related item in section "Notes" in
> groff_man_style(7), I'd appreciate it.
> 
> 	https://man7.org/linux/man-pages/man7/groff_man_style.7.html
> 
>> In those cases, you should also use [.IP] for the code
>> (see perf_event_open.2:1426):
>>
>> [[
>> .IP * 2
>> If
>> .B PERF_FORMAT_GROUP
>> was specified to allow reading all events in a group at once:
>> .IP
>> .in +4n
>> .EX
>> struct read_format {
>>     u64 nr;            /* The number of events */
>>     u64 time_enabled;  /* if PERF_FORMAT_TOTAL_TIME_ENABLED */
>>     u64 time_running;  /* if PERF_FORMAT_TOTAL_TIME_RUNNING */
>>     struct {
>>         u64 value;     /* The value of the event */
>>         u64 id;        /* if PERF_FORMAT_ID */
>>     } values[nr];
>> };
>> .EE
>> .in
> 
> Have you considered changing out this .IP/.in/.EX/.../.EE/.in pattern
> for .RS/.PP/.EX/.../.EX ?

But in the "-branden" version I see

[[
.RS 6n
]]

If I understand correctly, then that number is calculated based on the
".IP * 2" that precedes it. That doesn't seem good (since, maybe at 
some point, one might want to change the .IP yo say ".IP  1) 3",
and then one has to fix the .RS lines. Am I missing something?

Thanks,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
