Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 890FF1B0306
	for <lists+linux-man@lfdr.de>; Mon, 20 Apr 2020 09:32:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726173AbgDTHcH (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 20 Apr 2020 03:32:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41252 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S1726116AbgDTHcH (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 20 Apr 2020 03:32:07 -0400
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com [IPv6:2a00:1450:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E142EC061A0C
        for <linux-man@vger.kernel.org>; Mon, 20 Apr 2020 00:32:06 -0700 (PDT)
Received: by mail-wr1-x444.google.com with SMTP id t14so10750217wrw.12
        for <linux-man@vger.kernel.org>; Mon, 20 Apr 2020 00:32:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=IEvm3/NHbBpZEBSZ0hR+OLIVTxZKkWjBybp5m2tABAI=;
        b=HTH4VTpkai7FvAHOETx3T9v06X2jxSrlsSDq7mbD+wzx+u68c8jAgRrY4lbY4E0gq3
         VLtLVqjryC2jBefLUlSWCoIf0mE8F8wf3e3mQhHe/N8aGF3VAS+PRqt4ntZu+Q0VaOlf
         5mVauUeBbRfbWA3TTp5iqi8fFJTdGhidrW0XynnJ7PM6roSxbCU9sYIVtBn1GtUe+F8d
         QiZ86wl2P6Y4beIqEC6f2ZQ7AtZEXVIKCEnF4CHAh5vn6AOR3KfzdpY9LYKsgaZuquyW
         NhKyFAQKt/ubPjqhDRmgiDm9EFcYPsxazO21L03jMAw0DzAzurIk1P30gBwWkxd4W+4z
         0iQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=IEvm3/NHbBpZEBSZ0hR+OLIVTxZKkWjBybp5m2tABAI=;
        b=b6PeZFl63XFAiLT3SXWnam29jgmkDwJF0vvi5411sZC6CjOwe+hfjBbr/aiWYbs0qP
         4OZgOnLNgjMYvNKuhOxeVsoN8A2TwKW2m/d/fThzk2yclmwf5gunoB8J3Enx8JIGKMIF
         dBy+/BQdVpY7EfSNM6vRu7VONxc5Bb04FXe9a6uJmH061iYoQPWBPNDGvXA8TQLtjH//
         ZNlGVqo2g2if2NmfahYVCzDSR3c9P7QC1xB+5+RaXvlKWR8Q4ZioxCq6aF/+Ucq3ycDU
         6yX4iKgaNEmo1Rp95SdUzUns/TEl5uH+ChI3cDBrxIiThPPz85HdSdh36BvfskoWNjXg
         jx7A==
X-Gm-Message-State: AGi0PubOg/zujzHkzoONmZRm+iYCXG4JZDihk3jJd4amjkKqljrA3DLk
        6gXTaxSPoN9s+gdbGJdn9uyHUiik
X-Google-Smtp-Source: APiQypLk+3mEsBW+/WClVAloipEHv6CWjsaOsL/dRXAcnzontq2N6JcjZk96ohRgMG48WJXIzC40YQ==
X-Received: by 2002:a5d:6acc:: with SMTP id u12mr18721815wrw.198.1587367925541;
        Mon, 20 Apr 2020 00:32:05 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:3351:6160:8173:cc31? ([2001:a61:2482:101:3351:6160:8173:cc31])
        by smtp.gmail.com with ESMTPSA id s9sm24550wrg.27.2020.04.20.00.32.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Apr 2020 00:32:05 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: Errors in man pages, here: proc(5): Explanation
To:     Helge Kreutzmann <debian@helgefjell.de>
References: <20200419064816.GA31488@Debian-50-lenny-64-minimal>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <7c8f4bea-765f-6eac-f3dd-2bf66f906c87@gmail.com>
Date:   Mon, 20 Apr 2020 09:32:04 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200419064816.GA31488@Debian-50-lenny-64-minimal>
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
> The last two entries (smart_*) don't have an explantion and are not 
> easy to derive from the name
> 
> "cache              buffer size in KB\n"
> "capacity           number of sectors\n"
> "driver             driver version\n"
> "geometry           physical and logical geometry\n"
> "identify           in hexadecimal\n"
> "media              media type\n"
> "model              manufacturer's model number\n"
> "settings           drive settings\n"
> "smart_thresholds   in hexadecimal\n"
> "smart_values       in hexadecimal\n"

Changed to:

smart_thresholds   IDE disk management thresholds (in hex)
smart_values       IDE disk management values (in hex)

Thanks,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
