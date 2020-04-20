Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EE6F91B0161
	for <lists+linux-man@lfdr.de>; Mon, 20 Apr 2020 08:12:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725959AbgDTGM2 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 20 Apr 2020 02:12:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57162 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S1725780AbgDTGM1 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 20 Apr 2020 02:12:27 -0400
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com [IPv6:2a00:1450:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4D1E9C061A0C
        for <linux-man@vger.kernel.org>; Sun, 19 Apr 2020 23:12:26 -0700 (PDT)
Received: by mail-wr1-x443.google.com with SMTP id s10so1431920wrr.0
        for <linux-man@vger.kernel.org>; Sun, 19 Apr 2020 23:12:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=nS00DNp6iuzwmJBPXKz1UNY/uOeN06RvVPOkeCoGD84=;
        b=AaFd0580jN4BgLTgZFHBGO9/jBqIYgk0/miXULyMpcc2pYU4EYyy2pr2L2foW+xR7b
         f4HpYRvqFSMn/EUxkrrO/HDWa0fPLzZhngXg02ubGE6U9jedI3t5xpoKCW+dVMtZ/bxM
         GP7j7YBHENm7W0rzPPSpqgSdepn8ndzgi1IdxvrauaqTW0dU7Sl4VSY9kOEsVYzpAyyT
         UtBKOQYQ/Ws+VnovL9QDT0/Y8tIn7UQG7Ys8zEMLdiYXiho2Je6bXXhaBpjrON1LTBQo
         fpxrIn1hUZy4ZaFCknMR1jAgTOv5fFPB7ByCm+9qEjpqCC0TH2PvupmAfxE7WncUGHOZ
         4WCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=nS00DNp6iuzwmJBPXKz1UNY/uOeN06RvVPOkeCoGD84=;
        b=frc0yhXyxQazF8c9hH8b6souCC1JHl/XqDrH+mgImYMo8+aSKYkhQ848vseAvY3jDl
         Is1sgLUDIsfYfOjoG2EW/U/1x0j2x3nr54r6w140g3zjJYf1Zkpi3QClnhrLTKygPZ6I
         YWvrdwHaiKnfUPhVR3IsboBP8d5zSbfBVRqkNNeU99Ddupm65w0zPzB02fLCaIotsyFz
         7rErd8ysQ0A42ofZPT8blemTqtp55ZxlPEEQidaxLYtUcAtM0BX9WDi8IZMCMR6fKvs9
         cVwbxMbU2vLcAo1xZRwLROEF5U6/zQhBy7O8LwEtoZU4rj0MSTeW1DRq2aEiPIu/sVEH
         s7SA==
X-Gm-Message-State: AGi0PuYtJ5PP9ucAr41MAvPiT6cEPAzk6pVzP9bUyXCRZIvk0S9k49MB
        SP2rBmljGLlZRuje0iw5Dj8v4mXr
X-Google-Smtp-Source: APiQypJDEwuNzS91Grqrj7SWZs3Cbk3MYN9uweiWbz1m8M+nGC6kf1w0FLAPRRIoY7+wJlVqMgML1Q==
X-Received: by 2002:a5d:408d:: with SMTP id o13mr18239410wrp.249.1587363144898;
        Sun, 19 Apr 2020 23:12:24 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:3351:6160:8173:cc31? ([2001:a61:2482:101:3351:6160:8173:cc31])
        by smtp.gmail.com with ESMTPSA id 145sm18877640wma.1.2020.04.19.23.12.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 19 Apr 2020 23:12:24 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: Errors in man pages, here: setpgid.2.po: Inconsistent formatting
To:     Helge Kreutzmann <debian@helgefjell.de>
References: <20200419064823.GA31864@Debian-50-lenny-64-minimal>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <29000770-9fe0-c412-6721-c50d575c38d1@gmail.com>
Date:   Mon, 20 Apr 2020 08:12:23 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200419064823.GA31864@Debian-50-lenny-64-minimal>
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
> # FIXME: inconsistant formatting/markup (compared to previous entries)
> 
> "B<pid_t getpgrp(pid_t >I<pid>B<);\\ \\ \\ \\ \\ \\ \\ \\ \\ \\ \\ > /* BSD "
> "version */"

I need more context here. I can't see the problem. (Maybe it
was already fixed upstream?)

Thanks,

Michael



-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
