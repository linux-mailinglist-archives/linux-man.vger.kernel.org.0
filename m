Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id ADD42274A25
	for <lists+linux-man@lfdr.de>; Tue, 22 Sep 2020 22:32:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726614AbgIVUcY (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 22 Sep 2020 16:32:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37112 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726567AbgIVUcY (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 22 Sep 2020 16:32:24 -0400
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com [IPv6:2a00:1450:4864:20::343])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 45BE4C0613D0
        for <linux-man@vger.kernel.org>; Tue, 22 Sep 2020 13:32:24 -0700 (PDT)
Received: by mail-wm1-x343.google.com with SMTP id v12so2877003wmh.3
        for <linux-man@vger.kernel.org>; Tue, 22 Sep 2020 13:32:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=XdNlCyDdWBAQCByBcyx/ZQUHpnmqCkcXeqYLHJegLyE=;
        b=anQRXPJ5bLG4/0aEv/OLxPPHW30LQU3yRWG0v/fd5Nbgeb5NR8pSAd5of0vCVCmlLn
         Edg9Qz9XAke5HlXW2v5X7nDuJm1nx5Gr8ZLBiPZwtRyivXASJ/B90lzvUEIfLleROjwE
         P9Of8zqRSjYN8ezF/k5CC4nNZTp2RbH58qX/bqRuqDUheq4JcUMWq8jTpyn/2I8P8wrD
         ERr1y+EeF5ul1XU55z4N7j64onbLesJZ0C30TuoNTvJmbDLtjk1J7iPMS45MY0WLuACO
         Ei1+Y8TJKRr21sfIpvPzKSXzU3gOjfU31qPyzL1oh3F3Wg61TrP3eFQVDVBkmHuAQs9g
         OLCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=XdNlCyDdWBAQCByBcyx/ZQUHpnmqCkcXeqYLHJegLyE=;
        b=Dxx0RSAEZW4wJJqyMIm5rq13UJKLBIN3l3tBl7IN5xldf7DJQrDSESs4fgpbAEaIWK
         cXCFkeD98zy/fqtPSz49skMGRmMjOOi0yTatYsQcXOiDPtiOASwayWNT+yMF8t+GS/x3
         iqtCFPgKgnJL0pEgst9mduYJaErbl4MWTr/wEMnWW4HpdSDDaTIlHrEWfTRiVTQQhb2U
         r808eMd/un7vcYc15/jAzdbd9nxkq90prRWWKaCSkY8cFkR0drAUM9tZlcSu6OSoOK9T
         zcuc5ofXO/EV3YcOEojR9ae9AGPAe/YhmSxpsCZkQXYkFDtxX6azm9d14WV4sE2Dk5Pn
         K+aQ==
X-Gm-Message-State: AOAM532cRSxqk20ECegtWTxbIlHHTY5JPxxR7Act48aY39EDKY8+3H/S
        wG6115OnwQ10zSj9wfxUMF2frXbYYjw=
X-Google-Smtp-Source: ABdhPJxGmebyJtbAR4qAOP4qucxSITW0PYCM0qcor3QuKsF9NsSvUqUg9kk9he78p8WQp4NjXlOxxQ==
X-Received: by 2002:a1c:f716:: with SMTP id v22mr2661822wmh.183.1600806742584;
        Tue, 22 Sep 2020 13:32:22 -0700 (PDT)
Received: from [192.168.1.143] ([170.253.60.68])
        by smtp.gmail.com with ESMTPSA id 9sm5515963wmf.7.2020.09.22.13.32.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Sep 2020 13:32:21 -0700 (PDT)
Subject: Re: [PATCH 1/2] system_data_types.7: Add 'fexcept_t'
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
References: <20200922153822.33728-1-colomar.6.4.3@gmail.com>
 <42f8c77e-27a5-651c-9768-fa08d11e5ba2@gmail.com>
 <3eccfa66-3711-df48-9beb-bfea87dfffae@gmail.com>
 <7d9f6b7b-8c52-c848-b2aa-f47abe249b6c@gmail.com>
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Message-ID: <a8fcbafb-34a1-aeea-eea7-e9202d8f8426@gmail.com>
Date:   Tue, 22 Sep 2020 22:32:21 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <7d9f6b7b-8c52-c848-b2aa-f47abe249b6c@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Actually, POSIX already ripped (part of) the description from the C 
standard:

 > Represents the floating-point status flags collectively,
 > including any status the implementation associates with the flags.

This part is in the C standard (and POSIX also has it).

 > A floating-point status flag is a system variable
 > whose value is set (but never cleared)
 > when a floating-point exception is raised,
 > which occurs as a side-effect of
 > exceptional floating-point arithmetic to provide auxiliary information.
 > A floating-point control mode is a system variable whose
 > value may be set by the user to affect
 > the subsequent behavior of floating-point arithmetic.

And this is from POSIX only.

How would you go about it?


 > Represents the floating-point status flags collectively,
 > including any status the implementation associates with the flags.
POSIX describes a
 > [s/A//] floating-point status flag [s/is/as] a system variable
 > whose value is set (but never cleared)
 > when a floating-point exception is raised,
 > which occurs as a side-effect of
 > exceptional floating-point arithmetic to provide auxiliary information.
According to POSIX,
 > [s/A/a/] floating-point control mode is a system variable whose
 > value may be set by the user to affect
 > the subsequent behavior of floating-point arithmetic.

Like this?

Thanks,

Alex

On 2020-09-22 22:14, Michael Kerrisk (man-pages) wrote:
> On 9/22/20 10:05 PM, Alejandro Colomar wrote:
>> Hi Michael,
>>
>> On 2020-09-22 21:57, Michael Kerrisk (man-pages) wrote:
>>   >
>>   > The previous sentence is rather hard to parse. What (other) part of
>>   > the sentence does "to provide auxiliary information" relate to.
>>   > I suggest splitting the sentence in two and rewording.
>>   >
>>   >
>>   >> +A floating-point control mode is a system variable whose
>>   >
>>   > You suddenly introduce "floating-point control mode" here.
>>   > How does it relate to the preceding sentences? It's not clear.
>>   >
>>   > Going off to look at the standard... I see that actually your
>>   > sentences come pretty much straight from the standard. So, first, I
>>   > think the standard could have been clearer here. Second, and more
>>   > important, (for copyright reasons) we are on shaky ground if we just
>>   > lift whole passages from the standard.  The text does really need to
>>   > be in your own words. Can you come up with something?>
>>   > Alternatively, I guess we could explicitly quote the standard.
>>   > Something like
>>   >
>>   >      POSIX describes this type as follows:
>>   >      .RS
>>   >      .PP
>>   >      [The text]
>>   >      .RE
>>
>> Yes.  A few patches ago I asked about that,
> 
> Sorry -- there was so much mail from you that I missed it!
> 
>> but you didn't answer to that specifically,
>> so I guessed that it was just fair use:
>>
>> https://lore.kernel.org/linux-man/6dc80c25-85bf-925c-49c2-f79865027c0f@gmail.com/T/#mbfdcaf4fe625b4ff7ea90dc7396005fda1283612
> 
> Thanks for the pointer.
> 
>> But I guess explicitly quoting POSIX would be easy and better,
>> as you proposed.
> 
> Yes, I think it''s simplest. (And a patch for 'fenv_t' may be
> a good idea here as well.)
> 
>> I never used that type, so I wouldn't dare to describe it in my own words.
> 
> Okay.
> 
> Thanks,
> 
> Michael
> 
> 
