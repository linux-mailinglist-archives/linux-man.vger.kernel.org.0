Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E340D2E3584
	for <lists+linux-man@lfdr.de>; Mon, 28 Dec 2020 10:31:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726612AbgL1Jbq (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 28 Dec 2020 04:31:46 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43740 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726509AbgL1Jbq (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 28 Dec 2020 04:31:46 -0500
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E45DCC061794
        for <linux-man@vger.kernel.org>; Mon, 28 Dec 2020 01:31:05 -0800 (PST)
Received: by mail-wr1-x432.google.com with SMTP id r3so10801151wrt.2
        for <linux-man@vger.kernel.org>; Mon, 28 Dec 2020 01:31:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:from:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=pQXm7oUhR0TyKKGE0b0wg7poQTrWpTIv/x8rdkuZbYY=;
        b=HX1mic4bN/pxz21tX08kttKZKpouiE3d8qojN+UZU/KCY/ZtmeMg+C4bM/Rp85oyNe
         p2D63sqcpzoEwFqHDCWnuSSpPCwfymCaEGbiwTC4+xShWNqVpP9xtbvx6ZG2Kzg3fFl5
         NH5QEQV9AZPa+3RbW6xEVH4l7hNsT+6nCDK00DTPT9IL5WldvPl08ApRTkVCOBozuvFK
         SDli0661t8Dhm1xvEeexteOnGlPrn9z6eZKudgBofWRm6hcK/pqzqA0oxrzdJafnfdlj
         faoLgmUcLt7TmdWYZRBIkYLBpUG4QqL+OALtv2PzWA5aiyyzqYiOzU7l9ZhYg6e0y7PK
         HgHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:from:to:cc:references:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=pQXm7oUhR0TyKKGE0b0wg7poQTrWpTIv/x8rdkuZbYY=;
        b=kMZXs/7J7XOoR7Jk+Hcq2SozoXjaQxw5IKsxQIkuG8CtqnHjy9HRnCWUtRqQMku5wU
         kS7OgySuTbAPDt++NsSmUU6tQc1+ydrO2MCJ0oTt6IvCvBlVt/3LmAPLuIOn0fboLdL4
         +sV4Hfdf8WyjhzvOjlOj+MSrhOuqFEdzdu20i4J1BE5k6InYJkkQhZ9Ig/Kyg9TuoaAS
         oVVc6/+UPfhhuX8WqsAFzMfGFEpgZA+yA9ZSuS4MvRVnyN0/dbEotOhJgdQDOKTHXdSe
         T0jfdap8wbmn6g6trQMEsnzlAV/k5vELklYdzInKZST8g3G4ZwXsAhPMuj16L6mvreZx
         jtag==
X-Gm-Message-State: AOAM531YAIVT0MKwIz58uEriabkgzQUjk9Pti7ijNoOUPEzuUvav1G9a
        Dpv+UGDCqDQNZhzUd10jqAyLrYUfDFI=
X-Google-Smtp-Source: ABdhPJzyhtk1MoNeECVWmSdfzjBOQuepBXO0dMg6/CRDzxe59/NcCEBQmDpNz7M/NCZR/FIUwkbRLw==
X-Received: by 2002:a5d:6a4c:: with SMTP id t12mr43724237wrw.249.1609147864708;
        Mon, 28 Dec 2020 01:31:04 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id c16sm34272004wrx.51.2020.12.28.01.31.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Dec 2020 01:31:04 -0800 (PST)
Subject: Re: [PATCH] Various pages: tfix
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man <linux-man@vger.kernel.org>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
References: <20201223190202.12758-1-alx.manpages@gmail.com>
 <CAKgNAkhSoriQZdagMHMz5QJF59LbmQLddvNCWOGJhDHc5jXxdg@mail.gmail.com>
 <45faf85c-165d-c6a9-9287-6b9601bc96ee@gmail.com>
Message-ID: <d7588c43-48f8-3d1e-91e7-0862479964b5@gmail.com>
Date:   Mon, 28 Dec 2020 10:31:03 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.1
MIME-Version: 1.0
In-Reply-To: <45faf85c-165d-c6a9-9287-6b9601bc96ee@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Although, well, now I think we could consider /* Send the signal. */ to
be a full sentence, so... I'll let it be :)

Cheers,

Alex

On 12/28/20 10:20 AM, Alejandro Colomar (man-pages) wrote:
> Hi Michael and Branden!
> 
> I agree with having periods in full sentences in comments.
> 
> I've been looking at the 3 commits, and I'm seeing some inconsistencies.
>  I'll have a look at it, and maybe send you a patch (v2).  See for
> example the changes in pidfd_send_signal.2:
> 
> -    /* Send the signal */
> +    /* Send the signal. */
> 
> Thanks,
> 
> Alex
> 
> On 12/27/20 12:54 PM, Michael Kerrisk (man-pages) wrote:
>> Hi Alex,
>>
>> On Wed, 23 Dec 2020 at 20:03, Alejandro Colomar <alx.manpages@gmail.com> wrote:
>>>
>>> Remove "." at the end of sentence fragments/short single sentences
>>> in comments.  See: c2e81ff9641a7743b1f47cbf4fcf899c391df77f.
>>>
>>> $ sed -i '/[^.]\. \*\//s%\. \*/% */%' man?/*
>>>
>>> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
>>
>> There is probably still a bit of inconsistency in the pages, But, your
>> change removes some periods what really should be present.
>>
>> For example:
>>
>>> --- a/man2/clone.2
>>> +++ b/man2/clone.2
>>> @@ -1843,7 +1843,7 @@ childFunc(void *arg)
>>>
>>>      /* Keep the namespace open for a while, by sleeping.
>>>         This allows some experimentation\-\-for example, another
>>> -       process might join the namespace. */
>>> +       process might join the namespace */
>>>
>>>      sleep(200);
>>>
>>> @@ -1887,7 +1887,7 @@ main(int argc, char *argv[])
>>>      sleep(1);           /* Give child time to change its hostname */
>>>
>>>      /* Display hostname in parent\(aqs UTS namespace. This will be
>>> -       different from hostname in child\(aqs UTS namespace. */
>>> +       different from hostname in child\(aqs UTS namespace */
>>
>> Here are a couple of cases where the comment contains two sentences,
>> but the change removes the period from the second sentence. That's
>> definitely not right.
>>
>> My general philosophy is complete sentences in comments should be
>> terminated by periods. In sentence fragments, especially for tag
>> comments (i.e., comment on same line as the code), I'm inclined to
>> omit the period. And there are doubtless inconsistencies in existing
>> pages (and grey areas). Commit c2e81ff964 was intended to clean up
>> some of the most obvious cases.
>>
>> I've made a few more commits now to bring more consistency. (I think
>> Branden's suggestion that complete sentences should generally always
>> be punctuated is true.) And I've added some notes to man-pages(7). See
>> commits f18f9c409...46b20ca1b
>>
>> Thanks,
>>
>> Michael
>>
> 

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
