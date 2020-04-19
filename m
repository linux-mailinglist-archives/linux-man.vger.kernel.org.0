Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 241E01AFD94
	for <lists+linux-man@lfdr.de>; Sun, 19 Apr 2020 21:40:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726025AbgDSTkb (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 19 Apr 2020 15:40:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44954 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725848AbgDSTkb (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 19 Apr 2020 15:40:31 -0400
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com [IPv6:2a00:1450:4864:20::442])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D2183C061A0C
        for <linux-man@vger.kernel.org>; Sun, 19 Apr 2020 12:40:29 -0700 (PDT)
Received: by mail-wr1-x442.google.com with SMTP id u13so9525556wrp.3
        for <linux-man@vger.kernel.org>; Sun, 19 Apr 2020 12:40:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=5ieIJygHU/hlmgtz5HNkbaoYHDESXIQJkI+ZUvtRA3M=;
        b=KpsI3mtBmYeipV6Vngq9fzTz7Fy/bzSaVSATLlMZxzq7HymzEJF51R7f+BTUNDW4Zy
         PDc1TOHW2l16dKFK6XuUVu+hejS3NbrUqOlaQo2Fm2Xin4x8V7VQKS27ZjrhEarmYwmZ
         Xm60V/rU6Lsu9XCpXgzZzKsB3wljazEwSTVbj5qfxyYASfU48nZmAE7HwY5iMunD2cfr
         FPlsuNF4YZF5wY4cx4YJ2Htb0lZV5TAdIIzvcTMOG+0WVKxZln5BMo3/tBYPdr5HmTqq
         Aqkh4ozRlnow557jOsiiDct5hPOZeCwsucPAQaVP+9JuklNNsvMGNZrrWacWbzhSAKa0
         1aAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=5ieIJygHU/hlmgtz5HNkbaoYHDESXIQJkI+ZUvtRA3M=;
        b=cIaCFOQWcsE5cDWyAvEBAYfUV6+milGOtcfHVIiy4ffwfaJZ0XV8SrUwDKmAfBZ+i4
         AR9EHooczGTYz/oBNQVgf2ZD/JfkxDL5kPmm2waK4XP+g0PvNtS+JbMoc61DxUx7xDqf
         Mk5SgL4WE/bMU5sfwqx1d3XLMeswunAu6dBy08rJnf5xKdE4ahgSklhg3+9oMNLhWGtY
         2sKhBr+8jPM96wX6JmpVcWolEBAfTJ7s8Z9Q6fBdkL7o0Fmjsk9LpiMu/fcgr0tVzXH8
         8lhnIq+6/V5KNpV0jEXPp7/2ryuw1zHbs8sp4o3m515J3oHDnVa0+aRPILHPnpKLUctw
         N+Cg==
X-Gm-Message-State: AGi0PuYGvBLLLvNmyTu4VaCRCMxhxYTpC8+e319VeZmaTT986QgiwQ2L
        y4caMfKDUix0PSEnDKkKNAimM26E
X-Google-Smtp-Source: APiQypKShwGDscc9wNHmVCvPEKzaCYz5Sc8VjHKJhkk/0RBReUNIYiykGJHCxadhH5toOh463jxX0Q==
X-Received: by 2002:adf:ee03:: with SMTP id y3mr13937109wrn.190.1587325228415;
        Sun, 19 Apr 2020 12:40:28 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:3351:6160:8173:cc31? ([2001:a61:2482:101:3351:6160:8173:cc31])
        by smtp.gmail.com with ESMTPSA id 74sm29621223wrk.30.2020.04.19.12.40.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 19 Apr 2020 12:40:28 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: Errors in man pages, here: sysconf(3): Typo
To:     Helge Kreutzmann <debian@helgefjell.de>
References: <20200419064832.GA32401@Debian-50-lenny-64-minimal>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <1f7e27a4-855d-3e45-5f2f-3e59c33f4856@gmail.com>
Date:   Sun, 19 Apr 2020 21:40:27 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200419064832.GA32401@Debian-50-lenny-64-minimal>
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
> s/locates/locales/
> 
> "indicates whether the POSIX.2 creation of locates via B<localedef>(1)  is "
> "supported."

Fixed.

Thanks,

Michael



-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
