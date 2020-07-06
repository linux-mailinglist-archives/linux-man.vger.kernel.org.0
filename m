Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AF4362155E0
	for <lists+linux-man@lfdr.de>; Mon,  6 Jul 2020 12:54:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728530AbgGFKyI (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 6 Jul 2020 06:54:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50582 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728529AbgGFKyI (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 6 Jul 2020 06:54:08 -0400
Received: from mail-ej1-x641.google.com (mail-ej1-x641.google.com [IPv6:2a00:1450:4864:20::641])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 320BFC061794
        for <linux-man@vger.kernel.org>; Mon,  6 Jul 2020 03:54:08 -0700 (PDT)
Received: by mail-ej1-x641.google.com with SMTP id lx13so23189552ejb.4
        for <linux-man@vger.kernel.org>; Mon, 06 Jul 2020 03:54:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=wS6b1bIm9qv4GZf/VX4Pq5meYErr2Vq1pR0MKc53AZw=;
        b=VgLnA3fCTlJomaRHYw+w3FeN1Qfc76qtQvZo3ml0hG1rqoN5Q9ldVXHGLgGI/7a0bu
         ZklVV/mhYLHgzPUSE9J7isHKJ/dCKU/UxyJflZkuLz7wS2wzPBiUGr/7g6b2+flaMDYk
         Rbs5kfGEIgpp1CVkOUe5dYlb7XFDIiHveqKfPlBe5UUkH44Z6nIPCejTtML9nGNJIgDl
         VLGPo42SfXNW/U0pd3lslIepMBMbWrS2l7ef8Dit1WuPMt7QLhDCiBMcxC/XF7+Gkvf/
         Vze3i/s9QM9R7KQiuJCk9vF6dszezPvxBON+YFdS97tad/Sw5j+xUOEmgvy2VD/uHSmB
         jZJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=wS6b1bIm9qv4GZf/VX4Pq5meYErr2Vq1pR0MKc53AZw=;
        b=f27f6wBWM5JhYVfU/yLeQIxPMIYXiUwvVMa0zwACJhQgj1DRa/NSbxBw50Ml2+K7PG
         tfcnD5bGI4tTyVsjK1rjrHU+gA6qAcP11FWxSaxJrkAzRioJuOZgF3p0mh+DRPrMEjHi
         ZbEFwaXC3WLEH0n4+a29JSfqOogBe5NOT5QWl0BrVA4YaTbTuhan8lF2QB/iMnwVAOWl
         6DfPH9iUN7RDjsLaDjtzaow5VL2qvnvJz7OINQ55JmpYkX7p7APMKNbAoD2ryvvNkOF3
         5VPSfCSXnI6akzlcm73TrNYGl74qTxZvCOsc45tFNeihs57ON/vtb7MbHbjGFBvBF6/L
         /uQg==
X-Gm-Message-State: AOAM532JMqOEQy9oOMk2yzpnk5gaAyyw9pDfyS8Sbfl3xQ7OA7m5lE8s
        fHBBT9vPZP9kcNPkKTiF2DoaXFaM
X-Google-Smtp-Source: ABdhPJwp0uFxEHwYCcbe950DccrM0tsGPiCG33yenAg1yDait6DQtrMCwqIdoNEzj/yj3WJU/sJLFg==
X-Received: by 2002:a17:906:4c41:: with SMTP id d1mr43107551ejw.463.1594032846639;
        Mon, 06 Jul 2020 03:54:06 -0700 (PDT)
Received: from ?IPv6:2001:a61:3adb:8201:9649:88f:51f8:6a21? ([2001:a61:3adb:8201:9649:88f:51f8:6a21])
        by smtp.gmail.com with ESMTPSA id bw7sm16435268ejb.5.2020.07.06.03.54.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Jul 2020 03:54:06 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: Errors in man pages, here: shmop.2., typo
To:     Helge Kreutzmann <debian@helgefjell.de>
References: <20200706101659.GA26862@Debian-50-lenny-64-minimal>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <fb3af624-3d35-05e6-e67f-7d19865a0223@gmail.com>
Date:   Mon, 6 Jul 2020 12:54:05 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200706101659.GA26862@Debian-50-lenny-64-minimal>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 7/6/20 12:16 PM, Helge Kreutzmann wrote:
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
> Man page: shmop.2
> Issue: t0 → to
> 
> "    /* Decrement semaphore t0 0 */\n"

Thanks. Fixed.

Cheers,

Michael



-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
