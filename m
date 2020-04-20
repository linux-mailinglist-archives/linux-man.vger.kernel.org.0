Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 124D11B01A7
	for <lists+linux-man@lfdr.de>; Mon, 20 Apr 2020 08:38:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726017AbgDTGiU (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 20 Apr 2020 02:38:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32910 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S1725815AbgDTGiU (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 20 Apr 2020 02:38:20 -0400
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com [IPv6:2a00:1450:4864:20::344])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 18740C061A0C
        for <linux-man@vger.kernel.org>; Sun, 19 Apr 2020 23:38:20 -0700 (PDT)
Received: by mail-wm1-x344.google.com with SMTP id g12so9990368wmh.3
        for <linux-man@vger.kernel.org>; Sun, 19 Apr 2020 23:38:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=mr8mAHul/sXn15iZoxAUUVPKRCApwTlDpjwyB+l47aE=;
        b=bXpZUyMLVqz41iNJoi4/vONsoVNPHzeW/i58py0i7qKNFb11cQA3AnVIyJ3CSMakvr
         wNDcR01UmP2MMQXEwo9cLZYWzschJJoF5nS04nWHsHzvIjT9A1bFxfb0o67yK9Qb6G/D
         TaGEk7F1XODVFGaxUuwuBDl3yseI+H07nUv+Rbgh6pqZLFH1XBbR1CPuGvHpMLGIhjq3
         plozNF1RHxO0GR5a250Igy45/L9H5e4exq/ME1MV81ApM7xAyPxEW2KV9brxBjzbqdiZ
         ++Rxy6Z6CRHVAFNRQDruX4C5Kzy/ocKD/oTubHbl+Z56/Sj1W+OIu4B229/gQGcCwKdR
         Lwcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=mr8mAHul/sXn15iZoxAUUVPKRCApwTlDpjwyB+l47aE=;
        b=Ivxiy2h4n3bzqtly7vlMC3LTrwOMU009/l8aMM93d3cUTbPDyQN50w9nBh+0fsb4yO
         YMel9W8HUyTKl8SB5tA24tvnV4lZod0TCDhWxivceObaido4RRd0bGsIFkRGBK2pcC7Y
         e+EUGOBf+tL+a9/bP4mlQwwBvuEgoEY9rdboOOd9jze/PWBvg4Y5IJxdzUuQH3WU0Vvm
         5nvWD+QhG55mrcJMcqzHaN13Bn/Y1TW5rgoc0SW7YI+kjVoZksOt4s2M9XfxFH8OzElL
         WJDDjrdloGY7zeGUuByyUqpHBKM49XRF01+JtaBu+w9YEYhYSZ2F/X4t9cf1e2KjP3Qn
         U7TA==
X-Gm-Message-State: AGi0PuZ/xnU0ctsWNCgneJe1V5AM5s97YSy93GhHTxWPSGK62f4H3mJ3
        QXZjpuYUIn00cT51bTMjS4AqeId8
X-Google-Smtp-Source: APiQypIN6s4loPZRhOR8ZkhLO85fMEQ+gqEmuThm5YWL4XnrlmwKYsUbLv0WGY4zhdld50ArHN3mFw==
X-Received: by 2002:a1c:b38b:: with SMTP id c133mr15625648wmf.24.1587364698712;
        Sun, 19 Apr 2020 23:38:18 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:3351:6160:8173:cc31? ([2001:a61:2482:101:3351:6160:8173:cc31])
        by smtp.gmail.com with ESMTPSA id z1sm48873wmf.15.2020.04.19.23.38.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 19 Apr 2020 23:38:18 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: Errors in man pages, here: errno(3): Missing para break
To:     Helge Kreutzmann <debian@helgefjell.de>
References: <20200419064757.GA30423@Debian-50-lenny-64-minimal>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <a87808e7-eb8d-98fe-1e34-b5ce4e362494@gmail.com>
Date:   Mon, 20 Apr 2020 08:38:17 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200419064757.GA30423@Debian-50-lenny-64-minimal>
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
> Missing para break?
> 
> "I<C99>: The name is defined by C99.  Below is a list of the symbolic error "
> "names that are defined on Linux:"

Fixed.

Thanks,

Michael



-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
