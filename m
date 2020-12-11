Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E4D642D7E11
	for <lists+linux-man@lfdr.de>; Fri, 11 Dec 2020 19:28:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2390274AbgLKS1W (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 11 Dec 2020 13:27:22 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53074 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2404131AbgLKS1R (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 11 Dec 2020 13:27:17 -0500
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2A977C0613CF
        for <linux-man@vger.kernel.org>; Fri, 11 Dec 2020 10:26:37 -0800 (PST)
Received: by mail-wm1-x333.google.com with SMTP id q75so9480483wme.2
        for <linux-man@vger.kernel.org>; Fri, 11 Dec 2020 10:26:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:from:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=z0ppSAfCXSg1eHCJh9Tte9jPhK1ADSmW/frp9SOsj6E=;
        b=YV/RO7Q9UUYHtJeB7grTs9yafQoeLhpWSPCPhPNvwX+85pCjqyqVBPUNgPJoJj6YEG
         rZI7PBKBpwx1lebJb0XXUuBDESk2760YAblPJrH50N9LTNgqYP1hLm9acJvLN2YiGRh7
         NjYPEAJaii34SM2sR/PZb6bBUkKMCksBE9bZP+91K9Rquxke6lTGVpE704hnzJFDp2H3
         CztrY3Nw6TyjhVF8apxlEHqc4iq2WR9u0l+CXswva+MZeSshwF41/WRoBvUSSdELBfc+
         1yRfoZlFJ7T409GRUFGJSqKhWP076kw25IQ8w16DbjqxxclDYwtQVBTO5Uzmx8waTLXj
         3dvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:from:to:cc:references:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=z0ppSAfCXSg1eHCJh9Tte9jPhK1ADSmW/frp9SOsj6E=;
        b=JKA26jc6l06bNJyl/grqi0ho5lMOFrhx7M7t3BoMvLLzwAW1biKA1IXasTSlwG1giz
         3luxbNF1I81Y3NUr2+X2tYCk+QCg/zGysvtf7DZ6w4jfwk+npQ1mZJBFo3k7PGHogDce
         9DrRR5Gz9xRJcv7F5d75x5W1bxYaIxY8QOEpWq1iJwEfWG9y9f/stsiMfWRg/vR1hENk
         rQkhVADqul1jIQhVlL62FTLIzlZ49NVCsiptxsaRBTjY82IrGQNMhoQ/mIM5snZ2HgRl
         gVJgCT7rqe8dWfiThhx7g/zJT0Jv+ALtWd+eNEKtjAwR4dHIQKmHSi1kSTceYCgjJlXC
         dByw==
X-Gm-Message-State: AOAM532tlmXBMaw5i+TILAwR/SJC7Ccl18loyPjr1WG5BS0kUJ35KBA/
        KtzuLr5lXNAPSm19MZY567o=
X-Google-Smtp-Source: ABdhPJwwmvkQrLXUXPSVdUYpskQ9leK9PTKlPiVkHA4XUgJaEsZYG8dqYPEe+wcL69jINo24iEJwdg==
X-Received: by 2002:a05:600c:20f:: with SMTP id 15mr14996963wmi.36.1607711195910;
        Fri, 11 Dec 2020 10:26:35 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id q17sm15583931wrr.53.2020.12.11.10.26.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Dec 2020 10:26:35 -0800 (PST)
Subject: RFC v4: Re: cacheflush.2
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        Heinrich Schuchardt <xypron.glpk@gmx.de>,
        Dave Martin <Dave.Martin@arm.com>
Cc:     linux-man@vger.kernel.org, gcc@gcc.gnu.org,
        cfe-users@lists.llvm.org
References: <794cf0d1-d528-4b5a-3ce0-b1b5f588dc6d@gmx.de>
 <ca265930-00d7-44f5-b2dd-535a5cf0310a@gmail.com>
 <20201210181726.GT6882@arm.com> <747d56e0-c102-ab40-add4-530a48a43a4d@gmx.de>
 <f1f335e3-2459-3cfd-11c0-b105e7a5b734@gmail.com>
 <e9d397d4-9eb4-bd49-0001-36fb45d0778a@gmail.com>
 <de79c8a0-2839-da8e-a4cf-380fff30852d@gmail.com>
 <7284157d-bc09-e5c5-b238-87d7444e682a@gmail.com>
Message-ID: <e2424619-2a5a-a44a-2dc0-a16310725250@gmail.com>
Date:   Fri, 11 Dec 2020 19:26:34 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.1
MIME-Version: 1.0
In-Reply-To: <7284157d-bc09-e5c5-b238-87d7444e682a@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

I forgot to add a junk to the text.

v4:

NOTES
       Unless  you  need  the finer grained control that this system
       call provides, you probably want  to  use  the  GCC  built-in
       function __builtin___clear_cache(), which provides a portable
       interface across platforms supported by  GCC  and  compatible
       compilers:

//Maybe 'and compatible compilers' is redundant and I should remove it?

           void __builtin___clear_cache(void *begin, void *end);

       On  platforms  that  don't require instruction cache flushes,
       __builtin___clear_cache() has no effect.

       Note: On some GCC-compatible compilers, such  as  clang,  the
       prototype for this function uses char * instead of void *.


On 12/11/20 7:22 PM, Alejandro Colomar (man-pages) wrote:
> Hi all,
> 
> Please review this text:
> 
> [
> NOTES
>        Unless  you  need  the finer grained control that this system
>        call provides, you probably want  to  use  the  GCC  built-in
>        function  __builtin___clear_cache(),  which  provides  a more
>        portable interface:
> 
>            void __builtin___clear_cache(void *begin, void *end);
> 
>        On platforms that don't require  instruction  cache  flushes,
>        __builtin___clear_cache() has no effect.
> 
>        Note:  On  some  GCC-compatible compilers, such as clang, the
>        prototype for this function uses char * instead of void *.
> ]
> 
> Thanks,
> 
> Alex
> 
> On 12/11/20 7:02 PM, Alejandro Colomar (man-pages) wrote:
>> Hi Michael,
>>
>> On 12/11/20 9:15 AM, Michael Kerrisk (man-pages) wrote:
>>> i Alex,
>>>
>>> On 12/10/20 9:56 PM, Alejandro Colomar (man-pages) wrote:
>>>> Hi all,
>>>>
>>>> v2:
>>>>
>>>> [
>>>> NOTES
>>>>        Unless  you  need  the finer grained control that this system
>>>>        call provides, you probably want  to  use  the  GCC  built-in
>>>>        function  __builtin___clear_cache(),  which  provides  a more
>>>>        portable interface:
>>>>
>>>>            void __builtin___clear_cache(void *begin, void *end);
>>>> ]
>>>
>>> This seems a reasonable text to me, but I think it would be helpful
>>> to say a little more precisely what kind of portability we are
>>> talking about here.
>> Sure.
>>
>>>
>>> Greater ortability across Linux architectures? Greater portability
>>> across platforms supported by GCC (including non-Linux) platforms?
>>> Something else?
>>
>> '... which provides a portable interface across platforms supported by
>> GCC:' sounds good.
>>
>> Maybe GCC devs have something more to add.
> 
>>
>> Thanks,
>>
>> Alex
>>
>>>
>>> Thanks,
>>>
>>> Michael
>>>
>>>
>>
> 

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es
