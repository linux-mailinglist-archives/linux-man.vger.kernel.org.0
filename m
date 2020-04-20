Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 03A471B0449
	for <lists+linux-man@lfdr.de>; Mon, 20 Apr 2020 10:24:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725886AbgDTIYS (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 20 Apr 2020 04:24:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49412 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725773AbgDTIYR (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 20 Apr 2020 04:24:17 -0400
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com [IPv6:2a00:1450:4864:20::442])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1B4B6C061A0C
        for <linux-man@vger.kernel.org>; Mon, 20 Apr 2020 01:24:16 -0700 (PDT)
Received: by mail-wr1-x442.google.com with SMTP id g13so8945269wrb.8
        for <linux-man@vger.kernel.org>; Mon, 20 Apr 2020 01:24:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=tnroc22xgJQdA4r807ZY73HdOXWT+rRcHr1GHtDywM4=;
        b=Z/IFe7nG06XFVO52CTZiMeDyY6+36674XHRxJ8K75bP11Xcogasi5Swvk/a2NM5Ma1
         bmJu65wKzbj/Mg8UR0prFGKaHYVZJPTY1yswGfmrvm14hkqdTjTrghobNW+p2bm1G9Xw
         VN8tV0BgjG4uP6fHPXjkL1WqNq4NOimWV4bXcydDyKUIaZAracmC7WZAXVB/QliGPr2D
         CJJtZFd49O6+ZR/VVgRkxfrm/sDIMv8dMEwUAmtMI5rZFK/t2T4lMzfJmHSMqjOUVqe9
         Du2/yVjHwsO1kU0sCAO1p78/lUopmRSn9bk83MogRCjA9EgTJHbu2OtdDQYOupSrV16O
         L2lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=tnroc22xgJQdA4r807ZY73HdOXWT+rRcHr1GHtDywM4=;
        b=YkDCR1T10SlZ1wT6TVWt3wUZYVJmg0ij8D0C9OY5nM2I0UDlFz9eTTw+2o6Np+GIDm
         hEENfoGjuh1NLeGQ4mhP4GTcmg9LdQi8vecLYUZnDh85ypT+dgetdWHwnvMqR5o6amrJ
         rHOnRSYoWnIfG9fm5gHSfXIMWhWtl6RpoTXVosxt9Ej4b4nOQUKBypE5bj6cgcV+yeEy
         zQyMqMb7dncRDANcyv3ydpm/yXncNJGFZiU6U2Cv3qJI78mQmIKsBOq2Zfe1Bmak+eAD
         eSamAo6LY0vi/UKXr41Q/19tgjwUt0zBcz40puEYuIs90t57zvZrxhy8XS1hzlAqWZ2Q
         tZig==
X-Gm-Message-State: AGi0PuZEMnbjXItUF5YxX0jHK0jHZA2JHrNXLf0gvCP8decPYXlKPGyq
        mARIAF3iFfbNqYxtctnSOfc/Ng1b
X-Google-Smtp-Source: APiQypKk61d/mcWyhA0yTbUBiAx8Uv74Yhr3gU4IQJMBlXFsWGmPZctOafkGgSUOtT0dIUyQqOTfUQ==
X-Received: by 2002:a5d:6851:: with SMTP id o17mr17044616wrw.267.1587371054429;
        Mon, 20 Apr 2020 01:24:14 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:3351:6160:8173:cc31? ([2001:a61:2482:101:3351:6160:8173:cc31])
        by smtp.gmail.com with ESMTPSA id j3sm196254wrw.28.2020.04.20.01.24.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Apr 2020 01:24:14 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: Errors in man pages, here: signal(7): Unusual wording
To:     Helge Kreutzmann <debian@helgefjell.de>
References: <20200419064823.GA31887@Debian-50-lenny-64-minimal>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <195435c8-2a56-317e-6d96-b88793f5e044@gmail.com>
Date:   Mon, 20 Apr 2020 10:24:13 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200419064823.GA31887@Debian-50-lenny-64-minimal>
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
> "elect", possible, but uncommon, do you mean "select"?

I meant "elect" (as in "choose"). "select" would have been possible also.

Thanks,

Michael

> a)
> "A process can change the disposition of a signal using B<sigaction>(2)  or "
> "B<signal>(2).  (The latter is less portable when establishing a signal "
> "handler; see B<signal>(2)  for details.)  Using these system calls, a "
> "process can elect one of the following behaviors to occur on delivery of the "
> "signal: perform the default action; ignore the signal; or catch the signal "
> "with a I<signal handler>, a programmer-defined function that is "
> "automatically invoked when the signal is delivered."
> --
> b)
> "A process can change the disposition of a signal using B<sigaction>(2)  or "
> "B<signal>(2).  (The latter is less portable when establishing a signal "
> "handler; see B<signal>(2)  for details.)  Using these system calls, a "
> "process can elect one of the following behaviors to occur on delivery of the "
> "signal: perform the default action; ignore the signal; or catch the signal "
> "with a I<signal handler>, a programmer-defined function that is "
> "automatically invoked when the signal is delivered.  (By default, the signal "
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
