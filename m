Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C436F1B0214
	for <lists+linux-man@lfdr.de>; Mon, 20 Apr 2020 09:00:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726006AbgDTHAx (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 20 Apr 2020 03:00:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36392 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S1725815AbgDTHAw (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 20 Apr 2020 03:00:52 -0400
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com [IPv6:2a00:1450:4864:20::441])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7C383C061A0C
        for <linux-man@vger.kernel.org>; Mon, 20 Apr 2020 00:00:52 -0700 (PDT)
Received: by mail-wr1-x441.google.com with SMTP id d17so10668963wrg.11
        for <linux-man@vger.kernel.org>; Mon, 20 Apr 2020 00:00:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=lEjmuzvnGm+H/SVj13edgxiIdFfRqht4AyFss+HUOyo=;
        b=a29uP/ErlRQPY+liSGEUgaq2p0/xVtv4v/KYjAmA5qjl1bYbPXU8gp/7ILovMaqx7z
         4frYkyQlo6wU+Fv8aELClWM5s2C9vUIvRPh7wm4BCo2RB5jmpwd/cbZIJ2tCMxhqSpiE
         bPBQ5fmz6aOGMbMYRroqFNpzQNETCoUDN7Oko/Bc6/jECqAQFn4c8Vz9Q7wnEvGbGUdq
         yExi7wkLOtJSLbi//BPv92gbDdfR3Jr6rMXs3FMwZJqs0L72jTi5S/QcCgWOTvw4r5Zs
         QsgzxEs9ue0udg+CsLi2Zvnb7ac8zwS3VV4M6tGWNNJHtDwjEsGVcqfhySRmVw4DSsV/
         zMVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=lEjmuzvnGm+H/SVj13edgxiIdFfRqht4AyFss+HUOyo=;
        b=DlzQVTPFFws+iTWNmRSagvEppn2siSgRunDoUmlozpC8nLp4P4Wh8IOPeR0WfxAnYh
         9z0DWu0GTq+lsAT/JLRkYvN9jCfmb7MRvYnWqnY+GxRv+/rZyVxMYFvhn4vApNlsjcoC
         RT9MGuq31uZU+wkd0JA3kO/R5inpL79XBVr5CWo/T5X2is3XTcmJ8f4pzAunpaJCQeVr
         Kts4lap/v3j2gllcPqwZ5AnKZ0nJEoDBk1wLY6bTqNpB87bSGXlHt0l3HEzS8BpjDQm+
         uxcnLOHkVyJB3MWc5GQlWrUQoL+TtmY+sTinUtVWWeGjVRVB5cubH0/CshtCay6+/6zR
         zYyw==
X-Gm-Message-State: AGi0PuZy/NNHKrW6gtisLEHvL3jqssugbHCQ6A6mutL9/rutpB4qw+cS
        aIaBOBtbg0/pUfp9ss78ep+SU11q
X-Google-Smtp-Source: APiQypJHl0uXp+csvcXHcbW2cstqxw8aqaqNnscQXqt5mGu3E3h4gvzDAV6ecIpNL32c7My4I8kw9Q==
X-Received: by 2002:adf:c442:: with SMTP id a2mr16842554wrg.110.1587366051047;
        Mon, 20 Apr 2020 00:00:51 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:3351:6160:8173:cc31? ([2001:a61:2482:101:3351:6160:8173:cc31])
        by smtp.gmail.com with ESMTPSA id n2sm22441331wrq.74.2020.04.20.00.00.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Apr 2020 00:00:50 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: Errors in man pages, here: dsp56k(4): Singular/Plural
To:     Helge Kreutzmann <debian@helgefjell.de>
References: <20200419064756.GA30329@Debian-50-lenny-64-minimal>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <0bf9fae9-e815-f3b4-38cf-74bcd0ba1ab3@gmail.com>
Date:   Mon, 20 Apr 2020 09:00:49 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200419064756.GA30329@Debian-50-lenny-64-minimal>
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
> Can there be more than one padding byte? If yes:
> s/a null byte/null bytes/
> 
> "sets the receive word size.  Allowed values are in the range 1 to 4, and is "
> "the number of bytes that will be received at a time from the DSP56001.  "
> "These data quantities will either truncated, or padded with a null byte "
> "(\\(aq\\e0\\(aq) to fit the native 24-bit data format of the DSP56001."

I don't know the answer, sorry.

Thanks,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
