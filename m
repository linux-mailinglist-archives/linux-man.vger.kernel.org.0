Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 34E182668A5
	for <lists+linux-man@lfdr.de>; Fri, 11 Sep 2020 21:17:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725817AbgIKTRd (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 11 Sep 2020 15:17:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41690 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725863AbgIKTRZ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 11 Sep 2020 15:17:25 -0400
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com [IPv6:2a00:1450:4864:20::343])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E974CC061757;
        Fri, 11 Sep 2020 12:17:24 -0700 (PDT)
Received: by mail-wm1-x343.google.com with SMTP id k18so5752832wmj.5;
        Fri, 11 Sep 2020 12:17:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=M66Xqbib3jxWHl0Zo9EsaSkpUQSezfQpVd1dql9x5f0=;
        b=O7Tt9fsq1Lgq1+JZlqN6zjniKxqWjBmlRu+z9ZHNNwIcK9L7Ar/6x/NMyJRn/fZkJb
         3nAJNrH8gufM/Kor3b2uX6Nd/orjMn6WbssDka8rohRX8lFRbSEpFRQeHCELiONnT58m
         fvqkYDYNBeMB1dR2dRIMUUHR2ecI/0HsDPBfNHsenLFsTWD6I6MyTNu+CCVZ3TNQhTMo
         F2qiY6ecsGAhryDSyCfk55kiZqKF+lOfYzoy4Jj62fyknpW5gqHnLl49kFbaDi0EN6H6
         uVoHOZKxexPzAiqksjqPUqwxH3qG0kcuW0eU/Sxv4lOMOTcUHWpP5lrr7+V7hInxkQsb
         3Frw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=M66Xqbib3jxWHl0Zo9EsaSkpUQSezfQpVd1dql9x5f0=;
        b=pE7/qbZZBA4KhnJfxOQpLBRM1Qrx/KJutQoor6m1bgv0kEs1qP5HwnUsA5JPcckoSu
         /kp+JRDBFbXt89WYnvj4WqRkKGzu0u02LxoQS80PPNYvIwIslkenHS6a4QQGRo8leQ42
         fkuxplOr3uQhOGVcVCNDo2NUYQOCBHI4jiMW+mPmDSeotgbeb0wb5boCQ4ZUBHpITcsv
         vGjE10hQtrY3f/spw+xFY3FzxQDsAWFRuKesYGSZho+btqAnMfww90bNiMyxxYJ+1++h
         eVYv//UUCdsJyU7Qk3b03Dl5utdmHZ10Bdhibuk1Pb4A/7CGjDvn4KxA89s5xDWqJegl
         6Jxg==
X-Gm-Message-State: AOAM531P4wwNx7daJ/FJLBnpULCn5hknk90eQCpK8DPFub1uB5pIW3Ep
        HhytVqCqG9kKhpHd12gB71vbpxModv03og==
X-Google-Smtp-Source: ABdhPJx5slPijII0Mz3wqmT5afERKxgAnnrFAuaQ1q2SQC34EA7BS8DNA2X86u4FQJuXgEbmsLLXDA==
X-Received: by 2002:a1c:4187:: with SMTP id o129mr3517237wma.113.1599851842567;
        Fri, 11 Sep 2020 12:17:22 -0700 (PDT)
Received: from [192.168.1.143] ([170.253.60.68])
        by smtp.gmail.com with ESMTPSA id q20sm5856182wmj.5.2020.09.11.12.17.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Sep 2020 12:17:21 -0700 (PDT)
Subject: Re: AW: [PATCH 12/24] getgrent_r.3: Use sizeof() to get buffer size
 (instead of hardcoding macro name)
To:     Walter Harms <wharms@bfs.de>,
        "mtk.manpages@gmail.com" <mtk.manpages@gmail.com>
Cc:     "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
References: <20200910211344.3562-1-colomar.6.4.3@gmail.com>
 <20200910211344.3562-13-colomar.6.4.3@gmail.com>
 <00ae0174f35241efa962286b9247c590@bfs.de>
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Message-ID: <c2b43a9c-ae80-fae6-16a4-09c9aab73ac1@gmail.com>
Date:   Fri, 11 Sep 2020 21:17:20 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <00ae0174f35241efa962286b9247c590@bfs.de>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Walter,

On 2020-09-11 14:50, Walter Harms wrote:
> BUFLEN should  be remove completely or stay
> 
> jm2c
>   wh

Sorry that you weren't CC'd in the conversation we are having about it.
You can have a look at it here:

https://lore.kernel.org/linux-man/ab12151d-6951-2a36-2fc6-ea7eed538c45@gmail.com/T/#m423de347de6a64d099887d4ce615660d16d5b0e6

I'll CC you in the next reply there.

Cheers,

Alex
