Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1F6B43E50C8
	for <lists+linux-man@lfdr.de>; Tue, 10 Aug 2021 03:54:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236500AbhHJByz (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 9 Aug 2021 21:54:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59692 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236481AbhHJByz (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 9 Aug 2021 21:54:55 -0400
Received: from mail-pj1-x102b.google.com (mail-pj1-x102b.google.com [IPv6:2607:f8b0:4864:20::102b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ECF68C0613D3
        for <linux-man@vger.kernel.org>; Mon,  9 Aug 2021 18:54:33 -0700 (PDT)
Received: by mail-pj1-x102b.google.com with SMTP id lw7-20020a17090b1807b029017881cc80b7so1994752pjb.3
        for <linux-man@vger.kernel.org>; Mon, 09 Aug 2021 18:54:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=1tBa5kRnGKBTSdqRDgV3lOp/H5TxZsAL81/FEBDiB0U=;
        b=WDR5eBf9bd9wMkTVzLyEFu2mTsA7UMgM4uv4C/HS0M0ZF9+O8cfQmQMR8ya766TTRU
         mkSsHAaUV3H80Gvkqc10W2VACMyIgG4SagvmJdQYi73I+4fupmg6Io3WrzXbTeqsXRSu
         PpUK/s0ZV25pQi9snEpJeZHpMjeCDIDt4AVWts1LhxWdHqwH/emCKTFiDkIvzF1DpBjk
         sDd1lhlnOwQVUFBfYLeBBctqPLc666WMOWu7PG5VPR5RpI6t8cc7+y2yY08tr8zR7FvP
         TmYKQ1Ki6UHE4hJ562G/vr+XOR4zf3JaHz2kuTl5NyiApqrV+bXOY0CyaWhYXvZkDszk
         iS3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=1tBa5kRnGKBTSdqRDgV3lOp/H5TxZsAL81/FEBDiB0U=;
        b=UUee+9fip2wPlHAR7QSr1XfRbNVjLKc/WcszwDJynwrZUwLe8wh5z/JBufJns412Bz
         +gCHJA4aV0HSOzRAqK9cjJ4ameu5m2KnSORCenL1Iwa3nnLmz+sXfLzOUojmfUDkA0wl
         qqQHicnLSz+s33q+MgF+lg+GacHO8+DktTL8L+s9BveM8vgM6MSGfrVDUO8/FxDWnGxN
         gE3WzmLQ06PqAX04DzCSXxsPAQjuIh9ezVbKWwFzWy+352viwNtf4r1Aknvd6+9s6Mzn
         yA0SOE17Lj8ck8qNw/3ISq3J2IMyb0ylHxgplQhft1V5sjypH46rvJqjH3qdy+Rzik98
         WirQ==
X-Gm-Message-State: AOAM5335luB9LhR8QpqKKWq9ZqElui2rWhRMmN67yraqOsvfgKMOOJqy
        ZaH70SqIb7Ru/Tt0QHw6Dla2NUkOO2E=
X-Google-Smtp-Source: ABdhPJzSW/00xJRcvv4u2iJN2GarmXQ6oV469pKjWaP9QKphHAt5m3FuJDg3lNeIAzWDWsNXSLB0qA==
X-Received: by 2002:a17:90b:4016:: with SMTP id ie22mr29166055pjb.68.1628560473279;
        Mon, 09 Aug 2021 18:54:33 -0700 (PDT)
Received: from [192.168.1.71] (122-61-176-117-fibre.sparkbb.co.nz. [122.61.176.117])
        by smtp.gmail.com with ESMTPSA id n1sm26607194pgt.63.2021.08.09.18.54.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Aug 2021 18:54:32 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: Errors in man pages, here: ioctl_tty.2
To:     Helge Kreutzmann <debian@helgefjell.de>
References: <20210725170739.GA16534@Debian-50-lenny-64-minimal>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <44277219-5d1d-b015-f45a-67516c9e4a0c@gmail.com>
Date:   Tue, 10 Aug 2021 03:54:29 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210725170739.GA16534@Debian-50-lenny-64-minimal>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

> Man page: ioctl_tty.2
> Issue: B<TIOCUCNTL>, B<TIOCREMOTE> → B<TIOCUCNTL> and B<TIOCREMOTE>
> 
> "The BSD ioctls B<TIOCSTOP>, B<TIOCSTART>, B<TIOCUCNTL>, B<TIOCREMOTE> have "
> "not been implemented under Linux."

Helge, 

I fixed this already, but maybe I didn't respond to the email.

Thanks,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
