Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F030E1AFDEA
	for <lists+linux-man@lfdr.de>; Sun, 19 Apr 2020 22:04:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726399AbgDSUER (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 19 Apr 2020 16:04:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48634 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726123AbgDSUER (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 19 Apr 2020 16:04:17 -0400
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com [IPv6:2a00:1450:4864:20::342])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B3BF4C061A0C
        for <linux-man@vger.kernel.org>; Sun, 19 Apr 2020 13:04:15 -0700 (PDT)
Received: by mail-wm1-x342.google.com with SMTP id x4so8639786wmj.1
        for <linux-man@vger.kernel.org>; Sun, 19 Apr 2020 13:04:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=oYeCQc7ACPkWs2hjk3H4eKYsdYf27NIxHz400c1DUfc=;
        b=WwnA6AZbJLaA0t9EBU7pHI0yePm9ALIbNV+X/dRyqPh7YHAwyXbOuXWLmsh46zJXlL
         w6OlObcbZGmc/tA3AqTXGrE9zESPD0Ku3M2fdYCjCRkgQt7rMxhK5uwSFPUIOJ7w0ZL1
         55AVoC4VRozBsurSJclk04pmM885mZAAvaEkkN4K5dS7YWWVj8/6Qoc7j0pRk/SsTmea
         pETKH3LsXOd1UaESqnCi17rO8/Uk/5ic1Jw9XFZVlQKgR5sXugLuf42PdoXNx6ZkiBun
         iv4L/ZSH6ofq9guLX/Hn4VCuSIHsHJqspC+7DI7D1BHCnoJUWnr0TEeI1istvZDCPbrD
         6ppA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=oYeCQc7ACPkWs2hjk3H4eKYsdYf27NIxHz400c1DUfc=;
        b=S0F38p/HwqWuNv8EsZXAAsN2g65ecqJ9ap/OF+XiWPZ7BG78OJxcIHn04L60AKsZBI
         tT34SVT0zd40Bj0T2408CUmD19unS3dRNnuVClq31VyvkwnYlYKcGXm29b2P22/zUqqk
         d2HHExLgDf1VLruZiaRDrJq9Diq/JutZslhskxtaCo08Qm6RMhpT7YNMlu20w2Lqr1kJ
         3fpmfnRXROQ6PXJxlLJtvnl0MKNmW/yHPVJDvsmVoH9XO2ZdkPGI4d52QVo5d/l/LlKX
         tnTltX5a+giDSW2HRrOrslAB543WClD2LuwQnw0IX5M38gc+++JErE9SzrZJntFOtXJD
         SW0A==
X-Gm-Message-State: AGi0Pub8CVYydt2WDBdbMvbHZ3zrJd2R6udcWetUEM6BJVFCsGItDFzg
        yf6z1Tmvfqa/Wf9M+QpKPhz8H1Y7
X-Google-Smtp-Source: APiQypIvwzKChlG78XZRlR0T2oHXpbay9O45TMZClGUYXWraJx584WXbeFOkUPHWA2w0FgIt9MbthQ==
X-Received: by 2002:a7b:c7d6:: with SMTP id z22mr14914864wmk.73.1587326654310;
        Sun, 19 Apr 2020 13:04:14 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:3351:6160:8173:cc31? ([2001:a61:2482:101:3351:6160:8173:cc31])
        by smtp.gmail.com with ESMTPSA id v1sm37393576wrv.19.2020.04.19.13.04.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 19 Apr 2020 13:04:13 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: Errors in man pages, here: personality(2): Missing article
To:     Helge Kreutzmann <debian@helgefjell.de>
References: <20200419064814.GA31348@Debian-50-lenny-64-minimal>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <e38128cd-7590-4a1b-3b6c-baae55aefc21@gmail.com>
Date:   Sun, 19 Apr 2020 22:04:13 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200419064814.GA31348@Debian-50-lenny-64-minimal>
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
> is value → is a value
> 
> "A list of the available execution domains can be found in I<E<lt>sys/"
> "personality.hE<gt>>.  The execution domain is a 32-bit value in which the "
> "top three bytes are set aside for flags that cause the kernel to modify the "
> "behavior of certain system calls so as to emulate historical or "
> "architectural quirks.  The least significant byte is value defining the "
> "personality the kernel should assume.  The flag values are as follows:"

Fixed.

Thanks,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
