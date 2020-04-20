Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EB3DD1B0331
	for <lists+linux-man@lfdr.de>; Mon, 20 Apr 2020 09:37:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726020AbgDTHhH (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 20 Apr 2020 03:37:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42030 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S1726017AbgDTHhH (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 20 Apr 2020 03:37:07 -0400
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com [IPv6:2a00:1450:4864:20::342])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0E757C061A0C
        for <linux-man@vger.kernel.org>; Mon, 20 Apr 2020 00:37:07 -0700 (PDT)
Received: by mail-wm1-x342.google.com with SMTP id x25so9824906wmc.0
        for <linux-man@vger.kernel.org>; Mon, 20 Apr 2020 00:37:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=vXDCRPq9Q1mjr1mPTJBrgVHHOIpg8ybHDt2CrElTyM8=;
        b=ZAAOpYpCOmN3ujAFbw+cXh2ecQgmqiDQ6kow7zZly4sCEcTYc8nKPeukga9F+FuPtA
         hgvqXyjVgXq1SGVZv5/Cl5eLLZzQEEnRNNoyk5/YCKhu6q098oSQ96Bd6zojImxiZrdN
         Ofl4elNvLDRWskk3YrxWWOXFRNbz0avfw+QXRi0a8iC6Hd4dQmTOQk3tPcpAqHdKAqcc
         BhUP8Jc3QkIkHqnxWRIaod2iwqPEkMVj4rTVkJWsszW7j9/LvA+a6QqnoszfkCIDl5GB
         YKgxAqr95v7irXGFR7IhQ1G077SjBIqyPN4WCySullZZ84eRhoEFK83WcfIlYCrfI50d
         lJ0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=vXDCRPq9Q1mjr1mPTJBrgVHHOIpg8ybHDt2CrElTyM8=;
        b=cPRNYUJIrl32o7CNWqOiT8IJ/3H7lteszhO1BHYOf0yUQ/+VAoC3od1zgaCJmrmEuv
         /V7NZcCbG2d3+2qYS46aYNQrSVdfCYxxE1p5yqNTXFLW3YNFScApkWE7VmNfJcvs878H
         pQ2m0s69SydzNKBUnkj8WMiy2yG4x0i4dPSWFkNrab8FFtnld2Dvnvv1QNKJLNMZMSZ6
         opWWQpHDtQkvk6OsE/gnoT319SVP2FIHEsGIhl6W6G8PPCmPTzBKlkVX1lmuCH54sTJ9
         eVIZ4OAFnUcfb15x/yFo6NaTKnOMwvYU3cHE3B4YhCN4W9/nv8pcLjKzGLna4iK0S65R
         39lg==
X-Gm-Message-State: AGi0PuY9XB/TOJ5tn5g/WlOUqo09iOXp87eTEolbVEf1CStP0o1UPkxx
        Qz0Ub/a5ANAyCig7O9K9EHc9tRqj
X-Google-Smtp-Source: APiQypJ+by9jSC6gn5Vjo8w+s7O/yKZJ2M0T8UlBavcfQyUtLHyLzqdKV1l1QErgwSCzlfDwlbjfAg==
X-Received: by 2002:a1c:2042:: with SMTP id g63mr14142978wmg.70.1587368225609;
        Mon, 20 Apr 2020 00:37:05 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:3351:6160:8173:cc31? ([2001:a61:2482:101:3351:6160:8173:cc31])
        by smtp.gmail.com with ESMTPSA id y70sm228631wmc.36.2020.04.20.00.37.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Apr 2020 00:37:05 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: Errors in man pages; here: man-pages(7): Capitalization?
To:     Helge Kreutzmann <debian@helgefjell.de>
References: <20200419064809.GA31070@Debian-50-lenny-64-minimal>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <5525b90d-37d7-210e-2aa9-40df62eda242@gmail.com>
Date:   Mon, 20 Apr 2020 09:37:04 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200419064809.GA31070@Debian-50-lenny-64-minimal>
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
> Section → section?
> 
> msgid "The manual Sections are traditionally defined as follows:"
> --
> "B<NAME>\n"
> "B<SYNOPSIS>\n"
> "CONFIGURATION      [Normally only in Section 4]\n"
> "B<DESCRIPTION>\n"
> "OPTIONS            [Normally only in Sections 1, 8]\n"
> "EXIT STATUS        [Normally only in Sections 1, 8]\n"
> "RETURN VALUE       [Normally only in Sections 2, 3]\n"
> "ERRORS             [Typically only in Sections 2, 3]\n"
> "ENVIRONMENT\n"
> "FILES\n"
> "VERSIONS           [Normally only in Sections 2, 3]\n"
> "ATTRIBUTES         [Normally only in Sections 2, 3]\n"
> "CONFORMING TO\n"
> "NOTES\n"
> "BUGS\n"
> "EXAMPLE\n"
> "B<SEE ALSO>\n"

"Section" is intended here as a proper noun, and hence in capitals.

Thanks,

Michael



-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
