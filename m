Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CDD431B02D4
	for <lists+linux-man@lfdr.de>; Mon, 20 Apr 2020 09:23:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726048AbgDTHXW (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 20 Apr 2020 03:23:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39878 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S1726039AbgDTHXV (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 20 Apr 2020 03:23:21 -0400
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com [IPv6:2a00:1450:4864:20::441])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 599A5C061A0C
        for <linux-man@vger.kernel.org>; Mon, 20 Apr 2020 00:23:21 -0700 (PDT)
Received: by mail-wr1-x441.google.com with SMTP id d17so10735578wrg.11
        for <linux-man@vger.kernel.org>; Mon, 20 Apr 2020 00:23:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=pvqyUI4+fGLr3Go1fX7LitOanQwEbn6BJf2nfZge3hA=;
        b=lEPcxffE2z8oe6OsKeoBzZ7K5TomTWMIALPaqqmjZtwoqT1uRgwFg4q9E0QQhe0rll
         +eCV+MbkvQPoKKjuCNhLNBZKTau5aAN2Fcl6j0iQMU8WlzeGNlwmZD60Mof74ORdrOQR
         JNklWNUHex6AR88BY/3iR5LAjDzjVEzDMrpl209mb5zJy8QZn18QraDTZZ3k0r6E8FVt
         i8wFtxtrifdUCBdfiXpxKNEFsLf9KJTTE9kEQ3sh2mpl8lDsvoL08+bWUt9qUHpI6jpO
         1u808ruaZcOvQVEdMIcqcpJxem4lq8Re+QV+jprYf3i9Igw9DOQ9ciTwnaF3sCSpmMoY
         s29A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=pvqyUI4+fGLr3Go1fX7LitOanQwEbn6BJf2nfZge3hA=;
        b=jt+dtboZVGm4AUwCNCaOu5uUEd3w8My5Xch6/shKLzWpzSaPu6024pBXXcKWGyg4Ob
         JXvK8EwSo9hXkWHkqShWROONK1Oa4S0whMladYY+4pKOZ5iTog1ZBkTVvSyZdXei+D8i
         uYkRYxKOAcdFlAAWixkxZWmQwKLQP1upnwEhh6TMoXSyXRvwbmmQ5RUlXzscpZehnU1T
         ygy7ul8FVV4979NnqrVjvfFd0f6ZqDd/rVoVLlsDsvfBV1F+OoRvXLieFSTmHe+rNdeU
         NdlvR6YyE+qrjvpt9ot4nAMxhGbwwia84ce4A+Zv+gfdjQL44fbC3myPdzZrc2d5X+g4
         2l3Q==
X-Gm-Message-State: AGi0PuZW5LmkrL8j63MhdsW67TGv4ZQHKd6YQcJP1B8gEOZ4xZr1nnA7
        syBostmbC98uq2nyF9Kmrfupf9fy
X-Google-Smtp-Source: APiQypI9O6OlRM+0bs5YB+rAAC+OhdKcKVX+wsMgDeYBWbG1oRnj33HSR8csuGUnRW4kKAgygg8Edg==
X-Received: by 2002:a5d:6945:: with SMTP id r5mr18670335wrw.363.1587367399948;
        Mon, 20 Apr 2020 00:23:19 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:3351:6160:8173:cc31? ([2001:a61:2482:101:3351:6160:8173:cc31])
        by smtp.gmail.com with ESMTPSA id i5sm8933127wrw.77.2020.04.20.00.23.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Apr 2020 00:23:19 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: Errors in man pages, here: wavelan(4): Markup/Formatting
To:     Helge Kreutzmann <debian@helgefjell.de>
References: <20200419064836.GA32609@Debian-50-lenny-64-minimal>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <726433d8-90cf-dd3b-6fcc-30b4f5451644@gmail.com>
Date:   Mon, 20 Apr 2020 09:23:18 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200419064836.GA32609@Debian-50-lenny-64-minimal>
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
> Why is wavelan marked up here? It is not marked up in other places.

I changed it to B<wavelan>

But, I think the point is that this instance refers to the diver
interface, while the others refer to "wavfelan" as a more general term.
I agree that this is not easy to discern, though.

Thanks,

Michael


> "I<wavelan> is the low-level device driver for the NCR / AT&T / Lucent "
> "B<WaveLAN ISA> and Digital (DEC)  B<RoamAbout DS> wireless ethernet "
> "adapter.  This driver is available as a module or might be compiled in the "
> "kernel.  This driver supports multiple cards in both forms (up to 4) and "
> "allocates the next available ethernet device (eth0..eth#) for each card "
> "found, unless a device name is explicitly specified (see below).  This "
> "device name will be reported in the kernel log file with the MAC address, "
> "NWID and frequency used by the card."
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
