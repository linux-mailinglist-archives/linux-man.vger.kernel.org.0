Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6578C1AFDFB
	for <lists+linux-man@lfdr.de>; Sun, 19 Apr 2020 22:19:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725891AbgDSUTd (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 19 Apr 2020 16:19:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51048 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725848AbgDSUTc (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 19 Apr 2020 16:19:32 -0400
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com [IPv6:2a00:1450:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4741EC061A0C
        for <linux-man@vger.kernel.org>; Sun, 19 Apr 2020 13:19:32 -0700 (PDT)
Received: by mail-wr1-x444.google.com with SMTP id u13so9619714wrp.3
        for <linux-man@vger.kernel.org>; Sun, 19 Apr 2020 13:19:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=xhxzlS1LkCnxEhWfnPgkebPNzjzrm0v8F8RGhCxmCPM=;
        b=D1cGLRWpeZIlb/o4mbZAq2NvlHzjehiijVF4zbejHIeIUzWDVIg/2y6KyTySE1ayFd
         VLJdkln9KrQRYUWw9lkg8HR0duRV1Fqu44Kt3SCySGUm3TEhXgTGqPsdOU0Tg7UFKoh1
         OqDkPEKEiPrTMWBcjzCpYqKaTHcn6/MkPYmvH4sfNnSf/VDkShSEBVKYstDiTy9DZWjy
         AyFafJMf32s0sEiW7r3i2VZbzP/x5k1TaW32tzQw1+6e6MmY53aj/4L4syQnKMadLh0W
         C3/L9EypJhSDAsuHxzoEqwdd33hzR2zJPIYyNN1q8dv79VOFfURZfEr3lPyRNJ4k5Kg8
         NPTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=xhxzlS1LkCnxEhWfnPgkebPNzjzrm0v8F8RGhCxmCPM=;
        b=ErYs/sCHqn6nroX1+a26SzSHo4NTVVewNOBl4uvVh0F6EBs8NW96xwVNsRmR0YZDdm
         oapNWE+2F+A1HAo8JCBwZwJxkRuqcxfBbe90JP6yD3A6/qVEqHVIM7XGn+94DKoThlMk
         dGOYu35oqs4y94hVio++sVj0SNreNY1eeWdtXhAEY5/sRibiA1D6yXvPOOLgd/NtB7ZT
         ajtJ0PfYv0lxrTsKwaCCrS9S5JaxRMkHrfkSm21MVQkUn5nXjidssYQ81FZpztF1oW3v
         iqp/lzugGegPD8TVsQ8vqFR7uywaV2iSN0biSU4tGQpAggIYwPxeuyNq/7BGfOsUirqy
         NJYw==
X-Gm-Message-State: AGi0PuaRj8TsHrG+D73tv2XebmjXeJkob1LfOwS/RYQUuSK7Ch41R2D1
        Pj+JZQpUATMVBMbKGxTqdV+Sfpk1
X-Google-Smtp-Source: APiQypKGo3AuLm294n7C6RyIsAceXSmr9buJx9Lqj2pyWlO9IMw/l5Rkwt8oGrZgmYJwO+oePjSGYA==
X-Received: by 2002:adf:a15d:: with SMTP id r29mr14190486wrr.134.1587327570765;
        Sun, 19 Apr 2020 13:19:30 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:3351:6160:8173:cc31? ([2001:a61:2482:101:3351:6160:8173:cc31])
        by smtp.gmail.com with ESMTPSA id y70sm12483578wmc.36.2020.04.19.13.19.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 19 Apr 2020 13:19:30 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: Errors in man pages, here: initrd(4): Superfluous word
To:     Helge Kreutzmann <debian@helgefjell.de>
References: <20200419064806.GA30909@Debian-50-lenny-64-minimal>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <fd3e414b-5227-ca3f-a9cf-eb3abf66c90a@gmail.com>
Date:   Sun, 19 Apr 2020 22:19:29 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200419064806.GA30909@Debian-50-lenny-64-minimal>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 4/19/20 8:48 AM, Helge Kreutzmann wrote:
> Dear manpages maintainers.
> the manpage-l10n project maintains a large number of translations of
> man pages both from a large variety of sources (including manpages) as
> well for a large variety of target languages.
> 
> During their work translators notice different possible issues in the
> original (english) man pages. Sometiems this is a straightforward
> typo, sometimes a hard to read sentence, sometimes this is a convention
> not held up and sometimes we simply do not understand the original.
> 
> We use several distributions as sources and update regularly (at
> least every 2 month). This means we are fairly recent (some
> distributions like archlinux also update frequently) but might miss
> the latest upstream version once a while, so the error might be
> already fixed. We apologize and ask you to close the issue immediately
> if this should be the case, but given the huge volume of projects and
> the very limited number of volunteers we are not able to double check
> each and every issue.
> 
> Secondly we translators see the manpages in the neutral po format,
> i.e. converted and harmonized, but not the original source (be it man,
> groff, xml or other). So we cannot provide a true patch (where
> possible), but only an approximation which you need to translate into
> your source format.
> 
> Finally the issues I'm reporting have accumulated over time and are
> not always discovered by me, so sometimes my description of the
> problem my be a bit limited - do not hesitate to ask so we can clarify
> them.
> 
> I'm now reporting the errors for your project. As requested, each
> issue is sent in an unique mail for easier tracking on your side. If
> future reports should use another channel, please let me know.
> 
> **
> 
> the this → this
> 
> "Specifies the device to be used as the normal root filesystem.  For "
> "B<LOADLIN> this is a command-line option.  For B<LILO> this is a boot time "
> "option or can be used as an option line in the B<LILO> configuration file I</"
> "etc/lilo.config>.  The device specified by the this option must be a "
> "mountable device having a suitable root filesystem."

Fixed. 

Thanks

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
