Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3C338265C99
	for <lists+linux-man@lfdr.de>; Fri, 11 Sep 2020 11:35:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725786AbgIKJf0 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 11 Sep 2020 05:35:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35740 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725766AbgIKJfY (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 11 Sep 2020 05:35:24 -0400
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com [IPv6:2a00:1450:4864:20::342])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EAF9BC061573
        for <linux-man@vger.kernel.org>; Fri, 11 Sep 2020 02:35:23 -0700 (PDT)
Received: by mail-wm1-x342.google.com with SMTP id z9so4133504wmk.1
        for <linux-man@vger.kernel.org>; Fri, 11 Sep 2020 02:35:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=/EkHYZvbuLlgWU/MQFNy4se+XlgwVrGpXETTtkVYOq4=;
        b=ejusW30Vnfop/ZBamGLfVst8TtCB5ZBPen2NuH71Tt9cGts6/i7DZfRdV7r/fvqpPT
         5xj4jgiPBJdYQMiNpNzTqU+gBHeIs9OoysoHuo+twRbODqCpVkc3q1MgEfMwGgXhzALb
         DPy5u9Onl1uwZgrUzbsiSXKyD7VkBUztLiYYz1zeyyZzOqNWGJEHq3ml8XRu0YTAih4W
         Ne6TZO5OPW+5pZqtogOWKLJr1vPHiEQvPyXfGWIpy0ybtTuDw8KaHfCNXTO1LEFPC+tV
         zb0DnwED95Oyn77sb0rSJU5ny/Lp+sE2XjKJ93+1M1W9adySfk+HpNPLb7YcmkRf3aUE
         t1IQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=/EkHYZvbuLlgWU/MQFNy4se+XlgwVrGpXETTtkVYOq4=;
        b=WXHpKUxL5rQHmJgUKQ3q/CQq8EPgLuzFBQ37X5Y08goIK10s8IG7pxet3YvUFd9TVa
         yV9IWPIxgfNKx79HA3FfPi/FGqtvISyWbuf069GST/yWSjtpybRDHcbjcb9ac0M7A3MM
         49x+FgevIyMo70GgmcqkrOqk9LJxDcTAku6q78sskcZItwZVoVZWLd7CrHzwFsKWrX2m
         AC66Q5CAo8aB9s7oG6glddk+mG7V2OG80T+5gygH42IdToBMLyTRtfZh3FIRu4TZUH1y
         YiZCTsvW98YERnaW6LzlAH1MUotJw6bUTqpX+Hf3fkEtoOCrE6ix3XS/o7tBarir5GCN
         Wwfw==
X-Gm-Message-State: AOAM531vJn69zw5GMLki4uyrDKDGFAZOIwFT4sFD9tIIkwX9r+4wVe2w
        bijtPC5rV+llg9qkQZEe7PsgeJ98oys=
X-Google-Smtp-Source: ABdhPJzJSG+qAA6dHjA5WEfhfJOA5v8fZfNxh1tGfKXPoL4rQAKB9SjN3FJCXBmVWU6oz3AUoiLLXg==
X-Received: by 2002:a1c:4381:: with SMTP id q123mr1270548wma.108.1599816922431;
        Fri, 11 Sep 2020 02:35:22 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id a74sm3209125wme.11.2020.09.11.02.35.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Sep 2020 02:35:21 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH 22/24] membarrier.2: Note that glibc does not provide a
 wrapper
To:     Jakub Wilk <jwilk@jwilk.net>,
        Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20200910211344.3562-1-colomar.6.4.3@gmail.com>
 <20200910211344.3562-23-colomar.6.4.3@gmail.com>
 <20200911093333.blym5ufplu7xzhwx@jwilk.net>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <ba1e14c3-d481-14a1-0b56-8e850230fc1e@gmail.com>
Date:   Fri, 11 Sep 2020 11:35:21 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200911093333.blym5ufplu7xzhwx@jwilk.net>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 9/11/20 11:33 AM, Jakub Wilk wrote:
> * Alejandro Colomar <colomar.6.4.3@gmail.com>, 2020-09-10, 23:13:
>> I copied .nf and .fi from futex.2, but they made no visual difference.
>> What do they actually do?
> 
> .nf disables filling and adjusting; .fi re-enables them:
> https://www.gnu.org/software/groff/manual/html_node/Filling-and-Adjusting.html
> https://www.gnu.org/software/groff/manual/html_node/Manipulating-Filling-and-Adjusting.html
> 
> In membarrier.2's SYNOPSIS section, there's just a single short line in 
> each paragraph, so it makes no difference.
> 
> It does make a difference in futex.2.

Thanks for jumping in, Jakub. I was in a bit of a hurry, and missed 
Alex's question.

Cheers,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
