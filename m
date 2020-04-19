Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B2B471AFD77
	for <lists+linux-man@lfdr.de>; Sun, 19 Apr 2020 21:27:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726011AbgDST1q (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 19 Apr 2020 15:27:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43010 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725848AbgDST1p (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 19 Apr 2020 15:27:45 -0400
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com [IPv6:2a00:1450:4864:20::343])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6C65CC061A0C
        for <linux-man@vger.kernel.org>; Sun, 19 Apr 2020 12:27:45 -0700 (PDT)
Received: by mail-wm1-x343.google.com with SMTP id 188so2412288wmc.2
        for <linux-man@vger.kernel.org>; Sun, 19 Apr 2020 12:27:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=Zquh+qDnQBUd29u2ApqRw7quscKkwQm0VSWAp5RJx6E=;
        b=cf4KROZqjl/DiY7JKoWc3RqdvGh66pwzZExanQYhdZG4Br4tD7+BS+FU3AG+nbjC+U
         thdOMHl5JjFepPEqNeXh5JHWDWW4msAS0AwYzj3+ra2KnP0RTfd04NXGnoGRdQo0qDrj
         jCysyeWtr97Fl9JiP36YYBTayjsfYt9cuY8O342Vv/+MXMr7+DCFfNzZtAcGE4fgQ48e
         1s7ub5IAqTskPBoTaTcHmg5O5zNQMW8h8ho8JBi9B4XgIOeG76lijtT0ZhpULH7jSwVK
         OS6fU42GNf1i9R+67bLFDTRH0QFWAXAoO1RlHJkZZU48+do7pLqsbRzL1PlNVT6MKDdQ
         ShaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=Zquh+qDnQBUd29u2ApqRw7quscKkwQm0VSWAp5RJx6E=;
        b=S6eGQkQYWcPhbp17ID2X15q6K5IvHC9NtFYOYwsMXkbxn28WlI2vTPCWxHHV/zAqTT
         vg0uR9PNv9fkIyz1h33R92CTc2acBLnyhpawrp9abylhligcxIU6Ah34zq00S+ZaLOTU
         S1Nto2vtOAuE7AjFRsoOBldLZmEGiLOKbgBcypLsix1s28h6pbAb2rHxhNfB/UobnqYh
         ydQMyzKqMZyA2uStOFd21P1c/WNzIs/lwIZ6vPlLPVdzYJFsYnLIKjnIUrmhN9D0nSKT
         rjfSnXvrtoZky3U/GrK//5t6nrwVLbX0Qa50O928aoxJv+Je4XXfYQTME4+pInFpl0JH
         k/vA==
X-Gm-Message-State: AGi0PuY6hVHaywrMMVKhPGZmpGcrM8G7nlqHzc6nVuc0iwVp8o85MBSe
        NnHzkM74JYMxr+AWowPGQA1gOy+B
X-Google-Smtp-Source: APiQypIeXK9k9xz5Y+1pW39MN3NeKTRM+8OXZHuaVbDbzdepQaBsFyyIzASGp+o/TCKqMhXCeeu3oA==
X-Received: by 2002:a7b:c147:: with SMTP id z7mr14900412wmi.52.1587324464045;
        Sun, 19 Apr 2020 12:27:44 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:3351:6160:8173:cc31? ([2001:a61:2482:101:3351:6160:8173:cc31])
        by smtp.gmail.com with ESMTPSA id g25sm16451729wmh.24.2020.04.19.12.27.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 19 Apr 2020 12:27:43 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: Errors in man pages, here: erf(3): Superfluous comma
To:     Helge Kreutzmann <debian@helgefjell.de>
References: <20200419064756.GA30352@Debian-50-lenny-64-minimal>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <956fc018-b478-a64b-082c-6350ce2c5102@gmail.com>
Date:   Sun, 19 Apr 2020 21:27:43 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200419064756.GA30352@Debian-50-lenny-64-minimal>
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
> Unnecessary comma after "erfl"
> 
> msgid "erf, erff, erfl, - error function"

Fixed.

Thanks,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
