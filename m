Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2613321567E
	for <lists+linux-man@lfdr.de>; Mon,  6 Jul 2020 13:37:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728806AbgGFLhR (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 6 Jul 2020 07:37:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57250 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728441AbgGFLhQ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 6 Jul 2020 07:37:16 -0400
Received: from mail-ej1-x643.google.com (mail-ej1-x643.google.com [IPv6:2a00:1450:4864:20::643])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 941E8C061794
        for <linux-man@vger.kernel.org>; Mon,  6 Jul 2020 04:37:16 -0700 (PDT)
Received: by mail-ej1-x643.google.com with SMTP id o18so37535091eje.7
        for <linux-man@vger.kernel.org>; Mon, 06 Jul 2020 04:37:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=ZHALCr3JUTCMR0f/zol7risAvfm6joTDnZszYYzd7xE=;
        b=n32dITuZKfpcr9aR+cpiY93NGGSK+Vg0D+VH+hD5QHVW4y/PwNzn5Erz835+d4TRph
         s+fMOA292d0oJGB2VhGpptOk87lQxOZ5W7TL9HnQ8zbHReYgnidqOk68yDmTzjzP0Ili
         FmXSKFwlNyADnhDqK8EJhutXD+FDOK54hdJ06iYS0o09p3G5wvU5TI5Oz4v5tXCD+Ker
         Gj5bQbtY1L1e0dnTWzMWZLVN6fWCyq3Xgo4+f6v3Plf4EJXwb7HH/4ZaBfDreojg7GXp
         zTpXC3iF1CRqeGzuaxUgPK5BUgRXa26T9hEhyp6pVN4oUsYuGsfdLuSiOU45maiY46aH
         ItSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=ZHALCr3JUTCMR0f/zol7risAvfm6joTDnZszYYzd7xE=;
        b=LNjkNP+g/Cv/cupeGxIm/BWnMZxhpoYhIaX/4yO34Nyl8e+fOcsB558fenGb3FEFPK
         j7kmZgacbiIfM5vYIsROukZOQIQyjEebV9HPNYOfq2aFLF5099oYVwCaHy9UT0kyqFsm
         97D+1x2CaYQej1O9xfw1lOTCSKrROLo2cDpf5TLcMCwdEcfdfZMX10/I4VXR+kDEa0VR
         a2M0+mR0kBiNiDvvQdYC5Tlq6PuLfC8lwke7n5UPux3+toM0t+D1dkyVsEH0DufTRj1z
         UhgtKnHWM8yVbCYx/qcz84/9DVL6nug+cJybYvrGRti/Z9TCWnb/2GSqwCw1bP4xlowN
         rz4w==
X-Gm-Message-State: AOAM530qiEtBU7r2MCWm1jtta6l278GPneyAKufRT+aM+/gr9RYXhgD/
        U6UZFIYSFVHNbKZuTSc7+ntHcB+m
X-Google-Smtp-Source: ABdhPJwm9ICxDRewcfPY7StcEyaWMSTXO6C1oHzGfu3mtTANqdKoCLnUZ6aWX9VgmtbOiRWWjxXwuQ==
X-Received: by 2002:a17:906:ce3c:: with SMTP id sd28mr39786691ejb.382.1594035435027;
        Mon, 06 Jul 2020 04:37:15 -0700 (PDT)
Received: from ?IPv6:2001:a61:3adb:8201:9649:88f:51f8:6a21? ([2001:a61:3adb:8201:9649:88f:51f8:6a21])
        by smtp.gmail.com with ESMTPSA id t25sm16226740ejc.34.2020.07.06.04.37.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Jul 2020 04:37:14 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: Errors in man pages, here: math_error.7, here: Typo?
To:     Helge Kreutzmann <debian@helgefjell.de>
References: <20200706101348.GA26560@Debian-50-lenny-64-minimal>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <15c74326-83dc-4acf-faf7-c0f6528d9c24@gmail.com>
Date:   Mon, 6 Jul 2020 13:37:12 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200706101348.GA26560@Debian-50-lenny-64-minimal>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 7/6/20 12:13 PM, Helge Kreutzmann wrote:
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
> Man page: math_error.7
> Issue: \"overflow\" → \"underflow\" 
> 
> "A floating result I<underflows> if the result is too small to be represented "
> "in the result type.  If an underflow occurs, a mathematical function "
> "typically returns 0.0 (C99 says a function shall return \"an implementation-"
> "defined value whose magnitude is no greater than the smallest normalized "
> "positive number in the specified type\").  I<errno> may be set to B<ERANGE>, "
> "and an \"overflow\" (B<FE_UNDERFLOW>)  floating-point exception may be "
> "raised."

Thanks. Fixed.

Cheers,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
