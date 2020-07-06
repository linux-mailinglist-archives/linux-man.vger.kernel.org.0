Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 35CA22155E5
	for <lists+linux-man@lfdr.de>; Mon,  6 Jul 2020 12:55:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728595AbgGFKzO (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 6 Jul 2020 06:55:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50758 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728765AbgGFKzO (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 6 Jul 2020 06:55:14 -0400
Received: from mail-ej1-x641.google.com (mail-ej1-x641.google.com [IPv6:2a00:1450:4864:20::641])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C9472C061794
        for <linux-man@vger.kernel.org>; Mon,  6 Jul 2020 03:55:13 -0700 (PDT)
Received: by mail-ej1-x641.google.com with SMTP id n26so27915509ejx.0
        for <linux-man@vger.kernel.org>; Mon, 06 Jul 2020 03:55:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=0EUJcfCUrEw71Q03nY1rIa5Hk1iH/D+W0i5MvdxM0mA=;
        b=u23ickjG7e+alMfRlpD7Kh7p1ovRMNyrDnEBvq/w44LA47kA2d3rIIZjbuZiYtTBfw
         xmD+oIw+9DGTE/lUA8UMA6GK/VpbLdUiPq5dc1ctGW4vp+O7/VyV28u+KNcG72I8yx2V
         ujxGLhWkEdpOsFRC/joFohMTlvsegHzOJll/alawn4qb0MZGdFz9qoHktE8twTqI8J0s
         OA/xDsU0a0Jq9dXgOo+KYD3aqApy64F1aEwmyi5ZXOz2CeuRqisSzTYZByrIERUPHid5
         N0pscOOHe2Vy9xd+/OAGKoZ74t/FxxiMoHn8Nt+BUtcrPpC5fK5CB5N6uS3iH2g7xrq+
         tb3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=0EUJcfCUrEw71Q03nY1rIa5Hk1iH/D+W0i5MvdxM0mA=;
        b=T2j4/rhk4taNmVJZZLY9IFmy3KdKUwwJprh/Ry24vX0Ip8hPqCwU1/rxSJ0vr+MMXF
         YJWPrXLlwLtyfqZXG86IeVjnEKBcbzqCX52NocwtY8fsbBZ//iHQ+WKC/BV07zfuo9O0
         f/ZnBubPSR8OG78v5Bypt19IQa5AiN6GaO4rCkAvlLYf5toA/d5gnidlf+x/8QGe9RaP
         tOibHm99DLVHaU4ApCcHm5FL8vdEJs45aZApfcq2lgSofpzCaCAH+2JFQ+Npfk6PcqNM
         S6LrXzXyfPZNYC5a2ny0oM0yp/TuAjhvgh7KtJ7TKbr5/Dqnpw2TyC6FCxGjfexXDrG2
         VPeQ==
X-Gm-Message-State: AOAM530gwrWMJ5SgRm7vcpu0bm2+PhVHe2G6JRVT1TTzGn7cPdWZR69k
        cDPmU4m3BvbpNPIkz5ZxojtioVTN
X-Google-Smtp-Source: ABdhPJxI7ZpJrgfkWeE4dw2Lw0EUIr5U+PSxqficm07iyNlfIS84jit2XWvQqAT3o76Kf7TV0wUukA==
X-Received: by 2002:a17:906:9387:: with SMTP id l7mr41170124ejx.274.1594032912324;
        Mon, 06 Jul 2020 03:55:12 -0700 (PDT)
Received: from ?IPv6:2001:a61:3adb:8201:9649:88f:51f8:6a21? ([2001:a61:3adb:8201:9649:88f:51f8:6a21])
        by smtp.gmail.com with ESMTPSA id a25sm22601516eds.77.2020.07.06.03.55.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Jul 2020 03:55:11 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: Errors in man pages, here: strcmp.3, punctuation
To:     Helge Kreutzmann <debian@helgefjell.de>
References: <20200706101719.GA26907@Debian-50-lenny-64-minimal>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <5523ad2b-95dd-363f-061b-fb1839bd15ae@gmail.com>
Date:   Mon, 6 Jul 2020 12:55:10 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200706101719.GA26907@Debian-50-lenny-64-minimal>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 7/6/20 12:17 PM, Helge Kreutzmann wrote:
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
> Man page: strcmp.3
> Issue: ; → Full stop
> 
> "a positive value if I<s1> is greater than I<s2>;"

Thanks. Fixed.

Cheers,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
