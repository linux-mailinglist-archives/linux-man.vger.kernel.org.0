Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C077D1B0160
	for <lists+linux-man@lfdr.de>; Mon, 20 Apr 2020 08:12:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725930AbgDTGMV (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 20 Apr 2020 02:12:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57144 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S1725780AbgDTGMV (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 20 Apr 2020 02:12:21 -0400
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com [IPv6:2a00:1450:4864:20::344])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DE4F8C061A0C
        for <linux-man@vger.kernel.org>; Sun, 19 Apr 2020 23:12:20 -0700 (PDT)
Received: by mail-wm1-x344.google.com with SMTP id r26so9955677wmh.0
        for <linux-man@vger.kernel.org>; Sun, 19 Apr 2020 23:12:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=1Fr0kjaFXcnpXVGY+wiaveej1EvSGPRH8hT5Rgd4FkM=;
        b=t0G6Jmdt4MM7GnplOtt7lIZoyV9OdP92Rf+AOeJgdHIc935m74bESdP8iPD1bf9Sl3
         oBcODSIIjOfgPwecVdTSqs53KFvuT3UvAHdd08qrrl6p/dNdR1CQr8o02fjderkbiu3P
         lbQhwBCKsUPAq9Q6dd4Iwtno5mUYVIL4R5F85MVb02s8WcgkthPpKx8qPXKSZTa4y4xh
         45zaXGygJxcR8HOwBBtbUZFv1/fPQtCAa8+aJv/eiyMmVylw8WNrahX9awTemb3AUYd8
         Yxt5AittHKh5HFhX5fX6odoMOxmY2iQIqP+8z9hrftn3NoaKyvMvApSrXjUr08ls6Xav
         LorQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=1Fr0kjaFXcnpXVGY+wiaveej1EvSGPRH8hT5Rgd4FkM=;
        b=p5PHiYiLm6fpJMHASfZ7B09Yc9YcC0lIjw7wKr56h0UmJSYcqfip5uiWUw0v9f/zw1
         p/MHp0+60AgqSmvjEBiLyJK3cSCSvWsLu2BRFSvoIfK7psczLdvbPOGSlJH4UrpGkJwF
         K6N9A6TEHXdzk8Gxc/O364192Xt+U6sdd5zveKGscQIRvHG3UHTH3hLQ/J3KKqJi90/f
         fP51CalVIFaMSjP1f46E0ejhtZlZmN4MtQrwPI7H5etdyYcz+rOBdMg1ppzupaNdqol9
         w7JLWhJLsTrKVPwVPsI2AsEq4fI9Su9TqlM5xCduAHnZjsbtU+igxQU1KQMwk8W/dBT5
         FnkQ==
X-Gm-Message-State: AGi0PuYA2e0WkngCIuRzkM9GW91levYprUkxS13DCwXWHHsZWC/TUTCl
        QbDEoHBrtn4zb8IW+JE1pyePvSMT
X-Google-Smtp-Source: APiQypJ5nJGCVxbnJAdt9ZEmeRAIq0WLEtDzml2WZ1HrYUwFL26jS6dXyl54ObjP43KnWY6btdd1Yg==
X-Received: by 2002:a7b:c959:: with SMTP id i25mr15603323wml.20.1587363139516;
        Sun, 19 Apr 2020 23:12:19 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:3351:6160:8173:cc31? ([2001:a61:2482:101:3351:6160:8173:cc31])
        by smtp.gmail.com with ESMTPSA id q17sm18066837wmj.45.2020.04.19.23.12.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 19 Apr 2020 23:12:19 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: Errors in man pages, here: rtc(4): Missing reference
To:     Helge Kreutzmann <debian@helgefjell.de>
References: <20200419064822.GA31795@Debian-50-lenny-64-minimal>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <a0f61383-a61a-b4ae-9039-9c57f5d6d1d1@gmail.com>
Date:   Mon, 20 Apr 2020 08:12:18 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200419064822.GA31795@Debian-50-lenny-64-minimal>
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
> ioct(2) ?
> 
> "RTCs can be read and written with B<hwclock>(8), or directly with the ioctl "
> "requests listed below."

Fixed.

Thanks,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
