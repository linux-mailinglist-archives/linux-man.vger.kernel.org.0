Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id F23D320F29
	for <lists+linux-man@lfdr.de>; Thu, 16 May 2019 21:22:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726736AbfEPTWR (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 16 May 2019 15:22:17 -0400
Received: from mail-wr1-f42.google.com ([209.85.221.42]:41508 "EHLO
        mail-wr1-f42.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727431AbfEPTWR (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 16 May 2019 15:22:17 -0400
Received: by mail-wr1-f42.google.com with SMTP id g12so4323085wro.8
        for <linux-man@vger.kernel.org>; Thu, 16 May 2019 12:22:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=8jLOxQdSwnBS3LSjLZwXeyj8vs5dHCSBsM1P3jUFAy4=;
        b=SCPYezGaCqgRaQjPKtK06j/aKbj5SzAixK4EvuTKMn9Zykd58fFxIwUbjG5pCFn4N6
         nUkyQdL2+N4dtahHiJbSr6ZvnYegPY4/cMAibA+moAIriuc4xyAaFolbZII+hz08/B3r
         mGQPUHOXUc7YeURzQyfD9OnpVaPJoUimYQo0a9Gtrm6yvlikJJvPC3/taXaAaHhlWRvQ
         mFhM9oxGUlmvMdj1fbxpFuLICxMegfCktJ05MXV2YQxVH+ER/nrUkSxakjOKTuqiDPbo
         W7gnl03u0YuRw8I8kffK3gs9/dH+BhT/X+TsdpQDUm/tfTLwNfgUYZ8B1+N/WRMQsmQd
         GbDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=8jLOxQdSwnBS3LSjLZwXeyj8vs5dHCSBsM1P3jUFAy4=;
        b=NwohQbZ+jCTGB3l94CAlSThYC/Ssx5UVuyxMF/QeFCHLRAz0XfbyU4XviDNtQHCkUF
         qrgSYZQDKh22Dle7Wrz1rAlP98esdEwwcjsaUuwg8PV0xfBizC3UbX8+Mcyh16A6KlVD
         1Vz498faAtR0mke2jO/GEkxercHoLQGlQN0CHbXGwi03IbN8qa0J912l9ut86QoUMpUW
         njxYXbzDBJV6GIhFVwFIfLZ3EZQ+U3yFrLpryhzt6+Uj5Uy9KSTDOgOeI3HOB6YByJxb
         bPTPpPvmw/2hk/TGfZ3QVvSvLEzeuGe+58O4hz5VkqBP+PNozP29kdZv1L+q8FYMh7YO
         XjnQ==
X-Gm-Message-State: APjAAAUFRjwA6iqpxmbcbu8cy1H8QTr7hH41CzGO1KqJac4xAnLP0CL5
        fqDHqYYEzzT1qs+YX9yTCAx5MmwY47U=
X-Google-Smtp-Source: APXvYqyuDSTPJ7DEwtfTpuEKATBmUSqRtG8P/1bP2lU4mcBclLmZaAJqbc+NMEK+lZJI76oVqd9Dkw==
X-Received: by 2002:adf:b645:: with SMTP id i5mr32595265wre.272.1558034535573;
        Thu, 16 May 2019 12:22:15 -0700 (PDT)
Received: from [10.105.146.2] ([88.128.80.89])
        by smtp.gmail.com with ESMTPSA id o81sm7347195wmb.2.2019.05.16.12.22.14
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Thu, 16 May 2019 12:22:14 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: Spelling mistake in prctl(2)
To:     Arnaldo Carvalho de Melo <acme@kernel.org>
References: <CACZ6sNzK=Wvm_+RLYAhZN22SG68TdvBBW32xmFhk++Vpz=ZHOg@mail.gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <6af6e5a0-3245-29e0-4828-3979fa711698@gmail.com>
Date:   Thu, 16 May 2019 14:22:08 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CACZ6sNzK=Wvm_+RLYAhZN22SG68TdvBBW32xmFhk++Vpz=ZHOg@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Tomas,

On 5/16/19 7:21 AM, Tomas Skäre wrote:
> Hi,
> 
> Saw a small spelling mistake in the man-page for prctl(2), under
> PR_SET_KEEPCAPS:
> 
>         PR_SET_KEEPCAPS (since Linux 2.2.18)
>                Set the state of the calling thread's "keep capabilities"
>                flag.  The effect if this flag is described in
>                capabilities(7).  arg2 must be either 0 (clear the flag) or 1
>                (set the flag).  The "keep capabilities" value will be reset
>                to 0 on subsequent calls to execve(2).
> 
> The "if" in the second sentence should be "of".

Thanks. Fixed!

Cheers,

Michael
