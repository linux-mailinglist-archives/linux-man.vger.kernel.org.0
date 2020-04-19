Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A17EE1AFD91
	for <lists+linux-man@lfdr.de>; Sun, 19 Apr 2020 21:38:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726011AbgDSTi0 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 19 Apr 2020 15:38:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44638 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726022AbgDSTiZ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 19 Apr 2020 15:38:25 -0400
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 90C02C061A0C
        for <linux-man@vger.kernel.org>; Sun, 19 Apr 2020 12:38:25 -0700 (PDT)
Received: by mail-wm1-x331.google.com with SMTP id g12so8909037wmh.3
        for <linux-man@vger.kernel.org>; Sun, 19 Apr 2020 12:38:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=IYxKfZJ7tRefScHM51+Pia9lhww5EvSP/vX8Tj/Dy2M=;
        b=obYfs1+zbMQfUPrDKN64WfgRE1I6wsTuc53HnwyINVWFF0v6AEnuFiTXDY+A9/ZlDP
         9Qr7BtT1JS187jj/PnEN1EhrPnFbSwX6doTLWsPtTzipgtnJmOyxYKcccBu+4PqiRleF
         IVXj5PEA/HYJcX4Ponn+f89VHpLR27QEY09xmAnFR9Kq6lO+fUn5dKgETtr25MsFHQdO
         tqxO6yijKcfg2AryZO1+85WBEBBM11FNxvVCJQiu8EaZl0vHFjn0pQTutzu0B6OHNjyw
         u4rF/NFHFdM+BWRYrobqzMhYBCKLzKb+tH4dgpFFJrwRII5d3vHSSDW8ZeaqWR2PzCQx
         Oolw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=IYxKfZJ7tRefScHM51+Pia9lhww5EvSP/vX8Tj/Dy2M=;
        b=qDv7O+i9N5LfrmGnngBfWqTTMWn9qOAZLpRJuSus16sB4zQlFNBf4A1ISBcTL7sF93
         efOEVe1wZyazqJS3luBNSt5xSOQ9DLJGNhdf6aqnHYhFugUp+5qAlVWdgDiaUS1xrqYW
         lK0AmSQT9L+1cchJYqCTF9oTzoySCwPwqb1I+TfHDW/ozZw/GEoHrX1nhKo0qC8vfCMb
         Ueww0krIk83BuLP+SpmtoT2h2rRncm8yyhpMSTmZ9kJt+l2oMiDl5VYF99+VVY+lykI5
         pNEaaLsHkb04KCXJRHAbk+TIdtAXzXV5mQq10KXU3lrgI1l7jMFwRu6K8luYi4TII5t6
         7uFQ==
X-Gm-Message-State: AGi0PuZXgM2b/bpi7y3zbn3fNq7JddeDk4xenKT1Q/LBZ3rKEd/Lruo3
        fPUQCM9r2eyh2Oku6lhjKXvBoSZt
X-Google-Smtp-Source: APiQypJ3k+7W+gkxpo4B1CZGmCFMhz1zG1+scvrMasjjpZXvYObOh78/MBI8X/FWZfaRuHfGdLfkRQ==
X-Received: by 2002:a1c:7f86:: with SMTP id a128mr13894371wmd.95.1587325104001;
        Sun, 19 Apr 2020 12:38:24 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:3351:6160:8173:cc31? ([2001:a61:2482:101:3351:6160:8173:cc31])
        by smtp.gmail.com with ESMTPSA id 33sm7075312wrp.5.2020.04.19.12.38.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 19 Apr 2020 12:38:23 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: Errors in man pages, here: strftime(3): Typo
To:     Helge Kreutzmann <debian@helgefjell.de>
References: <20200419064830.GA32282@Debian-50-lenny-64-minimal>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <76841608-b55c-3126-537e-0201847db3e0@gmail.com>
Date:   Sun, 19 Apr 2020 21:38:23 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200419064830.GA32282@Debian-50-lenny-64-minimal>
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
> three of -> three or
> 
> "B<%G>, B<%g>, and B<%V> yield values calculated from the week-based year "
> "defined by the ISO\\ 8601 standard.  In this system, weeks start on a "
> "Monday, and are numbered from 01, for the first week, up to 52 or 53, for "
> "the last week.  Week 1 is the first week where four or more days fall within "
> "the new year (or, synonymously, week 01 is: the first week of the year that "
> "contains a Thursday; or, the week that has 4 January in it).  When three of "
> "fewer days of the first calendar week of the new year fall within that year, "
> "then the ISO 8601 week-based system counts those days as part of week 53 of "
> "the preceding year.  For example, 1 January 2010 is a Friday, meaning that "
> "just three days of that calendar week fall in 2010.  Thus, the ISO\\ 8601 "
> "week-based system considers these days to be part of week 53 (B<%V>)  of the "
> "year 2009 (B<%G>); week 01 of ISO\\ 8601 year 2010 starts on Monday, 4 "
> "January 2010."

Fixed.

Thanks,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
