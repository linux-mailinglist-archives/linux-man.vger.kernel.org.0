Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C727825F66C
	for <lists+linux-man@lfdr.de>; Mon,  7 Sep 2020 11:27:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728135AbgIGJ1F (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 7 Sep 2020 05:27:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52766 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728093AbgIGJ1D (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 7 Sep 2020 05:27:03 -0400
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 51D2FC061573
        for <linux-man@vger.kernel.org>; Mon,  7 Sep 2020 02:27:01 -0700 (PDT)
Received: by mail-wr1-x42c.google.com with SMTP id a17so15005692wrn.6
        for <linux-man@vger.kernel.org>; Mon, 07 Sep 2020 02:27:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=/k0G07WjI9be8nDFN1uC6kK0U+FbiU+AM2w1RL9mn/w=;
        b=t0a0NrAb2yxviaK8C6Ff9KYWnNu8ZdcRvBFfwO/Ivr+ym6Wt7wVMaT3XzUd8HfGrIN
         hHGH0C8+XSTfXn0Ut1GlghqASKok4QkR2aW+gRWjuj7NNUgkR+RkbgiBktYgq988mEe4
         8sMtW486mLO50vtL+6qew3Mt9a7lCuVP/bdoWwY9XLL5+BfwqBVtNUHVeHDkBuatSsUL
         AVPBoplLtNXXU9IBwXOHbP9OfrWOwdVaV5ybNAVBVoeuSg/sTbmUjuCYai0orZt50w53
         dgaEs6lPEjZiiaV7+KYKD+WwXX1Mf1Qw4tMpLsnDUgw3KDFSzkkQ3so1/tK2Iqzzc2JZ
         aHag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=/k0G07WjI9be8nDFN1uC6kK0U+FbiU+AM2w1RL9mn/w=;
        b=d88YA8ZMrJ6BQTgqhjY4639ZPLQJc3Qh66HUGT8OE/zvClH8sbFi3CZ0C2lL2TNJ70
         EzOPvLcJ62yOK051o4KALfV68agO/STBB9hGQ0KW3+idTHGSSuijkGSbklEqf3EJ2sFn
         BgEckqIhQ1PB/1PH9YURWzOGfjmW29dG1eOdNjck7mzrfsKQdjRJsdJvxMhHof8Gq2xN
         +lnfMtV23VgB6/A43TKfPHzQn+ytpBk8h4UZu+GxOvzD5pWz1hGKpM1vh6/xftrtGOo+
         LzznJRYumnap3IClN0hkqI6NIw0kVZ72NuwFZYr3jgqINGlqypiQ0NXsa+GgyijMJ9vM
         V3Tg==
X-Gm-Message-State: AOAM5316qs28o4Os1X6xL6nIUTviiG2tTeeuO96HgyukduuaaHqhbzio
        tbM8ejqnX7MjoCQdT5a+dto=
X-Google-Smtp-Source: ABdhPJwL2LKYuYezOfnd+NfV8G+t97/U4Gvqf3AqpG0kdOdqOSJpI8NCQHWlBHTNZ4qp57GmE/yjHg==
X-Received: by 2002:a5d:680b:: with SMTP id w11mr21957839wru.73.1599470819105;
        Mon, 07 Sep 2020 02:26:59 -0700 (PDT)
Received: from [192.168.1.143] ([170.253.60.68])
        by smtp.gmail.com with ESMTPSA id h186sm26815882wmf.24.2020.09.07.02.26.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Sep 2020 02:26:58 -0700 (PDT)
Subject: Re: Bug or misdocumented feature in pthread_setaffinity_np.3
To:     mtk.manpages@gmail.com
Cc:     linux-man <linux-man@vger.kernel.org>,
        "libc-alpha@sourceware.org" <libc-alpha@sourceware.org>
References: <486f9d85-2828-2b60-990c-3499b2a89559@gmail.com>
 <CAKgNAkjr1jasB7Hfjd7eeyGCGCeXmD19=nTOruGUL48Ke-Xkcg@mail.gmail.com>
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Message-ID: <9659887c-6b11-bbd0-760b-dacfedf7e972@gmail.com>
Date:   Mon, 7 Sep 2020 11:26:57 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <CAKgNAkjr1jasB7Hfjd7eeyGCGCeXmD19=nTOruGUL48Ke-Xkcg@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

On 2020-09-07 11:21, Michael Kerrisk (man-pages) wrote:
>> Or is it that those functions return an error code that corresponds to a
>> valid `errno` error number?  In that case it could be documented better
>> IMHO.
> 
> Yes, probably you are right. The thing is, when you use pthreads you
> have to know they are different from the conventional APIs. The
> pthreads(7) page hints at this:
> 
>         Most  pthreads  functions return 0 on success, and an error number
>         on failure.  Note that the pthreads functions do  not  set  errno.
> 
>> If that is the case, do those functions set `errno` and also return that
>> same `errno` value redundantly?
> 
> No, they don't use errno at all.
> 
> So, I exp[anded the text in pthreads(7), to make the point more explicit:
> 
>         Most  pthreads  functions return 0 on success, and an error number
>         on failure.  The error numbers that can be returned have the  same
>         meaning  as  the  error  numbers returned in errno by conventional
>         system calls and C library  functions.   Note  that  the  pthreads
>         functions  do  not  set errno.
> 
> Note that the various pthreads manual pages (should) all refer to
> pthreads(7) in SEE ALSO. I'm reluctant to add a note like this to
> every pthreads page, since it seems verbose, but I have also added
> this note to errno(3):
> 
>         Note  that  the  POSIX  threads  APIs  do  not set errno on error.
>         Instead, on failure they return an error number  as  the  function
>         result.   These  error numbers have the same meanings as the error
>         numbers returned in errno by other APIs.
> 
> Perhaps that suffices for you?

Yes, that is much clearer now.

Thanks,

Alex
