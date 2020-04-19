Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 42B911AFD62
	for <lists+linux-man@lfdr.de>; Sun, 19 Apr 2020 21:22:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726399AbgDSTWd (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 19 Apr 2020 15:22:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42196 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726201AbgDSTWc (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 19 Apr 2020 15:22:32 -0400
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com [IPv6:2a00:1450:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 165F8C061A0C
        for <linux-man@vger.kernel.org>; Sun, 19 Apr 2020 12:22:31 -0700 (PDT)
Received: by mail-wr1-x443.google.com with SMTP id s10so308651wrr.0
        for <linux-man@vger.kernel.org>; Sun, 19 Apr 2020 12:22:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=PuYkzk9hyB34075FD5GoHOQDHHOjUuZKMmNfzkbKMOM=;
        b=ghKRMPewjOEklKrFYGpwxOytR4LcHj6vxL0HyBAe1pF+WQCGS12YXp3FHdochfKg0R
         oLHH3dj4sFyDArjLkNGEMGZxWFikhrmHV/0WaNM2slOyf1U1YlOgdUP9tbLbm9HCjGE2
         kps47j2GBuM78PAZzgEJbLjSPTzguHV7/Rjf9oAy0fLlPSNB4qqScYP9TjOtE3wlOO+B
         e6aN5z0OpKbGQdaobPNbN6sQ/4S2D2Yw9IELdHJM8XRq88mnSqVeyQ8BJkpN/j+qNvUH
         yd14sWP/W4sG7uxhtEFhujomAEypH7TNGajkVIaE30pFHXnWv07mnoQX+sYesuebqftB
         i98A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=PuYkzk9hyB34075FD5GoHOQDHHOjUuZKMmNfzkbKMOM=;
        b=hSJffQ9Xv+7wSnk8IEYU8eUh8xfVdNBItWrsaTB3NvnIFhUmfQB35kguGjC9OAd/1v
         Hp/Pr66Rsl2PgFKkrEWvRGAFs+sBQiAVpuizQP+/uaDCDRZd55iGwbyhwX2KlzoiENAp
         /jU2y+2BTPn+mnMoru6eOYZSIQzA0UGKnJeXU7LMXRIAixEab4XcjvYdwEsdB4seukLk
         yZs3zxjB/gxAnyj/8ppgMRk1c+3BN6uqV6n6Kh5WFszSeV3wr36WrmHX61ok+QrdkrFM
         st+Vj7Qe1IXvn0DH2Msn2QO1efnsdBm6EIXS8/IC/IpoidIsZXLX9T78Yg+5ugR/F4Dq
         Rvlg==
X-Gm-Message-State: AGi0PuaZD+DLZxQr3x5lxG7dBPSSPzQhfIxFBZeq3Q6qjYsSf7XBjrd/
        SsBsrzpANOHbvpzVAV2kKf6gEZh1
X-Google-Smtp-Source: APiQypJWOjqoS/lwvOaxPZo5+XXxSrMZAYwOS7QnZm79tqCBIMxcJLqCyWOdTqm9g91M7qm4WdRXoQ==
X-Received: by 2002:adf:9d83:: with SMTP id p3mr15381925wre.142.1587324149636;
        Sun, 19 Apr 2020 12:22:29 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:3351:6160:8173:cc31? ([2001:a61:2482:101:3351:6160:8173:cc31])
        by smtp.gmail.com with ESMTPSA id f8sm18540249wrm.14.2020.04.19.12.22.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 19 Apr 2020 12:22:29 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: Errors in man pages, here: capabilities(7): Punctuation
To:     Helge Kreutzmann <debian@helgefjell.de>
References: <20200419064750.GA29996@Debian-50-lenny-64-minimal>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <df46d0de-2256-3a04-edff-7c5a8cace6f1@gmail.com>
Date:   Sun, 19 Apr 2020 21:22:28 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200419064750.GA29996@Debian-50-lenny-64-minimal>
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
> The following strings have wrong or missing punctuation:
> a) FIXME: Missing semi colon (in English?)
> msgid "set type-of-service (TOS)"

Fixed.

> b) Semicolon instead of full stop necessary
> msgid ""
> "override the I</proc/sys/fs/pipe-size-max> limit when setting the capacity "
> "of a pipe using the B<F_SETPIPE_SZ> B<fcntl>(2)  command."

Fixed.

Thanks,

Michael



-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
