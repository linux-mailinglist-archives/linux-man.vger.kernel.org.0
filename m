Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D5D912D6275
	for <lists+linux-man@lfdr.de>; Thu, 10 Dec 2020 17:50:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728868AbgLJQtj (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 10 Dec 2020 11:49:39 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33554 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2391081AbgLJOh0 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 10 Dec 2020 09:37:26 -0500
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0645DC0613CF;
        Thu, 10 Dec 2020 06:36:46 -0800 (PST)
Received: by mail-wr1-x433.google.com with SMTP id a12so5706745wrv.8;
        Thu, 10 Dec 2020 06:36:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=RMLtZ684ewi1P10m7aTDF6xEYc5vBnCNa3tj14tR16o=;
        b=poA7rHhev6BjUk1FQZJCQiTpHf2IY/Kq22wSObyqd6Im9MLBACplCNjWkAU0TTliBS
         X/Cj6KuIL9Qe2Dxy8gsAcYMecfHTp+XdOfoSIn1Wm4tOEO5uB/k7kNVtV4qoM8z76yfj
         56oEzfHHGF/yUM6Ty6NwRe5tJ8ziGHbhnlYyj4eblVgFVhcrznHO45Dr7rQ+XIC4qfyo
         wUDxPpATMzo2t85GpTLX+BjrgAz4qWbVwkEpm8wUDVA8xVWyWmU15a8ML0l1AxTj6B7E
         TsG+NrT8dL74WxnI5jmsVydhzpHmin543P0WYQCs8ILjZSHt4S7a0j6CJyZlMuqr5xlM
         y9rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=RMLtZ684ewi1P10m7aTDF6xEYc5vBnCNa3tj14tR16o=;
        b=qzvW4JhYCYNeeJGowAdWhhtkkxVoVCeTQHhsX/+qElStrE0RtLwIxGigowO15o1Y86
         oCSYsYIF9pjLLe00SGLserGDtvs6ZRuMMNu0ke3/6qVXRMRFv+q+KptUZmhIoJx/xZWl
         5s2XUOMp5NaONvgJ9pFm1OEB766LrliI8XwNg88ek8QSPCks/SjUFD21fXOJKnk4h/bU
         QCNETk+7d68DzMZBlnvA8ql1MLB4BecXIixB5yzHUGjZpY4qKWHcGmcct2g2X4FccddE
         Z/+GLYmafRJtpyh1EBBmpob3SqMkfRDKdaShZxsx3V6fywihIeUA2xVG9AhBzHZHDf8r
         FdeA==
X-Gm-Message-State: AOAM531S8TDOCtJZaehN4gFb0xjYjgfaTKLrjfqu1kp3UTg35zYm6et6
        zpUVclEcSERBkmz1J/JEx1W0YTWpOtw=
X-Google-Smtp-Source: ABdhPJyX8A20TXlUMNk/OOCjtpPm13qZsuE7GHSaqhOtrrA+vEm3rsnKxmM0UXVeIJ9tXW0U+23osA==
X-Received: by 2002:a5d:6289:: with SMTP id k9mr9004103wru.200.1607611004730;
        Thu, 10 Dec 2020 06:36:44 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id s13sm9294375wmj.28.2020.12.10.06.36.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Dec 2020 06:36:43 -0800 (PST)
Subject: Re: [patch] close_range.2: new page documenting close_range(2)
To:     Christian Brauner <christian.brauner@ubuntu.com>
Cc:     Stephen Kitt <steve@sk2.org>, linux-man@vger.kernel.org,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-kernel@vger.kernel.org
References: <20201208215133.30575-1-steve@sk2.org>
 <20201209095817.7ksihhftmnd3c3hi@wittgenstein>
 <5f69d42d-c36d-b98a-3d00-7a5e7f489a07@gmail.com>
 <20201209105618.okw5lgcdikg5bvae@wittgenstein>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <0ea38a7a-1c64-086e-3d64-38686f5b7856@gmail.com>
Date:   Thu, 10 Dec 2020 15:36:42 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.1
MIME-Version: 1.0
In-Reply-To: <20201209105618.okw5lgcdikg5bvae@wittgenstein>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Christian,

Thanks for confirming that behavior.  Seems reasonable.

I was wondering...
If this call is equivalent to unshare(2)+{close(2) in a loop},
shouldn't it fail for the same reasons those syscalls can fail?

What about the following errors?:

From unshare(2):

       EPERM  The calling process did not have the  required  privi‐
              leges for this operation.

From close(2):
       EBADF  fd isn't a valid open file descriptor.

OK, this one can't happen with the current code.
Let's say there are fds 1 to 10, and you call 'close_range(20,30,0)'.
It's a no-op (although it will still unshare if the flag is set).
But souldn't it fail with EBADF?

       EINTR  The close() call was interrupted by a signal; see sig‐
              nal(7).

       EIO    An I/O error occurred.

       ENOSPC, EDQUOT
              On NFS, these errors are not normally reported against
              the first write which exceeds  the  available  storage
              space,  but  instead  against  a  subsequent write(2),
              fsync(2), or close().

Thanks,

Alex


On 12/9/20 11:56 AM, Christian Brauner wrote:
> On Wed, Dec 09, 2020 at 11:44:22AM +0100, Alejandro Colomar (man-pages) wrote:
>> Hey Christian,
>>
>> I have a question for you below.
>>
>> Thanks,
> 
> Hey Alex,
> 
> Sure!

[...]

>>
>> AFAICS after reading the code, if the unsharing fails,
>> it will not close any file descriptors (please correct me if I'm wrong).
>>
>> Just wanted to be sure that it was the intended behavior with you,
>> and if so, it would be good to document it in the page.
> 
> Yes, this is intended because if the unshare fails we haven't yet
> actually started closing anything so we're before the point of no
> return where we ignore failures. So we can let userspace decide whether
> they want to retry without CLOSE_RANGE_UNSHARE.
> 
> Christian
> 

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es
