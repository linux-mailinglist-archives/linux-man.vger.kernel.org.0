Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 83DEC44EDEF
	for <lists+linux-man@lfdr.de>; Fri, 12 Nov 2021 21:33:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231238AbhKLUg1 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 12 Nov 2021 15:36:27 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39436 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230235AbhKLUg1 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 12 Nov 2021 15:36:27 -0500
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 31E00C061766
        for <linux-man@vger.kernel.org>; Fri, 12 Nov 2021 12:33:36 -0800 (PST)
Received: by mail-wm1-x32d.google.com with SMTP id v127so8736336wme.5
        for <linux-man@vger.kernel.org>; Fri, 12 Nov 2021 12:33:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language
         :from:to:cc:references:in-reply-to:content-transfer-encoding;
        bh=iQsySVY/Ei8b40H2egknM+boYwmoTI8fMtSHw7vQuEU=;
        b=JsfoGj2BHAnd+ADVF2pJsexCEGzR1T0t8nr/YMkL0ow/vL7sYjXn/6N/tTQ+8T8qYG
         a0uI83XxawnAiO4s+j9iCtqCVYOv69aNoe5vA8XXmJpUhU2zwi70v4QzVxvL81qprePt
         JHUP0Y0XuioolQmN0knbZ3HnBKBX4E1uOa+m1OHY7NbT15hYfvYrrAS1SBPRDgz1odGX
         mWeh26VN+fEY4EvD3ycymwUF6SmZx/WI3bdYFGvgWv8OjHBZE69P1ZC7wg6yZzo9jvH2
         pDJtBNjndtaAIcJvH0Jhk2fsYpndWuzSE202vFflgeZowvJCsevliJLlr9UGn9BJRUKl
         m/Cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:from:to:cc:references:in-reply-to
         :content-transfer-encoding;
        bh=iQsySVY/Ei8b40H2egknM+boYwmoTI8fMtSHw7vQuEU=;
        b=j0ogNx6sg4Fkk9vIl0bMpxl5wsLXcch820KBSleorbiFH8k9bxr/WCCtyblMjtkFIE
         MIn3jOKDSijGsK3c8wfnna2y77iU1YXfAgZYantEBWx1n8cf/HTJ+5ctqFjUbG+wYj9K
         BBSRWdv3rNVIXD6jnKkdiz1ncQUR8TTzSoHNxGIyr34ExVrcFMVQGVGPxD3BAfeUTm1z
         0kPepssATvRfnJOpREgKfQgWIuzQar16jcvvHJhmBgJ+5Oeqc1T581pHYmfTlqu148HW
         BtEMV3rNio07SO08NIy/oTb4aTOj0q8GT3RcB+2QMU3ic5a2UnWCMIiBAFry0JgGxJTG
         YBmw==
X-Gm-Message-State: AOAM532VRBqvecArFokpWhaEnk0nN64iLo7O5q1EK50P6wD7GD3A8Tcl
        doKAJOKeRaX3I9d6Id2U4UlOKp19BvoIXg==
X-Google-Smtp-Source: ABdhPJzLs8jaJ9EsFgexAf8YndRDVdjfE1SniUYrHsKV1wz2yFJTIkvKrkINVKRbtg1UaZDd5Lbneg==
X-Received: by 2002:a7b:c4c4:: with SMTP id g4mr19441699wmk.93.1636749214774;
        Fri, 12 Nov 2021 12:33:34 -0800 (PST)
Received: from [10.168.10.170] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id n32sm14636300wms.1.2021.11.12.12.33.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 12 Nov 2021 12:33:34 -0800 (PST)
Message-ID: <852cc9b0-992b-dade-ca38-bff4440ef9ed@gmail.com>
Date:   Fri, 12 Nov 2021 21:33:33 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.0
Subject: Ping^2: Re: [PATCH 2/2] man-pages.7: Update non-breaking space
 advice.
Content-Language: en-US
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     linux-man@vger.kernel.org
References: <20210731034458.6s76okhgjxw42mpx@localhost.localdomain>
 <e097bf4a-7188-e810-7d3b-e4d1469397d3@gmail.com>
 <20210801101221.poigrttumltcdenl@localhost.localdomain>
 <5e11d17e-d3d0-8b88-dd1b-209a4b136e51@gmail.com>
In-Reply-To: <5e11d17e-d3d0-8b88-dd1b-209a4b136e51@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi, Branden!

Ping^2

On 10/17/21 21:53, Alejandro Colomar (man-pages) wrote:
> On 8/1/21 12:12 PM, G. Branden Robinson wrote:
>> Hi, Alex!
>>
>> At 2021-07-31T13:42:08+0200, Alejandro Colomar (man-pages) wrote:
>>> On 7/31/21 5:45 AM, G. Branden Robinson wrote:
>>>> * Advise usage of \~ escape instead of \SPACE; the former, a groff
>>>>     extension from circa 1990, has been supported by Heirloom
>>>>     Doctools troff since 2005 and by mandoc since 2019.  The
>>>>     advantage is that \~ is an _adjustable_ non-breaking space, so it
>>>>     will typeset non-jarringly both in .EX/.EE examples when filling
>>>>     is off, and in normal running text (which is filled).
>>>
>>> Thanks for the patch!
>>
>> You're welcome!  I've found no use cases for "\ " in man pages.  \~ is
>> almost always what is desired.
>>
>>>> * Say "non-breaking" instead of "nonbreaking".  These are the only
>>>>     occurrences of either in the man-pages tree, except in
>>>>     Changes.old, which uses "non-breaking".
>>>
>>> I'll do as usual and copy here an extract from man-pages(7) :) :
>>>
>>>     Hyphenation with multi, non, pre, re, sub, and so on
>>
>> Ahhh, ha.  Yes.  This is an impedance mismatch between the house styles
>> of the Linux man-pages and groff, at least as applied specifically to
>> the word "non-?breaking", which sees frequent use in discussions of
>> typesetting. >
>>> BTW, this one also doesn't apply.  I think it is probably your mailer.
>>> Can you use git-send-email(1)?
>>
>> Apparently not.  :(
>>
>> $ git send-email
>> git: 'send-email' is not a git command. See 'git --help'.
>> $ git --help -a | grep send
>>     imap-send            Send a collection of patches from stdin to an 
>> IMAP folder
>>     send-email           Send a collection of patches as emails
>>     send-pack            Push objects over Git protocol to another 
>> repository
>>
>> I did a web search and did not find any reports that NeoMutt does
>> violence to Git-formatted patches.  Perhaps it is GMail's fault?  (I use
>> its SMPTS server to send mail.)  Does someone on this list have
>> experience with this MUA and/or provider?  Is there a trick?
>>
>> This would explain my Michael despaired of my patch submissions even
>> when I kept their scopes under control.
>>
>> Regards,
>> Branden
>>

-- 
Alejandro Colomar
Linux man-pages comaintainer; http://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
