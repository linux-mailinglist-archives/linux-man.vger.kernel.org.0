Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7A1881B0380
	for <lists+linux-man@lfdr.de>; Mon, 20 Apr 2020 09:55:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726048AbgDTHzk (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 20 Apr 2020 03:55:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44912 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725886AbgDTHzk (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 20 Apr 2020 03:55:40 -0400
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com [IPv6:2a00:1450:4864:20::344])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E902CC061A0C
        for <linux-man@vger.kernel.org>; Mon, 20 Apr 2020 00:55:39 -0700 (PDT)
Received: by mail-wm1-x344.google.com with SMTP id 188so3724236wmc.2
        for <linux-man@vger.kernel.org>; Mon, 20 Apr 2020 00:55:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=UWtof6qUU8ookR0HodVmds3GipJF+BsAMthLWg7rHKU=;
        b=iZC1aeiQMgZGvRCFCmcZdEkEYHzSaB9+NHy0cFmnPwi3Lr9/249kcscamaqmRBDaLN
         s7rba+ghwGBd8mCJrcXX5B0VoBoaqUOen3C+ti5/0MQZRRSFD6iMNnoLSLHppwP9IcF1
         naYLgmKaMmNpDPB0LTuIcuwtigiPCkerEk36aJOfeveVYQxAU0R3OjAOXgMw/ZklN/1n
         j1SCoWy/R422BkC+JOX3iWs5LzF5JRDXQ7cxnknzPlKvr3E7KVAHCQxs1C0+AJ3nlmW0
         qy8fud123COXwBE+PHyZbyhrcQrELMNuhdkCeTGSIArcP0OVWw5+bBqEcQp+jxQvczyq
         sLJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=UWtof6qUU8ookR0HodVmds3GipJF+BsAMthLWg7rHKU=;
        b=e/qWX9luaAPcre7eqC6m+iX0pTV3TWVZcgE8yIHAVqr+Tofh3wfZpUdBriAJwiiPMi
         BF0TDJZXWSPrM8w/7dqGQayWQxJ0rtw6RvaplmVbp/XgiRmuinNEfJ0bXBzfqHu/DH+F
         GcWJ+O8Jq3NjzqhXBTghP4ceFEsVjjkat74P1TWqTON80rx41H9I5ehg9H5a4Fb3xdOD
         KaFiItDXHu2k3Z5626LBTwn0cHYCw/C3A/hueK8gX5clyxLUDpjdWYgPaTQh5cBYjZjr
         KSow5EA63QWgc46paP4U7KKIuI1hsydoqrd+bbE4Qcb9ndNFlM4pvbYE9Yt0TG++p1Vm
         Or6g==
X-Gm-Message-State: AGi0PuZ3O8lgp/kgNhKEJ7M4t+ZbQOMk/cvEljJ/hxShSmsZLIPPvysQ
        HPAtLLeTp2rEwsk6/X1rMYGdBAxQ
X-Google-Smtp-Source: APiQypIOiai3roy1GPJHf3voBk84dk0O3eqpqlcWFdeO0aCYMs8YR7sHovdFfj6gZz2LrJfWp8BKaQ==
X-Received: by 2002:a1c:1f96:: with SMTP id f144mr15603035wmf.114.1587369338459;
        Mon, 20 Apr 2020 00:55:38 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:3351:6160:8173:cc31? ([2001:a61:2482:101:3351:6160:8173:cc31])
        by smtp.gmail.com with ESMTPSA id k14sm84634wrp.53.2020.04.20.00.55.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Apr 2020 00:55:38 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: Errors in man pages,here: st(4): Wording?
To:     Helge Kreutzmann <debian@helgefjell.de>
References: <20200419064828.GA32187@Debian-50-lenny-64-minimal>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <32ce9f2b-4655-66eb-fe7d-3ab7f1b861a8@gmail.com>
Date:   Mon, 20 Apr 2020 09:55:37 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200419064828.GA32187@Debian-50-lenny-64-minimal>
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
> report → support?
> 
> "The header file defines many values for I<mt_type>, but the current driver "
> "reports only the generic types B<MT_ISSCSI1> (Generic SCSI-1 tape)  and "
> "B<MT_ISSCSI2> (Generic SCSI-2 tape)."

I think the wording is correct, but am not 100% sure. Please send more info
if you have any.

Thanks,

Michael



-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
