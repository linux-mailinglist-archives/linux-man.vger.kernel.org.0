Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 76AA61B015C
	for <lists+linux-man@lfdr.de>; Mon, 20 Apr 2020 08:12:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725815AbgDTGMJ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 20 Apr 2020 02:12:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57102 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S1725780AbgDTGMJ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 20 Apr 2020 02:12:09 -0400
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com [IPv6:2a00:1450:4864:20::343])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 93C9DC061A0C
        for <linux-man@vger.kernel.org>; Sun, 19 Apr 2020 23:12:07 -0700 (PDT)
Received: by mail-wm1-x343.google.com with SMTP id r26so9955226wmh.0
        for <linux-man@vger.kernel.org>; Sun, 19 Apr 2020 23:12:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=PVuoxB80naydUrJAkj/KXSZlZhQQpWE7h5oNBqY6DJg=;
        b=Oay6RqKDgR3WaYGniesodRyJdOmSqQFWSjP79MNLifQUMMjIEChjh7yi6KcBsLywm+
         QpxY/0XoXtO5i1K0sUebZc0t6YL6UrywAw+S0/bl8EYyLJN1itKpLNhwAAX5KdVhbz/r
         /ahuqKElG+LhBIQI0oBl8ea4TAy7GXYmzWGjfz/vVXhMnTx+5HpUcBgPeHEU4Fz3rUvY
         JJE0WAjPqky8DNMo3Hh+jDkYD7K9fKmaWS1sNV3xPU8GdQu7BMRlIRFLC57aHQrl902r
         w1l39EerNVSPaOC1/6k1GQxC4vn8nquCHgG2qIXYRPzLMsEJSw1KZ0dN0rW2YRZeuDHv
         GNeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=PVuoxB80naydUrJAkj/KXSZlZhQQpWE7h5oNBqY6DJg=;
        b=Fn137+QVgdRO+UP0tsQ2EXE3x6O5Za4+xIxabevmPM2pcjYPprZ1ZPlb8HAVeZ6Qn/
         h2SsuJrgvoIXb+B6fMmNnakUGkaMRsIGAnPBDE7NTEU+Z4YT9HiPHzNbR++l+POZATDN
         9r4nOq8cvworD3tGXTLxgNR+8kmri06lxNhXz1XitM4ox1ZbmhcFThC5OEC7wgcfM18L
         NYSnCE72jzC47GPTqt8JVicJytSPrP2QFPVYCVCgXq/OhMegNFj501ae0NV1oKcnnQDu
         Elt+ucDWIqMKIBo+TYLFW+16Pf+FuAVsUHPDDdolx//mVVooe3ACoZoQ5clXIWJ2fdAq
         iDyQ==
X-Gm-Message-State: AGi0PubpJknuPJJtaUnHV0zCHCfIvRnsjTUR0P3ZDPdc/KTHwQpcgzUZ
        ynJGk+VdLLN0jrBQ9LkGWuMlYCZ5
X-Google-Smtp-Source: APiQypL6wff57OKGTPaojPPRePfK3m9ZvFKA69QUHMa5GI57q10wSK6UEYy33LPVtmT7bX/XgqIVIQ==
X-Received: by 2002:a05:600c:21d3:: with SMTP id x19mr15773908wmj.60.1587363124366;
        Sun, 19 Apr 2020 23:12:04 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:3351:6160:8173:cc31? ([2001:a61:2482:101:3351:6160:8173:cc31])
        by smtp.gmail.com with ESMTPSA id n4sm18116987wrr.68.2020.04.19.23.12.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 19 Apr 2020 23:12:03 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: Errors in man pages, here: mremap(2): Plural?
To:     Helge Kreutzmann <debian@helgefjell.de>
References: <20200419064811.GA31208@Debian-50-lenny-64-minimal>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <0170ad92-7cdc-8848-af76-409f37a80c1e@gmail.com>
Date:   Mon, 20 Apr 2020 08:12:03 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200419064811.GA31208@Debian-50-lenny-64-minimal>
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
> flag → flag(s) ?
> 
> msgid "The I<flags> bit-mask argument may be 0, or include the following flag:"

Thanks. Fixed ("flags").

Cheers,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
