Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6C5391B047B
	for <lists+linux-man@lfdr.de>; Mon, 20 Apr 2020 10:33:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725896AbgDTIdq (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 20 Apr 2020 04:33:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50880 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725773AbgDTIdq (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 20 Apr 2020 04:33:46 -0400
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com [IPv6:2a00:1450:4864:20::344])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B07B8C061A0C
        for <linux-man@vger.kernel.org>; Mon, 20 Apr 2020 01:33:44 -0700 (PDT)
Received: by mail-wm1-x344.google.com with SMTP id u127so9222962wmg.1
        for <linux-man@vger.kernel.org>; Mon, 20 Apr 2020 01:33:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=EJFBjSj9FDr8xwshuV2BNeRbbQbIShqWq+so38xhm8E=;
        b=AC3A0syGJ+3xW/9FN0nH32N21latHS9RtAbtQWBBrviSH7wmepOWbGJ/ebPqjZt8q8
         OT1U6tL4YvUpHnC7cTTEK+yDZEkLkWtSr5y4qCKHOB3KY56euarOQjkz18Ek5Wj9js1h
         6D3B66Dww6LxfMr4u/oZv6HGpQ6jyimv6e2Siz92XJ9vkGvK59tXafZCo1tU3asz/eQX
         tyj0RSy0klj1Pvv13BNq+9U7DC56jKvNLgzNe/BFOjbnTtjBN3ZaDHb0z+b7zhklJKU6
         ok7r20ai3OAUAZucgzvZCiANC+/NDJcHLwR/AIjv859cM2QgoSCLY+cIv4ygHMZ1z6p1
         xp8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=EJFBjSj9FDr8xwshuV2BNeRbbQbIShqWq+so38xhm8E=;
        b=jF7EA/AgdCg8p6gGSMaQwEq35zUDDJKq3xIOipiVXClpY3h/hxnu7EI4tN+DW6UUtY
         Y3Xq0zGWfzzOA1QG3cNI9XGVdDWrv9J4wCzOb9mc0xBfksPs/PsNyQcnSkQDW6XSCIIo
         gphu1piRGTqyz9g2hQI2kioMZAbDfXwrjyUVPgFALoGfxgPCbLvXXhJhDFzPd0n0r/hy
         lhGMCabiMZeeYddb5EDWM8iut0jMJ5cQddXaO0y427AKeGaRRl0MfNs0IeF1Lm5ZEskD
         7RQ14LbouVdwop1iePz2UE73Vlud1D0Rvs6lkwRLQ2/SWGC6q0bXOGoEP+6YwWVg00Uv
         E+fw==
X-Gm-Message-State: AGi0PuYF7qE0aSuqt8MXCkaCP6U2So7hpdDCNqTA7X2hmEnCTGmlh+a/
        LOmsngTa9k9PwvC3VSCmPmfwsnX9
X-Google-Smtp-Source: APiQypLfVYDDjt3oYHyBG67nsidT+StBvuwMyZaN56zq1X6MkzJC6zUg7lkykD7XRXOSba18APu+oQ==
X-Received: by 2002:a7b:c44d:: with SMTP id l13mr10555618wmi.72.1587371623232;
        Mon, 20 Apr 2020 01:33:43 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:3351:6160:8173:cc31? ([2001:a61:2482:101:3351:6160:8173:cc31])
        by smtp.gmail.com with ESMTPSA id f7sm239873wrt.10.2020.04.20.01.33.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Apr 2020 01:33:42 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: Errors in man pages, here: signal(7): Sentence to long
To:     Helge Kreutzmann <debian@helgefjell.de>
References: <20200419064825.GA32002@Debian-50-lenny-64-minimal>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <0f760556-f587-fbb0-581c-d0f5a38ad23e@gmail.com>
Date:   Mon, 20 Apr 2020 10:33:42 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200419064825.GA32002@Debian-50-lenny-64-minimal>
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
> Sentence to long
> 
> "A signal may be generated (and thus pending)  for a process as a whole (e."
> "g., when sent using B<kill>(2))  or for a specific thread (e.g., certain "
> "signals, such as B<SIGSEGV> and B<SIGFPE>, generated as a consequence of "
> "executing a specific machine-language instruction are thread directed, as "
> "are signals targeted at a specific thread using B<pthread_kill>(3)).  A "
> "process-directed signal may be delivered to any one of the threads that does "
> "not currently have the signal blocked.  If more than one of the threads has "
> "the signal unblocked, then the kernel chooses an arbitrary thread to which "
> "to deliver the signal."

I can't find the text referred to. I think you may be working
with an older version of the page. Can you please check.

Thanks,

Michael



-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
