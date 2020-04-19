Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 997461AFD82
	for <lists+linux-man@lfdr.de>; Sun, 19 Apr 2020 21:31:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726440AbgDSTbG (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 19 Apr 2020 15:31:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43524 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726025AbgDSTbG (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 19 Apr 2020 15:31:06 -0400
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com [IPv6:2a00:1450:4864:20::442])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 479F6C061A0C
        for <linux-man@vger.kernel.org>; Sun, 19 Apr 2020 12:31:06 -0700 (PDT)
Received: by mail-wr1-x442.google.com with SMTP id j1so4061403wrt.1
        for <linux-man@vger.kernel.org>; Sun, 19 Apr 2020 12:31:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=+Ana+nj06CJzrtX7uaXd88qJSk8tNKN7NbWLqcS7hnw=;
        b=SiB37GQiYGKePeUhlapiGbfhdMpJWio5u4DnRCg3tGLOb0S3DHJVpLltnDR/cctEFA
         f84ZdTwXbtxG+J0Jih8sJ/cMmr3atZG4qn3dbz0ZIhvkA4U4aAIzfmFVVORIqu5nyhlU
         7A0VSh47hueg8w949QjthR81vpi8bJT7QoSNerlaYF6Kxc8aHmxjIumtTQ699rDOGuT6
         7n5wC2v9ecyfSwd71PFviMnH6Mor7KWN3Hmf6i92zMCk3E89YjcHwwOcqYG3kcziJj7+
         1hXms8+yQctwDqfCyezBxwVdK0BevFfVqhai9NvF/oMq2j1BHSMdpG1p7QYAVTlzeKHB
         00yQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=+Ana+nj06CJzrtX7uaXd88qJSk8tNKN7NbWLqcS7hnw=;
        b=NW/vEH3ZGITKgBInZQEReSYyFhQsDRQ+sRcGXDvq9+cWNZ8IDK3/7Ma4Q5an72BXXY
         wvJxaWgiO7zfPCVIJeQ83Vcb+ZZkwZBk+OgQ56Ly1KRgossP2MrGFOnNVfgWG7mc5BdR
         A8iLl2WIagFHg3/RQ7MrZ18jXs7UvmHd3n9ZRC00Mq5hqSHtH3Hyy4ulMYM7ql9GaxmY
         1jzwj+FhWdrH+mqVbhV0xG43XJGSVRtyiI1KikweVR2SyreiGWf4yvE2T1nQMnkZVrIX
         4rbSh0gSK+woQHPOTgJABjzQBRx/cRC5FOBbstThrJg51UKC/jH191TNITc10bGfotV+
         G9Tg==
X-Gm-Message-State: AGi0PuaFTojq+RFTSTbXhLvx+/+mW/nc18uDfnuv1fx+FQY+l5vkUIJZ
        kGKkZFkHulvdxob/ScegToKOZOuU
X-Google-Smtp-Source: APiQypIq1Y4xC17/4qz1q7wLNeY1KJ7ioVIjkYg+uoOHbD84doDlMC1x+ySfF1tc+xt08F0jLINT0A==
X-Received: by 2002:a5d:410a:: with SMTP id l10mr14556911wrp.355.1587324664911;
        Sun, 19 Apr 2020 12:31:04 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:3351:6160:8173:cc31? ([2001:a61:2482:101:3351:6160:8173:cc31])
        by smtp.gmail.com with ESMTPSA id m188sm6520306wme.47.2020.04.19.12.31.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 19 Apr 2020 12:31:04 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: Errors in man pages, here: fopen(3): Wording
To:     Helge Kreutzmann <debian@helgefjell.de>
References: <20200419064800.GA30584@Debian-50-lenny-64-minimal>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <dd5698f3-e83c-7c2a-097e-0c83b184c2b1@gmail.com>
Date:   Sun, 19 Apr 2020 21:31:04 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200419064800.GA30584@Debian-50-lenny-64-minimal>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
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
> Text is broken: "as if by"??
> 
> "The file descriptor associated with the stream is opened as if by a call to "
> "B<open>(2)  with the following flags:"

This is okay English--no problem here, as far as I can see.

Thanks,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
