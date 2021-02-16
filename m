Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id ED42831C94D
	for <lists+linux-man@lfdr.de>; Tue, 16 Feb 2021 12:06:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229790AbhBPLDp (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 16 Feb 2021 06:03:45 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35406 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230199AbhBPLBm (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 16 Feb 2021 06:01:42 -0500
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6B66CC061756
        for <linux-man@vger.kernel.org>; Tue, 16 Feb 2021 03:01:01 -0800 (PST)
Received: by mail-wr1-x434.google.com with SMTP id r21so12346270wrr.9
        for <linux-man@vger.kernel.org>; Tue, 16 Feb 2021 03:01:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=X8OiZ0p1h/He9v4iKKQ7dPzQIH5leKEDbFoZgbja+jY=;
        b=otmBGocrL+x7PwQKV9LRnW7MHT86OSuhHn/cAXmzWRNXZV3B54UYy12PT29hZq0tLG
         jRO9CmCZNQxquwQbPRy+rFVUTaCmIHKi4Aip9fxmxMd+4RjB6Ba9il3NfgiUbHPfvXhN
         5YrAyEQ7SbQCy62jjMs/FF5c2oYxbmp8oMiZrhs9npLhnoZhSGd1FY4G+aTLGuSFvpNm
         96aL959jZeQiCIDGrww8xRtPKirYrXKob9fwbUA4rQUVtIwrhrRPzEmU9YdXycjO10EK
         EiJS3cvPXQRk5eNqcC51ouhvcyZnjKxCFTBDUJU9iE1SBxWsWYHlzlXx2Y5NeS4Csy8z
         K//Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=X8OiZ0p1h/He9v4iKKQ7dPzQIH5leKEDbFoZgbja+jY=;
        b=NcdC2HZaBxY3N7Xo/4RGyluQxDKtnvPztT33CshYv/pA/GbvXFGtsfXcyBuLHlWOLZ
         LtZgahkeigqyi7wf27R2RRTzk1q3b0b87i9h7jspX4xDIL50tRKbbyH2d0W+RIx81uRv
         fCHDhPICTHpN7TIthgUdln7YS0X57C19BIZEHzxUud/US52lvmF45EhAjysCzh/yNhPL
         6DVDD4gbvAa9tnFAmK3e4drlT0kstIYsMogoW+peikRJmhZnh3dVegUZ7SPWJB1uYecj
         SgpF6Lew2pTxsfr8juUrCRiW5AOb4afVAux9h/fP96DAy3SNjCXyONHprXCnZMe+V8cE
         naxw==
X-Gm-Message-State: AOAM533ozSCxaVyv1lDMgMnUhUiR3WHdCOS6uvUdzBIXPS/BKtOaNcEK
        /l0X+9+zaifF40AjnuyJoaE1M6ixKAo=
X-Google-Smtp-Source: ABdhPJzSok2vI5aL15eHUlDK82ja+s+V5B6YF51hdT1atHZn8hi6ds/ZVCFoqEmzjzEGmp+pmItihg==
X-Received: by 2002:adf:f90d:: with SMTP id b13mr24306071wrr.198.1613473260229;
        Tue, 16 Feb 2021 03:01:00 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with UTF8SMTPSA id r1sm26499271wrl.95.2021.02.16.03.00.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 Feb 2021 03:00:59 -0800 (PST)
Subject: Re: AW: [PATCH v3] scripts/bash_aliases: Add useful functions
To:     Walter Harms <wharms@bfs.de>
Cc:     "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>,
        "mtk.manpages@gmail.com" <mtk.manpages@gmail.com>
References: <20210215131522.450666-11-alx.manpages@gmail.com>
 <20210215203249.580748-1-alx.manpages@gmail.com>
 <6c936f8ac58747bc98a5c7dfe04b6405@bfs.de>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <fac0f5a0-c092-6c18-d484-cf1469b9dfd7@gmail.com>
Date:   Tue, 16 Feb 2021 12:00:59 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:84.0) Gecko/20100101
 Thunderbird/84.0
MIME-Version: 1.0
In-Reply-To: <6c936f8ac58747bc98a5c7dfe04b6405@bfs.de>
Content-Type: text/plain; charset=UTF-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 2/16/21 11:54 AM, Walter Harms wrote:
> My version of grep (V3) has a -P option and claims to support pcre.
> Maybe that is a replacement for pcregrep ?
> 
> Would reduce the dependencies by one.
> 
> re,
>  wh

Hi Walter,

There's a problem with grep:  it doesn't support the '-M' option, which
allows for multi-line matches.  So pcregrep is needed.

Thanks,

Alex


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
