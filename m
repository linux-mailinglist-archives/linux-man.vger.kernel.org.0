Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 470FA2155BD
	for <lists+linux-man@lfdr.de>; Mon,  6 Jul 2020 12:43:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728448AbgGFKnD (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 6 Jul 2020 06:43:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48874 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728414AbgGFKnD (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 6 Jul 2020 06:43:03 -0400
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com [IPv6:2a00:1450:4864:20::342])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 44DA8C061794
        for <linux-man@vger.kernel.org>; Mon,  6 Jul 2020 03:43:03 -0700 (PDT)
Received: by mail-wm1-x342.google.com with SMTP id f18so41385527wml.3
        for <linux-man@vger.kernel.org>; Mon, 06 Jul 2020 03:43:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=DEDALXAFq0+IHM9mG+Lo4Q6WaCGnFVc2XZJaW4AO7Z0=;
        b=IJEK5nlobipE+yuXHMxjIQ1v7q3JJp+FLBEaUHO37XB4tljOL+zZNMhgO0q5JuK1/j
         rDT3citOLAQID5KdcGTy0IrDpiMOMbLX/kwqWBlnfVyaCZFfaLUXcNmBxUTZ62DQH8rB
         MBqajMlw4UxmDSfyQOKanSKkGuqAv5CFCe4z48qaL/f/alXY/Thvogdup5m9oGArdVrK
         84XRCEU00pfod29mvsKa5qjiy8FVVRPiau4jLgLHHZb/M3DgyURithL/47V8jlo0yGxf
         1QTKgvlxnJHm9ktRVVbzSbXcltywgbf6qrw2uo7sSWzxbfDgKTs4+HiaeRPJsKNGNSyL
         GNmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=DEDALXAFq0+IHM9mG+Lo4Q6WaCGnFVc2XZJaW4AO7Z0=;
        b=NgCk5J8iINxyRqO2RwGpt5rR2H7Pik9SkOqZ7SRyKNi+58bvHhpjo8zb3z5lJDCkEW
         BmiYUgmQZZvvq5zsFXY/rbAoaWqBumoYCeMS+EC5i+3pmUTRXhAh59tRoktAX4UHCx83
         i3r4Xpy7KaMB+fRhwWiFCf7q3dHqlIvqDMuvSUnnUmnYNt4FaimR911grI9L6/K2nY3q
         XUxvSX4osduUVnfH92DlwmK+V+34zZZJrf8KhHA/fi95BzVGPfZl8t0kfHwayt3+kMCN
         fU/1tzoFwvZLJh8Nj5VHt6tDshm7HytaydKqaWXCQzheSr+H/IzDqqPApMKB/MBPtPPE
         I49g==
X-Gm-Message-State: AOAM531FVjd10CtYoVFgDEhkEE8kYMKOpNRCDsPGCQBDi42i0lPNR3bE
        jxuBbKw7jtVGdcbCMNhY6sFk8HUX
X-Google-Smtp-Source: ABdhPJzmWVgRD/GzKQpMpkJid1P/hKsIRLm62bvBjogkKcSZDf3grFR8NKWwox2W2kw4eKuHEhfXPw==
X-Received: by 2002:a1c:bcd4:: with SMTP id m203mr48214659wmf.124.1594032181741;
        Mon, 06 Jul 2020 03:43:01 -0700 (PDT)
Received: from ?IPv6:2001:a61:3adb:8201:9649:88f:51f8:6a21? ([2001:a61:3adb:8201:9649:88f:51f8:6a21])
        by smtp.gmail.com with ESMTPSA id u10sm22845881wml.29.2020.07.06.03.43.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Jul 2020 03:43:01 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: Errors in man pages, here: open.2, typo
To:     Helge Kreutzmann <debian@helgefjell.de>
References: <20200706101453.GA26677@Debian-50-lenny-64-minimal>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <16ea655d-a933-f17d-6c7f-be3945ee72d3@gmail.com>
Date:   Mon, 6 Jul 2020 12:43:00 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200706101453.GA26677@Debian-50-lenny-64-minimal>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 7/6/20 12:14 PM, Helge Kreutzmann wrote:
> Dear linux man page maintainer,
> the manpage-l10n project maintains a large number of translations of
> man pages both from a large variety of sources (including linux man
> pages) as well for a large variety of target languages.
> 
> During their work translators notice different possible issues in the
> original (english) man pages. Sometimes this is a straightforward
> typo, sometimes a hard to read sentence, sometimes this is a
> convention not held up and sometimes we simply do not understand the
> original.
> 
> We use several distributions as sources and update regularly (at
> least every 2 month). This means we are fairly recent (some
> distributions like archlinux also update frequently) but might miss
> the latest upstream version once in a while, so the error might be
> already fixed. We apologize and ask you to close the issue immediately
> if this should be the case, but given the huge volume of projects and
> the very limited number of volunteers we are not able to double check
> each and every issue.
> 
> Secondly we translators see the manpages in the neutral po format,
> i.e. converted and harmonized, but not the original source (be it man,
> groff, xml or other). So we cannot provide a true patch (where
> possible), but only an approximation which you need to convert into
> your source format.
> 
> Finally the issues I'm reporting have accumulated over time and are
> not always discovered by me, so sometimes my description of the
> problem my be a bit limited - do not hesitate to ask so we can clarify
> them.
> 
> I'm now reporting the errors for your project. If future reports
> should use another channel, please let me know.
> 
> **
> 
> Man page: open.2
> Issue: same was → same ways
> 
> "When these APIs are given a I<dirfd> argument of B<AT_FDCWD> or the "
> "specified pathname is absolute, then they handle their pathname argument in "
> "the same was as the corresponding conventional APIs.  However, in this case, "
> "several of the APIs have a I<flags> argument that provides access to "
> "functionality that is not available with the corresponding conventional APIs."

Thanks. Fixed: ==> "same way".

Cheers,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
