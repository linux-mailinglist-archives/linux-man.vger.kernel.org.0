Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 43B793163B0
	for <lists+linux-man@lfdr.de>; Wed, 10 Feb 2021 11:24:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229925AbhBJKXU (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 10 Feb 2021 05:23:20 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44646 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229710AbhBJKVq (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 10 Feb 2021 05:21:46 -0500
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 88FFCC061756
        for <linux-man@vger.kernel.org>; Wed, 10 Feb 2021 02:21:00 -0800 (PST)
Received: by mail-wr1-x42d.google.com with SMTP id u14so1854894wri.3
        for <linux-man@vger.kernel.org>; Wed, 10 Feb 2021 02:21:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:from:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=/EyfvzQMMIpnH0m6T9gD8BPVRuOao+Tt8thU0fz1Yw4=;
        b=CwiLyrbe5+uMKoQGO8mFjH6+ioiaDXkV8Mu0sMfO7jci2yDtlD8ej/k33Xg2xnEgA0
         mKlD6pNzXnZXygTwbfww4k++myvW05J+aCby2n7pu8ErEwKkubQGvcg+5w81pcUC+ktO
         MZky7q79RMUXS9YD5DebddJ/8gbth1v4H1oIrqleg+IRVp7asdPFcXLJXbMSbwM49C6G
         eaBHNn1Xt41S149r/SeO2IkZPknZqheNinh2DCva/0aZ6Slxb9O8EViJu+p/o19Pc793
         gAQTj1QtA1D3sQ7yz9plyk3b+wWkHzMgU+gPbor6NwBgrBfeKAyjQuIyyTrMS3tIVhD+
         ZMgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:from:to:cc:references:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=/EyfvzQMMIpnH0m6T9gD8BPVRuOao+Tt8thU0fz1Yw4=;
        b=uJWCw8xGHnVVZImXVJ6kJoKwC3Udtdfr1TEVsiZVE9JY+YKfrLP4vLJ9+G4PxqAw3p
         Xbbc4IpWPfAkPpY8UK41fYWWddTJvAToxbFOxwqKeuwi7ay8k23X1arnHKWQ4RBJfjru
         PloFYGNKOjUKu5ZWN4nXmYnz+fBRkjdnui/NFrLZbuwFLOJSWMBDi2roI448A1gyNNbP
         00d9+mP52dPo6vfqUe7xQqSEIuQafU1mHYdfBztanvIMniTXNR5Hc+jnoZYMCf1GxHWY
         3eUr1PFoqlefnhcVywzBbfONZWJU1wflnOn++6OkB8lqBO7qbSuVM/ePVyfkmgjaah+7
         XV9Q==
X-Gm-Message-State: AOAM5301nHcMKDac/4SFehzS7IZLrKZWiC7BGZTgY1ZBZHbzyIGWTFZM
        iEchjoyPpdFSHH1RU0XUHb55HCBTcWw=
X-Google-Smtp-Source: ABdhPJwTFXXAICQ8wZ0+Fvk2EzUSZNcAGx6jOh0cd1Io4uNda+KySCv8elHgcX41FPxqF4pBcIsKMg==
X-Received: by 2002:a5d:508c:: with SMTP id a12mr2811198wrt.252.1612952459360;
        Wed, 10 Feb 2021 02:20:59 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with UTF8SMTPSA id l11sm2273129wrt.23.2021.02.10.02.20.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Feb 2021 02:20:59 -0800 (PST)
Subject: Re: ptrace.2: Simplify signature? s/enum \w*/int/
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>
References: <e7685576-db7b-f53d-26b9-64ee6621aea1@gmail.com>
 <bba760a2-b291-d676-2949-90b47f13d4f9@gmail.com>
 <eb01e43f-6ab4-c4c9-62b5-a705aab906ae@gmail.com>
 <e5de8f47-b8cc-ee52-4702-5bdf7193f0d8@gmail.com>
 <e49ab35b-a131-1adf-4b5c-5285e662d26c@gmail.com>
Message-ID: <098acfd6-2b18-b81e-0545-ff5b5aee5da8@gmail.com>
Date:   Wed, 10 Feb 2021 11:20:58 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:84.0) Gecko/20100101
 Thunderbird/84.0
MIME-Version: 1.0
In-Reply-To: <e49ab35b-a131-1adf-4b5c-5285e662d26c@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 2/10/21 11:18 AM, Alejandro Colomar (man-pages) wrote:
> On 2/9/21 11:34 PM, Alejandro Colomar (man-pages) wrote:
> [...]
>>
>> Here are the glibc results (grepping though the kernel is taking much
>> longer, but I guess the command will have ended by tomorrow morning, and
>> I'll send you a follow-up.
> 
> There aren't syscalls using enum (as expected).
> 
> .../linux/linux$ func_list ../man-pages/man2 \

That should be 'man_lsfunc'.  I run it, and then I renamed it, and
forgot to fix it for the email :P

>                  |while read -r f; do
>                          grep_syscall $f;
>                  done \
>                  |grep enum;
> .../linux/linux$
> 
> 
> [...]
> 


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
