Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 07B1C2B1908
	for <lists+linux-man@lfdr.de>; Fri, 13 Nov 2020 11:27:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726176AbgKMK1K (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 13 Nov 2020 05:27:10 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48540 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726275AbgKMK1J (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 13 Nov 2020 05:27:09 -0500
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 93B2EC0613D1
        for <linux-man@vger.kernel.org>; Fri, 13 Nov 2020 02:27:09 -0800 (PST)
Received: by mail-wr1-x431.google.com with SMTP id l1so9181533wrb.9
        for <linux-man@vger.kernel.org>; Fri, 13 Nov 2020 02:27:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=JJqmUtB/lW0eGAi0TEWOXA6/crSc9diIQFZjlRoGyHs=;
        b=PXpl7ENYV0YViuJEZw/m6H7pyhG6XmRdYoV/JZ+ukMn5Bju51YDRBqAPDvXKP/IAxJ
         oSRjaZ2rfCVsA9Z6ilsZ4ZA/Zn+1//raxYvy7lq+Rz/aDQShaIlVXplbgqpopIKY71xU
         IQibqax/b6e1ppLhR5PaXG1TXIjFuohymGofvqpBbXWm1ZzZPvnfDE2hto2fVd80pPmc
         SFTYgJyJ23mpNUkzG27AGnfOLNqTPTRsRM1K8342fCL3gh5+bw2wG/ulK9sLLOoMiYKu
         zOybK8i+aDDTYsd3GYS8EGsJbR96tt7465DtFEo0xDweRb7XNF958mV9u2cbf2Q+l32D
         VPow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=JJqmUtB/lW0eGAi0TEWOXA6/crSc9diIQFZjlRoGyHs=;
        b=Lsu/ubZO7Yu4e7y/5rBNqamEWxmueKfLPPXRFCkfkbvtSRIgc6oU45jjrmQKZsvVNA
         vxgR8/9iwg9tbpM/fzzC3VMKSvMLRDLaEfPG04CLHfQhRknnYV2PRbOp8MU1pPKqjfpD
         ZJjWo+76C+yj3c0dYRVlj+vD9HDzrg6DnZY4lSCh6/VIVbRpZWDbGwTfll0q1Ir3AIeA
         HhYBkjmdVKzy706U/FIwGGR0j7gOJDDTDMW2q+Dot57kiF9mFGLdJ2M1YFW/CJppdjfi
         +MxcJAY6g40kWSNa+rQk06pshfyEsYmjWLp6Yivw0R6kH79jcdgEMV5Or+imEXofjEPp
         HS7Q==
X-Gm-Message-State: AOAM532+FGscFftRLwXel8Amj18NTss8D+TvzoxaVsiV4ghN5h8XFyqy
        c5eCzQdSB1qLrQMx4bgJ6tiByoNM0Hg=
X-Google-Smtp-Source: ABdhPJwRJ9oAqZhAlqaQcqx5p0Ul4DHkDMXNTcyZe3zVMxcrIhk85gTT+OnjUSmQf9716K784+wWXQ==
X-Received: by 2002:a5d:438f:: with SMTP id i15mr2543375wrq.121.1605263228113;
        Fri, 13 Nov 2020 02:27:08 -0800 (PST)
Received: from ?IPv6:2001:a61:24b3:de01:7310:e730:497d:ea6a? ([2001:a61:24b3:de01:7310:e730:497d:ea6a])
        by smtp.gmail.com with ESMTPSA id l16sm10234654wrx.5.2020.11.13.02.27.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Nov 2020 02:27:07 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: .RS
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
References: <ae05d6bd-af93-9b49-25a6-e9c69ae402ec@gmail.com>
 <20201111150950.u7lf3xeulydbd2vr@localhost.localdomain>
 <c6919fec-4a95-888d-93fd-ecb254ec2377@gmail.com>
 <20201112070915.ejttfz3lu3sphkkp@localhost.localdomain>
 <1ae93b8f-c6e2-f11d-0844-a8cf702f933b@gmail.com>
 <60a7fa20-d41e-12d9-a81e-558512a74f0c@gmail.com>
 <ab209b21-a93e-fd7c-e447-c8ff507cb062@gmail.com>
 <a1705306-0d38-522a-e903-5e63aafdb4eb@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <9197f3ab-582f-7f4a-5e03-afdf7c10db99@gmail.com>
Date:   Fri, 13 Nov 2020 11:27:04 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.1
MIME-Version: 1.0
In-Reply-To: <a1705306-0d38-522a-e903-5e63aafdb4eb@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi ALex,

On 11/13/20 11:15 AM, Alejandro Colomar wrote:
> 
> Hi Michael,
> 
> On 11/13/20 9:52 AM, Michael Kerrisk (man-pages) wrote:
> [...]
>>> Do you know why is that?
>>
>> Hmmm -- I don't know. I was going to ask, doesn't s/>RS 4/.RS +4n/
>> fix the problem? But I see that it does not.
> 
> No; I tried many things, but I didn't find a solution.
> So, we'll have to keep using .in, right?

It looks that way to me.

>> By the way, your comments (\") actually cause the rendered
>> output to change, as far as I can see! In particular,
>> the \" on the final .RE leads to some strangeness:
>>
>> [[
>> .IP * 2
>> Lorem ipsum dolor sit amet, consectetur adipiscing elit,
>> sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
>> Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris
>> nisi ut aliquip ex ea commodo consequat.
>> .\""""""""""""""""""""""""""""""""""""""""""
>> .IP             \" Indent is 2n after this
>> .in +4n         \" Indent is 6n after this
>> .EX
>> I am indented 6n from normal paragraphs.
>> .EE
>> .in             \" Return to normal
>> .\"""""""""""""""""""""""""""""""""""""""""""
>> .IP *
>> Augue interdum velit euismod in pellentesque.
>> Tristique senectus et netus et malesuada fames ac turpis egestas.
>> Gravida arcu ac tortor dignissim convallis.
>> .\"""""""""""""""""""""""""""""""""""""""""""
>> .IP             \" Indent is 2n after this
>> .RS 4
>> .EX
>> I am indented 4n from normal paragraphs!!!
>> .EE
>> .RE             \" nom
>> .\"""""""""""""""""""""""""""""""""""""""""""
>> .PP
>> Augue interdum velit euismod in pellentesque.
>> ]]
>>
>> Gives:
>>
>> [[
>>        * Lorem  ipsum dolor sit amet, consectetur adipiscing elit, sed do
>>          eiusmod tempor incididunt ut labore et dolore magna aliqua.   Ut
>>          enim  ad minim veniam, quis nostrud exercitation ullamco laboris
>>          nisi ut aliquip ex ea commodo consequat.
>>
>>              I am indented 6n from normal paragraphs.
>>
>>        * Augue interdum velit euismod in pellentesque.  Tristique  senec‐
>>          tus et netus et malesuada fames ac turpis egestas.  Gravida arcu
>>          ac tortor dignissim convallis.
>>
>>            I am indented 4n from normal paragraphs!!!
>>
>> Augue interdum velit euismod in pellentesque.
>> ]]
>>
>> No indent at all on the final line!
> 
> Hmm that's weird.  I added the comments in the email, so I didn't test them.

Branden could not reproduce, and now I can't either. So I must have
messed up. Ignore my comments please.

Thanks,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
