Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A0A351AFDEF
	for <lists+linux-man@lfdr.de>; Sun, 19 Apr 2020 22:06:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726460AbgDSUGQ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 19 Apr 2020 16:06:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48972 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726123AbgDSUGQ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 19 Apr 2020 16:06:16 -0400
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com [IPv6:2a00:1450:4864:20::344])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2BA11C061A0C
        for <linux-man@vger.kernel.org>; Sun, 19 Apr 2020 13:06:16 -0700 (PDT)
Received: by mail-wm1-x344.google.com with SMTP id v4so3053941wme.1
        for <linux-man@vger.kernel.org>; Sun, 19 Apr 2020 13:06:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=XnK98BqTWZ4xe1GfS1FNDe075f3fBzN0F0dCtw/V3NY=;
        b=Bg8y/2aARGu0D5xs6G50DH21YtOvl4puVfr9Qs2OUpbJIVXC0tHEF81ystvH3ztjsW
         eD13Ywyc1GRjinr/03sdLWQu81nStO5X/bBGY5oQHwgmzDwLeksnT1RZQDNnW7JylK49
         z6RORQeVGLtCZHWSlsBoiwTnupMMxDOlzaZ5Ytzdl9EMPuJbNFLidH/u0ITTxmQlgWo1
         +1n/Emtd5+OKp8lrM+/0wocnksiyEhw5TDqWztM/6PRIs72YEuPvIT5zsWmNqFm5FU9P
         MRO/s2k9AF0pgQMRkK036l3hZw0qDHw7o28P9ewMpeFpYWVYB+3IVIpSq5EWq8lrcuQp
         WDUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=XnK98BqTWZ4xe1GfS1FNDe075f3fBzN0F0dCtw/V3NY=;
        b=YFtQrznlZMyEu/4pHgpw2rUWXPQMZvA0kDY1p4Xo6euMcZ4CLFK16LiH6yhLoqsB04
         e+MlQrw8PlYln1nQ8qHwCSaM+SxjSoZV2Xpau6cGBwr5ykbxYjUi86l5kMvxDyj4wAcM
         apw9aB3X6AwOIEA51eIderLmqFdM3/+xEkkoozVAlMDGmWzBLKUFzTff30aDwkTiMa07
         9nS0oWgxPFkHlM64LarGaulbrVpVt3q9+Vd9OV2qNnQ3O0Cs5dJ52iaWO2sZZwJnhjq5
         XCriSpons9cSHqx8eRKASvuN0yuQ/x3pOSeLH9B6Jh7hMYHH2fQjIiZcXuAiVtEf/6K4
         3jjA==
X-Gm-Message-State: AGi0PuYYcEASfMMXnlgrHP2R6ptUpaP5Z1wRZkBWWUPXuyyJL/pwwK+a
        1svZ+pZ1SVRrm+SvZ8IKyr/L8ej2
X-Google-Smtp-Source: APiQypLU7/iig131mwab8NW9zvdp7h+KOS8fxhV1Vuy5en6HRlythAZGMU1W9lScb685bUS33y6Bow==
X-Received: by 2002:a1c:e302:: with SMTP id a2mr13579651wmh.96.1587326774721;
        Sun, 19 Apr 2020 13:06:14 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:3351:6160:8173:cc31? ([2001:a61:2482:101:3351:6160:8173:cc31])
        by smtp.gmail.com with ESMTPSA id j11sm20278990wrr.62.2020.04.19.13.06.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 19 Apr 2020 13:06:14 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: Errors in man pages, here: fcntl(2): Missing word?
To:     Helge Kreutzmann <debian@helgefjell.de>
References: <20200419064758.GA30492@Debian-50-lenny-64-minimal>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <37900cd4-434c-6179-361d-e8b5a5a854ee@gmail.com>
Date:   Sun, 19 Apr 2020 22:06:13 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200419064758.GA30492@Debian-50-lenny-64-minimal>
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
> Is there an ID after the first "process group" missing?

Yes. Fixed.

Thanks,

Michael

> 
> "Return (as the function result)  the process ID or process group currently "
> "receiving B<SIGIO> and B<SIGURG> signals for events on file descriptor "
> "I<fd>.  Process IDs are returned as positive values; process group IDs are "
> "returned as negative values (but see BUGS below).  I<arg> is ignored."
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
