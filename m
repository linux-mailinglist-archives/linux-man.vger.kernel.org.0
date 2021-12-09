Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0688C46E026
	for <lists+linux-man@lfdr.de>; Thu,  9 Dec 2021 02:18:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229890AbhLIBVn (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 8 Dec 2021 20:21:43 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50100 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232216AbhLIBVn (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 8 Dec 2021 20:21:43 -0500
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A7AC3C061746
        for <linux-man@vger.kernel.org>; Wed,  8 Dec 2021 17:18:10 -0800 (PST)
Received: by mail-wr1-x42d.google.com with SMTP id c4so7061291wrd.9
        for <linux-man@vger.kernel.org>; Wed, 08 Dec 2021 17:18:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=gBebM8//Y/l74Fw6qYyB0P0p1FdWoOi+SPp4cC/M558=;
        b=TalpLzj5hl4tLTwgpHa5HBX8C/BuK3XKblh6r9iSgZSZ0g00kVaQ+rpWNBOfPLemGq
         /W3JDpYEZpc0zedSELhXx/73cQ5BhnfmL1JlHuCLBB6Fp0+knTTqqwNjjin7dADpUlkQ
         pk+jcMdzyWYs1RjAb0EZKuaM4gMRYRjoWwZXlwIop8AaJQNZlgWW4FJU6vlAqjF4GhZ9
         /++gFny1oNElnzy+NGBLWWFDaZMwmk8/JC0c/E7i0TTfjUd1i5vx8hWYP3IeB5AvUj54
         lmLNMUsZTCM5dhPUavWnlfwreO1oBXYDxX/InUFI0ygn8L/rNetaBpeljWh8PPmoWGH9
         TEgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=gBebM8//Y/l74Fw6qYyB0P0p1FdWoOi+SPp4cC/M558=;
        b=xc6rqMnfr5aRExsG+mV+4zTa1fY+VvaoRVwqCJGV90tSMQ13H/+H/3WTYtOq0HmmCK
         FknZ2oNIKoSw+aZ5mE/3MRxXkUmecuGy+XqBKFo3UB4cQpV0wKT5+1TegWHt/fsTh1qh
         MVafULlLz8Y8LP+ZCVj7d/tTvyl7atJxcQ5TIxcJ7xt8tmr55I+9ELAnVG8vSVWrwa6M
         k9Ic5sp4dWR6OWH8wP3fXtswh3YswtpatwCqzffSiwBY7kExzR24v2GZAqinyOCCKnXx
         P7yY/09ixmpR6NIfJj/I4AlXxUFB2Y4WFQ3j9pkYZDirJxpthlp0Fo5KD3syLplDOmgt
         vABQ==
X-Gm-Message-State: AOAM530EbdkrrJGFdiWBYVd5YNuOMs52URmhO8uzDVmn1yzVo4HsatCM
        MqytW2nTBv+AREZcFAc+pas=
X-Google-Smtp-Source: ABdhPJzFDr/2jHYhdTYJyuM3fcDTmrMgXKbwtZiKtuYqOM862n5XOqMh/aaGgNz1T87YPXIZx2epEA==
X-Received: by 2002:adf:d1e2:: with SMTP id g2mr2736679wrd.362.1639012689231;
        Wed, 08 Dec 2021 17:18:09 -0800 (PST)
Received: from [10.8.0.22] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id r8sm5257338wrz.43.2021.12.08.17.18.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Dec 2021 17:18:08 -0800 (PST)
Message-ID: <f45091d0-cb0a-85f9-71a9-20a8f01cd17e@gmail.com>
Date:   Thu, 9 Dec 2021 02:18:06 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.2
Subject: Re: [PATCH] kcmp.2: still depends on kconfig
Content-Language: en-US
To:     Jann Horn <jannh@google.com>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>, linux-man@vger.kernel.org
References: <20211208234433.2392940-1-jannh@google.com>
 <15d7e025-255d-798b-81a1-1229b5ae16e0@gmail.com>
 <CAG48ez2dxykh3v1Eg540OH1iZRRi74gbtLeRPTc_45=Fiaz2ww@mail.gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
In-Reply-To: <CAG48ez2dxykh3v1Eg540OH1iZRRi74gbtLeRPTc_45=Fiaz2ww@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 12/9/21 02:12, Jann Horn wrote:
>> Thanks!  Patch applied.
> 
> Oh, that was quick! Thanks.

Simple and very well explained patches get applied fast :)

> 
>> I slightly modified the patch for the following reason:
>>
>> man-pages(7):
>>      Use semantic newlines
>>          In the source of a manual page, new sentences  should  be
>>          started  on new lines, and long sentences should be split
>>          into lines at clause breaks (commas, semicolons,  colons,
>>          and  so on).  This convention, sometimes known as "seman‐
>>          tic newlines", makes it  easier  to  see  the  effect  of
>>          patches,  which  often operate at the level of individual
>>          sentences or sentence clauses.

BTW, now I remember I should apply some minor patch to that paragraph 
(s/sentence clauses/clauses/).

> 
> Ah, thanks for the pointer. I'll try to remember it for next time...
> 

Thanks!


Cheers,
Alex


-- 
Alejandro Colomar
Linux man-pages maintainer; https://www.kernel.org/doc/man-pages/
