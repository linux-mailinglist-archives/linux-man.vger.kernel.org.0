Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4754F1B04F6
	for <lists+linux-man@lfdr.de>; Mon, 20 Apr 2020 10:58:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726024AbgDTI57 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 20 Apr 2020 04:57:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54626 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S1726006AbgDTI56 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 20 Apr 2020 04:57:58 -0400
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com [IPv6:2a00:1450:4864:20::442])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 02D40C061A0C
        for <linux-man@vger.kernel.org>; Mon, 20 Apr 2020 01:57:58 -0700 (PDT)
Received: by mail-wr1-x442.google.com with SMTP id f13so11070197wrm.13
        for <linux-man@vger.kernel.org>; Mon, 20 Apr 2020 01:57:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=05TXCGuSuLxjC4ozeQuUfgv/UovBU1WoR70fM8FCvTs=;
        b=IB2jSLlAdYjklqLQRIbDhmWh7hLoMV/NUh/+VzjgS1p/CGSKasa7vLDkZfTzF+vxHk
         Bi1VjjQUTXv6Tmo9UHkHV/fuyFUW+zSmpmYwc9LJApxTwHqUM9NIayN9SL3quQF9UfM/
         E1wJ+9/L+u2mxYs2cHzjjN+qU2aGhO2LScbuXGSlZqJxjI45Fjy8owbsm9VED/oZzwEt
         2SyvvhETCzuowDyAP950N9kqGOZwHsFrrCNpq0nl8LZh0V6zOgzW5P+9J8dqhbUiqxG8
         hKXqDANjY/MpH3qiNu+OhWM05jUvVTZmgAGOgrkTjjErUKe0rU4z2M7ErM3Px/qKpK0e
         lC+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=05TXCGuSuLxjC4ozeQuUfgv/UovBU1WoR70fM8FCvTs=;
        b=tUXRrijsaibLM9lPiBF2h5iyT9mh0MKmq+t8kGWEprg7XfuNo+WYGcX/R9cO8JbcJS
         SJ+UDy5nXchTgs4ivgcvKLcDktYBafmPR3JyDtW//c50gHJ40LUvicE08jOHZuJ3LFt/
         zzMqtP6eJU4ERiFtvApNcoKjtec8QANu+QCtBK0Gbgbs/r920HmuGsvo9OTb8j5XYF5I
         XoE/UNe7wdQuJUhtcOtCsFihrfnaFe2mlUzc6zzQ7ErDSWtXri2Tw1Ab8FAua9vNZ2WQ
         6LN1oGiyj8+x+pIpVwoMqlhup8pPrxSPptyt7+KCFrrHlhTP6rWF3fsYv78kESMB1s0G
         rUzA==
X-Gm-Message-State: AGi0PuZdxG+T0fuXVuvwLnQYeBRlKB8EThP09Xv/GV6xzEfKAmFOTJF7
        S8Q/UXSeMEyRrGna1gC/1lFJawb2
X-Google-Smtp-Source: APiQypKplNrkOut2rYYFPKcSlh3iAaXDFsh4xUyBqxxsB6tV+1MsjUBBMvFagzN5e9v6h7j2WJKr0w==
X-Received: by 2002:adf:f881:: with SMTP id u1mr17200624wrp.348.1587373076610;
        Mon, 20 Apr 2020 01:57:56 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:3351:6160:8173:cc31? ([2001:a61:2482:101:3351:6160:8173:cc31])
        by smtp.gmail.com with ESMTPSA id f63sm458019wma.47.2020.04.20.01.57.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Apr 2020 01:57:56 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: Errors in man pages, here: proc.5.po: Quoting
To:     Helge Kreutzmann <debian@helgefjell.de>
References: <20200419064818.GA31583@Debian-50-lenny-64-minimal>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <5de7cad6-2478-abce-01be-851008473685@gmail.com>
Date:   Mon, 20 Apr 2020 10:57:55 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200419064818.GA31583@Debian-50-lenny-64-minimal>
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
> No quoting? (The subsequent entries use quoting)
> 
> msgid "I<0\\ (default)>"

Yes, but /default/ means just that. The others are intended to be names.

Thanks,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
