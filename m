Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 45A8D215677
	for <lists+linux-man@lfdr.de>; Mon,  6 Jul 2020 13:34:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728925AbgGFLex (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 6 Jul 2020 07:34:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56884 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728921AbgGFLex (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 6 Jul 2020 07:34:53 -0400
Received: from mail-ej1-x644.google.com (mail-ej1-x644.google.com [IPv6:2a00:1450:4864:20::644])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DE427C061794
        for <linux-man@vger.kernel.org>; Mon,  6 Jul 2020 04:34:52 -0700 (PDT)
Received: by mail-ej1-x644.google.com with SMTP id l12so41917270ejn.10
        for <linux-man@vger.kernel.org>; Mon, 06 Jul 2020 04:34:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=R0AZnqr4ODMVA37XSNg0f7anlh0+RN3z4C+8d+haseQ=;
        b=vHhidlouPe7067FmJUW2EgpiNtW5bXc2cPGb+8Fxme7zGr9O9Sn146Ma8wm3dH60UI
         L+R9pg5KHoB801AYMiMFPseDGXXI9gelim0g0OOM7G79470L4calaQ4SrwaVPVDkyYfY
         90ibPlcBS/JWa5fmFphzpij9evZ3Qj/UU/VIZuN+uBppyoZi9BmlBOQ1i6QeAU4rd9Px
         81JX6b3b6Na2siWo7WE/ryVLLb0Wge4fBRfLpIK8+zKWVe6xMoGutPQ67UMKu1l/k0v2
         Z1liAK0CIitl9czMXtxYKyey8+VW34fRScAabDeEh6X40fEF1x/5ZRemI3epxvrudxLj
         pTSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=R0AZnqr4ODMVA37XSNg0f7anlh0+RN3z4C+8d+haseQ=;
        b=HYibR9cfloxTxDzXBp9e7wRHWq+DJ1fSZ9BauEoHpmCEV1K1NKo0s8fWMy250W46fv
         W9GKo0ZAPqD/SGankfs7Jo6/ycvV9inIKtlHMmm6ot0/Z1hQLRONxiospyFA6y5mZCdw
         Fam4oQqnZT0knYew2DHqwvWfVy35z5D/Z2amVZ9/dZQeLz3cLfAvNjE+d5JD7qzrus+O
         +ZhUfpCXS/P7TDdsi3sUvYLY6V2fQZ8iaDCwWCSVOVj2D9L2LsNjApE3T+afsae1SsN8
         lO6AlByXNdUWXxh7YWIZMXBFIA52k8ACegKnKj5vM/plmxktX64Kv1pUrYA2fJLgwlB7
         3tMA==
X-Gm-Message-State: AOAM530c0hE7RXbscHK+6judcUw9FJ7w9vJwTSYWM/z33n9F1PD8i+4v
        kdefmAGCmrOyg1yYHbp4cShE6tvk
X-Google-Smtp-Source: ABdhPJycKy0Udu4l13mLHaBQ5iOQou0ZyqdPvtmg2/QM48LC6968aT6t1jfqTiU5hQc4DdTkIuPixQ==
X-Received: by 2002:a17:906:e089:: with SMTP id gh9mr18624557ejb.482.1594035291328;
        Mon, 06 Jul 2020 04:34:51 -0700 (PDT)
Received: from ?IPv6:2001:a61:3adb:8201:9649:88f:51f8:6a21? ([2001:a61:3adb:8201:9649:88f:51f8:6a21])
        by smtp.gmail.com with ESMTPSA id o20sm16230274ejr.64.2020.07.06.04.34.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Jul 2020 04:34:50 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: Errors in man pages, here: fork.2, markup
To:     Helge Kreutzmann <debian@helgefjell.de>
References: <20200706101249.GA26480@Debian-50-lenny-64-minimal>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <6d7b6333-9243-21a1-e1bc-6723d0695008@gmail.com>
Date:   Mon, 6 Jul 2020 13:34:49 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200706101249.GA26480@Debian-50-lenny-64-minimal>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 7/6/20 12:12 PM, Helge Kreutzmann wrote:
> Dear linux man page maintainer,
> the manpage-l10n project maintains a large number of translations of
> man pages both from a large variety of sources (including linux man
> pages) as well for a large variety of target languages.
> 
> During their work translators notice different possible issues in the
> original (english) man pages. Sometimes this is a straightforward
> typo, sometimes a hard to read sentence, sometimes this is a
> convention not held up and sometimes we simply do not understand the
> original.
> 
> We use several distributions as sources and update regularly (at
> least every 2 month). This means we are fairly recent (some
> distributions like archlinux also update frequently) but might miss
> the latest upstream version once in a while, so the error might be
> already fixed. We apologize and ask you to close the issue immediately
> if this should be the case, but given the huge volume of projects and
> the very limited number of volunteers we are not able to double check
> each and every issue.
> 
> Secondly we translators see the manpages in the neutral po format,
> i.e. converted and harmonized, but not the original source (be it man,
> groff, xml or other). So we cannot provide a true patch (where
> possible), but only an approximation which you need to convert into
> your source format.
> 
> Finally the issues I'm reporting have accumulated over time and are
> not always discovered by me, so sometimes my description of the
> problem my be a bit limited - do not hesitate to ask so we can clarify
> them.
> 
> I'm now reporting the errors for your project. If future reports
> should use another channel, please let me know.
> 
> **
> 
> Man page: fork.2
> Issue:  any fork handlers → any B<fork>() handlers
> 
> "Since version 2.3.3, rather than invoking the kernel's B<fork>()  system "
> "call, the glibc B<fork>()  wrapper that is provided as part of the NPTL "
> "threading implementation invokes B<clone>(2)  with flags that provide the "
> "same effect as the traditional system call.  (A call to B<fork>()  is "
> "equivalent to a call to B<clone>(2)  specifying I<flags> as just "
> "B<SIGCHLD>.)  The glibc wrapper invokes any fork handlers that have been "
> "established using B<pthread_atfork>(3)."

No. "fork handler" is a term. Just like exit handler. Or clean-up
handler.

Thanks,

Michael



-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
