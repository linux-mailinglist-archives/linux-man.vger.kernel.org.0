Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5AA5B43118D
	for <lists+linux-man@lfdr.de>; Mon, 18 Oct 2021 09:46:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230458AbhJRHso (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 18 Oct 2021 03:48:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39574 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229847AbhJRHsn (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 18 Oct 2021 03:48:43 -0400
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1A52DC06161C
        for <linux-man@vger.kernel.org>; Mon, 18 Oct 2021 00:46:33 -0700 (PDT)
Received: by mail-wr1-x433.google.com with SMTP id o20so39685545wro.3
        for <linux-man@vger.kernel.org>; Mon, 18 Oct 2021 00:46:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:from:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=rUmOQOcHcsx6MU0bBcebxbhIb6mFu/lfOUuzNsKXEQg=;
        b=n31m8au1bN3dm0UuDIySdwJ+vgiXe8ExXMcCULBoWHZ9tvuchQpL1IMEqGTnEAAK44
         o59ZLTdZAfdsgvAqB0Y+4y/1vti53S8pXSU/JuPoypzVrjDomGQSTpPYDRd7MTWNkQDq
         RNDCk1jO6ZLssJY+DQPMEoYE17lhW1pDYl274Tiwk+R4zUwrgB7gGL8HYJN156tQTfZV
         RO6neo6N7M6jsSQ3RLwHeMlfb4fO2GRtIttFdP0ksK027piBgAb4smwWbfPShVxWAFw0
         XRqSlLZVv6Vy0cQaJWQmHy3b3HcZOAAT8T30ruS4CT/yapj4xatQ7d4MVkzGjpauYvOB
         Niow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:from:to:cc:references:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=rUmOQOcHcsx6MU0bBcebxbhIb6mFu/lfOUuzNsKXEQg=;
        b=eXrc9+iS7BS3EeanoDBv+jtgvU7I4jglkfAHxuYlmbNB3fWGnnIeZqHqQd0qqoQ25k
         +67LgSbVtaBP3vMLuCoH01kpvV+d3m5RXMSgLxRU++c1HqzX38C1aH0j9YO3yHb3tUU8
         6JmVBQMijNRVg678DOs1hgHo4RKC/N0OwrekCud/sDSmoDMoHNev/qcXqZKrmXGuKHjd
         1ATQVu19/qfbPKg+Dz4+5lG55hDJ1b141KRa3nxPWTYEfUpfgkCsflAPUHsp2icSFYLr
         OQyXwuZQ4g8G1eu+yl2VkUOSgMeBxEpSCL8qHZhtG0fofJmUSvzGFlzFfoyzhM/4BwCE
         uDlQ==
X-Gm-Message-State: AOAM532r15LNxuaTmh2rKzgTFcK/J2lxr46VMvMchmtFDfu8SLRvjv3S
        IoPOBkbzmansTVq2JyuI/Zs=
X-Google-Smtp-Source: ABdhPJzHNqPmBZbvKNBHGvM0sWW+HECoiynvi+72iu+SXc4y8pFbp5bVqFNJDLvUPU3TT3dJpMMr3w==
X-Received: by 2002:adf:f04c:: with SMTP id t12mr14240074wro.7.1634543191757;
        Mon, 18 Oct 2021 00:46:31 -0700 (PDT)
Received: from [10.168.10.11] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id u5sm11244975wmm.39.2021.10.18.00.46.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 Oct 2021 00:46:31 -0700 (PDT)
Subject: Re: [PATCH] mctp.7: Add man page for Linux MCTP support
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
To:     Jeremy Kerr <jk@codeconstruct.com.au>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-man@vger.kernel.org,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
References: <20211014070519.2037226-1-jk@codeconstruct.com.au>
 <97962dba-3787-2cd2-bc96-63b009ce9af8@gmail.com>
Message-ID: <17f37b4b-824a-f68c-cdff-cc7bd252f136@gmail.com>
Date:   Mon, 18 Oct 2021 09:46:30 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <97962dba-3787-2cd2-bc96-63b009ce9af8@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Jeremy,

On 10/17/21 8:49 PM, Alejandro Colomar (man-pages) wrote:
>> +TO bit cleared) to indicate that is is directed to the same remote 
>> endpoint.
>> +.SH SEE ALSO
>> +.BR socket (7)
>> +.PP
>> +The kernel source file
>> +.IR Documentation/networking/mctp.rst .
>> +.PP
>> +The DSP0236 specification, at
>> +.UR https://www.dmtf.org/standards/pmci
>> +.UE .
>>
> 
> Please, use break points for both URIs above.  See the source code of 
> uri.7, which has plenty of examples.
> 
> See also "the Chicago Manual of Style" 
> <https://libguides.lorainccc.edu/c.php?g=29361&p=183502> for guidelines 
> on that.

Please, don't read those.  As Branden and I discussed in another thread 
today, we prefer not following that style.

So instead of those sources, I'll just write it for you.

.IR Documentation/\:networking/\:mctp.rst .

.UR https://\:www.dmtf.org/\:standards/\:pmci


We could also break before dots, but since the names are short, I don't 
think it's needed.  It could be:

.IR Documentation/\:networking/\:mctp\:.rst .

.UR https://\:www\:.dmtf\:.org/\:standards/\:pmci

If you are curious about the discussion we had about this, it's here:
<https://lists.gnu.org/archive/html/groff/2021-10/msg00045.html>.


Thanks,

Alex


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
