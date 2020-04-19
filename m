Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B9E911AFDC8
	for <lists+linux-man@lfdr.de>; Sun, 19 Apr 2020 21:48:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726335AbgDSTsO (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 19 Apr 2020 15:48:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46146 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725932AbgDSTsN (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 19 Apr 2020 15:48:13 -0400
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com [IPv6:2a00:1450:4864:20::442])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7524AC061A0C
        for <linux-man@vger.kernel.org>; Sun, 19 Apr 2020 12:48:13 -0700 (PDT)
Received: by mail-wr1-x442.google.com with SMTP id f13so9494801wrm.13
        for <linux-man@vger.kernel.org>; Sun, 19 Apr 2020 12:48:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=tCQaBr2DsxoxYDEkkIM0h8+L+OBcK9C8IDIXpTp3RMI=;
        b=i7AnONs/4yg3VcYqc0dBW4obsmZxXK080JNXWLD5qPBInIik+0wl76COZr359lC909
         CtgklrbACv/VVpI200hU1Uk1u+N8E92VOPJTKIvHyJ9O7hcCIVUJ/PEi9QK4BMrxY9eP
         apW42YpPkB8dc20gQQIAaiW0T45BOIEaJTEVtIYoX6VUK5PMYqmEBgZ6FM2tdaZtXXAl
         lAygbGd05ZD/lGn1woYcT4Qth5EFGy/rgl7qFORvSS+2uAfyRM2sTmx9pu54wZ8nFJn2
         o7bmJCxPigP8UNfXokUUAPWtfd16Tu45TbtcxVsw4nDK8CyrbIQwy45LmMEbzy6evG3Q
         V2Fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=tCQaBr2DsxoxYDEkkIM0h8+L+OBcK9C8IDIXpTp3RMI=;
        b=ouleGVrSCwwXMXe7ofpgqzWeeNFFoBZ0lKH1tvUbg/6plHZto5wAR3fYziVRL/w/2d
         TFM9qCVDR85Se1Z78GupK0YVA2Z+tVKrOmFx2Gxjd/e4ad97z0rl2TCP7O3mA5LLZbcW
         uT1XzakULFf1DMrBb4PEhVDEx7S7LjoLyNYhmxowBdADgt+EB2INgkpNuQUVMmw7hsep
         brvCD6r1WxAnfxSISxZSQ31ko/VXpRCj/NrdQV+gR5/al1akoVR75d2rY4XohBGfjpNz
         HMskY5kKe6suInm6kcL0khfFn1keNq0Ge5a1vcy83blvZaL+B8nPnVIj5weYkhpyIaVG
         ICLA==
X-Gm-Message-State: AGi0Pubp1oGU4O3q32+byl5AADfh1Ue/0DJbGYjJU6BjCAHy3fgu9wcN
        +xjFrm9BXO/14XuQklWzgMebH5/8
X-Google-Smtp-Source: APiQypKxlHQVfls7vFGdYyQEZcxFl5VwYZwpptp+xtELmyiECcmtrt72TU3OB4oxjgI0lu87xtRwGQ==
X-Received: by 2002:adf:f0d2:: with SMTP id x18mr14793150wro.259.1587325691943;
        Sun, 19 Apr 2020 12:48:11 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:3351:6160:8173:cc31? ([2001:a61:2482:101:3351:6160:8173:cc31])
        by smtp.gmail.com with ESMTPSA id m188sm6572328wme.47.2020.04.19.12.48.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 19 Apr 2020 12:48:11 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: Errors in man pages, here: wavelan(4): Typo
To:     Helge Kreutzmann <debian@helgefjell.de>
References: <20200419064836.GA32655@Debian-50-lenny-64-minimal>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <79cf0bbe-7972-9491-241a-08d6cdf0a8ac@gmail.com>
Date:   Sun, 19 Apr 2020 21:48:11 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200419064836.GA32655@Debian-50-lenny-64-minimal>
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
> reuse → reused
> 
> "Set the network ID [I<0> to I<FFFF>] or disable it [I<off>].  As the NWID is "
> "stored in the card Permanent Storage Area, it will be reuse at any further "
> "invocation of the driver."

Fixed.

Thanks,

Michael



-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
