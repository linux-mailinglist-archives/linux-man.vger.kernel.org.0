Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3165A2F8A1A
	for <lists+linux-man@lfdr.de>; Sat, 16 Jan 2021 01:57:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725933AbhAPA52 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 15 Jan 2021 19:57:28 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58450 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725934AbhAPA52 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 15 Jan 2021 19:57:28 -0500
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CFF05C061757
        for <linux-man@vger.kernel.org>; Fri, 15 Jan 2021 16:56:47 -0800 (PST)
Received: by mail-wr1-x42b.google.com with SMTP id d26so10954054wrb.12
        for <linux-man@vger.kernel.org>; Fri, 15 Jan 2021 16:56:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=gPE7ETH/Iobbopt5sSwrdKND2jAKPSqyGRci6qVBF44=;
        b=njpxM38u57/5s+UPr1axSPjFSeM9lHRm1ap25Kg4zYwNRH9jaco7YcfOyVNl91SRNe
         LozIiVDKq5tuuqXEL2phc/OdmsB12y6ELzYUdKBWyY2L3Olr5Bdko27QNf/cGojIfxob
         7jZx3yFctusorHn9IfK43AaBvJU4swqWippKfynA8RumUuK9GYFET0EpFgv6Dq6fsocH
         46RzbEtc8xhhQGrNDJ1jAhR4V7AUh6TQdNLl9jWFBtfO7Rlguu7ABgqDK2+bzhdRHhf0
         lUKMA/coPdOIxg6cHA1ijjUIoVyrAch9yiG2DW6StRscVME/5Ybq5MxxiKBPRA7z3rgk
         HlyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=gPE7ETH/Iobbopt5sSwrdKND2jAKPSqyGRci6qVBF44=;
        b=DnMHmd4o0DIq3LbeYv7I0fk2cSu2dHaMmcBUWAC7MV7YfB1zkegvWndowLCZNqcAHZ
         +3meIRFzYlPmxc/6pYHuKmJvY29j3BGTcjkRZPHXcqRaysCa4qyYS0MCbyO8A/YAFj1Y
         TRMUv0NmORLY833VAjRP0iqlk6yPBaUapvknvSPOnt2EjV6OTnal2IKc5SQYgrDNxyn0
         JCNZzN9LHl0hZjE254VXZdkQ1SpS5pZkE2Lwyk07dHJhfKAevcVL2HRRqSxWCEGrt76S
         ZPLkf93NvI9Jksv3xWrkRxNSIhinvSTVfIF5y5URzv2sUq5ruvYy4HlYQR/PGG1KgvDv
         hxSw==
X-Gm-Message-State: AOAM531bnSuHZexI2in6mGo99NiHpUf0gZL4R3g1ato3y8EJxiy7ebYT
        HspV9i9KUQXDzcX+Vjt1TndQa/ocfRQ=
X-Google-Smtp-Source: ABdhPJy5jtrhNjysvHwjHAqbyeaS+J4q/UyUBqYHwsSL1AQeS1Km8mT0aSlnQLJM5yi3CWJ+bpg3ww==
X-Received: by 2002:adf:9467:: with SMTP id 94mr15994472wrq.235.1610758606660;
        Fri, 15 Jan 2021 16:56:46 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with UTF8SMTPSA id u26sm13628415wmm.24.2021.01.15.16.56.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Jan 2021 16:56:46 -0800 (PST)
Subject: Re: semctl(2): data type for SEM_STAT_ANY
To:     Martin Doucha <mdoucha@suse.cz>
Cc:     linux-man@vger.kernel.org, mtk.manpages@gmail.com
References: <14010457-560b-5c2f-d840-782be5f0aeb8@suse.cz>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <51ff866c-fac2-fd13-1ac4-0b9537b8a1e4@gmail.com>
Date:   Sat, 16 Jan 2021 01:56:45 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:84.0) Gecko/20100101
 Thunderbird/84.0
MIME-Version: 1.0
In-Reply-To: <14010457-560b-5c2f-d840-782be5f0aeb8@suse.cz>
Content-Type: text/plain; charset=UTF-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 1/15/21 4:35 PM, Martin Doucha wrote:
> Hello,
> there's a minor error in the semctl(2) man page, the correct data type
> for SEM_STAT_ANY return buffer is "struct semid_ds" because the kernel
> code path is the same as for IPC_STAT and SEM_STAT:
> 
> https://github.com/torvalds/linux/blob/5ee88057889bbca5f5bb96031b62b3756b33e164/ipc/sem.c#L1789
> 
> The man page currently says that the data type for IPC_STAT and SEM_STAT
> is "struct semid_ds" (correct) but then it says the data type for
> SEM_STAT_ANY is "struct seminfo" (wrong).
> 
> https://man7.org/linux/man-pages/man2/semctl.2.html
> 

Hello Martin,

This was fixed a few days ago.
Please, check commit 43ebbd192571b221b975c0d94bda3bcf0d633338.

Thanks,

Alex


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
