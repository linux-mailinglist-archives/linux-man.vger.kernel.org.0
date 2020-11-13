Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5FB722B182A
	for <lists+linux-man@lfdr.de>; Fri, 13 Nov 2020 10:23:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726267AbgKMJXR (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 13 Nov 2020 04:23:17 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38540 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726160AbgKMJXQ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 13 Nov 2020 04:23:16 -0500
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com [IPv6:2a00:1450:4864:20::442])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5870CC0613D1
        for <linux-man@vger.kernel.org>; Fri, 13 Nov 2020 01:23:16 -0800 (PST)
Received: by mail-wr1-x442.google.com with SMTP id p8so8992588wrx.5
        for <linux-man@vger.kernel.org>; Fri, 13 Nov 2020 01:23:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=FGna0whnL1Ft+LRygeY8y2yyWC0aMHO1+4/aCfyDHRo=;
        b=StB9JcKyp+UNQZGSVksxZHXX7SDwuN2Fa8oWj7wvLf0lc7Kk6KwIMSlTJFPueDJOpx
         K9dPg3ttUU+2H/rjFcQSEVV/ik2IKjXIN0m+OaeKPwl3YDd18xCuEFQxr8nu0ARcHVYN
         plQspeh4qUNLrjAXaKKyPN7A98w20fKvjdQl0jyT0awhUx3uTh7I7N1QATKyz4nvOKV1
         /1MIcN0Iwcioic8BFRA23bQA0pvvB/ztkNTVJ/z5JHB6QTr99XB6dk/hLtS8yk69JYbU
         +4+KLeJwwqY1R/n+SBVKz6Lud1cWP3POHsX2G2bP9FRuisMg2+3nqUxBfKjeLUOJVXSR
         I+DA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=FGna0whnL1Ft+LRygeY8y2yyWC0aMHO1+4/aCfyDHRo=;
        b=pHRYUrqQnB7SragHKqF3kKf/10fXjh0RC8l00Hk1qusOMW1/0N7fREBVp9Sg3TMZPq
         9tuyAMXMK6BRClNA/wkGCKGiH/iYfTbrll+EGsQXstn5/gkfqj82JY6rRJ8TEPmkYSIY
         WigJ/DV46vRrcZZQKosMFosi1LEdztm6ckgnrtVRarBhrpfGfBm+LsAMD7w/noVJR/BX
         6V17xVObkfUHsrBabjq17S5A8uuD4PQmbJypLka3HHhI7l0oCSrhCsGK+MQt/XhyqiR1
         BEc75CQ2KIVDFmRIL8fr7AbsHf1U/TT137km+IcHp8xFZ0rIGysCHBox15v/2yzqEifx
         fdTw==
X-Gm-Message-State: AOAM532UJGtaSBS+ufAgV0jCkErKD6r8MZoF8J4+1xMWb4vnsxNghz7T
        /ZWMcTFAD9MUjGOoNZLs7fHuK1UywoA=
X-Google-Smtp-Source: ABdhPJypNhR1X8DxlaG7Ou4Z93Ge/QbViWiqJC/qbq4VR8BZ2zWETnvDqZegBmeI60ThJezCG9AUYg==
X-Received: by 2002:adf:fd0d:: with SMTP id e13mr2105044wrr.85.1605259394835;
        Fri, 13 Nov 2020 01:23:14 -0800 (PST)
Received: from ?IPv6:2001:a61:24b3:de01:7310:e730:497d:ea6a? ([2001:a61:24b3:de01:7310:e730:497d:ea6a])
        by smtp.gmail.com with ESMTPSA id q12sm8878101wrx.86.2020.11.13.01.23.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Nov 2020 01:23:14 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man <linux-man@vger.kernel.org>
Subject: Re: [PATCH] io_setup.2: SYNOPSIS: return long
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20201101135957.90237-1-colomar.6.4.3@gmail.com>
 <6362993f-88d7-5dd4-91b2-03d31ebc8bab@gmail.com>
 <4de611f0-27e7-164a-bd40-21d276c015be@gmail.com>
 <CAKgNAkjcXEY+Gjstpg-038QeApEaGvW=Z803ZbmSmJ5KXz7vNQ@mail.gmail.com>
 <7bba6ced-14f5-75af-933f-73eac0284a39@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <207114d1-cab5-ac4c-945b-ef42a3a670e2@gmail.com>
Date:   Fri, 13 Nov 2020 10:23:13 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.1
MIME-Version: 1.0
In-Reply-To: <7bba6ced-14f5-75af-933f-73eac0284a39@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 11/2/20 2:12 PM, Alejandro Colomar wrote:
> 
> 
> On 2020-11-02 14:09, Michael Kerrisk (man-pages) wrote:
>> Hi Alex,
>>
>> On Mon, 2 Nov 2020 at 13:20, Alejandro Colomar <colomar.6.4.3@gmail.com> wrote:
>>>
>>> On 2020-11-02 08:37, Michael Kerrisk (man-pages) wrote:
>>>   > Hi Alex,
>>>   >
>>>   > On 11/1/20 2:59 PM, Alejandro Colomar wrote:
>>>   >> The Linux kernel uses a long as the return type for this syscall.
>>>   >> As glibc provides no wrapper, use the same types the kernel uses.
>>>   >
>>>   > I think we need this patch for all of the io* pages, right?
>>>
>>> Hi Michael,
>>>
>>> For some reason, no.  AFAICS, only io_setup() really uses 'long'.

Ahhh -- now I get what you mean.

>> But is not SYSCALL_DEFINEX() producing a prototype with return value
>> 'long' in all the cases? (I have not checked, I just presume so.)
> 
> Hi Michael,
> 
> Well, yes.
> SYSCALL_DEFINEx() produces a return type of long
> for _all_ syscalls, AFAICS.
> (as I said before, that macro is a bit obscure, but I can read that).
> 
> Would you like to change all syscall man pages (without a wrapper)
> to use long as the return type?

I guess not.

Thanks,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
