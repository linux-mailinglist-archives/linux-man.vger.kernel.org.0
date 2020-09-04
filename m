Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 846F725DD06
	for <lists+linux-man@lfdr.de>; Fri,  4 Sep 2020 17:17:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730297AbgIDPR6 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 4 Sep 2020 11:17:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39458 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730271AbgIDPR5 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 4 Sep 2020 11:17:57 -0400
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com [IPv6:2a00:1450:4864:20::442])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DBDB2C061244
        for <linux-man@vger.kernel.org>; Fri,  4 Sep 2020 08:17:56 -0700 (PDT)
Received: by mail-wr1-x442.google.com with SMTP id c15so7078861wrs.11
        for <linux-man@vger.kernel.org>; Fri, 04 Sep 2020 08:17:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=HcCYYA/il/B2KFj/EzdzEiJruXHVvR4cP2+OPsoWPXE=;
        b=phkhlNfd7dk6eXwjE56evbho1PukNIFH9g4ePs2AfRkwvDtosq8djERzWHF+YL0Wqo
         qq4kVR3evOkpUve/ZhpC4Dseg+MC+KcYE7yp+noY+B9rC9A3QsLBkt1/v5BKCNjckIvW
         CDWIb3Ats3sgAxgVjyT+rPd4vu42YxLv9x36iixJNSqC+iREplFAXHrpueOAKIv9wuQM
         jMiGaVKWNr0jCvNP1L0ttAT/+zTXXBNAgEvp2gtwc+cr3sUJ7rz7BBfIG6xsY/oyZmLk
         sluKZwIfX7OXwZakawBc3lYP1F/mnspDkNDMJgSkbvoFk79gOG6fzdzDXsIx8cyhD8pi
         udtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=HcCYYA/il/B2KFj/EzdzEiJruXHVvR4cP2+OPsoWPXE=;
        b=A103U7/mxkhYrBqpqzy7SXfDywuGuy+LkDxq2+VF7feqguH55fHBZBc+C8/3SmsxEH
         ufTu+GxI5uofZzHsdjq5D+0FE0LCCEMzHbsY05D/qcXvOnHVLJqA6vNEQCP5SX9k2u6W
         4RoLL32frzjMXgYEp9KSH0dh5mj068QdQ166UEBOeqZzb5GIgboAhbEC0o2++TszOw+Q
         WeTLqEgzk2ZaeD6SmKanPOVFdciX8LfrFGOAok14EvLnuZlxcCo8o+XFC3H7Ij3cm+q/
         2NJ8M93NLc7fHV+OruC81kqZeWG/e0HrMXvjLemXEl71EB5WDbIo7Yzxbxda9jYYAM/B
         OxHw==
X-Gm-Message-State: AOAM53279sWRrLJ3Dhdc9TWBk3po6nOB8EzZSjBqFHw/PqmU+syex/E+
        rfo9U1BmT6+R/uDoasmeqGYq69vVoUc=
X-Google-Smtp-Source: ABdhPJyEuKgdMnVuCLMER7Ctzs2j0z7vQ3xcWU058cM3Plcj9R2g9nsKStAS3HIYIwGB2Z71IA36aw==
X-Received: by 2002:adf:8306:: with SMTP id 6mr8077389wrd.256.1599232675519;
        Fri, 04 Sep 2020 08:17:55 -0700 (PDT)
Received: from ?IPv6:2001:a61:3ab0:7001:e081:d401:3da8:e4bc? ([2001:a61:3ab0:7001:e081:d401:3da8:e4bc])
        by smtp.gmail.com with ESMTPSA id j7sm11512822wrs.11.2020.09.04.08.17.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Sep 2020 08:17:54 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        Jakub Wilk <jwilk@jwilk.net>
Subject: Re: [PATCH (2) 12/34] bsearch.3: Use sizeof consistently
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
 <8458b842-7d4b-f19b-c596-7f529dd48ba6@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <088770dc-c606-495c-7f08-ab3573ec8104@gmail.com>
Date:   Fri, 4 Sep 2020 17:17:53 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <8458b842-7d4b-f19b-c596-7f529dd48ba6@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Alex,

On 9/4/20 3:46 PM, Alejandro Colomar wrote:
>>From 886db3bad74f35fc40a1238a0d2f35ace3dc7620 Mon Sep 17 00:00:00 2001
> From: Alejandro Colomar <colomar.6.4.3@gmail.com>
> Date: Thu, 3 Sep 2020 21:43:23 +0200
> Subject: [PATCH 12/34] bsearch.3: Use sizeof consistently
> 
> Use ``sizeof`` consistently through all the examples in the following
> way:
> 
> - Use the name of the variable instead of its type as argument for
>   ``sizeof``.
> 
> 	Rationale:
> 	https://www.kernel.org/doc/html/v5.8/process/coding-style.html#allocating-memory
> 
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>

Patch applied. Thanks!

Cheers,

Michael

> ---
>  man3/bsearch.3 | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/man3/bsearch.3 b/man3/bsearch.3
> index 88e0e6ea1..6859bdba2 100644
> --- a/man3/bsearch.3
> +++ b/man3/bsearch.3
> @@ -124,12 +124,12 @@ main(int argc, char **argv)
>  {
>      int i;
> 
> -    qsort(months, nr_of_months, sizeof(struct mi), compmi);
> +    qsort(months, nr_of_months, sizeof(months[0]), compmi);
>      for (i = 1; i < argc; i++) {
>          struct mi key, *res;
>          key.name = argv[i];
>          res = bsearch(&key, months, nr_of_months,
> -                      sizeof(struct mi), compmi);
> +                      sizeof(months[0]), compmi);
>          if (res == NULL)
>              printf("\(aq%s\(aq: unknown month\en", argv[i]);
>          else
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
