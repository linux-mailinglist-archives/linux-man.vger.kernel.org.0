Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 54BD81B04E6
	for <lists+linux-man@lfdr.de>; Mon, 20 Apr 2020 10:55:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726284AbgDTIz1 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 20 Apr 2020 04:55:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54240 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S1726197AbgDTIz1 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 20 Apr 2020 04:55:27 -0400
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com [IPv6:2a00:1450:4864:20::343])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 47F73C061A0C
        for <linux-man@vger.kernel.org>; Mon, 20 Apr 2020 01:55:27 -0700 (PDT)
Received: by mail-wm1-x343.google.com with SMTP id 188so3918474wmc.2
        for <linux-man@vger.kernel.org>; Mon, 20 Apr 2020 01:55:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=FEVzkpuH+YyWZHgIxz7TsaSlaBFYz6bFx0hyGYVuL+w=;
        b=uEUL6h4Hk6zQwmYoj7214A+rSjpwLYYqtGkhZkfcS7bDjmqNj5s9n3BByZGDlK5rVm
         NKZ6VlBMNpIl8/N/hzHMrlY/iWw3wposQrI3PXuPUZkkHqmJz8JJDbxWXrA02PUnYl0X
         Rn8TH3YACB+MVWlaFOeUnb0jFibeFFA7uIiLn/BWr3IjivGrFBBzMAYbg4yVXJxXmkEv
         vPgCv38wphFgy7gQPR6rgH7YkgVEQmFwihQ+TXYMF0wG9SOzIBf300OoLI9Yfl6tdSNI
         ALKOWcMyEaUBbwKwx2sPfNuUizKRcfJqVdeoQGDvIEQvptzXQscu+ShzC+qT6knAbYRx
         6DoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=FEVzkpuH+YyWZHgIxz7TsaSlaBFYz6bFx0hyGYVuL+w=;
        b=LLr18CKlMAUuo3K28RwpDK5V/uYSuyMjo3Q6Phq84ke80dAxTrZosjcjS8McuFZnNQ
         TH/1cPtm6O0+H1SXpP9mQzbKpE4a8j4BbO16sMDMgBkn8Bc8OnTBgYXxpA9q4OQN8GI5
         PGyP+V2Mxcn+5uQpwq8ETON3lKxg6N80c7FmGYCloKF0cur5+rV7cnig0nVK3FLv1b00
         lJJyOPwDgIFXLgTPI1yiwplhFKqZO0tgJO292Lm4zYBCgTmBD9jRmlLjV1JQZceBcy3C
         bShAcn9fxE4sJ57DHO238xkz2bW4XCGadurFn6PDkUGBy1Jp3c/RYashRjTg6I3KW6v2
         jARQ==
X-Gm-Message-State: AGi0PuZFaln17Y53ICy6OoYm2EEEZV5slKiOX4IaMBw94jLsPtgJUkG7
        xf2ip/h2Itb61cKShWYLeNeo6LGx
X-Google-Smtp-Source: APiQypLyrpUpGk0s/o1ubJEqq9XfABU5czMRxDsPSg9QJ7nggBcXt6eYlRmjfVWHFOcr8iWd7KBRBw==
X-Received: by 2002:a1c:492:: with SMTP id 140mr17531753wme.9.1587372925897;
        Mon, 20 Apr 2020 01:55:25 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:3351:6160:8173:cc31? ([2001:a61:2482:101:3351:6160:8173:cc31])
        by smtp.gmail.com with ESMTPSA id y20sm271710wra.79.2020.04.20.01.55.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Apr 2020 01:55:25 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: Errors in man pages, here: iconv(1): Formatting/Markup
To:     Helge Kreutzmann <debian@helgefjell.de>
References: <20200419064805.GA30840@Debian-50-lenny-64-minimal>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <494c54d1-297a-ec19-2178-80f5ea4a2dbe@gmail.com>
Date:   Mon, 20 Apr 2020 10:55:25 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200419064805.GA30840@Debian-50-lenny-64-minimal>
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
> Missing markup/formatting of "gconv"

I agree that there's a little inconsistency here, but I'm not
sure that changing the formatting on all instances of 'gconv'
is an improvement. I'm ignoring this, pending further explanation.

Thanks,

Michael

> 
> "If B<GCONV_PATH> is not set, B<iconv_open>(3)  loads the system gconv module "
> "configuration cache file created by B<iconvconfig>(8)  and then, based on "
> "the configuration, loads the gconv modules needed to perform the "
> "conversion.  If the system gconv module configuration cache file is not "
> "available then the system gconv module configuration file is used."
> --
> "If B<GCONV_PATH> is defined (as a colon-separated list of pathnames), the "
> "system gconv module configuration cache is not used.  Instead, "
> "B<iconv_open>(3)  first tries to load the configuration files by searching "
> "the directories in B<GCONV_PATH> in order, followed by the system default "
> "gconv module configuration file.  If a directory does not contain a gconv "
> "module configuration file, any gconv modules that it may contain are "
> "ignored.  If a directory contains a gconv module configuration file and it "
> "is determined that a module needed for this conversion is available in the "
> "directory, then the needed module is loaded from that directory, the order "
> "being such that the first suitable module found in B<GCONV_PATH> is used.  "
> "This allows users to use custom modules and even replace system-provided "
> "modules by providing such modules in B<GCONV_PATH> directories."
> --
> msgid "Usual system default gconv module configuration file."
> --
> msgid "Usual system gconv module configuration cache."
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
