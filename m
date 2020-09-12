Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7E9E02678DA
	for <lists+linux-man@lfdr.de>; Sat, 12 Sep 2020 10:32:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725809AbgILIcA (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 12 Sep 2020 04:32:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51130 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725832AbgILIb7 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 12 Sep 2020 04:31:59 -0400
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com [IPv6:2a00:1450:4864:20::442])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DA394C061573
        for <linux-man@vger.kernel.org>; Sat, 12 Sep 2020 01:31:58 -0700 (PDT)
Received: by mail-wr1-x442.google.com with SMTP id t10so13638056wrv.1
        for <linux-man@vger.kernel.org>; Sat, 12 Sep 2020 01:31:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=cXRdLwfz+tYBbWCA68vbkrmh/gGypF6cwLIQuAX2FJM=;
        b=dVmMDL69VHfGGfbbENLZI7kZXHjVzu7tGjdvvw/SmuLN/VAGMGnNTuQkMhIM/zruqv
         a9q5/une+e5oMJGJ4O6U/7osIBBtDO6EefBbwO9SydWSPviOLDsoC4THI07UyNkXt5Xq
         cRhqrLHf15y0I7AxTIYw9//UJkvQgEVGmnRzkn9oeOj2lL4fwviAu3xktuCMoUp8w7fy
         LTPyUHac4+YgKH5ahsMHebWM1wS24/uoxcSHVpgDOpkyDYyUZ3LURnV8AgmOTMVlZY4x
         wXWLMGRj0fiocoxseaTYNhm8GL5iTnwEXx/CJ0JpBohnwnAtL297e3mTjoZ/5sD2s/5O
         2mqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=cXRdLwfz+tYBbWCA68vbkrmh/gGypF6cwLIQuAX2FJM=;
        b=GkM6+mEYC04J40hCM86rioEXr2C/YCiXDO/tgLtmkXENIj7LUOOiEUoN1HBoHv4vKp
         QG1kBj1Xzo7yWVAjHY5A7P6tc8hF4goHbZFnEDreKgu5SDi32dIZ6UxR5t/9cLOnlGq7
         qISsKMkhMibjBUp1qpChwCN3h22blr7+iIlmPVQYNQpnU+xa8mQbP9nZuVGbT8KqD4Qo
         NxboGuz+jKqa+LfY+MOnR+V/paQF4pfUX2u3GPwhW1bTO6BSrqdY9linumz4nY4IGZ+e
         kYo04IB86OUVP0BqdMofN864CIKqnmz/aNhK8VZhB+VOKJITtHDXMr2DSE9Wyeh1kM0F
         z4zw==
X-Gm-Message-State: AOAM531tK5oJTeEgjj9JvcmOI70n1LxhnW4EvV183yKMUfFMLbu3Ou57
        f5IwJ5PkWg4S8CNAALABocATDz1sv2Q=
X-Google-Smtp-Source: ABdhPJxZbqGDh6ZhOSOEihYWsxTRRs9Z+UJ5/egzHCgHPQKz9Zl03yhlWKqoe3SRirJU70Y5o2xDiA==
X-Received: by 2002:adf:f207:: with SMTP id p7mr6314203wro.152.1599899516004;
        Sat, 12 Sep 2020 01:31:56 -0700 (PDT)
Received: from [192.168.1.143] ([170.253.60.68])
        by smtp.gmail.com with ESMTPSA id d2sm9183635wro.34.2020.09.12.01.31.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 12 Sep 2020 01:31:55 -0700 (PDT)
Subject: Re: [PATCH 01/12] dl_iterate_phdr.3: Cast 'ElfN_Word' to 'uintmax_t'
 for printf()
To:     Jakub Wilk <jwilk@jwilk.net>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>, linux-man@vger.kernel.org
References: <20200911231411.28406-1-colomar.6.4.3@gmail.com>
 <20200911231411.28406-2-colomar.6.4.3@gmail.com>
 <20200912055232.s6lp2hspbuwvscps@jwilk.net>
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Message-ID: <77bd61be-5044-c14c-a888-a09e64d14d39@gmail.com>
Date:   Sat, 12 Sep 2020 10:31:54 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20200912055232.s6lp2hspbuwvscps@jwilk.net>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Jakub,

On 2020-09-12 07:52, Jakub Wilk wrote:
 > * Alejandro Colomar <colomar.6.4.3@gmail.com>, 2020-09-12, 01:14:
 >> -        printf("    %2d: [%14p; memsz:%7lx] flags: %#x; ", j,
 >> +        printf("    %2d: [%14p; memsz:%7jx] flags: %#jx; ", j,
 >>                 (void *) (info\->dlpi_addr +
 >> info\->dlpi_phdr[j].p_vaddr),
 >> -                info\->dlpi_phdr[j].p_memsz,
 >> -                info\->dlpi_phdr[j].p_flags);
 >> +                (uintmax_t) info\->dlpi_phdr[j].p_memsz,
 >> +                (uintmax_t) info\->dlpi_phdr[j].p_flags);
 >
 > The commit message is misleading. ElfN_Word is always uint32_t,
 > regardless of N. On the other hand, on 64-bit architectures the type of
 > p_memsz is Elf64_Xword (i.e., uint64_t), not Elf64_Word.
 >

Thanks for noticing that.  I had doubts while reading the man page.
I think it could be a bit more clear, but maybe it's me that I don't
speak elfic :p

Maybe 'ElfW(Word)' would be more appropriate?

Thanks,

Alex
