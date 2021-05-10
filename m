Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C983D3796C7
	for <lists+linux-man@lfdr.de>; Mon, 10 May 2021 20:03:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231563AbhEJSDu (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 10 May 2021 14:03:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55808 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232977AbhEJSDs (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 10 May 2021 14:03:48 -0400
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 54916C061760
        for <linux-man@vger.kernel.org>; Mon, 10 May 2021 11:02:43 -0700 (PDT)
Received: by mail-wm1-x333.google.com with SMTP id g65so9704315wmg.2
        for <linux-man@vger.kernel.org>; Mon, 10 May 2021 11:02:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=uVvRF6epk9Yhq5/vhGwNhCqJMu4hKu1ZMycGbVNbHh4=;
        b=Rof+DaUumGWK7/XXt21KGPsSUQjs1E07Jq4l3RQ3r9Vs+SnoPX/e7/4rcetTZwmMBz
         9AxoCHzP0BbkWskDuP4GoISXz8LJvF3S4yOx4e0aDSI5dCSJQ1R6SoRHfJ88TPH5M0hA
         ktckyfhy+fzhDfL72M0zCpdPF5u2gCkTJvsglamsStj+f/AWaqHW1iNpuTuFPeux5iqD
         v95UB5z5nEAVN5d2z+pPnZ3aIBanp5CHJrGHimYF+mc6uaCJzuDM+BcsjpyAWYQ1r5Q0
         jqNCpHbtRfnMJKArUNJWQsY8ku+xKQnAk6hzxSbEtMdiBNgA3LzQ4muKZqQVBZ+BnpO7
         nlBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=uVvRF6epk9Yhq5/vhGwNhCqJMu4hKu1ZMycGbVNbHh4=;
        b=cMcSoIHh/4XsJBDxaPxFVuHb0mETTVKb/wPfXQ2MNUgUXa6TZW4kXc5pX7wt72JPOd
         wZDyevU55BvtacB1lU2zWn1kfBxijJOGTL4lLiNaPT4sthXW0ZfuLISNAcwlE9OtUCIs
         RWwjupC/1HrYVDw8QR9/U0nwJRGvfn7RARei3wzrxgfHrZ5QuDwoeu6jHEy1jvmcMfe+
         ivXUdR2sgAW+22zw+X/l5mzHarsqGVk3quf9T5BPCcpME1TkX2O1ksCE5/QcC2UdCE5l
         tAQYKnUFDkKT8ClHIsKaXSr1miEQsaiI/MBGPXCsdpgq1CgllGXxJRQvu778vKOPUKKY
         uDGg==
X-Gm-Message-State: AOAM532JEMk4V+bOdHYdDIZUc2P6Tyu9zeFPd/ooGd7wLPI8l+SZma9P
        KRTlVbq7VRx3YNNyr6KkITQ=
X-Google-Smtp-Source: ABdhPJx57hswQs4Vbovpfh0UO4+6iCGRxZSCJkyqWLMO8BghxbeU3LAEtM42zMN4Oz5maBtj1X69vw==
X-Received: by 2002:a1c:ed03:: with SMTP id l3mr28155718wmh.130.1620669761955;
        Mon, 10 May 2021 11:02:41 -0700 (PDT)
Received: from [10.8.0.106] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id z14sm26800886wrt.54.2021.05.10.11.02.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 10 May 2021 11:02:41 -0700 (PDT)
Subject: Re: [PATCH 39/39] reboot.2: Use syscall(SYS_...); for system calls
 without a wrapper
To:     mtk.manpages@gmail.com
Cc:     Florian Weimer <fweimer@redhat.com>, Jakub Wilk <jwilk@jwilk.net>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
References: <20210510175546.28445-1-alx.manpages@gmail.com>
 <20210510175546.28445-40-alx.manpages@gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <8dce0a25-ba60-9e84-3b33-3773b8cfe8b5@gmail.com>
Date:   Mon, 10 May 2021 20:02:39 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
MIME-Version: 1.0
In-Reply-To: <20210510175546.28445-40-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 5/10/21 7:55 PM, Alejandro Colomar wrote:
> Explain also why are headers needed.

s/are headers/headers are/

> And some ffix.
> 
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
