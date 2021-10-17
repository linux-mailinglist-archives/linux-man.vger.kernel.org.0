Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 62AF4430BE2
	for <lists+linux-man@lfdr.de>; Sun, 17 Oct 2021 21:53:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242720AbhJQT4B (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 17 Oct 2021 15:56:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53474 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238482AbhJQT4A (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 17 Oct 2021 15:56:00 -0400
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9E785C06161C
        for <linux-man@vger.kernel.org>; Sun, 17 Oct 2021 12:53:50 -0700 (PDT)
Received: by mail-wr1-x42c.google.com with SMTP id k7so37083590wrd.13
        for <linux-man@vger.kernel.org>; Sun, 17 Oct 2021 12:53:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=+m8oiKVZo73toSIkhOKkvfUmC5sqDSXqJh1QykkmY1g=;
        b=lFrGlXtwtP85vVKblSLcD3eNmUFbq7HIEoJUfFSZ+s9jQeBxmaqddt/wTGmgYosk9x
         t665FVSKOGvMvLOhN01tZiVNHsgAc1c5SuJijEcRn3N6HpXYDCtPx/YBk453sHOMvNao
         Kd8kIHDcO+hEPOjQ5ktF7aWjyzosdvWsC5rXveaXxs3ztnGQQLlk2GEF6Bs/XEyxOls/
         fhE41wvjjmfCAmg7VbCLnVDs+HPv44MxMXjLBAxF7tFYCIIjmgEOBK8hMEiw+VP3/ev1
         1f5leMEmNqeaiihIVUMYAkfD/8cJdF+iZFAvDDpvkqquzloPV11fm7zSc463Q9BQuFaS
         FzfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=+m8oiKVZo73toSIkhOKkvfUmC5sqDSXqJh1QykkmY1g=;
        b=h5pZpKtKSN2IiyKV9NJIdajMagC8LFX6fwd6e1JPSooF/ovCTYdJ1Q2bJX2mVzrraG
         jht+j6yIGjk+H8nsx775QaKiK87foc4UjdKoKu7jZF+d1u9HGZ3Q7agIL/IUwZSTJ53j
         d5R6N0XOMI05qtA5jAzWv8c+zt94AYBmZ1e4JPnPtKaE2AtkBUrZ8OvMkcOa5F50/4Hv
         CFwtvGBkKsER/aMs92hIPZTE9LLD1hX0og1K8TSiVOwal6VXGwAumG3dZacB0bJlIppw
         TtN+BpmElzMBu9to+OrGaDq+70Ek0deo9v8X8wRZLqsLXg1giDANQgLq0Yr+PXTp/3Wj
         PILg==
X-Gm-Message-State: AOAM531l0JhBlHD/bIM0kLUths/GdYMCXc+VDvr02faYalIn5u0MY35C
        6014po4FQVGDMUM2aVhl23r7nuuWHI0=
X-Google-Smtp-Source: ABdhPJzR1UWrPvkV+1Yyw5Oc3zNXyAO6wbTqn2mc+UnRbgDWgB2I0mWJZ9tNSNGTIjqJRhMQ2sUqbA==
X-Received: by 2002:adf:edcb:: with SMTP id v11mr21784608wro.118.1634500429315;
        Sun, 17 Oct 2021 12:53:49 -0700 (PDT)
Received: from [10.168.10.11] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id j15sm10650661wrr.8.2021.10.17.12.53.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 17 Oct 2021 12:53:49 -0700 (PDT)
Subject: Re: [PATCH 2/2] man-pages.7: Update non-breaking space advice.
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     linux-man@vger.kernel.org
References: <20210731034458.6s76okhgjxw42mpx@localhost.localdomain>
 <e097bf4a-7188-e810-7d3b-e4d1469397d3@gmail.com>
 <20210801101221.poigrttumltcdenl@localhost.localdomain>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <5e11d17e-d3d0-8b88-dd1b-209a4b136e51@gmail.com>
Date:   Sun, 17 Oct 2021 21:53:47 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20210801101221.poigrttumltcdenl@localhost.localdomain>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hey, Branden!

On 8/1/21 12:12 PM, G. Branden Robinson wrote:
> Hi, Alex!
> 
> At 2021-07-31T13:42:08+0200, Alejandro Colomar (man-pages) wrote:
>> On 7/31/21 5:45 AM, G. Branden Robinson wrote:
>>> * Advise usage of \~ escape instead of \SPACE; the former, a groff
>>>     extension from circa 1990, has been supported by Heirloom
>>>     Doctools troff since 2005 and by mandoc since 2019.  The
>>>     advantage is that \~ is an _adjustable_ non-breaking space, so it
>>>     will typeset non-jarringly both in .EX/.EE examples when filling
>>>     is off, and in normal running text (which is filled).
>>
>> Thanks for the patch!
> 
> You're welcome!  I've found no use cases for "\ " in man pages.  \~ is
> almost always what is desired.
> 
>>> * Say "non-breaking" instead of "nonbreaking".  These are the only
>>>     occurrences of either in the man-pages tree, except in
>>>     Changes.old, which uses "non-breaking".
>>
>> I'll do as usual and copy here an extract from man-pages(7) :) :
>>
>>     Hyphenation with multi, non, pre, re, sub, and so on
> 
> Ahhh, ha.  Yes.  This is an impedance mismatch between the house styles
> of the Linux man-pages and groff, at least as applied specifically to
> the word "non-?breaking", which sees frequent use in discussions of
> typesetting. >
>> BTW, this one also doesn't apply.  I think it is probably your mailer.
>> Can you use git-send-email(1)?
> 
> Apparently not.  :(
> 
> $ git send-email
> git: 'send-email' is not a git command. See 'git --help'.
> $ git --help -a | grep send
>     imap-send            Send a collection of patches from stdin to an IMAP folder
>     send-email           Send a collection of patches as emails
>     send-pack            Push objects over Git protocol to another repository
> 
> I did a web search and did not find any reports that NeoMutt does
> violence to Git-formatted patches.  Perhaps it is GMail's fault?  (I use
> its SMPTS server to send mail.)  Does someone on this list have
> experience with this MUA and/or provider?  Is there a trick?
> 
> This would explain my Michael despaired of my patch submissions even
> when I kept their scopes under control.
> 
> Regards,
> Branden
> 

Ping.

Ahha! I found the original patch thread :)

Cheers,

Alex

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
