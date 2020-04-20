Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 03E8A1B053C
	for <lists+linux-man@lfdr.de>; Mon, 20 Apr 2020 11:06:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725971AbgDTJGy (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 20 Apr 2020 05:06:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56006 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S1725775AbgDTJGx (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 20 Apr 2020 05:06:53 -0400
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com [IPv6:2a00:1450:4864:20::343])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 64B8DC061A0C
        for <linux-man@vger.kernel.org>; Mon, 20 Apr 2020 02:06:53 -0700 (PDT)
Received: by mail-wm1-x343.google.com with SMTP id e26so10087580wmk.5
        for <linux-man@vger.kernel.org>; Mon, 20 Apr 2020 02:06:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=wlBfngz4oc8qx1BRl1YxMODJOoces8sukgxVDatMKXk=;
        b=JFcshBbjQeJpqNLQch5R6OLLekwe9ydQWm4ktQ+Dr79z8k6C3TZsP8yEp/pPlhp2wZ
         f0ty0zgg3MNdwXXFc0xp2ae5RTZZpGr9HDgJOOtyK+J+S57+hXIsUNjYHFEFFI7+xqzj
         GsDUkv//Td6pUTkP05PuMtxxM2Ze66vxtQJbiVorlKhIkvtF/3QWXV+MjM3vQhoyGzzc
         TjDrWXkudX0VNGwAnultWOkWu7nh8dDrK/eExNCgZkRfeZR7Dc4CZeqtzQpSrBL1H9Jj
         +Tw+v2KEPC37Nyprp8zH9eQ+8rVHzQeGbI985o8Xc4oOgxIMf1RzxfL7S944DGovD18K
         M66A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=wlBfngz4oc8qx1BRl1YxMODJOoces8sukgxVDatMKXk=;
        b=BnLkah65OHl+Y1AtWALiHtIc78o0KvtAvehD8CdIksHO4omn/tkSjWJgV10aaPDhD1
         6Qao66a3X69SI8bRIWhqAHlUh4eW/5u1+9p9QXb2GxjzdBiGTW+r1vY8GiHU2c0CGJtZ
         Z9jOCp8OtR/89GpvaWkGNNwXz8PPGugazJAVNqdO8JpjYz8AEtiVxafrcF2vLHa1lWZL
         8oBqD/xOh1ymsyZlnL+t6bHcqcaU4d8ROgjUuqlBY+sF5nxoyhXCCHNOIJd5A2K/w0Yl
         dzlvqQMWV+uGbnM7E70+ZfW3mtVuVzE2XugtAn3gUY9UeYJcdw93dwongwfbbbc9JjFZ
         TidQ==
X-Gm-Message-State: AGi0PuZpfw2HIDj114m9h+a3l/rBbDaurRMGmbZZkTEiJ/vDR2Q/fdPU
        /a6UAoR8UCFv+rDZKC4fkOcIm2Vg
X-Google-Smtp-Source: APiQypLR+fL5W9UAvGBQkrRk/LELUoCYUSyyIeS2dTCKFXtsgxN0zeRRhejA+nnBOjabDymZ+IEKYw==
X-Received: by 2002:a1c:384:: with SMTP id 126mr16675717wmd.58.1587373611970;
        Mon, 20 Apr 2020 02:06:51 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:3351:6160:8173:cc31? ([2001:a61:2482:101:3351:6160:8173:cc31])
        by smtp.gmail.com with ESMTPSA id 91sm371007wra.37.2020.04.20.02.06.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Apr 2020 02:06:51 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: Errors in man pages, here: proc(5): Missing full stop
To:     Helge Kreutzmann <debian@helgefjell.de>
References: <20200419064816.GA31464@Debian-50-lenny-64-minimal>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <39451d91-6c62-175f-4a1c-c0c71c05d1d2@gmail.com>
Date:   Mon, 20 Apr 2020 11:06:50 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200419064816.GA31464@Debian-50-lenny-64-minimal>
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
> Missing full stop after "region"
> 
> "This file contains information which is used for diagnosing memory "
> "fragmentation issues.  Each line starts with the identification of the node "
> "and the name of the zone which together identify a memory region This is "
> "then followed by the count of available chunks of a certain order in which "
> "these zones are split.  The size in bytes of a certain order is given by the "
> "formula:"
> 

Fixed.

Thanks,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
