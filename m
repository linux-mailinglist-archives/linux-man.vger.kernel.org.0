Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BF1FC1AFDF1
	for <lists+linux-man@lfdr.de>; Sun, 19 Apr 2020 22:09:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725947AbgDSUJT (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 19 Apr 2020 16:09:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49446 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725905AbgDSUJS (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 19 Apr 2020 16:09:18 -0400
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com [IPv6:2a00:1450:4864:20::343])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6E834C061A0C
        for <linux-man@vger.kernel.org>; Sun, 19 Apr 2020 13:09:18 -0700 (PDT)
Received: by mail-wm1-x343.google.com with SMTP id z6so8979355wml.2
        for <linux-man@vger.kernel.org>; Sun, 19 Apr 2020 13:09:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=wxstO0bW/vZr+ZmZVK4xYjqaCOW4BuAQ1uVQTkmCj4w=;
        b=acQOR4eQdnKCcjj5CaY/jslG/yDAIC3EMrAL0jXFYo3Ywi80xyU7qLywY2vtiOSXyI
         G8Ui2DdTWTpAdRSImialgxRPfnxbMP52/yq+9D433eXWFklMYJppcimaNHWzun34JSmz
         6iT/NipNstO4XX0ZV9/eOIWF9M1JUAJXgvwp/gPkmgdL0F2W4dmVtf9aoujzdsY8L6kS
         /PGqm3mlr+wakUDsFLfOrrG95P/9NSdibtZuGrB8cTxRnDAQSRjq5rkLgqW7pHIObmeZ
         hKi1aLUx8XpfKjmyLAU9fIZZuglO2uz3PzlTD+6z7pS0gGdXHfebkcX3T0uJdXBAXuQM
         ying==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=wxstO0bW/vZr+ZmZVK4xYjqaCOW4BuAQ1uVQTkmCj4w=;
        b=iWa1KdjgC7hoJKLmXZMl1CuUU+7YqpkgFmqxP2laIjQC/e51fsllEzZRZojApkRbaj
         PONZLX46XYp33T3uInABwE1LDmT8e7tOndAx9C31yrpNXL02/eGAanc5vPmgTiLPJopN
         kALbz6vCHvT+QpN3e3ZgJI7wigTFCP6gTt9+ugxfb0xCp8evbjylp/PA814m6X6Z3BBV
         /ak+816a01mCOhkL9XzHezdjv+6+iiait0L/MSGDCHteSRQWtcSbbv+6dBz4ydXwHjPG
         lyLeA5LT9ag4fTcsT4ry3fY6BvmDbIUAzwE/+909haUD+nousxYeOOserxkiDxTmo6Oa
         Ig1w==
X-Gm-Message-State: AGi0PubAUxyfiQpPysowZZVTQN0AEeKUAU2m9RHX2aDxgwcRUB4WwnPw
        PfJtzz2PLhZe5bu97La2ul8nKl2V
X-Google-Smtp-Source: APiQypJwIiuQA5hj5mY9YPD0YeIqKxeZ5cj5ppqdRUC/1U4/R026ApO8YC2IwH3cS+HaZDXkdeT3xg==
X-Received: by 2002:a1c:44b:: with SMTP id 72mr13676633wme.58.1587326956885;
        Sun, 19 Apr 2020 13:09:16 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:3351:6160:8173:cc31? ([2001:a61:2482:101:3351:6160:8173:cc31])
        by smtp.gmail.com with ESMTPSA id l6sm10963053wrb.75.2020.04.19.13.09.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 19 Apr 2020 13:09:16 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: Errors in man pages, here: gethostbyname(3): Space/Formatting
To:     Helge Kreutzmann <debian@helgefjell.de>
References: <20200419064802.GA30701@Debian-50-lenny-64-minimal>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <2318ec0f-bc6b-c202-3fca-42c10c714372@gmail.com>
Date:   Sun, 19 Apr 2020 22:09:16 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200419064802.GA30701@Debian-50-lenny-64-minimal>
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
> Space between true and (1) and mark up
> 
> "The B<sethostent>()  function specifies, if I<stayopen> is true (1), that a "
> "connected TCP socket should be used for the name server queries and that the "
> "connection should remain open during successive queries.  Otherwise, name "
> "server queries will use UDP datagrams."

I don't understand this report. Can you elaborate please.

Thanks,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
