Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E08371B0208
	for <lists+linux-man@lfdr.de>; Mon, 20 Apr 2020 08:59:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725930AbgDTG7E (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 20 Apr 2020 02:59:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36098 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S1725815AbgDTG7E (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 20 Apr 2020 02:59:04 -0400
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com [IPv6:2a00:1450:4864:20::344])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 99F0AC061A0C
        for <linux-man@vger.kernel.org>; Sun, 19 Apr 2020 23:59:02 -0700 (PDT)
Received: by mail-wm1-x344.google.com with SMTP id t63so8702818wmt.3
        for <linux-man@vger.kernel.org>; Sun, 19 Apr 2020 23:59:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=CpevNsLHf1cBWofxAGYG+4TpSaOeRwlZpvfDZF4flIA=;
        b=KDkdhvpWC8wcO094zYV5Dk/t70GqI8Ex+LhyllP4b4VmVV0GCF+j9sllE31QBSJh5B
         haF/GzBvf8cC9GWOrRtXTR/1idh3n4o9X3kZOHyrkSqVMaYI1jQPz2vMiCdoC49HssLW
         P84Tx651JBozE3HZyX1cgXR3Jr54gvznwT0niIl4abFhc8NDF6YsV/ADjpNf9IcZq628
         IiZzO+RCX+XNDi2Fm89EOx52KUKCL1uR9m6zCZRr0lusYkokEj23w8J80dBiJaK0xNNh
         JZMrvcz2XgDioU0qPebntueg09MmGJ++kT4hubHrEsR+9rfCv3ia+phjAZ9a5C+kcxDZ
         FYfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=CpevNsLHf1cBWofxAGYG+4TpSaOeRwlZpvfDZF4flIA=;
        b=h+YJUPYvr03pF0dUgwEtNpDvoqVEo6GhPz5F+h3lehh1LXx0Q/zTYKDjK+iheUIcgP
         CVBCEglTGb2ds18SqUcCypq9ZjPo2EeaP4QpRPbfW/5B4UZACWTIsVFVjX0WNJ8wZc3n
         FB2I+YvL8VDAXY0thQmzDx1QjepOTO4HbWRUnGpaRTN9P/gpaefcvd9iXgro8H/ebD1F
         j8JtVIpwrtTeL1AS0SPkfafxxFWTQE0vCkb1bsq96lF57NCLq/xSrRDOIsoGH7HpozCW
         hTcAH1vn39cI3uW9d4CRxFt+j40ZiHDayTTrS4kb+wsbehsQdvGVbYhVBEShWvjjpsuQ
         paEQ==
X-Gm-Message-State: AGi0PuZdSO2KYy7CmK3V4l/+zK7gTV4r4BgDT4mpDIYj3Hgpn6fiiFPz
        EyGRTevsBfOQ5L88/ilJF4iLVBm1
X-Google-Smtp-Source: APiQypIMruzgJu0HbHaBm2hdhZX6fvz5gpm5fSjwHUPw+xKy1dkLN757fi6lXp8PLH46aNlsNNSeRg==
X-Received: by 2002:a1c:2842:: with SMTP id o63mr15972385wmo.73.1587365941237;
        Sun, 19 Apr 2020 23:59:01 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:3351:6160:8173:cc31? ([2001:a61:2482:101:3351:6160:8173:cc31])
        by smtp.gmail.com with ESMTPSA id i17sm32989921wru.39.2020.04.19.23.59.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 19 Apr 2020 23:59:00 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: Errors in man pages, here: console_codes(4): Punctuation
To:     Helge Kreutzmann <debian@helgefjell.de>
References: <20200419064753.GA30168@Debian-50-lenny-64-minimal>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <9f143ac0-5b2e-7f75-249a-8fa93cbec55d@gmail.com>
Date:   Mon, 20 Apr 2020 08:59:00 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200419064753.GA30168@Debian-50-lenny-64-minimal>
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
> s/, and CAN/. CAN/
> 
> "If we have a control character, it is acted upon immediately and then "
> "discarded (even in the middle of an escape sequence)  and the escape "
> "sequence continues with the next character.  (However, ESC starts a new "
> "escape sequence, possibly aborting a previous unfinished one, and CAN and "
> "SUB abort any escape sequence.)  The recognized control characters are BEL, "
> "BS, HT, LF, VT, FF, CR, SO, SI, CAN, SUB, ESC, DEL, CSI.  They do what one "
> "would expect:"

I think the existing text is okay. What's the problem?

Thanks,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
