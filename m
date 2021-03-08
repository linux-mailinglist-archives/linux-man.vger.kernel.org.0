Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B91CA330EED
	for <lists+linux-man@lfdr.de>; Mon,  8 Mar 2021 14:13:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229674AbhCHNNO (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 8 Mar 2021 08:13:14 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40116 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229575AbhCHNNG (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 8 Mar 2021 08:13:06 -0500
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4E32CC06174A
        for <linux-man@vger.kernel.org>; Mon,  8 Mar 2021 05:13:05 -0800 (PST)
Received: by mail-wr1-x42a.google.com with SMTP id f12so11390881wrx.8
        for <linux-man@vger.kernel.org>; Mon, 08 Mar 2021 05:13:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=1m3WbR/DD/LtL0POuLNHWncdnvgM5k5WuZc1nE71AiM=;
        b=hpyd3he3+/0A+2lEU65cCP4xODle7ooHnKDc6Jd2mZOtiVsGAoZDbaqbbn2fTTKUIW
         UCZ38Qj1aStwHfkYt/sfFfhINXpZJKN9CX6Zt5D3bxsYnGjse9Yc9mS/Qkc8LyWYj1s5
         7z96qeNhy4R+/KEdN9pz9dyW9eZor7SwVyPAgdHg17yO7w2+SsXeNPhIDMaUgJBUAH6Q
         SW60L8lwalJF4Bt3gyA4MRciERe4yMyo0bFPfQZK2y+zeBo0iht+vl+tycdpUijo8Sd8
         43+atrC83pekccNY/qrFmmqkRWBzZf1ReE1onCWu3rKf1ydUGzUa6pUrVi8FEMSpSpmy
         /3PQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=1m3WbR/DD/LtL0POuLNHWncdnvgM5k5WuZc1nE71AiM=;
        b=bLbNmjKJgRjObanF2u1fBolGLfOTcPVMlTDfgzE1KYBcUmOzYaPqzKZ45iecPzvMFZ
         LuIOeK6dtTM4sy6h45OEca+puuP7H/HhbflwFXrI4q1532h5Zf1oywQnyALnnsO0BrE1
         ieAT+p0AW84mz/gdMnuRkjbXfkMd7ET9KeQ1v3dy4lzAgdQdY0coZAiotewQlbQNBEqx
         Ukh0ix5kTD1cqUcKEQAolVgYxmHxO0ES4O+ciK9KdnTUiAv9XKQFNrnRnwuk444H3oHj
         YlJkWUE7cH6F4IcGHnCPyzixKoIHOzjcrZgIHiPWw9Q78WxxP9Daw0ywWBoQV4eQ4m/A
         mdpQ==
X-Gm-Message-State: AOAM532w+uNaDdcb1sj/EtauZP+WdKQZTb/zpKS4Mb/wi+4L93GYklkV
        TgemqhbuETQ8zbwcweWf+ESycZMdxMg=
X-Google-Smtp-Source: ABdhPJyFZdlLDQLLkPAE5VOF5p7ofXTZT9I43JS+HUbD2YA5+Qmy9qlTetNkN1E8jrd1fGegI/yHnA==
X-Received: by 2002:adf:ecca:: with SMTP id s10mr22082830wro.324.1615209184111;
        Mon, 08 Mar 2021 05:13:04 -0800 (PST)
Received: from [10.8.0.206] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id n6sm19492102wrt.1.2021.03.08.05.13.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 08 Mar 2021 05:13:03 -0800 (PST)
Subject: Re: pthread_cleanup_push_defer_np.3: missing functions in glibc
To:     Andreas Schwab <schwab@linux-m68k.org>,
        "Alejandro Colomar (man-pages) via Libc-alpha" 
        <libc-alpha@sourceware.org>
Cc:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        Florian Weimer <fweimer@redhat.com>,
        linux-man <linux-man@vger.kernel.org>
References: <1ee301e5-d3a4-2e0e-3473-6b0eea304266@gmail.com>
 <87lfax52j3.fsf@igel.home>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <5d46fa5b-e4df-8eee-83c9-5585f06299ec@gmail.com>
Date:   Mon, 8 Mar 2021 14:12:59 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.0
MIME-Version: 1.0
In-Reply-To: <87lfax52j3.fsf@igel.home>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 3/8/21 12:05 PM, Andreas Schwab wrote:
> On Mär 08 2021, Alejandro Colomar (man-pages) via Libc-alpha wrote:
> 
>> While adding 'restrict' to the prototypes, I found that the functions
>> defined in this page don't exist on glibc (or I couldn't find them).
> 
> sysdeps/nptl/pthread.h:#   define pthread_cleanup_push_defer_np(routine, arg) \
> sysdeps/nptl/pthread.h:#   define pthread_cleanup_pop_restore_np(execute) \
> sysdeps/nptl/pthread.h:#   define pthread_cleanup_push_defer_np(routine, arg) \
> sysdeps/nptl/pthread.h:#   define pthread_cleanup_pop_restore_np(execute) \
> sysdeps/nptl/pthread.h:#  define pthread_cleanup_push_defer_np(routine, arg) \
> sysdeps/nptl/pthread.h:#  define pthread_cleanup_pop_restore_np(execute) \
> 
> Andreas.
> 

D'oh!  I was writing *phtread* all the time (and I suspected that I was 
writing a typo, and still didn't find it :p ).  Never mind.

Thanks,

Alex

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
