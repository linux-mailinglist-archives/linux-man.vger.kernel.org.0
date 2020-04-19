Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 27A041AFDDA
	for <lists+linux-man@lfdr.de>; Sun, 19 Apr 2020 21:53:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726112AbgDSTxf (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 19 Apr 2020 15:53:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46964 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726022AbgDSTxe (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 19 Apr 2020 15:53:34 -0400
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com [IPv6:2a00:1450:4864:20::441])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A340FC061A0C
        for <linux-man@vger.kernel.org>; Sun, 19 Apr 2020 12:53:34 -0700 (PDT)
Received: by mail-wr1-x441.google.com with SMTP id f13so9508410wrm.13
        for <linux-man@vger.kernel.org>; Sun, 19 Apr 2020 12:53:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=b9gieGR3Mlfi8xLeTIyEB6ZzG7h8zSgeZ2i8OQZCOu0=;
        b=FS/iiUn1gmA23tR4acXXfbkxnrDte9oH0B9gb/IK5qARMi68sQD21/xD8J39byfn8D
         wQ1vtF7JKLieFHsX7fUsFXg5B1DJT7nxj5RCKCK8pJ74WS+c5dDqP2xUa26DkwcGDVQ9
         Q+/egSJA25M7Mk7q3VqWOBBF6ycYiUSkH7sL3njNqz7AabCjTQzscQ1Fp8YRpkzNTaKT
         hBkJUy6b+XDC7FmjWuFbQKkBStwvK22PyvDe9PUAiVobiEYMD7zC/7iD+jNL5bauw1zC
         UrHOVwMJNSE60YK8tfzlPZbzm6Ujw0IZm74s/8JApTEP4ZQhdR8RARA/jpauxSnj/wy0
         G4Wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=b9gieGR3Mlfi8xLeTIyEB6ZzG7h8zSgeZ2i8OQZCOu0=;
        b=c8GFJq4KT3KexCpE4didHbYtaE29WjR2O+eHePnyKOhKwOQylv2FsAxLpV4wRwuipe
         ymerk0FGVhZH33lJx8r4OmeKMCIyfWn9VV+TmVrHAJcTKo1ui4ACP+FIfC2GgJsFe3d/
         keT8N+kpjvLcvGXOGgPdbDEoxTHSuBn7D1e0OYhjj17bgdL8h3hdfuXF1o5Yd612YVGX
         mxSBzdU8vEPAy7T2l/ykXN6+e3p8X0KOU6oIgegsjJhTVP+cdOqfwv1L2ahOnzvUpDXt
         P6t7u+Yo8uinkvxmSsKeUc8vEVhJR1PYcSQOH+Nata+Y0ooUlyS3L5Quqs6bpTh2yOCa
         y9Kw==
X-Gm-Message-State: AGi0Pubo7Dxy7o7rfMdDrJRWvrAuFxnEnbMWXtpbGg0ByVHXtdBUdUYr
        g2Y7EqVD0Q6M3XziijrEGQ+HuRvV
X-Google-Smtp-Source: APiQypLiy2qtrzxOx4xUqArDUEAl4o4nn+SkkzuuxFw7Bs5JYGcc2yeAC7EYFYoIjHiZKDap9FX8pw==
X-Received: by 2002:adf:d087:: with SMTP id y7mr14804795wrh.321.1587326013279;
        Sun, 19 Apr 2020 12:53:33 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:3351:6160:8173:cc31? ([2001:a61:2482:101:3351:6160:8173:cc31])
        by smtp.gmail.com with ESMTPSA id u3sm31337297wrt.93.2020.04.19.12.53.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 19 Apr 2020 12:53:32 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: Errors in man pages, here: man-pages(7): Garbage in text?
To:     Helge Kreutzmann <debian@helgefjell.de>
References: <20200419064809.GA31116@Debian-50-lenny-64-minimal>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <2e80f0ad-bfc0-44b0-b096-99ddbd3ab0bd@gmail.com>
Date:   Sun, 19 Apr 2020 21:53:30 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200419064809.GA31116@Debian-50-lenny-64-minimal>
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
> What is "an tmac"?
> 
> "New manual pages should be marked up using the B<groff an.tmac> package "
> "described in B<man>(7).  This choice is mainly for consistency: the vast "
> "majority of existing Linux manual pages are marked up using these macros."

"an.tmac" is the name of a groff macro package. Treat it as a noun.

Thanks,

Michael



-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
