Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8D7AA1B0205
	for <lists+linux-man@lfdr.de>; Mon, 20 Apr 2020 08:58:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725959AbgDTG6D (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 20 Apr 2020 02:58:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35944 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S1725815AbgDTG6C (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 20 Apr 2020 02:58:02 -0400
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com [IPv6:2a00:1450:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 85D72C061A0C
        for <linux-man@vger.kernel.org>; Sun, 19 Apr 2020 23:58:02 -0700 (PDT)
Received: by mail-wr1-x443.google.com with SMTP id g13so8662095wrb.8
        for <linux-man@vger.kernel.org>; Sun, 19 Apr 2020 23:58:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=7OUbs6s+wrUNll6ZpjGyEdnkq280spTVxWp/C67I9xQ=;
        b=r6Knla3jo3ktj63ApKXOKYDMZ364uxzg88VQfZAI2rp9zHqN+zsdUbDfxrWtZJUbSs
         Hf1tIiCwEyyXSSZE07ndjoXiURD4ysYpXaOrGVrKTKPjC8PAkZE+jEoSa2rKbEx9cIwF
         OapUJbS5UIW+doNZvzC0kWOfRTn79stix4vLXOAzlRgdzbeyJE9iR/cPUZpuv/eyk1PT
         InDz+35yG1/ZKxEPJZI7K1oHOQctJTQgS8b2+9RoVkwR/2A233Dgrp6s8gaW4i73eY2G
         LEd0w7+K92qRFxqQ7DzUbVnS7uKrfG8hueOpZsR8N1dPsLtncnU8Gyna3Nuu4F8SWWWk
         i87w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=7OUbs6s+wrUNll6ZpjGyEdnkq280spTVxWp/C67I9xQ=;
        b=JPKIvLFzDXaldfKKnGKVXcHElm3pevnL3NmnZr6JeoKvz59gEIwHiQHMWfa1ofAYwC
         4n4KSHmiHQE/In9GGGwHMm+0rwKy0QVY+iwrM0PV3Cx8SaRG895E6FEAbtEaFZalwwG3
         X8zOuMcEBuFmGrwwUQLW3TgO8IMn0oCkdVdqCHKD75gaT1QbobmZbEywBy/1WVI/IMeQ
         7kh2ToyjYGkD4zjgsi4EGiyKxHG2rOw+c4uAjUI141gv7Tf3peJxgliotEIJeKsG5llD
         9tokEbcp2XxWKoRAw1VmIoNzpPiKk91sJl0S60AQTduhKJOyYV1tpi7/LWkrWWIoDmXr
         kCvw==
X-Gm-Message-State: AGi0Pub/cOcsaiQyXm6/kN8+6cByFCDhfg7lYCG1qugtPO7C7am7V4WL
        l3eEFljy9pcpBosUor8/x9hEFLD7
X-Google-Smtp-Source: APiQypI0mBGBSzJMKrMaEwwc5jQ+4a2Uum1zXcYBQzdqnbHASi0pkfCpRipj/NYBpJTM9cASRzW5dA==
X-Received: by 2002:adf:df04:: with SMTP id y4mr17155778wrl.413.1587365881129;
        Sun, 19 Apr 2020 23:58:01 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:3351:6160:8173:cc31? ([2001:a61:2482:101:3351:6160:8173:cc31])
        by smtp.gmail.com with ESMTPSA id g74sm71149wme.44.2020.04.19.23.58.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 19 Apr 2020 23:58:00 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: Errors in man pages, here: console_codes(4): Improvement
To:     Helge Kreutzmann <debian@helgefjell.de>
References: <20200419064753.GA30191@Debian-50-lenny-64-minimal>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <b3c74e10-cfa0-fec8-161b-111679180431@gmail.com>
Date:   Mon, 20 Apr 2020 08:57:59 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200419064753.GA30191@Debian-50-lenny-64-minimal>
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
> interrupt -> abort
> 
> msgid "CAN (0x18, B<^X>) and SUB (0x1A, B<^Z>) interrupt escape sequences;"

Fixed.

Thanks,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
