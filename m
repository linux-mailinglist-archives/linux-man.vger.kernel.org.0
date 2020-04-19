Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1D7441AFDF6
	for <lists+linux-man@lfdr.de>; Sun, 19 Apr 2020 22:13:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725949AbgDSUN6 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 19 Apr 2020 16:13:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50154 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725947AbgDSUN6 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 19 Apr 2020 16:13:58 -0400
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com [IPv6:2a00:1450:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AF3C2C061A0C
        for <linux-man@vger.kernel.org>; Sun, 19 Apr 2020 13:13:56 -0700 (PDT)
Received: by mail-wr1-x443.google.com with SMTP id i10so9561035wrv.10
        for <linux-man@vger.kernel.org>; Sun, 19 Apr 2020 13:13:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=EkFwlyMvF/z65dU7ml/bt6eANQihUSpnhv6MyDnZz/0=;
        b=gPfW8raYkXm+k12a75ix14iQ5cUcV6gEytLVJHa4WF3/Ztnos4r5xXxMV0OYsIzBy7
         4VtDbKWDPn3tdZu+VRvhpj3BL9x+uxgPdgfMOQwe2FhoG88QMOQwQrPI96/AnCYaXIEk
         NpEbmWDT/1bwvnCvkC4XnfQbZf3MBPObkt0B/Si1+F8MNpzOtTOtCm8KzjIOBhknl7RS
         Gw1njH3WcEA3H8wkYWuC/h0E5KnV8Ji5EYJCkTz7db74k1Wi5Ep1KfXKuNb5lix/8/Z/
         oeZ2Hcho93GYKBGeVQcP3F9g7P8Xz+FycJN0fYFzsc+Y98IU5AlubCtlrSvfDNGNqoqc
         pdaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=EkFwlyMvF/z65dU7ml/bt6eANQihUSpnhv6MyDnZz/0=;
        b=gBtGqSzFvN7w/Z7VOgo4sOU9J4x+V9B7GS9+0Flm5zOVg3ZQzhdMT7nrNNKj/9M32D
         bp3UJVVy0KmbL4dOd3/KK3Pk0aZ9k5Pj1/J5XVY1gM3g3ADuuEuWKOaatbeSvYao68E5
         ksbTRy+GXeJQxDBASt/VUksB0FRe3Df12XSkJi+ygYLL2E/H1xKI4/KxZWbE6uaivNgm
         HMGs57q6+f7JXl114SBy+njY82O2KnZ7jnG5mtBntRzgl2NtcvNJnAzW2ms1JTbt/mh5
         ELEUooqArq31XMEnT9A48Au+TmMJk99LYdCunrr7ee3mpomn9/ZDC9sVjf1Tn3hpEwjk
         6h7Q==
X-Gm-Message-State: AGi0PuaHkrro3BojGzprCigPHMaI2TVcA3xhqEjro09WbHj/lNJ1DDy+
        ZWMK6ffNONLxNk7HGcE/rLY/aCTi
X-Google-Smtp-Source: APiQypJWVuA6GCPF0ybGyrkX9FCLrr4QutBhdyLzxwmlE0WEY3VCB7NRTfq3Cqf+fO/G3+tnpSpkHg==
X-Received: by 2002:a5d:4645:: with SMTP id j5mr14656054wrs.282.1587327235269;
        Sun, 19 Apr 2020 13:13:55 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:3351:6160:8173:cc31? ([2001:a61:2482:101:3351:6160:8173:cc31])
        by smtp.gmail.com with ESMTPSA id b12sm5097871wro.18.2020.04.19.13.13.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 19 Apr 2020 13:13:54 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: Errors in man pages, here: proc(5): Missing article
To:     Helge Kreutzmann <debian@helgefjell.de>
References: <20200419064818.GA31560@Debian-50-lenny-64-minimal>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <f91e1795-efc3-73c0-61b9-d3cbb7589131@gmail.com>
Date:   Sun, 19 Apr 2020 22:13:54 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200419064818.GA31560@Debian-50-lenny-64-minimal>
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
> imposes celing → imposes a ceiling
> 
> "This file imposes ceiling on the value to which the B<RLIMIT_NOFILE> "
> "resource limit can be raised (see B<getrlimit>(2)).  This ceiling is "
> "enforced for both unprivileged and privileged process.  The default value in "
> "this file is 1048576.  (Before Linux 2.6.25, the ceiling for "
> "B<RLIMIT_NOFILE> was hard-coded to the same value.)"

Fixed.

Thanks,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
