Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2BA001AFD63
	for <lists+linux-man@lfdr.de>; Sun, 19 Apr 2020 21:25:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726025AbgDSTZn (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 19 Apr 2020 15:25:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42684 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726022AbgDSTZn (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 19 Apr 2020 15:25:43 -0400
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com [IPv6:2a00:1450:4864:20::441])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2B4CBC061A0C
        for <linux-man@vger.kernel.org>; Sun, 19 Apr 2020 12:25:43 -0700 (PDT)
Received: by mail-wr1-x441.google.com with SMTP id k13so8264684wrw.7
        for <linux-man@vger.kernel.org>; Sun, 19 Apr 2020 12:25:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=QHaMk5IOmQcomixwV9xh+jiRMVsT2gDlaTVm9RTjDaI=;
        b=suCdRaBmSJoXYyv6milYzK+E43TVMa1g6KCrHbKJzoWz3fSdCJSHG5EJYsRL5srV05
         OpZD6eAzo9sp4RhYbteYVQP3r8K4Z7+3xIlzyvJ3Yv36d24CI15f5QWBsDJ0L2V+JPQw
         EW0oEPWSyyxe/2Ur3ELXtYyc0ZCJm0IMGffn/cdoxCvC8V4kOdtTZfizmRJsIvvykmsC
         A8+I8ltNlCVkWh1dtJKM5TWnYxlSfELm/lrh+N/ScxAHNHPoOJjWOdjtUJoVA7/2ZFIl
         bMGEZsnQjuqV69OiTvdN9vg3gHUJ7ggig6KMgo/U2FcojuITtLd0puaFAh8mgEgG3mFM
         ud+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=QHaMk5IOmQcomixwV9xh+jiRMVsT2gDlaTVm9RTjDaI=;
        b=R4xPsUFjuq5/klW+W8AXoyuCPRqmcq2RakHnPK4d6lE/NfAqejmAtoVCnP3KC38Shl
         ayxrfaXfdh0W1XiQaL/tl2dNB0v8hFBQYj7GgKt1zXtm7383VaSvN4MQR7MORCiDV2KU
         wt+dSSykVbR8P1JwP9phiaiPIoYicdlkPaoF02Zo7LlQV+i7Qar9Ne8/3/ggCWOV6IHV
         RF9rVKd+dbQJK4+RMgTtndP6v/gpD9WFhUxLsZIWiONY13QVlfs1EXq1LqFJQEXSzvD2
         6JFaDxpwB9/zuE3nzNqbhI4KBMOenT8qL3R5xCOilTItzTvtzNHK9aculsqES9W88CS5
         i/sw==
X-Gm-Message-State: AGi0PualcMlH/wD2BTgzQ6nNqPAe+zSaOq5sgyH+BMrpMogoce6XB4ki
        Eahgu8ZlROiFHnjSNXZ/uCbPMRzv
X-Google-Smtp-Source: APiQypKL7eQYJYIC2fOpOHWbDtv8TDw+w3+a47t6muTQc0UWBd2f0TXbFnRwulegtzne9pY4msdyOQ==
X-Received: by 2002:adf:e704:: with SMTP id c4mr14359863wrm.181.1587324341697;
        Sun, 19 Apr 2020 12:25:41 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:3351:6160:8173:cc31? ([2001:a61:2482:101:3351:6160:8173:cc31])
        by smtp.gmail.com with ESMTPSA id f8sm18549870wrm.14.2020.04.19.12.25.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 19 Apr 2020 12:25:41 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: Errors in man pages, here: cpuid(4): Wording
To:     Helge Kreutzmann <debian@helgefjell.de>
References: <20200419064754.GA30237@Debian-50-lenny-64-minimal>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <9b938ea4-2664-2c2d-57f2-89ad448b479d@gmail.com>
Date:   Sun, 19 Apr 2020 21:25:40 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200419064754.GA30237@Debian-50-lenny-64-minimal>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 4/19/20 8:47 AM, Helge Kreutzmann wrote:
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
> The wording could be improved, make the content clear
> 
> "The lower 32 bits of the file position is used as the incoming I<%eax>, and "
> "the upper 32 bits of the file position as the incoming I<%ecx>, the latter "
> "intended for \"counting\" I<eax> levels like I<eax=4>."

I did: s/latter intended for "counting"/latter is intended for "counting"/

Thanks,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
