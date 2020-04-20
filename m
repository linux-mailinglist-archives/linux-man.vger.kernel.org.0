Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F32D31B02AE
	for <lists+linux-man@lfdr.de>; Mon, 20 Apr 2020 09:17:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726006AbgDTHRC (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 20 Apr 2020 03:17:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38894 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S1725994AbgDTHRB (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 20 Apr 2020 03:17:01 -0400
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com [IPv6:2a00:1450:4864:20::344])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 84E5AC061A0C
        for <linux-man@vger.kernel.org>; Mon, 20 Apr 2020 00:17:01 -0700 (PDT)
Received: by mail-wm1-x344.google.com with SMTP id g12so10090306wmh.3
        for <linux-man@vger.kernel.org>; Mon, 20 Apr 2020 00:17:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=4AK6E5Td6I5vWmk1AZeq1MLoJu79nY470SmObpVkSqQ=;
        b=hWNej5DzB1WeoCL0/p8Nlz6/MD0T/ROvJJnC+uNrPeLJRmpmInb2gXLtT28jxILjn0
         FHa7Uk0aVbb22YCQvQNKdLkQqKAcxUSlBfDcPCrSdAfh7+PYE74vxeoRb1H1ZXuqhYid
         27S4WeoCyRkx8T1cLBfzvu7xASNSCX5ezutj29ZPa3W+llD6bS+QkQPzUPGKCgjbbHMR
         tHAngcWLfAk/+SMDhV4KUaFR87Dxm7jx8aiS/OI7gwW7AVoePv3Zf7SasVx2Mb9MxkXW
         32dS54r5AKPkf7GkmMJGF4gOqzmRc9kEfVwhkf7OL9jXDAhatpWOiMuJeeP06SCrb3cq
         qIug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=4AK6E5Td6I5vWmk1AZeq1MLoJu79nY470SmObpVkSqQ=;
        b=mkcgJAhyFKhpofYw/C4ptWaz/YfFP7KNh7u6mOW8lbzuP1tMG4JwP6rwQEGCuB/KYz
         bk0Vcnvzgm1ZlpsWCVJ54uIjT24zA2WqrlsEAXjcULRJ4iiKxAphWX0xQDlx65/wgq3e
         2C+qUB6Nnf3e561K/+GhmZaBbaiVRF9x9kKw6A7D+XsBdDjYaNVwAHdyzeDAi1Gc0OZX
         xg94yYrc2nR0zfmVAGmWg7Bj+JI3QcB/SIqYPy7z7/ku2ns4SdRPbvWursZHZUYynANA
         1+EhHp1Lbjy9tyWAskMgV+J/wWzQafzsO1IO57/iA7tBPKAx8+L7k/huArLwkFXWkUyx
         eaCg==
X-Gm-Message-State: AGi0PuZianpS7ckE4moAm5s90GQOqGohUjsONrZWxbRpXZAhx9dZGG5x
        PdO/KHjGfyrHND5Aj4/qEWrFN+ng
X-Google-Smtp-Source: APiQypLPYYWsyModuwD17f9WqzIZeStBY97QsGmaseNGchijcgxpOpFbuWMdU4ZEYPSP5YgnermT1w==
X-Received: by 2002:a1c:3985:: with SMTP id g127mr16496587wma.102.1587367018419;
        Mon, 20 Apr 2020 00:16:58 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:3351:6160:8173:cc31? ([2001:a61:2482:101:3351:6160:8173:cc31])
        by smtp.gmail.com with ESMTPSA id y70sm151722wmc.36.2020.04.20.00.16.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Apr 2020 00:16:58 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: Errors in man pages, here: wavelan(4): Wording
To:     Helge Kreutzmann <debian@helgefjell.de>
References: <20200419064837.GA32702@Debian-50-lenny-64-minimal>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <efebf029-fc00-c8c0-19f9-974df8b1af23@gmail.com>
Date:   Mon, 20 Apr 2020 09:16:57 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200419064837.GA32702@Debian-50-lenny-64-minimal>
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
> Enable you the → Enables you to
> 
> "Enable you the define the quality and level threshold used by the modem "
> "(packet below that level are discarded)."


Fixed.

Thanks,

Michael



-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
