Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 62B102155F3
	for <lists+linux-man@lfdr.de>; Mon,  6 Jul 2020 12:57:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728671AbgGFK5Z (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 6 Jul 2020 06:57:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51102 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728670AbgGFK5Y (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 6 Jul 2020 06:57:24 -0400
Received: from mail-ej1-x643.google.com (mail-ej1-x643.google.com [IPv6:2a00:1450:4864:20::643])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9B5C3C061794
        for <linux-man@vger.kernel.org>; Mon,  6 Jul 2020 03:57:24 -0700 (PDT)
Received: by mail-ej1-x643.google.com with SMTP id lx13so23198831ejb.4
        for <linux-man@vger.kernel.org>; Mon, 06 Jul 2020 03:57:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=qfKHo7VhmVTI+mBAnKwM6Y3YQA6DQO9Qwedhoe1HKJo=;
        b=U1mg858N08dD/jcStiaxyZATErJZymFe77aYUieJ9H+OAAIHSPaDNkT62oOBrYLcfB
         poit1wP4cz9/nBS89iJwud4ZaIdvJr6LaExDkRKL14fiBnwDSTYUq0wuB75PRVDjA2Mi
         tw3P8hmNsSkQoEm3W77MIJ/zBjcpDrKHYvJyY2SnhzhgnzMNW7jhiciU7x7lwhY4/uKm
         ANYKqWU41hXB5LXRyWFDHekRHMnHK9+ycQ36vyTTKyMnbG8NvtGlFV1kWlOcm3zpI+lf
         jPXXMPnH5UdmwitJIaPL2GiepIF5qNCXxUzEd7lQkEujby8ibOq2lAvjSj9W+NfYdgPV
         4Y5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=qfKHo7VhmVTI+mBAnKwM6Y3YQA6DQO9Qwedhoe1HKJo=;
        b=no/iU/A/52ufMrEBABjakuBCUS2eGX1xY0CwFKWy0o+JXx86IOknarHWXtWRzlCBhL
         vOgk/W86wjDhCV8wvAXaRTZurc3OuVCCdUDiNY1BPKuSuqoJ/Xm8ZnIB+DfjU+0rRDT0
         ZmIAJbbbiIJ+6ZLDUB7vY5a8dNL69u7/EkurB4TaCRxWGBLZMU8s1XdQbPNyGI7Jm3Y7
         FWLF7T3v0oN875430daWbBAF3fzyhB6Iq7alr0BlOC2dW6GLJ3NbO50wdIdj+97GHDws
         f7ybkozaGS67YMpB5mqf442XNxi9zaLPFQapM3EgGaEQpwyf/33J7cfnF8a+ygTWfj5X
         A37g==
X-Gm-Message-State: AOAM532x9R1UGgAEfVRp2DzNqkxv999uH9Px8RN7Im0L84D1XCCtDR1Y
        i/wOi+u80AbG22nEmZe2SFR4HwCN
X-Google-Smtp-Source: ABdhPJyDc8+HK0NOSP7wRLq43SqMuPRAZ1/ba9YR4IfMaNxuEQXORZNHZWBzWnn4/Dk1rYyvwLqVfw==
X-Received: by 2002:a17:906:2714:: with SMTP id z20mr42496936ejc.469.1594033043151;
        Mon, 06 Jul 2020 03:57:23 -0700 (PDT)
Received: from ?IPv6:2001:a61:3adb:8201:9649:88f:51f8:6a21? ([2001:a61:3adb:8201:9649:88f:51f8:6a21])
        by smtp.gmail.com with ESMTPSA id g21sm23737448edu.2.2020.07.06.03.57.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Jul 2020 03:57:22 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: Errors in man pages, here: strcmp.3, inconsistency
To:     Helge Kreutzmann <debian@helgefjell.de>
References: <20200706101741.GA26942@Debian-50-lenny-64-minimal>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <9bf82e45-254b-a8be-75fb-2644093edd44@gmail.com>
Date:   Mon, 6 Jul 2020 12:57:21 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200706101741.GA26942@Debian-50-lenny-64-minimal>
Content-Type: text/plain; charset=windows-1252
Content-Language: en-US
Content-Transfer-Encoding: 7bit
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
> Issue: The programm output says byte, the fourth line in the code says characters
> 
> "    if (res == 0) {\n"
> "        printf(\"E<lt>str1E<gt> and E<lt>str2E<gt> are equal\");\n"
> "        if (argc E<gt> 3)\n"
> "            printf(\" in the first %d characters\\en\", atoi(argv[3]));\n"
> "        printf(\"\\en\");\n"
> "    } else if (res E<lt> 0) {\n"
> "        printf(\"E<lt>str1E<gt> is less than E<lt>str2E<gt> (%d)\\en\", res);\n"
> "    } else {\n"
> "        printf(\"E<lt>str1E<gt> is greater than E<lt>str2E<gt> (%d)\\en\", res);\n"
> "    }\n"

Wow! Nice catch! Code changed.

Cheers,

Michael



-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
