Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0728C458DF1
	for <lists+linux-man@lfdr.de>; Mon, 22 Nov 2021 12:59:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236571AbhKVMDE (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 22 Nov 2021 07:03:04 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40110 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230425AbhKVMDD (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 22 Nov 2021 07:03:03 -0500
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 54BC7C061574
        for <linux-man@vger.kernel.org>; Mon, 22 Nov 2021 03:59:57 -0800 (PST)
Received: by mail-wr1-x432.google.com with SMTP id i5so32276576wrb.2
        for <linux-man@vger.kernel.org>; Mon, 22 Nov 2021 03:59:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=CQw2sIhAxzxTIU7LXJZ8ZaYi5mxB8K8kYf8Db7EHtuE=;
        b=cHpRPVuBADI6gx2FHAKkdd/dCLO85Ak14BuUFMsueO6Ty5JqEq8f7hRgD0G3LLyCw0
         TvTAojpJIExGcCUelCkDch74SBNbHXkyiMVWBPkrxSZBEgQfwEgVxmZlteePDWGSOcZg
         t5MwzvaqsnTy4NvCc064hlPhNLVTInKb9J+QbdSeDpHzykwliJtPA8u+r63F56K5URP/
         DUSsFq9tKqpvNMd4WeGu7kiQkZ2E716wOVWh5lYFngGo8OE0w6Sqbqt9DC7epHwHJ4Gk
         cJvBiJz7CmSgFnwDRRkbo/WVYN+rtTYFl0qz+QpPghLUaOb6QY+M3LtuvlCBl/XpHesE
         VY8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=CQw2sIhAxzxTIU7LXJZ8ZaYi5mxB8K8kYf8Db7EHtuE=;
        b=XthRVY13C/SoqUYsanv7Y18VRJZjyyKuyN4QoiqFLJS5s9BwgrxHcCkU7bwkQuofoE
         rFG3i+KwQFGU8ohjPeTiFQQ6/Js8R/L9xQ1AWLsrVurTDKGXXWvIUA6Zwojs0Ak72IkV
         Qhs22w0lPdzr84webK8Y5KMYUAEDGtUvlSuld4ZODusHyrRnfT0abWrfpWvvBKyP8jQ9
         loiNGdG0xN2YnYC3kIU2D7ALSxATCJ4tzTDTE1u/ZqL/jKU9v0Dak8sIKYz6uHVWb3il
         pNblt/i3Q3MqtVCm/sU/9qUEU9ZIjE3IlCEZa67gMwI7ms4Z04ayyaBEX7Ul3OFWwvRs
         Iylw==
X-Gm-Message-State: AOAM531mjtJPV7WywHyDSY65oyhomid2ayyVStFY+gHxeKDC7VPZoUB5
        bn4yy/e8bUC3upu1U4eHUrI=
X-Google-Smtp-Source: ABdhPJw4G/NBb/NOaEvbHYbOjQifeL7vDyey749PZQpQgHhoxeqVV1KJBvTuhen7N5MPIKdJUSE5SQ==
X-Received: by 2002:a5d:6351:: with SMTP id b17mr36046155wrw.151.1637582395910;
        Mon, 22 Nov 2021 03:59:55 -0800 (PST)
Received: from [10.168.10.170] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id c11sm12306410wmq.27.2021.11.22.03.59.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Nov 2021 03:59:55 -0800 (PST)
Message-ID: <1702be66-028c-47af-4015-2ea42b3e519a@gmail.com>
Date:   Mon, 22 Nov 2021 12:59:54 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.0
Subject: Re: [RFCv2] man-pages.7: Add phrasal semantic newlines advise
Content-Language: en-US
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
References: <20211112225423.8361-1-alx.manpages@gmail.com>
 <20211113000614.9514-1-alx.manpages@gmail.com>
 <20211122073658.a5ofemyz5sdaa6da@localhost.localdomain>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
In-Reply-To: <20211122073658.a5ofemyz5sdaa6da@localhost.localdomain>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi, Branden!

On 11/22/21 08:37, G. Branden Robinson wrote:
>> The downside is that they are more difficult to automatically spot
>> than clause breaks (which tend to have associated punctuation).
>> But we are humans writing patches,
>> not machines,
>> and therefore we should be able to decide and detect them better.
> 
> I, do, however, find the free verse style more difficult to read in
> email, as a rule.  A brain is a modal thing, and when I'm reading emails
> I'm generally prepared for prose.  When I'm editing a man page, my mind
> is in a different mode, and better prepared for the foregoing textual
> style.

Sorry :)

>>   This convention, sometimes known as "semantic newlines",
>>   makes it easier to see the effect of patches,
>> -which often operate at the level of individual sentences or sentence clauses.
>> +which often operate at the level of
>> +individual sentences, sentence clauses, or phrases.
> 
> I would drop the qualifier "sentence" from "sentence clause(s)" here.
> One wonders, "what's a NON-sentence clause"?  Just "clauses" is fine. >
> This noun is not otherwise used in the man-pages project except very
> rarely to refer to items in legal notices, another standard usage with a
> clearly distinct context.  In the context of the patch, the discussion
> is obviously grammatical and sentential.

Makes sense; will do.

> 
> Apart from that, LGTM!
> 
> Regards,
> Branden
> 


Thanks!
Alex


-- 
Alejandro Colomar
Linux man-pages comaintainer; http://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
