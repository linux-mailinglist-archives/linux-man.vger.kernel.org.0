Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id ADA911B04F0
	for <lists+linux-man@lfdr.de>; Mon, 20 Apr 2020 10:56:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726024AbgDTI4y (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 20 Apr 2020 04:56:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54462 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S1725886AbgDTI4y (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 20 Apr 2020 04:56:54 -0400
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com [IPv6:2a00:1450:4864:20::344])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B1B19C061A0C
        for <linux-man@vger.kernel.org>; Mon, 20 Apr 2020 01:56:53 -0700 (PDT)
Received: by mail-wm1-x344.google.com with SMTP id v8so10233780wma.0
        for <linux-man@vger.kernel.org>; Mon, 20 Apr 2020 01:56:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=pm0zj9i9HZmV2OQ3VYJXZHEGOJUVcJA+ErMAEUNcIv8=;
        b=OsI4jyiLsyxoiS+4UMEkLM/9wZmjySLgqpxN8mkMqA5mZYrLnC94k6UEZUNzogA5my
         DgGAxwC5oxAlz70uOYKUom9HVEglUvb8Vri1cPXXr03tYLikY9CjhBerlb5gFTMmP4U2
         Jem4V26C9Awf9Y7fGREiJ1D4Dd5sdNmsjRIXwUFX6mgEzPLh2SekahE5Nxh3BCPx9llH
         zs8Bs4lU4jlXsomAxyKasl8Zg+GAULCKPiZopV8Fn+NSEs/Ze03+Cs7ep9WQQxndD9NI
         lmlhYydS97A9D7ZkCevlONuRTGepFpNVeKNeUveOZgxfPLY761fyOmmwtuFFvJgjydUI
         c4ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=pm0zj9i9HZmV2OQ3VYJXZHEGOJUVcJA+ErMAEUNcIv8=;
        b=HCIxZIif+8ndgxRn1AfkQGB0Vcn9dS6/nZxw7eqTNGBlbqLKhueCrXjLMlyieDXA8R
         BynW21MhU0O6Z8hIQR5JhoXPV0gm8zelDvJgjNHqCUrIvbybZxrdWY06xXE4rOjLdBuX
         rHqJ2dcZv4GVxHRuTKHEOe0gTRNLEXpToNnPUsLzXLJftMQeyrK5/3Eci8JHZJlbFkbV
         ozTPzZHEyFT0hgWyUsV3C7UYHQx14OByIS/qRnMcN9+oAthK5MYIAmLSjkjmftnkCy0Q
         GIeTHmX758HyDXY4ODktI8DMP6jNNdOKtfv2vPkOf66WCg1PdxeqViQWmQNDTESwTDye
         TJFw==
X-Gm-Message-State: AGi0PuZZ6HV9Km4pBHJeEQ3kRjS03/6BJ5Hp+81pj3B22Rhj6mPP/+bP
        ZiLEdhfQoTHCET3cQrYLRzFxDYfK
X-Google-Smtp-Source: APiQypIavRvewX9ev2CljDIpZ8SV7n4vRgl3tViANyMYmeSErLleaUW9d3LpjaTUf8APLsBmOFw3DQ==
X-Received: by 2002:a7b:c858:: with SMTP id c24mr7175445wml.51.1587373012355;
        Mon, 20 Apr 2020 01:56:52 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:3351:6160:8173:cc31? ([2001:a61:2482:101:3351:6160:8173:cc31])
        by smtp.gmail.com with ESMTPSA id y7sm469683wmb.43.2020.04.20.01.56.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Apr 2020 01:56:51 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: Errors in man pages, here: utmp.5.po: Markup
To:     Helge Kreutzmann <debian@helgefjell.de>
References: <20200419064835.GA32563@Debian-50-lenny-64-minimal>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <ffb54565-dcc1-8dfa-c044-4ebe03322add@gmail.com>
Date:   Mon, 20 Apr 2020 10:56:51 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200419064835.GA32563@Debian-50-lenny-64-minimal>
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
> Is bold markup in source code ok?

It's unusual, but not problematic, I think.

Thanks,

Michael

> 
> "#define EMPTY         0 /* Record does not contain valid info\n"
> "                           (formerly known as UT_UNKNOWN on Linux) */\n"
> "#define RUN_LVL       1 /* Change in system run-level (see\n"
> "                           B<init>(8)) */\n"
> "#define BOOT_TIME     2 /* Time of system boot (in I<ut_tv>) */\n"
> "#define NEW_TIME      3 /* Time after system clock change\n"
> "                           (in I<ut_tv>) */\n"
> "#define OLD_TIME      4 /* Time before system clock change\n"
> "                           (in I<ut_tv>) */\n"
> "#define INIT_PROCESS  5 /* Process spawned by B<init>(8) */\n"
> "#define LOGIN_PROCESS 6 /* Session leader process for user login */\n"
> "#define USER_PROCESS  7 /* Normal process */\n"
> "#define DEAD_PROCESS  8 /* Terminated process */\n"
> "#define ACCOUNTING    9 /* Not implemented */\n"
> msgstr ""
> "#define EMPTY         0 /* Datensatz enthält keine gültigen Daten\n"
> "                           (früher unter Linux als UT_UNKNOWN\n"
> "                           bekannt) */\n"
> "#define RUN_LVL       1 /* Wechsel des System-Runlevels (siehe\n"
> "                           B<init>(8)) */\n"
> "#define BOOT_TIME     2 /* Zeitpunkt des Systemstarts (in I<ut_tv>) */\n"
> "#define NEW_TIME      3 /* Zeit nach Änderung der Systemuhr\n"
> "                           (in I<ut_tv>) */\n"
> "#define OLD_TIME      4 /* Zeit vor Änderung der Systemuhr\n"
> "                           (in I<ut_tv>) */\n"
> "#define INIT_PROCESS  5 /* Prozess von B<init>(8) erzeugt */\n"
> "#define LOGIN_PROCESS 6 /* Prozessgruppen-Führer für\n"
> "                           Benutzer-Anmeldung */\n"
> "#define USER_PROCESS  7 /* normaler Prozess */\n"
> "#define DEAD_PROCESS  8 /* beendeter Prozess */\n"
> "#define ACCOUNTING    9 /* nicht implementiert */\n"
> 
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
