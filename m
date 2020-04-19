Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1AA8E1AFD5E
	for <lists+linux-man@lfdr.de>; Sun, 19 Apr 2020 21:22:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726327AbgDSTWW (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 19 Apr 2020 15:22:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42164 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726099AbgDSTWV (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 19 Apr 2020 15:22:21 -0400
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com [IPv6:2a00:1450:4864:20::342])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 80C49C061A0C
        for <linux-man@vger.kernel.org>; Sun, 19 Apr 2020 12:22:21 -0700 (PDT)
Received: by mail-wm1-x342.google.com with SMTP id u127so7773136wmg.1
        for <linux-man@vger.kernel.org>; Sun, 19 Apr 2020 12:22:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=6U95bT12kxRXqpwZqCYaOBBuqRaDO8UWfPE79HtPQmY=;
        b=WtVDy+oBDzQ6MBAz6VK4mz8U2OzUmDrMZ1xQ5BNhAAgZiVLQ2fJUrV866gG6DorPus
         FfoG8+t3Ibzvb0KTkk4Lu7+kRJQ/+/B7a/WU3pch05J6RXrAm9dwOJXhyaI2NxLPjrCf
         /8h2NXZpQx/zT84FMQKygLV+EfPnF8/besdOB7/ysra94VSCYeFBty99uBeli/X6COoD
         KZp+y0GteprKuORvsq+BkZT4RWJjyt6BiYcFDjPqu9WhQ5Kd81CoywH+S9wEE0g+mqzI
         A4PhlI3VUWY6adnYu/fhwCbuXESawe4qyo936e9cP3yQGrmaTfg43802DuR/FaEPN8PV
         X9pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=6U95bT12kxRXqpwZqCYaOBBuqRaDO8UWfPE79HtPQmY=;
        b=j9DtAD+vD/WXIt01736VyjDH4QXubTKKIK3C0D4TExJwRBUnWhxeTVcZ/OmEM4M+5s
         x/eWrOh/DgmlYx4E8T5s6DsFNrZYIJ3Bo5XhySIDHR/Jjh4/H2gtjmD/hXyCi0wQ+EFW
         LITzZiVP8OlVfxmlqmdxXjfXkuwELghHl2ZCQ26Q7c9poJlX/yCq7Rlf7vApvq0UyWuk
         bjFLZQGWgiXwL2VpMVnUQU9yvxKFd2qeKzCiX+dUusRAxw67CjUIrh1zrkkOi9dE+DUX
         r+OmJs1t+iReIlugwzilBW7ejDqyWWPrSrlbJvmc8aHB3fxIoSrliL55Ws4Wfx45YxR9
         Ro3w==
X-Gm-Message-State: AGi0PuYaZWSU9zcSs8n56Ss9F0CYndhMtl400shVcwBYOeuTryxxgr0v
        7NTzt9ZvClqCNNxjy11FeFHNnUQw
X-Google-Smtp-Source: APiQypIJrRcH1N/8U5f8Zfi+LMyz2Rp1/tTx0twLOF4B6u1I/uo4AsQGLzd9XW8M0+CLg1tqc+PBrg==
X-Received: by 2002:a1c:2c0b:: with SMTP id s11mr13287249wms.3.1587324138926;
        Sun, 19 Apr 2020 12:22:18 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:3351:6160:8173:cc31? ([2001:a61:2482:101:3351:6160:8173:cc31])
        by smtp.gmail.com with ESMTPSA id 74sm29567075wrk.30.2020.04.19.12.22.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 19 Apr 2020 12:22:18 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: Errors in man pages, here: clone(2): Missing spaces
To:     Helge Kreutzmann <debian@helgefjell.de>
References: <20200419064752.GA30122@Debian-50-lenny-64-minimal>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <e3ecb8be-1892-3fcb-53de-74c5049441b7@gmail.com>
Date:   Sun, 19 Apr 2020 21:22:15 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200419064752.GA30122@Debian-50-lenny-64-minimal>
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
> s/--/ -- /
> 
> "    /* Keep the namespace open for a while, by sleeping.\n"
> "       This allows some experimentation--for example, another\n"
> "       process might join the namespace. */\n"

The suggested change is not correct. "em-dashes", which is
what is being emulated here, are normally not surrounded by 
spaces in English usage.

Thanks,

Michael



-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
