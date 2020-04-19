Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 56F2A1AFDD6
	for <lists+linux-man@lfdr.de>; Sun, 19 Apr 2020 21:52:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726475AbgDSTvy (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 19 Apr 2020 15:51:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46704 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726673AbgDSTvw (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 19 Apr 2020 15:51:52 -0400
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com [IPv6:2a00:1450:4864:20::442])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 94BDCC061A0C
        for <linux-man@vger.kernel.org>; Sun, 19 Apr 2020 12:51:52 -0700 (PDT)
Received: by mail-wr1-x442.google.com with SMTP id j1so4111863wrt.1
        for <linux-man@vger.kernel.org>; Sun, 19 Apr 2020 12:51:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=ZziRp1kXv291xwI0NC5QJAaMDhMecTTCt9ZDlYjZ/qY=;
        b=IocwuxHkH+H6mylpaKykBcdgqqmdso2aETnnSC+nCtBZtPCsN2z1OOE9OT9xjTyHWX
         jCkGlQ6ie/ej1igOcj5+ZRDpzPWLQFaC6u1b54XT+ydNZKn35wdVHBRVr7oTHy/3P/6Z
         sNAWki0KW292f9Icd/kwE83nOPOE2aHH6Krl4M0MFbwF9aN2pG9qpsDO15cvMQBiExqE
         DiBxCVbcQzBATNbFeQzJeCLF6ukiIYNaxIeu/qHoyHK6OM/uuhUnIjoN7HCOC/OmPZg7
         icZ9t4nGOQSe0kG31vEKP3JUUwV/gWMuZbJdT3XXK1sYyh+msR/sqoc3Bs6+iBFKGH7B
         7Jsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=ZziRp1kXv291xwI0NC5QJAaMDhMecTTCt9ZDlYjZ/qY=;
        b=LbYoCoqA1hQGDqFlRX1/f6/8kx3VAlPOM8Ky/iqLSKIJ/1nRaJfxlw4dh/KShnXg7P
         19eX7BTZ7pjKMJloL+AsFjXjKR71f8bxz8/ceoeQPkH1X5l7eyjWhNebs2ryUhIJJ1VT
         qdfx+hybqQdm0m4dfQN5YfNmZWhsF5OFZ+lUHcYy9EQWQUgp7Qr3OFB5Y1BGZDOGaT0N
         AJDtvrnyHscYZ3zDIOMh0S9q7lrSzrbkzpoedI9YpFKL3WJEtampri9r8KaaRZYIFPMp
         OCmfikzqPDNU15LnBdwZayFw+s3E/kEE4PAWrC6g9JQ6tByjAmn63TeMn6IiAy6wSdvb
         uwyA==
X-Gm-Message-State: AGi0PuY/TuTvSvAAq96t2HFrJib/VbTK+XrgNHfzsaDI8uzKpSVxUuR4
        zo4VLcTt+x8VB5XLsEBxhSgeonGt
X-Google-Smtp-Source: APiQypI+DK0i3c0lLAz8Xt+jwE8CG5QZyqCOUSSb72F81L0UKc091VNeM2KPFWKPk+gfjFig8zm8gg==
X-Received: by 2002:adf:ce0a:: with SMTP id p10mr14472985wrn.89.1587325910990;
        Sun, 19 Apr 2020 12:51:50 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:3351:6160:8173:cc31? ([2001:a61:2482:101:3351:6160:8173:cc31])
        by smtp.gmail.com with ESMTPSA id v131sm17187394wmb.19.2020.04.19.12.51.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 19 Apr 2020 12:51:50 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: Errors in man pages, here: ipc(2): Missing spaces
To:     Helge Kreutzmann <debian@helgefjell.de>
References: <20200419064808.GA31001@Debian-50-lenny-64-minimal>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <bde48692-fbb7-1afa-96a2-957a2a489a81@gmail.com>
Date:   Sun, 19 Apr 2020 21:51:49 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200419064808.GA31001@Debian-50-lenny-64-minimal>
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
> Missing spaces around \\(em
> 
> "On some architectures\\(emfor example x86-64 and ARM\\(emthere is no "
> "B<ipc>()  system call; instead, B<msgctl>(2), B<semctl>(2), B<shmctl>(2), "
> "and so on really are implemented as separate system calls."

See my earlier mail. No spaces are used around em-dashes.

Thanks,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
