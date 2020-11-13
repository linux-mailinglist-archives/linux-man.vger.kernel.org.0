Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D2EA72B1906
	for <lists+linux-man@lfdr.de>; Fri, 13 Nov 2020 11:26:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726184AbgKMK0j (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 13 Nov 2020 05:26:39 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48458 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726176AbgKMK0j (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 13 Nov 2020 05:26:39 -0500
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CCD49C0613D1
        for <linux-man@vger.kernel.org>; Fri, 13 Nov 2020 02:26:38 -0800 (PST)
Received: by mail-wr1-x435.google.com with SMTP id j7so9206437wrp.3
        for <linux-man@vger.kernel.org>; Fri, 13 Nov 2020 02:26:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=FwGxGLgHCO+++Xi/GWLlqeBd8X2nV/+YugaoLwzhE9A=;
        b=d2opNbbD9NtQqnIxlktr/oU5+D5toQ0zRnTEY84DxnRHs94SWS0NELpFUblEIR2G+v
         PsGvIDpX9mAyC4/QZwTJBperFVzu6zMuEpkLXlOoPFztNMCljcAp3Kt6Mr/q8mUuv68X
         gc0O9IyAuTwV3zTqPAT34OGsZAqaWyWEJEMiWM6P/HAU1IGMhpcBYt7wJv4kQHREpH/S
         VfKH4Xvdosxa3UYNnJo7NjF+PDUBadPRlhT1+9XCd7aHnaqyr7iXx5zfHCuW73S7C0CE
         luAieHT+ysJ9rcI8IHgfkMvjx0qihUJJwoLYRXRVi4WWqnfvdUxGxMKTkzYxFb+NfUnz
         MarA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=FwGxGLgHCO+++Xi/GWLlqeBd8X2nV/+YugaoLwzhE9A=;
        b=LPYK5FqoAhhLLrtpHyyXgG+TEQchhoUM45+LsF13+xyRS7e5kWCberqA+qmeIYoT8G
         dO5x1U8XpBAZuqk5klNzvNH1dpgQNv0pOG65rE12HIuUiqUlJMDAoG6GSWNWZiDZ983h
         A/slbA1SjgSYyio+oXq9cOBtk+XgoXQ+UTVYrIIotjnOodxUaIToqmEN0UNW4s6nUYe7
         CeOfTqpXZpNwBa/IHgic+IxQXDarqQEluApZNvuwMHfB0zY6jDi/JvWQxtSTvimYwLPU
         ng/hlsvSfWD7AmHTnHseb/Vr5Jt+PDZ8U7JPLlAgI+dpD8lIxEJ8B0rSCNOLQ49rEREl
         HbCA==
X-Gm-Message-State: AOAM532w4xvvpacEafBlrhmt6nZSJjPKdnNLZEM0/27RglN507iKWLgQ
        h2otHppEDsoKRIxvctQP/HqFyqDf8zxsYQ==
X-Google-Smtp-Source: ABdhPJxEmf7aDuKTukFT+MXohxRpMBVXNQzSWaWsS45QVnE7GT3u77zfaqas6iAZ/QV/WzudUQ8EIQ==
X-Received: by 2002:a5d:5643:: with SMTP id j3mr2453692wrw.43.1605263197264;
        Fri, 13 Nov 2020 02:26:37 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id s12sm9623887wmc.6.2020.11.13.02.26.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Nov 2020 02:26:36 -0800 (PST)
Subject: Re: [RFC v1] perf_event_open.2: srcfix + ffix
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        Alejandro Colomar <alx.manpages@gmail.com>
Cc:     "G . Branden Robinson" <g.branden.robinson@gmail.com>,
        linux-man@vger.kernel.org
References: <fb71a481-45a1-7511-97cf-bd2017562a16@gmail.com>
 <20201112225528.99397-1-alx.manpages@gmail.com>
 <84882898-6208-73cc-cb52-1e1663d025e1@gmail.com>
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Message-ID: <a813d3f7-e43f-09d2-40a6-c2bb9f6789f3@gmail.com>
Date:   Fri, 13 Nov 2020 11:26:35 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <84882898-6208-73cc-cb52-1e1663d025e1@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

On 11/13/20 10:21 AM, Michael Kerrisk (man-pages) wrote:
[...]
> 
>> @@ -1800,12 +1854,17 @@ by new.
>>  In overwrite mode, it might not be possible to infer where the
>>  new data began, and it is the consumer's job to disable
>>  measurement while reading to avoid possible data races.
>> -.IP
>> +.PP
>>  The
>> -.IR aux_head " and " aux_tail
>> +.I aux_head
>> +and
>> +.I aux_tail
>>  ring buffer pointers have the same behavior and ordering
>>  rules as the previous described
>> -.IR data_head " and " data_tail .
>> +.I data_head
>> +and
>> +.IR data_tail .
>> +.RE
>>  .PP
>>  The following 2^n ring-buffer pages have the layout described below.
>>  .PP
>> @@ -1845,15 +1904,15 @@ the fields with shorter descriptions are presented first.
>>  This indicates the size of the record.
>>  .TP
>>  .I misc
>> +.RS
>>  The
>>  .I misc
>>  field contains additional information about the sample.
> 
> This renders as:
> 
>        size   This indicates the size of the record.
> 
>        misc
>               The  misc  field  contains additional information about the
>               sample.
> 
>               The CPU mode can be determined from this value  by  masking
>               with  PERF_RECORD_MISC_CPUMODE_MASK  and looking for one of
>               the following (note these are not bit masks, only  one  can
>               be set at a time):
> 
> This is anomalous. We have a newline after "misc", but not after "size",
> because of the proposal that we add ".RS/.RE" only in .TP blocks
> with multiple paragraphs.

Yes, that's a bit inconsistent...

> 
> Whats the alternative? I guess we could *always* use .RS/.RE even inside
> .TP blocks that have only one paragraph, but:
> 
> * That's even more markup
> * We end up with even more white space in the rendered output.
> * We almost certainly *don't* want to do this for .TP lists
>   that consist of multiple items where each list item is a 
>   rendered paragraph that is juust a line or two. [1]

Right.

> 
> [...]
> 
> At this point, I feel we are devoting a lot of energy to solving a
> problem that has no really good solution. The status quo is not ideal,
> but so far I'm not convinced that there's any compellingly better
> alternative. And moving to one of those alternatives will require
> changes in a lot of pages. I'm in favor of staying with the status quo.

Agreed.

> 
> Thanks,
> 
> Michael
> 
> [1]
> I mean, I think this:
> 
> [[
> HEAD   item text
> 
> HEAD   item text
> 
> HEAD   item text
> ]]
> 
> is preferable to this:
> 
> [[
> HEAD
>        item text
> 
> HEAD
>        item text
> 
> HEAD
>        item text
> 
> HEAD
>        item text
> 
> ]]

Completely agree.


Cheers,

Alex
