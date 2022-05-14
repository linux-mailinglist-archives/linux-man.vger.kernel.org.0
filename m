Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 96A8B52725A
	for <lists+linux-man@lfdr.de>; Sat, 14 May 2022 17:03:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233358AbiENPC5 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 14 May 2022 11:02:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32910 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230139AbiENPCy (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 14 May 2022 11:02:54 -0400
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CA5A1A1AA
        for <linux-man@vger.kernel.org>; Sat, 14 May 2022 08:02:51 -0700 (PDT)
Received: by mail-wm1-x336.google.com with SMTP id n6-20020a05600c3b8600b0039492b44ce7so6207134wms.5
        for <linux-man@vger.kernel.org>; Sat, 14 May 2022 08:02:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language
         :from:to:cc:references:in-reply-to:content-transfer-encoding;
        bh=6Dd9//EKCaoo0/YLQQMY2/UnbpxeeMDD33pw+/55Zl4=;
        b=ZHPTQAWLd9sQTdmwFRHoilIAdh3jkEpkM1dze23B1xhJq6y5FqMtFxELVxGYVWAuzl
         PW3R092XC9BQOkEeJIQRXN42Vw320zY3l15id7L+EoQWwqVK9AU/fr67akH2Ly0zBF7i
         pU+aZaWLZeHWBFP8cWex2L4F1jlRs3BXZd2JUzdlA7eZMm9esPw80V1FCvB3/W1XWwYp
         /6wp5IbfEQ29qHKC8qwj/GNsiNG2NVFOU71i1B3nycmbvKTIB7iU6eZfBxEH6NB6s9GC
         FQDF/icyjYZkmvtOPI7ds5P9pSh+rm8d6F49kiXB7uOOjx4KE2IY9QTlUvLN2C6eAwWu
         TuYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:from:to:cc:references:in-reply-to
         :content-transfer-encoding;
        bh=6Dd9//EKCaoo0/YLQQMY2/UnbpxeeMDD33pw+/55Zl4=;
        b=hKz6ed7N72rH8yf0jJLE/3lGWR14E0XVLJlu4fQcJiMBd392p+uNgH3Nsai8cCme+r
         M7W+ykCFTRKWeR9A2HwKV+VGLdi/fvbk+wjjoa8/CBLo0K+GY4ACKCFjOTDe0LWmAj3s
         SrzLDeKq2kpQsyAC26Ol7pX1ZZnoP15O+DZ/R5Ys0LOmpk9pjifxCYTAcCML1E4uQZU5
         hnTRfQtHnavBNLdO7cQ4UJi8NNYlpgSPJ0i8ORP+a82htcc4+/r7Yx4pXZWBXqY11zuU
         oqKVWRlxAL/0YsFDNzj7p2Kh3J8GsP/1t5dZtXV0gsXsQOxHFHpCOHfBibT/AeGvkBAj
         Jl4w==
X-Gm-Message-State: AOAM531lNtlba1KxwEceYhqJ/jZkT7q/+J68Cb7vu2TXg3gEMU4/MXEY
        GQUoW/3wiWEDIm3Sn9xQeE0wnAjBsTc=
X-Google-Smtp-Source: ABdhPJw6gbCXykJKHC78gVdgNb9ro4rR1GwumGAWHezKOYjDKR0KW0meyZ3jFkKk+AEx7tnq/MGuEQ==
X-Received: by 2002:a05:600c:4e0e:b0:394:8a94:98a5 with SMTP id b14-20020a05600c4e0e00b003948a9498a5mr9189171wmq.124.1652540570390;
        Sat, 14 May 2022 08:02:50 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id j33-20020a05600c1c2100b00396fbf6f524sm187930wms.1.2022.05.14.08.02.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 14 May 2022 08:02:50 -0700 (PDT)
Message-ID: <6967d7d4-cb92-76bb-3084-085edab3fc00@gmail.com>
Date:   Sat, 14 May 2022 17:02:48 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: man page pthreads(3)
Content-Language: en-US
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     Youssef Hajjioui <youssef.hajjioui.07@gmail.com>
Cc:     linux-man@vger.kernel.org, mtk.manpages@gmail.com
References: <1af34262-46c3-2c14-8380-37a9b4f2e3f0@gmail.com>
 <c7c6faac-164a-6ddd-f72e-7d034e21d51d@gmail.com>
In-Reply-To: <c7c6faac-164a-6ddd-f72e-7d034e21d51d@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

[Resend to linux-man@ with correct address.]

On 5/14/22 15:42, Alejandro Colomar wrote:
> Hi Youssef,
> 
> On 5/7/22 02:25, Youssef Hajjioui wrote:
>> Good day,
>>
>> I would like to report what could be a confusing citation in the 
>> manual page |pthreads(3)|
>>
>> The following citation:
>>
>>     Each of the threads in a process has a unique thread identifier
>>     (stored in a type |pthread_t|). This identifier is returned to the
>>     caller of |pthread_create(3)|, and a thread can obtain its own
>>     thread identifier using |pthread_self(3)|.
>>
>> However the function |pthread_create(3)| does not return a thread ID 
>> to the caller; it returns 0 on success, or a macro that specifies the 
>> error i.e (E2BIG and such). The function takes a pointer parameter 
>> |pthread_t *thread| which is a pointer to the structure that stores 
>> the thread ID.
>> I think that it would avoid confusion to rectify the cited behavior.
> 
> I understand your confusion.  Some pages use the term return strictly to 
> mean C's `return` keyword (as you suggest doing).  Some other pages use 
> it more freely to mean "pass a value", including both `return` and 
> "storing a value in a pointer parameter".
> 
> If you propose some alternative wording that makes sense, we can 
> consider it.
> 
>>
>> My OS is Ubuntu 20.04.
>>
>> I am reading through many manual pages concerning the Linux 
>> programming interface. Do you think it is a good idea that I report 
>> such confusing occurrences to you. I would like to contribute into 
>> making the manual pages clear and easily understandable.
> 
> Please do :-)
> 
> Thanks!
> 
> Alex
> 

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
