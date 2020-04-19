Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CFABA1AFE12
	for <lists+linux-man@lfdr.de>; Sun, 19 Apr 2020 22:22:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725891AbgDSUW5 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 19 Apr 2020 16:22:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51574 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725848AbgDSUW5 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 19 Apr 2020 16:22:57 -0400
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com [IPv6:2a00:1450:4864:20::341])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CB066C061A0C
        for <linux-man@vger.kernel.org>; Sun, 19 Apr 2020 13:22:56 -0700 (PDT)
Received: by mail-wm1-x341.google.com with SMTP id t63so7671499wmt.3
        for <linux-man@vger.kernel.org>; Sun, 19 Apr 2020 13:22:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=OJkjbTLjbnlaOP0O2UOQYIAWksz0avoEcgFpnoX/Ros=;
        b=OSl4YiI9nqt1IoaZDY5t3pxFn1LPLgOEEBjLg32QAjBIXmFjg1bnCFRn5gIVD9i+RT
         9EqZhsk+/o8bR78/zzufWQ1OeVtSBZga7IEtxMyUbQDOZ5K4Xfjr4LXFNmcIzHfD4ebN
         ymDYL39tyOpvpuJCTKRvpNYLjW7sM1XKgG6GesHNHZCBFCJXzkB2v+Ul0emkSM88E4MM
         AGU5oA/gudG0ETNxPeps4zD3oc5rwHzmk4/lmB19FIw2FCYkulDrRww5H7RO20bW2+ju
         tko4BIUDtsnjeP42luOL7N8p8/LbGjBkoZSxqW4cYfzJDruoRSa8vx4TxoM//17qBh+6
         gXcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=OJkjbTLjbnlaOP0O2UOQYIAWksz0avoEcgFpnoX/Ros=;
        b=oCImBeSs8stTDb3Xa4XaqcCXCQDWgRgpB6mXvwu53NWugTPJalFmxsdiZfK85/Epu9
         F2tWHBtoGnnrc/Ez4MnJz7yjHFl94f5fdbsI5BV+1AHuMwC/WZsjNCy8F+/2CSxS6gv0
         doj2yaQY2D+K+YsIPinyLplf3gXPIbloeCC8L27brkenKyQnv3vRu8YWc1+jP2w/oE0W
         OOHhsdhnviE/ibNDa5WQevYok6Pz/0VmXsVxqHuR4IjcHkZm8SIaCbPA4rtTYcXF7eOt
         N9p69E7zlvRXA1sUUQKlMnXgrFqEcOoIJfzHuvWy9rNmdiny25z5KfVMmFq4jpTK2OfV
         SCgQ==
X-Gm-Message-State: AGi0PubbpVzsYejMXnujs2RU1ik6KOFzwiPDxJksAWzF8vk+Fy/b604K
        DS5+MfSmGIXI8vRw689Rkg801aZw
X-Google-Smtp-Source: APiQypL54ua9DQtYomuh42pMtzhqhpjce6NY5GPzsWXdTBGkrE5hDLABS8AqEkl4r5ynZuB31yDnyA==
X-Received: by 2002:a1c:e187:: with SMTP id y129mr14997658wmg.133.1587327775353;
        Sun, 19 Apr 2020 13:22:55 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:3351:6160:8173:cc31? ([2001:a61:2482:101:3351:6160:8173:cc31])
        by smtp.gmail.com with ESMTPSA id j17sm5372581wrb.46.2020.04.19.13.22.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 19 Apr 2020 13:22:54 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: Errors in man pages, here: nice(2): fixing word
To:     Helge Kreutzmann <debian@helgefjell.de>
References: <20200419064813.GA31302@Debian-50-lenny-64-minimal>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <65742000-7ddb-0c49-8949-8db8d760b764@gmail.com>
Date:   Sun, 19 Apr 2020 22:22:54 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200419064813.GA31302@Debian-50-lenny-64-minimal>
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
> low → lower

Fixed.

Thanks,

Michael

> "B<nice>()  adds I<inc> to the nice value for the calling thread.  (A higher "
> "nice value means a low priority.)"



-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
