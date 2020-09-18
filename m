Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6373C27083A
	for <lists+linux-man@lfdr.de>; Fri, 18 Sep 2020 23:28:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726280AbgIRV2N (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 18 Sep 2020 17:28:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36100 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726118AbgIRV2M (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 18 Sep 2020 17:28:12 -0400
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com [IPv6:2a00:1450:4864:20::344])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 98C8AC0613CE
        for <linux-man@vger.kernel.org>; Fri, 18 Sep 2020 14:28:12 -0700 (PDT)
Received: by mail-wm1-x344.google.com with SMTP id z9so6899928wmk.1
        for <linux-man@vger.kernel.org>; Fri, 18 Sep 2020 14:28:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=ScpxNu8e6FygzljuAnzGDlLyn7gOa/ixuTXPKSJfHcU=;
        b=U6kz9j8OR6jsoV/1S9H1zP/1XytMbCWQD9Axuv84BIFHWY22ENUo4rL7zdOJF/38Dm
         56xBbUViFOCAmZfx6Bn9rFJxws3NsODbiawRtaddAj+2WsKkjzj4KwPkcLachQ0nQUgB
         Jvyt3wddavEgLUtIGc5b+BwdGukbjNmpZDjfjBTyrZa7Jsg+HRhFFVthykMeziy9AzkA
         sZvOTcDn7XMTSJje3UlThMETphQbhUz3PpPmWqPuo0Hzf0z6J9K2PSJaudFyWBWOuatT
         5k7SE54lrPyNaR94M68pyrvYsLN9hbFknFZ2j3I1qFaopgYgjYLoBKyd1aLpwyaF80BQ
         ifgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=ScpxNu8e6FygzljuAnzGDlLyn7gOa/ixuTXPKSJfHcU=;
        b=OXatvudv0IZY4we/2bpJL5meC+uPMevf/TJjVsasPcLo4+6jCGczDlReyyEL+i8bib
         MfuJE6VnsRTbxDV+9Wv80OnzgF8J7yivTZTgjwv6WotStmcelaElH5sQQjl/GQaL0guN
         JjWFogA+XgbS7Vx5xs7/32MYOxSNDwxuzJ2nk8OivNHGwdQ4p3rdjertMWrqJTU9L4ap
         cyzXmOl+Np4Ol1kb0SNL1zxOT5DfgXP5KHaddLZXLR8D4alV4xRDvMFTu3sEnaeJN+vB
         l0Hob/qvXafwPpQXWiv66BcvWpkoXjjrGJGyac6/8a69YCius+iAVRbmYQPiu59HJlWh
         Mujw==
X-Gm-Message-State: AOAM530q/rNVEOqgF6wj1t9WTF1pkzQS6t0G9Cs2x9SP63wcEzIShJto
        dg5IQNbT2De3flQYdHjLmNE=
X-Google-Smtp-Source: ABdhPJyuu3fCPxqWG6XS7I99xWbCDeDjTAa+oL8uav3Gcts4BP8VtEo2qzOufjhDsvD30ucbK/9HKw==
X-Received: by 2002:a1c:6a11:: with SMTP id f17mr16391426wmc.143.1600464491296;
        Fri, 18 Sep 2020 14:28:11 -0700 (PDT)
Received: from [192.168.1.143] ([170.253.60.68])
        by smtp.gmail.com with ESMTPSA id 70sm7073282wme.15.2020.09.18.14.28.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Sep 2020 14:28:10 -0700 (PDT)
Subject: Re: [PATCH 0/2] Document size_t
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, libc-alpha@sourceware.org,
        Paul Eggert <eggert@cs.ucla.edu>,
        Florian Weimer <fweimer@redhat.com>
References: <20200918112755.21428-1-colomar.6.4.3@gmail.com>
 <c357dd2a-71b0-4f23-55e6-fbde975ae5ee@gmail.com>
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Message-ID: <16920ef9-1b0d-b582-b87e-fe915522ccd1@gmail.com>
Date:   Fri, 18 Sep 2020 23:28:09 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <c357dd2a-71b0-4f23-55e6-fbde975ae5ee@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



On 2020-09-18 22:13, Michael Kerrisk (man-pages) wrote:
> I realize you may want to add some pieces, after the comments from
> Florian and Paul, but this patch series is good for merging as is, and
> I'm merging it. You can send a follow-up patch mentioning %zd and %zu
> when ready.

Yes, I've started a new thread; I also thought this patch was already 
complete.

> 
> 
>> In the See also, I just put a few important pages.
>> Maybe you want to include a few more.
> 
> I added read(2) and write(2).

Fine.  I didn't remember their arguments are 'size_t'.  I was under the 
idea that they used 'ssize_t'.

Thanks,

Alex
