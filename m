Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EDB421B05EC
	for <lists+linux-man@lfdr.de>; Mon, 20 Apr 2020 11:48:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725886AbgDTJsl (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 20 Apr 2020 05:48:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34218 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S1725775AbgDTJsl (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 20 Apr 2020 05:48:41 -0400
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com [IPv6:2a00:1450:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D4B02C061A0C
        for <linux-man@vger.kernel.org>; Mon, 20 Apr 2020 02:48:40 -0700 (PDT)
Received: by mail-wr1-x444.google.com with SMTP id u13so11307326wrp.3
        for <linux-man@vger.kernel.org>; Mon, 20 Apr 2020 02:48:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=8GGZG+jSkea3fyf1aICddx89eBqBkrug8k4K/GM9Rlc=;
        b=vXg8H7/NClGiUQovSBWcKqXF8qIOcUZmvnt9ugahurVPsVjstX6nrBccnEbB9mh8+v
         S1BrLRvF+t1djLt96Zu5YK6SHP3apYR5wm550m8SiBj6BZET0vUvWxi0WNWRRd17mA10
         jWvROmzp20wYN56umgasjkFf7ifqMbw/rApysWpXtkFgr/107x0666KarrSDgwJ3ZSxh
         ApF6EenfxewTI20THNF6SbZNAtSSnAqxbXDl9jsOjQ4/MhL5ugbg5TEhft1uK93vW3Y5
         vdwBM1psRxxm+tystz6/6SphUgCDAsXNPv1otNoaZYe/bVULNEMIrZFa3rWRIIvibY1J
         YO7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=8GGZG+jSkea3fyf1aICddx89eBqBkrug8k4K/GM9Rlc=;
        b=Yl50Xdtl188K5YmIWqnurh4Ay6BbZurIVXwR76v09w6/gyjmTGFKF+z3mhkDp4yfQn
         /JvL+ZO6WrKdzoqqdg4J65xEjFoA31jXEx59EsgxytE0G7OMjh4uRmlH8/xZveS8jQ/B
         cOdyhFuMG13eB+epLW+J3916fqgYUVnwq/51rtOaYF/cHZP98MPkekxQ8zMMJjoPedT0
         ne7ESD1OHvQl1Iw72lTCIejx2e6WEDUp872KDqG4yEKg2QoCaJnu1xrq/adkP0f+0+rH
         aO6J6RdkAVklQcUPxPp8GWUps96hj8R13ipvCKv7KpAPX28aAL/RBR6WxKpWEmzmiLRp
         A11g==
X-Gm-Message-State: AGi0PuYUllXeDBPoiDdTZDilAxAyQwPnp1LPNnGGO7L+TfOrEEqbzdlq
        V77k49ljSi8JtTALl5nBJ5c=
X-Google-Smtp-Source: APiQypKzB8un/FbFmEAjPQXNAH+N47CVj+0tMulCJ77My9lqD1NYNaL219WmHRAEDgFmfQa6+tBYdg==
X-Received: by 2002:adf:fe44:: with SMTP id m4mr18987134wrs.188.1587376119534;
        Mon, 20 Apr 2020 02:48:39 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:3351:6160:8173:cc31? ([2001:a61:2482:101:3351:6160:8173:cc31])
        by smtp.gmail.com with ESMTPSA id v19sm496865wra.57.2020.04.20.02.48.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Apr 2020 02:48:38 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        =?UTF-8?Q?Kai_M=c3=a4kisara?= <kai.makisara@kolumbus.fi>
Subject: Re: Errors in man pages, here: st.4.po: Wording
To:     Helge Kreutzmann <debian@helgefjell.de>
References: <20200419064826.GA32071@Debian-50-lenny-64-minimal>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <9342d9e7-5629-6908-918a-44270d4e7b4f@gmail.com>
Date:   Mon, 20 Apr 2020 11:48:37 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200419064826.GA32071@Debian-50-lenny-64-minimal>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

[CC += Kai]

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
> media → data
> 
> msgid "Go to the end of the recorded media (for appending files)."
> 
> --
> drive → media
> 
> "B<GMT_WR_PROT>(I<x>): The drive is write-protected.  For some drives this "
> "can also mean that the drive does not support writing on the current medium "
> "type."

I am not sure of the above. Perhaps Kai can help.

Thanks,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
