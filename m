Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 14F8B1AFD95
	for <lists+linux-man@lfdr.de>; Sun, 19 Apr 2020 21:41:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726124AbgDSTlZ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 19 Apr 2020 15:41:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45094 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725848AbgDSTlZ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 19 Apr 2020 15:41:25 -0400
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com [IPv6:2a00:1450:4864:20::442])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 13BD3C061A0C
        for <linux-man@vger.kernel.org>; Sun, 19 Apr 2020 12:41:25 -0700 (PDT)
Received: by mail-wr1-x442.google.com with SMTP id x18so9540441wrq.2
        for <linux-man@vger.kernel.org>; Sun, 19 Apr 2020 12:41:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=nMNFgxe8mIOjCqi4ykaCM3nl3VCD/qR7MqJz2v0ByVM=;
        b=dnmWe+VLYLcweNEant4zlCsg/XsRyyo5hyFv4MwWaJDfEW6UJs9vSkQZpL5hXcS1JL
         mvdPkDlcfswp10Rbolr6fIXt7oS6Q/X0cqteBGMWj82ZLCr2ReCZQEnfe/QzUIywxg5J
         K+HpUkfQ+mQXCoPtdrPnn1n2etBA91hvWmSAqYhCzi/0SKY3fIo1NYRTz6nXSd4H0+C1
         FDGuo0BOKtwL0vOgmnm7IBVhjpM4RrsgWFsnj5hWdG6vky1Gkav1wEAJYjlqWy7fESd2
         ZNQ3limQFj0bXeY3IsBug0RAwteh0wq6U0GhUS2i4tcS9BOdpFyFtTrq+vHwJbF+QE+e
         /76w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=nMNFgxe8mIOjCqi4ykaCM3nl3VCD/qR7MqJz2v0ByVM=;
        b=njJFXjOrtatoTLUPABszV7ANh/Biy4OBlGGu6UHTKVe9n44RHmXb/p0JNxDKsqueCF
         XJN/ztP0ahZp91D4Nhl9QX5YVEEv0AMqV+3hHbaA0x/wutnY76RU0sAhdle5JhU3S3eQ
         Sy1EpsB7QiVD6ImpFYLMFupiScAQlzKHfX2EgxM7Gp2ystfHnSiiTw+6aAHA3Tl3SqPL
         ivCUjQ1XyRp3I9D+2hfjGMiHRn0tjEnclmwJJSWAO39AkJ3eeQBFIrym1zUU0Dg1FSnT
         RqhubcJ79UxKtQ3TFqXemxUbG21rlMKxrIuTYFH4YSxcsflSnwn+yFUQrPLWDZiec1c0
         I4wQ==
X-Gm-Message-State: AGi0Pub/QARyg7ofR/5yzSFzRlnOeHuIxeF37PWa9RI78WU80BjI2mXt
        drN36WNaS0iTAgH/EmhKQIEdD8tm
X-Google-Smtp-Source: APiQypKEmkxTUuwqSG+JHrNI8dRA3g5QobAy+nRzgHAwTpjwI6YOoWAEqWLFFc9v7mSbTI+uBRqtpw==
X-Received: by 2002:a5d:6887:: with SMTP id h7mr9028262wru.365.1587325283678;
        Sun, 19 Apr 2020 12:41:23 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:3351:6160:8173:cc31? ([2001:a61:2482:101:3351:6160:8173:cc31])
        by smtp.gmail.com with ESMTPSA id u12sm17360005wmu.25.2020.04.19.12.41.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 19 Apr 2020 12:41:23 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: Errors in man pages, here: ffs(3): Wording
To:     Helge Kreutzmann <debian@helgefjell.de>
References: <20200419064759.GA30515@Debian-50-lenny-64-minimal>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <e997e411-a9fe-3220-a6d0-754bed1661d1@gmail.com>
Date:   Sun, 19 Apr 2020 21:41:22 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200419064759.GA30515@Debian-50-lenny-64-minimal>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
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
> find → locate?
> 
> msgid "ffs, ffsl, ffsll - find first bit set in a word"

I think "find" is fine. ("locate" would also be okay.)

Thanks,

Michael



-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
