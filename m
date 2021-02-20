Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 170AF3205BA
	for <lists+linux-man@lfdr.de>; Sat, 20 Feb 2021 15:36:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229771AbhBTOfL (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 20 Feb 2021 09:35:11 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40426 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229766AbhBTOfK (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 20 Feb 2021 09:35:10 -0500
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com [IPv6:2a00:1450:4864:20::631])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1695FC061574
        for <linux-man@vger.kernel.org>; Sat, 20 Feb 2021 06:34:30 -0800 (PST)
Received: by mail-ej1-x631.google.com with SMTP id t11so21234195ejx.6
        for <linux-man@vger.kernel.org>; Sat, 20 Feb 2021 06:34:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=3h4AkO0U9nQyBoSGyzVFD7CS/yffbIn4i9JwYV07atw=;
        b=guHg7GqL6knPbQ8MhauEZkGRgyR0t6NRpwrO/v2N51nsC5nnZ05pKAqAJjiuxMR7ym
         6ZHfj29TodGZ+UKMG+X8unHgpiIivOHJIIkiG0FjWVMhCXfAAynzcJD9NV5wvoAdOyZg
         /AsljUXrO+2ZCrSnZ8N2T9HbWSxdVDEPNnMjaenqh6NgkPKInZDWodXceI/Yrs7zlOPS
         sJMG+h+JgUFd2PQufSpzb1xJtWrzGuqzPf4pCp6JLq6JYY0687rdzRP4DO3BEUw/1ODT
         JYVZHLFnVOOpGRPrTv5IQBidPXhprpDxTx0/bHep26q0twclBNY4kz4JSBuKUgvc2mDI
         cZWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=3h4AkO0U9nQyBoSGyzVFD7CS/yffbIn4i9JwYV07atw=;
        b=pE1uX9ZXK27BM6KCUm13srW0mHlu8zHTT1GtvYsnA8xZVvaLqRA5uRZsxF8t1p0B4X
         tcEGj9R8Vs3ewaxHCJQlc0dbdQo+Y4HcWuQ8RnX4yBaktokvZcFE642RKNHmcTfg+ZkH
         aMIVN+aKkRB8nkHlstWrZpG32XhpKS43RBfIHNR6Heegn4/H6eQndUIhQ6RiWuCizJZB
         DIisTbzpMusfRvOPLl6RLhMS6aNDKysb2s0NXo1zUe4euHFBBC4gUAL7PYU9dTcsM5Cd
         FrpT7hH9luF+ad22hVxfxTShS6hVA4+Ga00tSIzm/tewNUHBCGcIsghLcTAQXMz7cFQ5
         QY0Q==
X-Gm-Message-State: AOAM533/mZxG+K0p9IiGnRR/MZTfFhK+LBY9b8pP9C1i21H3Ao2hVQID
        JSsZzNFb22oX8KMJ35HGy10e6bDu2H6McQ==
X-Google-Smtp-Source: ABdhPJz9KeYBk71ugoL4GpmpCldrQ9Snf3mW+vmB/NOJpSsS+QbBOD9X8LM6scSdm1HKywD0lb5Fww==
X-Received: by 2002:a17:907:20ae:: with SMTP id pw14mr13122500ejb.454.1613831668666;
        Sat, 20 Feb 2021 06:34:28 -0800 (PST)
Received: from ?IPv6:2001:a61:3a2d:1d01:99ab:4f20:ed7f:402b? ([2001:a61:3a2d:1d01:99ab:4f20:ed7f:402b])
        by smtp.gmail.com with ESMTPSA id q13sm6651306ejy.20.2021.02.20.06.34.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 20 Feb 2021 06:34:28 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: Fwd: exit: Bug reporting
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>,
        Dave Chupreev <cdn.dev@yandex.ru>
References: <268231613796665@mail.yandex.ru>
 <4c169a8f-4368-3423-1af1-e7f6ba7df8b9@gmail.com>
 <90ba66dc-8c1e-fea9-20f5-16ed65535d00@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <e9e55f48-104a-703b-9d15-939daa04cf6a@gmail.com>
Date:   Sat, 20 Feb 2021 15:34:25 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <90ba66dc-8c1e-fea9-20f5-16ed65535d00@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

> I hope I was clear and precise.  Michael, please correct me if I was 
> wrong in some point.

That all seems thorough and correct to me. The only thing
I'd is: this is how it has always been. Even before Linux, the
_exit(2)/exit(3) distinction existed, and the names are long
understood to refer respestively to the syscall vs the libc
API. So, while the syscall on Linux is SYS_exit, even in the
section 2 page, where the interfaces SYS_xxxx are documented as
xxxx(2), we retain the underscore for _exit(2). At least, that
is how I've always understood it.

Thanks,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
