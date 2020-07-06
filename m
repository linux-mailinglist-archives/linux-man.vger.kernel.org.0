Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E2537215604
	for <lists+linux-man@lfdr.de>; Mon,  6 Jul 2020 13:01:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728701AbgGFLBI (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 6 Jul 2020 07:01:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51682 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728613AbgGFLBH (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 6 Jul 2020 07:01:07 -0400
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com [IPv6:2a00:1450:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 47081C061794
        for <linux-man@vger.kernel.org>; Mon,  6 Jul 2020 04:01:07 -0700 (PDT)
Received: by mail-wr1-x444.google.com with SMTP id o11so40360574wrv.9
        for <linux-man@vger.kernel.org>; Mon, 06 Jul 2020 04:01:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=vuN1CI0B/krk6QEiMLLjDssQM5bwSokXiNyj/LUOT6o=;
        b=AKnM3oKA9/BJLMsMEmliNMwOjU6G7rnzVc8qn504bDoyBo6nKaIM0Jeuf8sa2+e688
         7BydzevGdmlyGDSLgV4xwFLtgRLFA6/ZyUYqPkN6W6PjhRXflIYJZPKAt5jgsd8tGKp7
         X9d0g7sHbQAUCVzL/Kgbw449mIW03PmS0eLOVCmtXvn6n7oAsCcRsr3XcEzi/KSn5pQp
         2ex8neNoxFw+50GxH4ygq8Or1SCpSS5OQJntUoiPl7pDBkhdrvXcl1XW7Fr96HxJr0RP
         PxX6rsxUgxcPGK28f+xgw3c1bF4Wd8jpMKT8eilpP0dCN+b13wONYqnyyyp7wuJ6Zh1u
         Izog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=vuN1CI0B/krk6QEiMLLjDssQM5bwSokXiNyj/LUOT6o=;
        b=QMSjv+2M3AfYnwZ79zdJzt8MyMl4IrWhRCI5QPDtfPr1kP7OtN/PVTcr5t+/A8G52I
         IZgfTV/4xV06kRrl7W0t0PsAIqkte8L4UWvp6IEurDcPssZm4r8wPPQ+CM3Cii8niDEP
         TKKRSYdbjLk6XedYRbZ+xbBz4szMvfVpayuCdzQglwif3fx2n7Xc15fafTGRfGbMil9b
         fxgL/bZAq1UgsQhBvLxvFXcwT7Ke9jddDQlZ1V+nwF2u2pvEaz9Jgf+AvKOkvTem7Dh1
         hfXC4zh3vBxGyvYOXP/QYy8i0RTU1VkrAj9OrFKnIxplMg+lIOK+8U2ZUzDaCtPbQWZI
         hucg==
X-Gm-Message-State: AOAM533WmWPmftQH2GT+B3mfdU5aCIzy3tfx/Z6/MKFrRWX6HbISHC3v
        +ygPI4ddo279RtcrG8hrvEf/oIPn
X-Google-Smtp-Source: ABdhPJwtntyoINKJDmjHpZfofdqdlC2KarwzFuDKSqGKP0p8Oi6frUEkQeU/v3HFqyV5LF3+gC0Ziw==
X-Received: by 2002:a05:6000:6:: with SMTP id h6mr47095368wrx.26.1594033265778;
        Mon, 06 Jul 2020 04:01:05 -0700 (PDT)
Received: from ?IPv6:2001:a61:3adb:8201:9649:88f:51f8:6a21? ([2001:a61:3adb:8201:9649:88f:51f8:6a21])
        by smtp.gmail.com with ESMTPSA id t141sm3290484wmt.26.2020.07.06.04.01.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Jul 2020 04:01:05 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: Errors in man pages, here: expm1.3, bogus full stop
To:     Helge Kreutzmann <debian@helgefjell.de>
References: <20200706101221.GA26426@Debian-50-lenny-64-minimal>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <5e2ae325-1998-0a72-9e03-b2a0bd0fe6e2@gmail.com>
Date:   Mon, 6 Jul 2020 13:01:04 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200706101221.GA26426@Debian-50-lenny-64-minimal>
Content-Type: text/plain; charset=windows-1252
Content-Language: en-US
Content-Transfer-Encoding: 7bit
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
> Man page: expm1.3
> Issue: bogus full stop after infinity
> 
> "Before approximately glibc version 2.11, B<expm1>()  raised a bogus invalid "
> "floating-point exception in addition to the expected overflow exception, and "
> "returned a NaN instead of positive infinity.  for some large positive I<x> "
> "values,"

This page comes from POSIX. I haven't checked whether the problem
was in the original source, or introduced during import of the pages.

However, I'm going to ignore this one, since it's on my TODO
list to move to a more recent set of POSIX manual pages.

Thanks,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
