Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BAED73E17FA
	for <lists+linux-man@lfdr.de>; Thu,  5 Aug 2021 17:28:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242055AbhHEP3I (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 5 Aug 2021 11:29:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55922 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242000AbhHEP3H (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 5 Aug 2021 11:29:07 -0400
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2E06AC061765;
        Thu,  5 Aug 2021 08:28:53 -0700 (PDT)
Received: by mail-wr1-x42e.google.com with SMTP id c16so7063996wrp.13;
        Thu, 05 Aug 2021 08:28:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=X8OKOFT3oxnoboikDpFfPBkWTsiFzFpBrY0QV7ZSIdQ=;
        b=heEWAxty/xo2BtzEd8ePdoV3viVS59b8A2E1WaPZukAt1khXy8SRkSLhIOUxb3lFNZ
         3vJXvZGKFHsPYbReQsNTtG1foFv46t01VIwhYuKRC1KuVFBs70A8+fgVweyb7NsgWmH6
         jneC3t8Qous4WYgwoGTJa8BJjucfG0pBKcDvI6apYyPwuAQceGC62Dvg9RvZKbjW7H5J
         Qd+O89XaOQoR12nZ+iPjMGY2a0rNngVTzyZcfDjHQ2XIUqIiQzDNS3zVkiYbjULz+7zH
         eOCUiVVeEZY9Fv58mfG8eXXij5vB7mqRz7+BY1ebQkyuRwn4QmDOBO+7uBJUu0RR3Ol2
         9JEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=X8OKOFT3oxnoboikDpFfPBkWTsiFzFpBrY0QV7ZSIdQ=;
        b=YWS0zngavy/gsZ7SDh2XnSIDgsi7Mtqef944adPgEksPJi/huhsHbilb7GP9VMgrAk
         lwbcWtIUcpj35gppn89vVUsKmPY1ME9luxa++Cbv7p47H5VMKX+GvHMVwvSO79DPB9GJ
         RC0RNKHmwfNOrjA7D848wT8Ovei7cq7ki6E8SgC/c65HvxXFlPVayQHBlRuXWXOxknfJ
         hyqiYmafq8emtp6cqepqoprCG53ODW9uuFt86shMGtiVbw30ny8C/RTLH4H7kAVZQ+88
         H0vrBp5h7NwIQRgSfkqpU6eXpuj/pFmrp6VfDItKnL1ti92TgJPs5YksblWEHVfUNdnd
         XJhg==
X-Gm-Message-State: AOAM533ukckhXkiVFZfIE3m4b5IubXtHle+OnhxjsF9OQfCqctPuPHm+
        ZRNNxzK3ZJE9TgyHcgScuJ1oE0FDeqA=
X-Google-Smtp-Source: ABdhPJx9ToecQZyJLBXXbrTgJ8Kz3sCOOp9GOOUjOblBQh3OV22rD/eWZusjr29frE56RF3D8lC58g==
X-Received: by 2002:adf:d84b:: with SMTP id k11mr5870488wrl.135.1628177331836;
        Thu, 05 Aug 2021 08:28:51 -0700 (PDT)
Received: from [10.8.0.10] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id o24sm8099331wmm.37.2021.08.05.08.28.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Aug 2021 08:28:51 -0700 (PDT)
Subject: Re: [PATCH v3] ioctl_tty.2: Add example how to get or set baudrate on
 the serial port
To:     =?UTF-8?Q?Pali_Roh=c3=a1r?= <pali@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     =?UTF-8?Q?Marek_Beh=c3=ban?= <kabel@kernel.org>,
        libc-alpha@sourceware.org,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        linux-man@vger.kernel.org, linux-serial@vger.kernel.org
References: <20210730095333.6118-1-pali@kernel.org>
 <20210801135146.14849-1-pali@kernel.org>
 <20210804220808.cetleob6dldpfnjk@pali> <YQt8g+ECel20fA/g@kroah.com>
 <20210805082243.qciylqnt5g74if7i@pali> <YQuhl18CgJ2+LUPW@kroah.com>
 <20210805084410.sb5lybdri6r7t2da@pali> <YQumV3qljhFSau0y@kroah.com>
 <20210805095100.n2qkm3kdiucwt6jd@pali>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <418a281b-441d-66fc-6929-5d29fafc459b@gmail.com>
Date:   Thu, 5 Aug 2021 17:28:49 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <20210805095100.n2qkm3kdiucwt6jd@pali>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Pali,

On 8/5/21 11:51 AM, Pali Rohár wrote:
>>>> Also, you forgot a license for this code, that is required if you want
>>>> people to use it...
>>>
>>> Hm... I do not see any license in other manpage examples. Does not apply
>>> for it global license defined in ioctl_tty.2 file?
>>
>> That does not mean you do not need it.

I don't know what is the status of the current code examples in terms of 
licensing.

I thought I had seen an SPDX license identifier in one of them some time 
ago, but now I can't find it.

Technically, the pages have a license at the top of each file, which 
isn't printed on the rendered output (the license text doesn't require 
so) (see that text below).

If you want a different license for your example (let's say you want it 
BSD for example), I guess you could add an SPDX line at the top of the 
example for simplicity.

But if your code example adheres to the same license as the rest of the 
page, I guess you don't need to do anything in your patch.

But I'm not sure at all; maybe Michael can tell you more about it.

> 
> I will wait for Alejandro's reaction on this topic as I think he wants
> to have all manpages consistent and with the same style, headers, etc...
> 

Thanks!

Alex


---
$ head -n 26 man7/system_data_types.7
.\" Copyright (c) 2020 by Alejandro Colomar <colomar.6.4.3@gmail.com>
.\" and Copyright (c) 2020 by Michael Kerrisk <mtk.manpages@gmail.com>
.\"
.\" %%%LICENSE_START(VERBATIM)
.\" Permission is granted to make and distribute verbatim copies of this
.\" manual provided the copyright notice and this permission notice are
.\" preserved on all copies.
.\"
.\" Permission is granted to copy and distribute modified versions of this
.\" manual under the conditions for verbatim copying, provided that the
.\" entire resulting derived work is distributed under the terms of a
.\" permission notice identical to this one.
.\"
.\" Since the Linux kernel and libraries are constantly changing, this
.\" manual page may be incorrect or out-of-date.  The author(s) assume no
.\" responsibility for errors or omissions, or for damages resulting from
.\" the use of the information contained herein.  The author(s) may not
.\" have taken the same level of care in the production of this manual,
.\" which is licensed free of charge, as they might when working
.\" professionally.
.\"
.\" Formatted or processed versions of this manual, if unaccompanied by
.\" the source, must acknowledge the copyright and authors of this work.
.\" %%%LICENSE_END
.\"
.\"



-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
