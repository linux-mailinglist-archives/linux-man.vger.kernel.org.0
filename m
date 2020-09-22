Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 799642749D9
	for <lists+linux-man@lfdr.de>; Tue, 22 Sep 2020 22:14:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726567AbgIVUOg (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 22 Sep 2020 16:14:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34352 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726550AbgIVUOg (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 22 Sep 2020 16:14:36 -0400
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com [IPv6:2a00:1450:4864:20::342])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 194CFC061755
        for <linux-man@vger.kernel.org>; Tue, 22 Sep 2020 13:14:36 -0700 (PDT)
Received: by mail-wm1-x342.google.com with SMTP id d4so4675216wmd.5
        for <linux-man@vger.kernel.org>; Tue, 22 Sep 2020 13:14:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=5W+0nuUfTlqGy8jGULYSF+bmjTFoIervBudUEBey6qU=;
        b=gbvzJzak29E0HgPyIiNlK4f6uRbZzHb5go2rvpOSbIZB6vgRXowi/brgTTu7/w+8iM
         z+/NkX8yCv4p0V5OysSTf7YqANX8pS+SWAZHpfMWgMQFViN2NqF8yp50r/FkFIhs3ZP0
         BZ9HLW2vNgmGh05MXV0M4yPAkvpQ6sIbLmvuTk8iQSGj5zvPb/TAjq9MIwxcSIUP7YOt
         6RYsMtzYMPNnt3y5h1sIW3i+o20gOD/UCq62g2wWhjpEL1w2jJgTBJ5GMzHu/vOfCwnL
         eq2q6PrI8OxgUM1CE0+aA/53GJXk0HxDLMR7QOo0f8F7rPiMSX3BAzTforikuq7ZH5fs
         U64g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=5W+0nuUfTlqGy8jGULYSF+bmjTFoIervBudUEBey6qU=;
        b=OBA6k0eeP9D6Xv81DNwza69Y4S/Upgo4MyDP6CayKEwMY+mMOHDTuOc6xhv2a71auG
         Oza136Szu6lUB0hR/2rNCcLHPmLa76r74qXSt9q/8cIiELuCgWj4yxMELmoBT7nXftju
         oQW9g0WaAYiCtMHu8+HZxYuOiAm6gFb3aq0SVFiFiKxN3uqgIXWPz7Fq70c8nPlYfI9g
         nt4O7OdnMxbcjM2Pb1/w+UTBpZrbm9jWa1xDQ9BDHK0xK5gDJvDywGKVmGXXRY1yuo5T
         28+wIqFgd6usF9jqkPyypFmRD+PTdLAxP2aZBg3OE+Ile2IuLZX5WFqM2rbqdmOVz5Sp
         5xIQ==
X-Gm-Message-State: AOAM5337E3Q+smGqYw1yFwzqtc7VtSJkLcbD/G1RFVvuqm7J9Qnyi06z
        al5nLYOPXkCU5QEsye2YVDIZ6ZiADfM=
X-Google-Smtp-Source: ABdhPJydF9iez137pyE4SWdk0ZR7qDEubOatDFaEPTxaClqyMOsdEadWxP3iraSxWUAcDmF51JYnsw==
X-Received: by 2002:a05:600c:21c4:: with SMTP id x4mr2824809wmj.107.1600805674422;
        Tue, 22 Sep 2020 13:14:34 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id v128sm5816274wme.2.2020.09.22.13.14.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Sep 2020 13:14:33 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH 1/2] system_data_types.7: Add 'fexcept_t'
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20200922153822.33728-1-colomar.6.4.3@gmail.com>
 <42f8c77e-27a5-651c-9768-fa08d11e5ba2@gmail.com>
 <3eccfa66-3711-df48-9beb-bfea87dfffae@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <7d9f6b7b-8c52-c848-b2aa-f47abe249b6c@gmail.com>
Date:   Tue, 22 Sep 2020 22:14:30 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <3eccfa66-3711-df48-9beb-bfea87dfffae@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 9/22/20 10:05 PM, Alejandro Colomar wrote:
> Hi Michael,
> 
> On 2020-09-22 21:57, Michael Kerrisk (man-pages) wrote:
>  >
>  > The previous sentence is rather hard to parse. What (other) part of
>  > the sentence does "to provide auxiliary information" relate to.
>  > I suggest splitting the sentence in two and rewording.
>  >
>  >
>  >> +A floating-point control mode is a system variable whose
>  >
>  > You suddenly introduce "floating-point control mode" here.
>  > How does it relate to the preceding sentences? It's not clear.
>  >
>  > Going off to look at the standard... I see that actually your
>  > sentences come pretty much straight from the standard. So, first, I
>  > think the standard could have been clearer here. Second, and more
>  > important, (for copyright reasons) we are on shaky ground if we just
>  > lift whole passages from the standard.  The text does really need to
>  > be in your own words. Can you come up with something?>
>  > Alternatively, I guess we could explicitly quote the standard.
>  > Something like
>  >
>  >      POSIX describes this type as follows:
>  >      .RS
>  >      .PP
>  >      [The text]
>  >      .RE
> 
> Yes.  A few patches ago I asked about that,

Sorry -- there was so much mail from you that I missed it!

> but you didn't answer to that specifically,
> so I guessed that it was just fair use:
> 
> https://lore.kernel.org/linux-man/6dc80c25-85bf-925c-49c2-f79865027c0f@gmail.com/T/#mbfdcaf4fe625b4ff7ea90dc7396005fda1283612

Thanks for the pointer.

> But I guess explicitly quoting POSIX would be easy and better,
> as you proposed.

Yes, I think it''s simplest. (And a patch for 'fenv_t' may be
a good idea here as well.)

> I never used that type, so I wouldn't dare to describe it in my own words.

Okay.

Thanks,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
