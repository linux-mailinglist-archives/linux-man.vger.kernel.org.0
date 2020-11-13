Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B6A512B18DC
	for <lists+linux-man@lfdr.de>; Fri, 13 Nov 2020 11:15:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726248AbgKMKP7 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 13 Nov 2020 05:15:59 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46792 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726176AbgKMKP6 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 13 Nov 2020 05:15:58 -0500
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 289C4C0613D1
        for <linux-man@vger.kernel.org>; Fri, 13 Nov 2020 02:15:58 -0800 (PST)
Received: by mail-wr1-x433.google.com with SMTP id k2so9190108wrx.2
        for <linux-man@vger.kernel.org>; Fri, 13 Nov 2020 02:15:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=dcKSASyGW/c3z8ryUrLTe/86e9o3qtTv/LeNtozwBHc=;
        b=UZXbrEtN0Ou595Lld1wMms/uzcxB3+T59onPPV/RH7j5tD/rh8cM+OtYJEUg2fcbQ/
         wvnDs1mPXWHa34m6x9XA2mmgawiseDqKxRQmEs9FMIINof7RXkr+Zl2dLUWQ+YaVgIye
         UTNBSQN7TmNSoDJHrH0seUpZKfqGFU960r9w61DtCYjKzvUfRf9io/pTrSmpNTE3g74T
         uuO6CBpDa54yfCvtfN9ivHgDYdInABI9AHQ7SQ7V7CjqS83ZAWK7+P29o0fp6x2nTHxV
         mDS0xPKPXP4QjC48v8o7oV5s6hn0bu7SzuwV7gkygQT1P+6xvF3j8uGNVF3wxeVlk6K1
         swdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=dcKSASyGW/c3z8ryUrLTe/86e9o3qtTv/LeNtozwBHc=;
        b=fDOvmx8xQr9kEwCjuAdM1Wl4OVdsV+/QAqz6TB1F5IO7sq82CSRYQLvXIVnfC4/ldD
         pSyC+B4jvXsAslV//obx0tdfA3MaEEsTjSalEb1VBSdrK5FefO1X4Sun5eGtCUWkqac9
         dMxNTvVWMdRH+4h/4WVAaa0VJ1mJB4dQDc/vGntQSemCo1n/pQs+mnTWzdKuowq1+VA5
         AZnhELPnIo0/KPuWrpEUIlS4cQkSasbDvCd1UVtTjNGcTFM4JWLsbt9YsXHK8I41NnTY
         qNDQEWcBEA/EE5nI4oZRBhYyDgEgJkRd3eGlDjLW73CoLQqUuF6N/ejyt76ZxG+bTaYo
         d9Lw==
X-Gm-Message-State: AOAM530LsFb2lj68S4Fc6umgAuaHoQcfbZ8QVBxDKzrj7w6AaHQ4zH+m
        OIxmbompa9KvzXCbWUgi+ePtx+sNImk2EQ==
X-Google-Smtp-Source: ABdhPJzN73XlC00mJT/pGXrauz/1BGwogXvyLVwkxzZJa5RKEqsD2DVV5yPcK7/RjvvYneVfvt/Tog==
X-Received: by 2002:a05:6000:89:: with SMTP id m9mr2499820wrx.412.1605262556650;
        Fri, 13 Nov 2020 02:15:56 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id 90sm10783667wrl.30.2020.11.13.02.15.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Nov 2020 02:15:55 -0800 (PST)
Subject: Re: .RS
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     linux-man@vger.kernel.org
References: <ae05d6bd-af93-9b49-25a6-e9c69ae402ec@gmail.com>
 <20201111150950.u7lf3xeulydbd2vr@localhost.localdomain>
 <c6919fec-4a95-888d-93fd-ecb254ec2377@gmail.com>
 <20201112070915.ejttfz3lu3sphkkp@localhost.localdomain>
 <1ae93b8f-c6e2-f11d-0844-a8cf702f933b@gmail.com>
 <60a7fa20-d41e-12d9-a81e-558512a74f0c@gmail.com>
 <ab209b21-a93e-fd7c-e447-c8ff507cb062@gmail.com>
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Message-ID: <a1705306-0d38-522a-e903-5e63aafdb4eb@gmail.com>
Date:   Fri, 13 Nov 2020 11:15:54 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <ab209b21-a93e-fd7c-e447-c8ff507cb062@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


Hi Michael,

On 11/13/20 9:52 AM, Michael Kerrisk (man-pages) wrote:
[...]
>> Do you know why is that?
> 
> Hmmm -- I don't know. I was going to ask, doesn't s/>RS 4/.RS +4n/
> fix the problem? But I see that it does not.

No; I tried many things, but I didn't find a solution.
So, we'll have to keep using .in, right?

> 
> By the way, your comments (\") actually cause the rendered
> output to change, as far as I can see! In particular,
> the \" on the final .RE leads to some strangeness:
> 
> [[
> .IP * 2
> Lorem ipsum dolor sit amet, consectetur adipiscing elit,
> sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
> Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris
> nisi ut aliquip ex ea commodo consequat.
> .\""""""""""""""""""""""""""""""""""""""""""
> .IP             \" Indent is 2n after this
> .in +4n         \" Indent is 6n after this
> .EX
> I am indented 6n from normal paragraphs.
> .EE
> .in             \" Return to normal
> .\"""""""""""""""""""""""""""""""""""""""""""
> .IP *
> Augue interdum velit euismod in pellentesque.
> Tristique senectus et netus et malesuada fames ac turpis egestas.
> Gravida arcu ac tortor dignissim convallis.
> .\"""""""""""""""""""""""""""""""""""""""""""
> .IP             \" Indent is 2n after this
> .RS 4
> .EX
> I am indented 4n from normal paragraphs!!!
> .EE
> .RE             \" nom
> .\"""""""""""""""""""""""""""""""""""""""""""
> .PP
> Augue interdum velit euismod in pellentesque.
> ]]
> 
> Gives:
> 
> [[
>        * Lorem  ipsum dolor sit amet, consectetur adipiscing elit, sed do
>          eiusmod tempor incididunt ut labore et dolore magna aliqua.   Ut
>          enim  ad minim veniam, quis nostrud exercitation ullamco laboris
>          nisi ut aliquip ex ea commodo consequat.
> 
>              I am indented 6n from normal paragraphs.
> 
>        * Augue interdum velit euismod in pellentesque.  Tristique  senec‐
>          tus et netus et malesuada fames ac turpis egestas.  Gravida arcu
>          ac tortor dignissim convallis.
> 
>            I am indented 4n from normal paragraphs!!!
> 
> Augue interdum velit euismod in pellentesque.
> ]]
> 
> No indent at all on the final line!

Hmm that's weird.  I added the comments in the email, so I didn't test them.

Thanks,

Alex
