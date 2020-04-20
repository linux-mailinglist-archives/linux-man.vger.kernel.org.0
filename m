Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id ABF8C1B0168
	for <lists+linux-man@lfdr.de>; Mon, 20 Apr 2020 08:13:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725991AbgDTGND (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 20 Apr 2020 02:13:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57266 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S1725780AbgDTGNC (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 20 Apr 2020 02:13:02 -0400
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com [IPv6:2a00:1450:4864:20::344])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A8145C061A0C
        for <linux-man@vger.kernel.org>; Sun, 19 Apr 2020 23:13:02 -0700 (PDT)
Received: by mail-wm1-x344.google.com with SMTP id z6so9947657wml.2
        for <linux-man@vger.kernel.org>; Sun, 19 Apr 2020 23:13:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=R6yBDH8S0hhGtpF9IbhPGEfV6ZcQgneDnLaulsEXB+Y=;
        b=UloAP6YP8NgO8KPRAJ6vUJAS5rajJk/Rr765WDEjJq3AGughSp7HtzMhjsBBpNicQ2
         AQLG7vkIGWiug2D6VEuCTbsO83k/TQJAhqGe+Cr8pDhCNGb13xOG+rkIQ1jzEBnuyx/L
         Kl9nlII/e0ATa/b1qw0r7DPu9uAx4fr9AVdKmKWG34YWAp5aqSQLOZtq3aRyvg803PDj
         je0InFlv8eRGJ3x4heilAbrF0McoDusi9zjLGukO2jHJRGCfzc9279Hukb4I4Qun/Tet
         zwx7rP2aqmQ65oNJEPneZpvjXytNvuhENTb8Kq7fmfSvobGVZAAZv4IXRtwrj6ZTWtmq
         si5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=R6yBDH8S0hhGtpF9IbhPGEfV6ZcQgneDnLaulsEXB+Y=;
        b=P6pFArkb9yxQF+KCHquYPGZyQ2jXU14Ge5qqPzWrs0jeHljxLjz8MSlTS33jxkaUo7
         hz0ce2lod485ZEDMqhmuTo63+o8tPcT7c+glq/SSh8xpYCRe0j6Vyi7dACINnrFjQORA
         FiCPfyM0BXSEnUknFYbzXB0gmVitfCtLrNaOG2FA8zcAZvEQ6A8uzNybvvWRGk751JMi
         nou2WZMTRPIxQDsvoq+IAapc80Ox/oFWEVv7enGfoMz/7yHj/Jhd48tMCnIz2bVmVWlB
         DwV+ohDIfHyh64WV673bilFXgIucnWzlhRQcE0oJ6Hft+aZBfG7TWm5pRx7k1ruSTmkY
         hKUg==
X-Gm-Message-State: AGi0PuZghL5MMUzUrMODWJyt5A8px7OKGbHvtTUWlENcLtllEjhtEo1a
        25fv8FzflTt4zGDTCbrUFgYvLNLv
X-Google-Smtp-Source: APiQypIpayXqwL8gHtoo4ZSmAK5kf+21xoC6M7k42OIPcmW7dqoW4A+cFmHyKcFR/1N4hp8HRrc4Aw==
X-Received: by 2002:a1c:40c4:: with SMTP id n187mr15482930wma.28.1587363181251;
        Sun, 19 Apr 2020 23:13:01 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:3351:6160:8173:cc31? ([2001:a61:2482:101:3351:6160:8173:cc31])
        by smtp.gmail.com with ESMTPSA id s30sm17918882wrb.67.2020.04.19.23.13.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 19 Apr 2020 23:13:00 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: Errors in man pages, here: initrd(4): Capitalization
To:     Helge Kreutzmann <debian@helgefjell.de>
References: <20200419064807.GA30955@Debian-50-lenny-64-minimal>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <13eb0390-cd13-9c8d-5572-927db0860200@gmail.com>
Date:   Mon, 20 Apr 2020 08:13:00 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200419064807.GA30955@Debian-50-lenny-64-minimal>
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
> Device → device
> 
> "The boot loader is configured to load into I</dev/initrd> a filesystem with "
> "the set of modules that was used to bring up the system.  (e.g., Device I</"
> "dev/ram0> can be modified, then unmounted, and finally, the image is written "
> "from I</dev/ram0> to a file.)"

Fixed. Thanks,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
