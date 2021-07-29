Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 975213DA784
	for <lists+linux-man@lfdr.de>; Thu, 29 Jul 2021 17:24:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237938AbhG2PY6 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 29 Jul 2021 11:24:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46440 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238111AbhG2PYs (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 29 Jul 2021 11:24:48 -0400
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0D30BC0617BC
        for <linux-man@vger.kernel.org>; Thu, 29 Jul 2021 08:24:21 -0700 (PDT)
Received: by mail-wm1-x332.google.com with SMTP id b128so3970555wmb.4
        for <linux-man@vger.kernel.org>; Thu, 29 Jul 2021 08:24:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=QsdulT/CUbVIaoShhRgbSqnyImPcWr9W7QNI82q0G/Q=;
        b=vhlUT13nvN5APeW078YNnvj88E/TmHDCOpAiWqba8VE6j+bx8WkfdORA/g7fnO5zqS
         +I2QNsIYGYYbth5AmhFMmq3Pa9NpHKoAgZly5LwPp7RhFvUyKbmemdKrRRzCwLWM/10m
         Pitw8LIiFLBCtpfXOXqIZleyVidyVUSqR/ML+8zwNSjG+ChO4LkmMGnt6KD6Lh+p7CTg
         v5R4UFs+LBdUjSE4pcTBwhDezN86NpHOaCStJvOhtxF7KlkG5zSqCT41Ln1G4hinJg5B
         MD3Air5tNrx1uH9NuDaivO6jO9FXuYwJEVhsIHiYmCaBaOG1cEKtE2Eb8IXUTtb86+xC
         bAWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=QsdulT/CUbVIaoShhRgbSqnyImPcWr9W7QNI82q0G/Q=;
        b=sDdTNRTe1BSJI+MPV4kfuiF09DwPhMLNhPB+PxAeoQaIKmfAkwstl2M37giRxZerih
         GSxMQNuPBT4F3qwl+ImEvj8VRpoGfMzfj2cuBHrkcdzYEjvDLrGsIVKN3Ism6xk31DlQ
         tevRQpmGuZr50SVs1YHmVzYBV7eyBKQLzaGWGdd4cVst//M2EAj0b/AaPS6FCQPHjTOi
         AxM5+8pRxR21YLx34S0bchaumcMAjCq8HuqISe4aUowdQN2Nd+3Ck/A93jwV6eW4T9Xy
         QHKEk0IrS8HbF03SPwnm6BnMg8YV7SKD9619UprTglRvMU9YAm77RPPxksLJocwcHcZT
         EceA==
X-Gm-Message-State: AOAM5316xRIrtASK4x21SFwKVBEvgu/p8TmUfQJYOG1Jj+jizXS3gBNs
        XOMvktLjEVeDo8cOeiq9Zx6W2bByUlQ=
X-Google-Smtp-Source: ABdhPJxEHqUVIbQL48Acr8bnsSUIaVeV7rqi3ZniZEzrr60gzOOAbcyGoTSkbGGS0GxLPTe/A+TimA==
X-Received: by 2002:a1c:9ace:: with SMTP id c197mr15213993wme.170.1627572259640;
        Thu, 29 Jul 2021 08:24:19 -0700 (PDT)
Received: from [10.8.0.10] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id j14sm3977659wru.58.2021.07.29.08.24.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Jul 2021 08:24:19 -0700 (PDT)
Sender: Alejandro Colomar <alx.mailinglists@gmail.com>
Subject: Re: [PATCH v2] getrlimit.2: old_getrlimit/ugetrlimit and
 RLIM_INFINITY discrepancies
To:     Eugene Syromyatnikov <evgsyr@gmail.com>
Cc:     linux-man@vger.kernel.org, Jakub Wilk <jwilk@jwilk.net>
References: <20210708121713.GA15864@asgard.redhat.com>
 <20210708131054.o4sgoy7barhl3kmu@jwilk.net>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <55097d34-7cdf-c8aa-7c4c-f62ca5012de5@gmail.com>
Date:   Thu, 29 Jul 2021 17:24:18 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210708131054.o4sgoy7barhl3kmu@jwilk.net>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Eugene,

On 7/8/21 3:10 PM, Jakub Wilk wrote:
> * Eugene Syromyatnikov <evgsyr@gmail.com>, 2021-07-08, 14:17:
>> +Original Linux implementation used signed types for limits; that was 
>> changed
>> +(along with the value of the
>> +.B RLIM_INFINITY
>> +constant)
>> +.\" 
>> http://repo.or.cz/davej-history.git/blobdiff/129f8758d8c41e0378ace0b6e2f56bbb8a1ec694..15305d2e69c3a838bacd78962c07077d2821f255:/include/linux/resource.h 
>>
>> +during 2.4 development cycle, as it wasn't compatible
> 
> Oh, interesting.
> 
> That would explain why the man page incorrectly claims the upper limit 
> for RLIMIT_AS is 2 GiB on 32-bit systems.
> 
>> +Also worth noting that Several architectures decided not to change
> 
> s/Several/several/;
> or maybe s/Also worth noting that //.
> 

When you send a v2 of this, please add me to CC or TO, so that it's 
easier for me to notice it.

Thanks,

Alex


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
