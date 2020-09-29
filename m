Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E3CBA27D00E
	for <lists+linux-man@lfdr.de>; Tue, 29 Sep 2020 15:57:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728657AbgI2N50 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 29 Sep 2020 09:57:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60266 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728461AbgI2N5Z (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 29 Sep 2020 09:57:25 -0400
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com [IPv6:2a00:1450:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5F258C061755;
        Tue, 29 Sep 2020 06:57:25 -0700 (PDT)
Received: by mail-wr1-x443.google.com with SMTP id k10so5523652wru.6;
        Tue, 29 Sep 2020 06:57:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=m+GzUJ/cc3gOU8YTK7hhp/1AHmJaFJDTSpVKrvN9jyI=;
        b=FcA34252V91S22zkWLVguCgoC9Q0JgorvJMPcSkMBwPSX9dQP2sa2jJczIvlR8+zwo
         6xsovhOrwDSD3IMzUqcXxeKiGhE7VZ4v+1oIL6+w16e8pyQGEuRMSD3dODzDoscChMcx
         lSfFSG3PsMAj9hc68+QAEUNJxPgaB4Tzxnk3y6/INHtyYGaxqOZ9RbOxrRbalM8Jl5ed
         aDUE0zxl4vc8JaeAWN+dPSjtCFmCACwXdqLjZCwzsVM1Dzv5/yxecFhqsa7GZmRIG4st
         DKWu4I6fg6cXvW2Z+olhX2cbKiidjWM5wbNpB0AUytithNuoQAS3AhD8UG8w/kGQoS7E
         knfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=m+GzUJ/cc3gOU8YTK7hhp/1AHmJaFJDTSpVKrvN9jyI=;
        b=H9GrUSaD/j1MQde4f7CgOHRrj7mM088vLLVdloygKG4LvRDzmO86djnGVyXngOnJNc
         4YEVOOPaR6KrFh6IN0z6NbpVXaslRw3AEgnkUi+g6TxGsObbj7CXpjfTVJvWcxLd7bs9
         fb8VtR7Fc0rKNc43DxgcOKjONnXZZqpQNOm/6IAAmLW6exP99abQ4OErj+qcU7MArceY
         +R6q72FBSTeoWYOPSm1L+7E5Zj11u92rOxrJ6nUyF4GBV/DOkXIw2fGfoHbUhCsddcv4
         Dmudu1d2hYC2WVNJtMV8hKZsupHp84Dv6U638uJXh8RBBU1D5Xq8V6YybPSSEfdpBAQi
         T8LQ==
X-Gm-Message-State: AOAM533ZIBzpMWn4Xoz15I71iYnsjYb6FaZtaAirWWkw7B7jEA1P/Mq7
        Bog8Pn9qrAHZV4tmgJMz/qRMH4o4tsY6Tw==
X-Google-Smtp-Source: ABdhPJyxcCD57/sgwTDPtY/wQ4+nVkGfWQvXEtjN4c6r4+f9ifvON84oJ4VpqNRXbzJ2ljgh3iuuRg==
X-Received: by 2002:adf:ffc3:: with SMTP id x3mr4425714wrs.290.1601387843782;
        Tue, 29 Sep 2020 06:57:23 -0700 (PDT)
Received: from [192.168.1.143] ([170.253.60.68])
        by smtp.gmail.com with ESMTPSA id l18sm6286194wrp.84.2020.09.29.06.57.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Sep 2020 06:57:23 -0700 (PDT)
Subject: Re: [PATCH 12/24] getgrent_r.3: Use sizeof() to get buffer size
 (instead of hardcoding macro name)
To:     mtk.manpages@gmail.com
Cc:     Stefan Puiu <stefan.puiu@gmail.com>,
        lnx-man <linux-man@vger.kernel.org>,
        lkml <linux-kernel@vger.kernel.org>
References: <20200910211344.3562-1-colomar.6.4.3@gmail.com>
 <20200910211344.3562-13-colomar.6.4.3@gmail.com>
 <CACKs7VD_p=d+nvuFxkWofSE6jCoKAKx5w44_5ciTJ0NX_H1ZFA@mail.gmail.com>
 <7dd2ab72-3ce7-1f50-229a-e663c3df2dcd@gmail.com>
 <CAKgNAkjDmBfR_9-8zZAu2sKDw+dfD4LgokMdLApy-_00ngxnLg@mail.gmail.com>
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Message-ID: <3a59be19-252e-0285-6d9f-5f9a9f0388b5@gmail.com>
Date:   Tue, 29 Sep 2020 15:57:22 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <CAKgNAkjDmBfR_9-8zZAu2sKDw+dfD4LgokMdLApy-_00ngxnLg@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



On 2020-09-29 15:38, Michael Kerrisk (man-pages) wrote:
>> 2.-     Use sizeof() everywhere, and the macro for the initializer.
>>
>> pros:
>> - It is valid as long as the buffer is an array.
>> cons:
>> - If the code gets into a function, and the buffer is then a pointer,
>>     it will definitively produce a silent bug.
> 
> Sigh! I just did exactly the last point in a test program I've been writing...
> 
> M
> 


Hmmm, maybe you would like to comment on this LKML thread I started 
yesterday:

https://lore.kernel.org/lkml/71c25cb0-9fa2-4e97-c93c-44eadfd781fb@gmail.com

Concretely, point 4 is about this.

I'd push 'array_bytes()' to all "libc"s I can, so that it's then common 
enough to use it everywhere, even in the man.

I'd also recommend reading this StackOverflow answer I wrote last year:

https://stackoverflow.com/a/57537491/6872717


Cheers,

Alex
