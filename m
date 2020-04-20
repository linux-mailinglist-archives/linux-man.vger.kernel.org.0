Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 50DCC1B04C3
	for <lists+linux-man@lfdr.de>; Mon, 20 Apr 2020 10:47:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726017AbgDTIry (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 20 Apr 2020 04:47:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53064 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S1725959AbgDTIry (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 20 Apr 2020 04:47:54 -0400
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com [IPv6:2a00:1450:4864:20::441])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0533DC061A0C
        for <linux-man@vger.kernel.org>; Mon, 20 Apr 2020 01:47:54 -0700 (PDT)
Received: by mail-wr1-x441.google.com with SMTP id j2so11035838wrs.9
        for <linux-man@vger.kernel.org>; Mon, 20 Apr 2020 01:47:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=/+LZbStU1CdhcrNPDDbTx12RxRucGWLIJpb3KAct8s8=;
        b=JhezNlD/bss0hb6j3rzYu+XNapn/YL6BPjee1MxmGC1Yxf0U+OTuyiptb4pLpIoKYV
         GMkNkteVmDjK8QMJv9AvLcwy9C0zl3xx4rGZLqdErM3ctUYfTqA55ZI1pdC2voTaCcT8
         IgaYvaLkIRAHFDiWXq/3nNTURneA/ZhPdJeisZNGDUaLpdVPyKt2dePlvd+KDdiats9n
         GhgzbddwbHaqQIPzR6SMqZ80ive4LwI9y6rlCR3ceCIIn3lZZR83R3eFbue1KHHEN7iS
         xk81IYYtk33Iut7TX4W5KDYvB4SqUegA7Oc7BM/xUKLp8g3dRgqBkD57ZADbUme/8v6o
         LNkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=/+LZbStU1CdhcrNPDDbTx12RxRucGWLIJpb3KAct8s8=;
        b=XwNjHpReiBWBLy1+NxWF2VSumltW2oB6GlCbSBLkGkSfOI0G8v6EDkeymVkk8l9EvF
         O8rHrbFdtWnKFWya7efjdr85RKEunHG/hp3LNd2F8gLQJd1m0Quh5M9XxLAB6YY8ehhi
         Py7cwFapaoggkhMy1RHe59Y0ufwCTVnfrRHwvFgKIDZpFUKsr12yR/YRS//TsQ5tw5K4
         n2ImF26z3msREVoV/FLNf2Gj5Sb/biqGCqxXjaOFQgWD9OpTAxvxzuCRBZ6wkPa+3f7M
         sapqya3pJ2Akpxre8Luii89+jQZqtuikmbzWF0Kt8h6tTmbvuroTus+PAc6xZT5+j7o/
         qzWg==
X-Gm-Message-State: AGi0PuaOdSYz2KsD3fdBJtfbckaWgHX9Bxrv0EuiiKkrAhmk+eLZSkE8
        ls7dhd7ctDYqsFfOYkPs/Oo2dFug
X-Google-Smtp-Source: APiQypIFTUOQJokk2ydMj1dXQJ79cVlvEd+WDJVDUFdZz4SAcBl1KgtVSbKUBIHKEYAgc/MccxuQjw==
X-Received: by 2002:adf:f34e:: with SMTP id e14mr6689008wrp.193.1587372472578;
        Mon, 20 Apr 2020 01:47:52 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:3351:6160:8173:cc31? ([2001:a61:2482:101:3351:6160:8173:cc31])
        by smtp.gmail.com with ESMTPSA id j10sm455973wmi.18.2020.04.20.01.47.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Apr 2020 01:47:52 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: Errors in man pages, dsp56k(4): Unclear meaning
To:     Helge Kreutzmann <debian@helgefjell.de>
References: <20200419064755.GA30306@Debian-50-lenny-64-minimal>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <58ca62cb-90b0-7a6e-675a-020fcb92a7a7@gmail.com>
Date:   Mon, 20 Apr 2020 10:47:51 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200419064755.GA30306@Debian-50-lenny-64-minimal>
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
> zero bytes: Bytes which are zero, a zero number of bytes (?)
> 
> "sets the transmit word size.  Allowed values are in the range 1 to 4, and is "
> "the number of bytes that will be sent at a time to the DSP56001.  These data "
> "quantities will either be padded with zero bytes, or truncated to fit the "
> "native 24-bit data format of the DSP56001."

Fixed.

Thanks,

Michael

diff --git a/man4/dsp56k.4 b/man4/dsp56k.4
index f7fbee5cb..480a748de 100644
--- a/man4/dsp56k.4
+++ b/man4/dsp56k.4
@@ -76,8 +76,8 @@ sets the transmit word size.
 Allowed values are in the range 1 to 4,
 and is the number of bytes that will be sent at a time to the
 DSP56001.
-These data quantities will either be padded with zero
-bytes, or truncated to fit the native 24-bit data format of the
+These data quantities will either be padded with bytes containing zero,
+or truncated to fit the native 24-bit data format of the
 DSP56001.
 .IP \fBDSP56K_SET_RX_WSIZE\fP
 sets the receive word size.



-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
