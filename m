Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C50381B054C
	for <lists+linux-man@lfdr.de>; Mon, 20 Apr 2020 11:13:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726173AbgDTJNY (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 20 Apr 2020 05:13:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57012 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S1726100AbgDTJNX (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 20 Apr 2020 05:13:23 -0400
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com [IPv6:2a00:1450:4864:20::344])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 815BEC061A0C
        for <linux-man@vger.kernel.org>; Mon, 20 Apr 2020 02:13:23 -0700 (PDT)
Received: by mail-wm1-x344.google.com with SMTP id u16so1838585wmc.5
        for <linux-man@vger.kernel.org>; Mon, 20 Apr 2020 02:13:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=t2/paekakltCRNn8x0GVfy9j1dhjPDQpUOH1krW2+cM=;
        b=jOtVowTb05EakMwjswA0ceenUtZGiz/UeRisuadYe8p/Vq7vuLj0RmT189nRHgeTWz
         JZeckqudu/VgKVquiID5YAsFTn3YTuvNpO8R9GjaiUaZz4EPscJiv7vzrUKFR8OGKzsH
         dtA6wpClS4UDpbHkyIiHGSslXf3HR9M8R00q/7Vv3HXUfBg8sDD0PcYqkJL+Wjg/4HRC
         LkeLh+7bBdf2xdg7aln3EkSGhiObX4QvUqABTmNs1u2BHeZaXW4Hf5yJyBaZ5XeGQs5+
         wyYhFAn9oiSZQ7vAnIPg0CAaCxiw6c+xCoiuk1MZztLLn6kukkWTJR9SbPOr5crGtBcJ
         hymg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=t2/paekakltCRNn8x0GVfy9j1dhjPDQpUOH1krW2+cM=;
        b=cdvFZrmMAL+yKuuKFTEma+gcmO4Lcqj7Fgkq7qjsXEomRAt/eSgdYI1tZ1qE3gkDPN
         pmO/lpWSfv0EUhNQW3aFxKUdeWjyKyRvwD4EMYJXJw4bHUzPcA9e4Cp6vEg8KA/c7PuE
         jeqsbX5uMdoyN65q+DyyoNGEhXxdouIcEtb69FOsDrbbnL2Hzcknmfrb+kN0ZpCo5rW4
         ljce51VF6yIN/Kz1/B0STR9IZbPmbjY66GigDZ+uh2C5GQFuTa2f1qggXLTSIaSNJSPc
         UbO093C0siaFD7EuSR2G7JGOQ+4Nh62dvGtm+4YTcl49FKklVdj6wYsfH2tykap2ks/d
         Czdg==
X-Gm-Message-State: AGi0PubzirCksKVscw16jNOh+gJmz18Jo1iCumlGfa36fKAQXuH9F8+9
        oKgSbpW1Xz8bmVdx1EgClnM30Odo
X-Google-Smtp-Source: APiQypKgpCN+CReMpNuNkRPjDnsQH1PixV5BxQoAAZ6b2iyo22Sy0Nh89VqA2YJGorfdKFyi6YqrDQ==
X-Received: by 2002:a1c:4b12:: with SMTP id y18mr17296074wma.149.1587374001925;
        Mon, 20 Apr 2020 02:13:21 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:3351:6160:8173:cc31? ([2001:a61:2482:101:3351:6160:8173:cc31])
        by smtp.gmail.com with ESMTPSA id q1sm311242wrn.70.2020.04.20.02.13.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Apr 2020 02:13:21 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: Errors in man pages, here: tzfile(5): Punctuation
To:     Helge Kreutzmann <debian@helgefjell.de>
References: <20200419064834.GA32517@Debian-50-lenny-64-minimal>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <95611010-1ec8-c461-8502-71515373c961@gmail.com>
Date:   Mon, 20 Apr 2020 11:13:20 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200419064834.GA32517@Debian-50-lenny-64-minimal>
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
> Final comma → fullstop
> 
> "Some readers may mishandle time zone abbreviations that contain fewer than 3 "
> "or more than 6 characters, or that contain ASCII characters other than "
> "alphanumerics,"

I can't find this text. Please elaborate/check.

Thanks,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
