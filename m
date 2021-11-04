Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 939C8445AF6
	for <lists+linux-man@lfdr.de>; Thu,  4 Nov 2021 21:10:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231860AbhKDUMy (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 4 Nov 2021 16:12:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37234 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231857AbhKDUMy (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 4 Nov 2021 16:12:54 -0400
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AD9F8C061714
        for <linux-man@vger.kernel.org>; Thu,  4 Nov 2021 13:10:15 -0700 (PDT)
Received: by mail-wm1-x32a.google.com with SMTP id o29so1639566wms.2
        for <linux-man@vger.kernel.org>; Thu, 04 Nov 2021 13:10:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=HvvyZueH80bdmhexrzhLohD3pEFefkVzUrDL680asJQ=;
        b=ZD6Cs78aOT5x2ijg9alQOmaVno+d+QkOs6c+XMYCcSjOrE3zN8nJaBizWXlWAoY6ZS
         loAsu9acA0fU9xpMLbQCnoFf0EHwfI4PIvRymskb7ucO1MED1ZvLIqRnd1OxeyHlX8DK
         0qizEai4i4fB1w1AwywWqVa9nHrxgbuWtrFx6t4/WQDKLP9P/NLCh7TJTgjDah5tEGvM
         s4VyFu6Zxb3bcQsOFvTipBTdB+0Xy3waor/pkR647HR7t5PdI+xlLeaUI0l0pqd80iXg
         9SBz+3QyuYnqS7DAPWevFnI64EE19APl/9wBdUY0gG7oRvVVJPXd57oZdKO89bWzD7po
         XIlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=HvvyZueH80bdmhexrzhLohD3pEFefkVzUrDL680asJQ=;
        b=Iuvg6IswcQReFu/wE0riA0wfucqCWSYO17rkfhEDG8R28LpzDQNJePWmOw6Yj5oTW8
         tapjnY0RFLFZlTvtoMH97GdFeJnSu1tGNIGZ+RAiGIH88+WeMDMPiNp+ziY+9T9CTwiS
         kVot0bpOmnMT4nCvK4oi1/KSUpDyjM49RnRAEs5uSCN6pbh5+Gaaqh69hNaJkyy7WKJS
         SdeB6reZqMVfEIUy44GW1E+6ZWb++sd6Lo3lqxCy8XpCoUzHv2MIruswu01Fc2bxxWAL
         dgaqP8btNDb0/ox8qCXqRekTmT4nQeUqg43/+hmj+bKbYwjVGs8aA6SRsT3Av0kY8QEP
         qMiQ==
X-Gm-Message-State: AOAM532gPNFNz3z7YKcqfaF296LRkqcwq5iAIZFGHM8fiuLrgon4IlQA
        dfjPHYCNt2WjTqKWev8czwU=
X-Google-Smtp-Source: ABdhPJzjX73O/qNI0/l7ZX0L4bnTFmP5HvkBf4toPuEn246h7r35RWfLGtuudnwo0uNRULMVKBqF1w==
X-Received: by 2002:a05:600c:190b:: with SMTP id j11mr8007034wmq.112.1636056614326;
        Thu, 04 Nov 2021 13:10:14 -0700 (PDT)
Received: from [10.168.10.11] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id b10sm6309714wrt.36.2021.11.04.13.10.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Nov 2021 13:10:13 -0700 (PDT)
Message-ID: <e3dbb664-6745-e7d2-e414-268cea320df3@gmail.com>
Date:   Thu, 4 Nov 2021 21:10:12 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.1
Subject: Re: [PATCH] quotactl.2: Remove kernel version for Q_XQUOTARM ioctl
Content-Language: en-US
To:     Jan Kara <jack@suse.cz>,
        "xuyang2018.jy@fujitsu.com" <xuyang2018.jy@fujitsu.com>
Cc:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>,
        Eugene Syromyatnikov <evgsyr@gmail.com>
References: <1634694386-2137-1-git-send-email-xuyang2018.jy@fujitsu.com>
 <617F6138.5040601@fujitsu.com> <61825419.1080502@fujitsu.com>
 <6182568B.30705@fujitsu.com> <3dfbc2c2-72d9-89f2-1c72-e54ab2f610e7@gmail.com>
 <6183302D.8080102@fujitsu.com> <20211104105308.GB10060@quack2.suse.cz>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
In-Reply-To: <20211104105308.GB10060@quack2.suse.cz>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Jan and Yang,

On 11/4/21 11:53, Jan Kara wrote:
> On Thu 04-11-21 00:58:02, xuyang2018.jy@fujitsu.com wrote:
>>>>>>> This patch[1] is designed to fix bug for Q_XQUOTARM ioctl not for
>>>>>>> introduced.
>>>>>>> So remove it.
>>>>>>>
>>>>>>> [1]https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=9da93f9b7c
>>>>>>>
>>>>>>>
>>>>>>> Signed-off-by: Yang Xu<xuyang2018.jy@fujitsu.com>
>>>>>>> ---
>>>>>>> man2/quotactl.2 | 3 +--
>>>>>>> 1 file changed, 1 insertion(+), 2 deletions(-)
>>>>>>>
>>>>>>> diff --git a/man2/quotactl.2 b/man2/quotactl.2
>>>>>>> index d22d8c584..46f77a8b1 100644
>>>>>>> --- a/man2/quotactl.2
>>>>>>> +++ b/man2/quotactl.2
>>>>>>> @@ -651,8 +651,7 @@ The
>>>>>>> .I id
>>>>>>> argument is ignored.
>>>>>>> .TP
>>>>>>> -.B Q_XQUOTARM " (since Linux 3.16)"
>>>>>>> -.\" 9da93f9b7cdf8ab28da6b364cdc1fafc8670b4dc

I applied the patch.

>>>
>>> Okay. Since you added that line (man-pages commit ae848b1d80), I'm fine
>>> removing it. Was it a mistake? The commit message of that commit is a
>>> bit unrelated to Q_XQUOTARM, isn't it?
>> Yes.
> 
> Well, that commit fixed Q_XQUOTARM quotactl. Previously it was supported
> but it was buggy and not actually doing the desired functionality in some
> cases. So the description kind of make sense but it is not quite accurate -
> maybe we should just move the note to NOTES section?

I think we better add a BUGS section.  Don't you?
Unless you think it isn't important enough.  How likely is it that 
Q_XQUOTARM was used in kernels before 3.16 and a BUGS section will help 
fix the bug?  And how likely is it that someone will use it in the 
future for kernels before 3.16?  How important/dangerous was the bug?

Maybe add something simpler such as "(buggy until Linux 3.16)" so that 
no one uses it in older kernels but doesn't use as much space as a new 
BUGS section?

> 
>>> Maybe a better fix would be to replace the kernel version and the commit
>>> hash when it was really added?
>> Yes, but I can't find this commit hash and it seems been supported since
>> long time ago.
> 
> Yeah, AFAIK Q_XQUOTARM is there in principle since XFS was introduced in
> the linux kernel so around 2001. No point of mentioning that in the manpage
> IMO.
> 
> 								Honza
> 

Thanks,

Alex


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
