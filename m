Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1F09C1AFD96
	for <lists+linux-man@lfdr.de>; Sun, 19 Apr 2020 21:42:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726181AbgDSTmh (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 19 Apr 2020 15:42:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45282 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725848AbgDSTmh (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 19 Apr 2020 15:42:37 -0400
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com [IPv6:2a00:1450:4864:20::344])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 01D27C061A0C
        for <linux-man@vger.kernel.org>; Sun, 19 Apr 2020 12:42:37 -0700 (PDT)
Received: by mail-wm1-x344.google.com with SMTP id e26so8578393wmk.5
        for <linux-man@vger.kernel.org>; Sun, 19 Apr 2020 12:42:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=WU1OZL+CB+dknll3wh9Fx5I09YSHo8X7Kzh8vm0BuoM=;
        b=PGwZh337TTE4970+s8a816NrUTPyzG/mja7IoJCdxq5UOTAyYpzo0+mK7qF6n0h9j5
         uHDij43IA0H6+VTt4OECsRnTC2Uvc+Hc8NQlT9Mb6ju+HMUeDUeai3fwIU9RDUC5C1dH
         bwhloS56wgNXrxvP26GQ7LSBSKJtEYHTridmbgHrPXsLSQLUc0DfVn/TU7SVgcSe3jla
         UF8hdAzMGAh/Otnq1NVWz1pnvExmoOgSDAphqJpX7kAyTUoUVOVFjoLxVUx88fDC8+Jv
         Qigl8XcF3K7ypQp8TC4e9llaNABJJ6FhwnOSmeMomsPrCzeVH9G6kbMN0Y5f5auWiRW9
         JMGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=WU1OZL+CB+dknll3wh9Fx5I09YSHo8X7Kzh8vm0BuoM=;
        b=O4RfWl6Voj/qemj9ttvDqv0oY8+qb9rs729lnRjEmEfW/OMXwgOtcLucvzpZjvH1+N
         vAmsQyU7Rh14fKvdTJuQuMRiV3Gor/lfAxSwsSj38ylKmyK9nWGmgaATU/6fF0JpieiB
         ZlRhFqgtNi6cARRGdL1AaFYtfUqbb8/xXUeMYC5pmUbmWyGk8d97OZkPLGKwww9CwyJ3
         zx1IyvMHUOxtrxlIZrU+R0P2UKlbLL8CvlqZalb9ixsYvjmIc/kZ2Ney+up4vU62Owm8
         FTGtgYXkcHHAuZXn3fzHfUc2KXp6+m3mdnZqS8qH5hZNTZkhdX9LuU1fO29MvTbdroJ7
         MvUw==
X-Gm-Message-State: AGi0PuapFE4eRJ8bT1jI1UAwHHr6Jjgn2IEDnel4xbgy9R5XlNAC5/2L
        VezMs2Qd65+NV+OZ6sWL3hWIh2r4
X-Google-Smtp-Source: APiQypJ60UkuFPd7zRu3PTz3dkiCQbdLJb/ZLgwD+CP4e8dhoI4uXS4UNq+iuhYD8HSAK0TS4lihJQ==
X-Received: by 2002:a7b:cdfa:: with SMTP id p26mr13929493wmj.186.1587325355540;
        Sun, 19 Apr 2020 12:42:35 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:3351:6160:8173:cc31? ([2001:a61:2482:101:3351:6160:8173:cc31])
        by smtp.gmail.com with ESMTPSA id m1sm35742057wro.64.2020.04.19.12.42.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 19 Apr 2020 12:42:35 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: Errors in man pages, here: filesystems(5): (vi) Typo
To:     Helge Kreutzmann <debian@helgefjell.de>
References: <20200419064800.GA30561@Debian-50-lenny-64-minimal>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <083f009c-686d-f422-1cfd-d1ab598fdc44@gmail.com>
Date:   Sun, 19 Apr 2020 21:42:34 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200419064800.GA30561@Debian-50-lenny-64-minimal>
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
> iThe → The

Fixed already (2 months ago).

Thanks,

Michael

> "iThe following list provides a short description of the available or "
> "historically available filesystems in the Linux kernel.  See the kernel "
> "documentation for a comprehensive description of all options and limitations."
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
