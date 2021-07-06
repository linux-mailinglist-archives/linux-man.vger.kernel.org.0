Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 118143BCB16
	for <lists+linux-man@lfdr.de>; Tue,  6 Jul 2021 12:57:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231630AbhGFK77 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 6 Jul 2021 06:59:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39052 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231641AbhGFK74 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 6 Jul 2021 06:59:56 -0400
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 10988C06175F
        for <linux-man@vger.kernel.org>; Tue,  6 Jul 2021 03:57:18 -0700 (PDT)
Received: by mail-wm1-x331.google.com with SMTP id o22so13290019wms.0
        for <linux-man@vger.kernel.org>; Tue, 06 Jul 2021 03:57:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=I1dwjL9TZ1ycDE/9a3b3VvnUXnrMJbcUq0/SNvBTh5I=;
        b=sOCJtPEFPmV7p5K8Z5OOGRAeXY+UtVlSTC8FUUve8WZFuXYqJB/QOKhkSHXwV2QQjF
         CT76YtO0j/rdmlZtduY4uEUyWdSJft1c1wdbbWm0PoQKgXV5hmLRn6uzZpYyG4dx8XWU
         d5iLFBKSLT+5s43wQEP/5ID1IBCac08kqcjeRlUjhuy+74XXDJjIxd5qB/QZPQapAhGo
         vExxPn+NkR4v7pEhuukt+b3MWnlXuVYY1gOS5bQTBEgHah43pS/EyaCshTdzDXNaaylj
         pwdOVWB+ZMwgeN7R8tG8bGfe5s4lVphlrpCUz/hYHa3S6IFGhkCQOzK011Uo+cVh0KRn
         OcUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=I1dwjL9TZ1ycDE/9a3b3VvnUXnrMJbcUq0/SNvBTh5I=;
        b=pqDTNYGGksjJYCfpH7IdWHCBM9BO5B6RymWz1Tqe2zztvNXjeuA0dKCNnbTL5Ay757
         KG8QOHtPmXb7bP2jg4BrWy0Z0kcEA+L8Y74wtTRC3GCSyYi4mLLWVwMsa/h4b7imp1az
         fGb9IffvSmMLOIs1wyyaEoAFfk7W7b12KBl/OKDHQ7RgNBvDhtN64S7OCmvXQ2O0/gv6
         oRX2iV519/JjoCHSFC7xJAPQ/vcagb4kgetU0DTrL2Ok1JZUJuRxvmIwM7WN9HHjWEM1
         HmarfbYMvz9piJnBcJrpuAVT1Z/f0DZManUQeIE5WSZ4rM7fuBRbT9qr2WuuX9olpOfa
         ddJg==
X-Gm-Message-State: AOAM532ZyYz+hTTPmtUQDiFAWrWryXreIQKP8oXVrb5wIhevVFjg0WRM
        rAHoA6yCL18oHgyYuTH5Clc=
X-Google-Smtp-Source: ABdhPJy2qJO51GQtdKBo27sxzEvl2bEocI5Z4Dr0vjYmSaawu1pMVWD0kkoL36hIeZqjoIoEAVAerg==
X-Received: by 2002:a05:600c:35c6:: with SMTP id r6mr4216844wmq.14.1625569036698;
        Tue, 06 Jul 2021 03:57:16 -0700 (PDT)
Received: from [10.8.0.150] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id s24sm1432085wra.33.2021.07.06.03.57.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Jul 2021 03:57:16 -0700 (PDT)
Subject: Re: new:mbrtoc32.3: convert from to c32
To:     Radisson <Radisson97@gmx.de>,
        "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org,
        GNU C Library <libc-alpha@sourceware.org>
References: <60cfa510.GHWZSa6DNoE9MWRF%Radisson97@gmx.de>
 <e957596f-ad38-ac7a-7291-652e5dda36a8@gmail.com>
 <53477e3b-7f94-743d-09e8-8dbb5166816d@gmail.com>
 <11286132-a911-bfb4-784d-b0326c8132eb@gmx.de>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <56b23daf-16af-dd55-ba93-5250ee3a1fc6@gmail.com>
Date:   Tue, 6 Jul 2021 12:57:14 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <11286132-a911-bfb4-784d-b0326c8132eb@gmx.de>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi,

On 7/5/21 10:31 PM, Radisson wrote:
>>
> I am no expert on the differences i will make contact with Bruno Haible,
> i hope he can help (he wrote already).

Okay.

>>>         void toc32( char *in,  int in_len, char32_t **outbuf, int *len)
>> Please, follow the style of other existing pages (it's similar to the
>> kernel coding style with some exceptions).
>> Especially, regarding spaces around parentheses and commas (and other
>> operators).
>> Also, please use a consistent indentation of 4 spaces.
>>
>> https://www.kernel.org/doc/html/v4.10/process/coding-style.html#spaces
>      can i use:    indent -i4 -linux ?

I don't know.  I guess that's an emacs thingy.  I use vim.
I don't have vim configured for that, but I'll do now (I use tabs for 
everything else, except YAML).  I don even have vim configured for man, 
because in my manual pages (for my code), I also use tabs.
But based on my vimrc, adapting it for 4-spaces in man, it could be 
something like:

set		nocindent
set		nosmartindent
set		noautoindent
set		indentexpr=
filetype	indent off
filetype	plugin indent off

" YAML only works with spaces :(
au filetype yaml	setlocal expandtab
au filetype yaml	setlocal shiftwidth=8
au filetype yaml	setlocal softtabstop=8
au filetype yaml	setlocal tabstop=8

au filetype man		setlocal expandtab
au filetype man		setlocal shiftwidth=4
au filetype man		setlocal softtabstop=4
au filetype man		setlocal tabstop=4


I hope it helps.

Regards,

Alex

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
