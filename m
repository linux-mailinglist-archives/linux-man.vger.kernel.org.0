Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9C3E82668AF
	for <lists+linux-man@lfdr.de>; Fri, 11 Sep 2020 21:24:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725815AbgIKTYZ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 11 Sep 2020 15:24:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42718 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725770AbgIKTYM (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 11 Sep 2020 15:24:12 -0400
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B22CFC061573;
        Fri, 11 Sep 2020 12:24:11 -0700 (PDT)
Received: by mail-wr1-x42e.google.com with SMTP id w5so12501694wrp.8;
        Fri, 11 Sep 2020 12:24:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=1mfwa+bfzGByFN7dyl+NfuUTCSKakmUOReWHAYo+s6Q=;
        b=i+gqQpVdc1yKBM/qpcJKtRghF/U68gVAi0xr+4Rk75dMAWnl+S4EarnGXaggqqzYob
         8YVnZT0JKZntIfGwt+KBK25yqdQZhR9Q+rPX8hW6n/QUyvdm0P6ufyMXZ7RJPRwN57MA
         Se33qW8OsVREREcLz+rWZUGoRbHemAKGg9PBeyk9k0PgoQOUdRJcnAVb8i8k+WAJnQth
         bAJNpHO+vkh0oFbRP7lBbFsTgm5wiYeQC1CzxucSzPV0kMm/k6qH5LXMPiAZOQgCWCCp
         59Q67wU1Af79DP0k38u05aNVz9LFuQa2r8tjF49d/ETBjDH5ikfxSUOgoUPpt5BvyYMF
         8QyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=1mfwa+bfzGByFN7dyl+NfuUTCSKakmUOReWHAYo+s6Q=;
        b=NNZd/ZqJcmsTBUifp2KZF5ewGJpV0vexI6KqucLyCoWe+jmfBfFvbBd98SWEcCm0FT
         sNarrXg8JfgZ+2kfjxoA9bbV47QkRpcLdOGDbNVb/CRTcdWMAsfms+eFFGJza6uE7Tx/
         iGOVFqQ7DsJHMzlVhRbOOs4IPSQ31tI5ffLv5JzA+JrM10sh1LATA4sVRAnHN6UcAAM4
         PNDczHEY4M/LmD3Oxcy83TobRGnWnntnUkhbfsOD6pOB+HJ1VHzp/jw0kH1tKdK/cSQq
         HdxD/c+e5gmW2VXbmstzyJLsoslLhCj+5BrulsuzevYldF3VXPnoV5By5rmYVewNItfu
         s/dg==
X-Gm-Message-State: AOAM5324OJyqKTCxgn413uukMKwuvgTRUOfqp+GOkyYK7TSaknl7dgKL
        i/F6KEKEbWxSsxIc/iDqNeCERsuwJkDsOg==
X-Google-Smtp-Source: ABdhPJzdilnfVr5wS0eFl3XNnyZ65+ZE1fauA4XAzww2Ohzj9LOBDGeLTdsIPVs8F3n/WgDosPqklA==
X-Received: by 2002:a5d:674c:: with SMTP id l12mr3450964wrw.325.1599852250003;
        Fri, 11 Sep 2020 12:24:10 -0700 (PDT)
Received: from [192.168.1.143] ([170.253.60.68])
        by smtp.gmail.com with ESMTPSA id f6sm6225270wro.5.2020.09.11.12.24.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Sep 2020 12:24:09 -0700 (PDT)
Subject: Re: AW: [PATCH 17/24] get_phys_pages.3: Write 'long' instead of 'long
 int'
To:     Walter Harms <wharms@bfs.de>,
        "mtk.manpages@gmail.com" <mtk.manpages@gmail.com>
Cc:     "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
References: <20200910211344.3562-1-colomar.6.4.3@gmail.com>
 <20200910211344.3562-18-colomar.6.4.3@gmail.com>
 <c15e4262afea4820961bd36e3386b582@bfs.de>
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Message-ID: <14eaf338-2a29-18fe-c319-bcaddd5f86d1@gmail.com>
Date:   Fri, 11 Sep 2020 21:24:08 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <c15e4262afea4820961bd36e3386b582@bfs.de>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



On 2020-09-11 15:07, Walter Harms wrote:
> 
> 
> sys/sysinfo.h:extern long int get_phys_pages (void)
> 
> for the real world i would say that long int == long but for the same reason
> i would say what the include says and stay away from discussions.
> 
> jm2c,
>   wh

I think that the man-pages don't need to follow other projects' 
inconsistencies.  'long int' == 'long', so I think it's better to be 
consistent here and hope that the other projects do that too.

A newbie may see 'long int' and 'long' used differently in the man-pages 
and wonder that there might be a good reason for that to happen, and 
won't understand why.

So I stand by this patch.

Cheers,

Alex
