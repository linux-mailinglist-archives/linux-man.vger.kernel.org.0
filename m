Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C99381B02E1
	for <lists+linux-man@lfdr.de>; Mon, 20 Apr 2020 09:27:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725994AbgDTH1N (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 20 Apr 2020 03:27:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40478 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S1725815AbgDTH1M (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 20 Apr 2020 03:27:12 -0400
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com [IPv6:2a00:1450:4864:20::344])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 36319C061A0C
        for <linux-man@vger.kernel.org>; Mon, 20 Apr 2020 00:27:12 -0700 (PDT)
Received: by mail-wm1-x344.google.com with SMTP id u127so9015962wmg.1
        for <linux-man@vger.kernel.org>; Mon, 20 Apr 2020 00:27:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=Bu0B7F4lcUg3nPEgdPP50luelEtxCjfnkapXDyDwdyk=;
        b=SYC69YTLj1uJ2WvBeV8asCsZbn8K+e4h3J9AXAuApTNTB4cpi9HjA9XrNGLBhkvXOk
         8gmM6gW7t2SZg/tWS8LfZg94pbpWes8JUZiN6QBw9pHX9vBXCjPaAegXTuCSuuQcg2Jw
         dFbleI0TRlGiAhb2oVTRSJIEjgfSp/oUIlnofplFMuOYGpdgimHk5WkpEtrCmexdf963
         Kzz2yZjW1cnqEXf0lFOmTBhF8cxzPAjZpxSUYngdwXJqdb9AltXrUZaM6bXeGsC3HjMK
         3ewlaU7GwB0KD131Px4+Xsg6zSvTgIQ4a+9oE0Xj/JCfT1UC3v6pnVnkWl0hcIlRSdqk
         S7eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=Bu0B7F4lcUg3nPEgdPP50luelEtxCjfnkapXDyDwdyk=;
        b=Z/OFiQ2gbTgVljcwmh2fiLU4xNBKd0MwegXfUTs8Cz+trcEuEVo0i64cLyXmx2DIQe
         TvJq1uww+dwF1mp6ZX8iZ/Iyj+7O7CkqynMOAe3WuI+gTaS0Z2RJjlUvknYO3D+f3gjw
         8ALIakMVQ6cF1cHM668aRvVi3p5ko7hUKhOnLc9675ZajEVyzLqQEXoXh55jrbe5vtBI
         cqkv/qa6UFKDNddo1nQfCl6YUsqgEDQoaVQy+Nw1h2u+eNyGlNWx84EktnZqn5NVtDGP
         KcZewS7bLZ4PctsDuiVeDD7m1Hcre18VStgGhJII0VCiViHdwNDmxvlBFwYxmWluKGJj
         Z5wg==
X-Gm-Message-State: AGi0PuYW12u6P470UJm5D/f2GcLrTOH3YFfQcYAPotZ9tBf7eovt+uZS
        nSqA/xv+as9q51BNHw5Lohc=
X-Google-Smtp-Source: APiQypJrfZ1pFCnq2jp8fCKTBwlUKbXuVNQPo58/RNgprN1jDZqKDjAo4s/YKaCOvIWNu5Yxw/63mg==
X-Received: by 2002:a1c:4b16:: with SMTP id y22mr16201530wma.170.1587367630832;
        Mon, 20 Apr 2020 00:27:10 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:3351:6160:8173:cc31? ([2001:a61:2482:101:3351:6160:8173:cc31])
        by smtp.gmail.com with ESMTPSA id t67sm192844wmg.40.2020.04.20.00.27.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Apr 2020 00:27:10 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        Paul Eggert <eggert@cs.ucla.edu>
Subject: Re: Errors in man pages, here: tzfile(5): Typo?
To:     Helge Kreutzmann <debian@helgefjell.de>
References: <20200419064834.GA32494@Debian-50-lenny-64-minimal>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <149e7d6f-1c0a-400d-7c34-a1bd4d284bdf@gmail.com>
Date:   Mon, 20 Apr 2020 09:27:09 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200419064834.GA32494@Debian-50-lenny-64-minimal>
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
> UT → UTC?
> 
> msgid "The number of UT/local indicators stored in the file."

I think "UT" here is intended to mean "Universal Time", and as such
should not be "UTC". Perhaps Paul can comment.

Thanks,

Michael



-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
