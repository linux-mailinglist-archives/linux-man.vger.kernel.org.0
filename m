Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 003C91AFD60
	for <lists+linux-man@lfdr.de>; Sun, 19 Apr 2020 21:22:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726335AbgDSTWX (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 19 Apr 2020 15:22:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42172 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726201AbgDSTWX (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 19 Apr 2020 15:22:23 -0400
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com [IPv6:2a00:1450:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CD426C061A0C
        for <linux-man@vger.kernel.org>; Sun, 19 Apr 2020 12:22:22 -0700 (PDT)
Received: by mail-wr1-x443.google.com with SMTP id j2so9444463wrs.9
        for <linux-man@vger.kernel.org>; Sun, 19 Apr 2020 12:22:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=1oflysi4qfF6vyINOjiiFCoL74EM9gOF4eSvGLqGEIM=;
        b=npx8q3d5at/75NvvlrrTfGYYKVc5reZe25zKSMP7BVqrTLeZTSB2hYFFr/4suIyBrw
         BYXS55E1dL2f30NwXyPbRH14wJPUKpXNLSLRMroIr2qNjE/KOdZnDfNxS3cwC7Hel1/Q
         1nQriugfwcFXJipzkvEPjkny/DhKyD0lhHp18iielwfGPVme8Uy5HiZwPWup7qjmmJRn
         N6NDYlzz+b62VvSY7MGfXLi+WrluMNoDicK8PaPjCItEgAYrN01uE+Je470S4MF5UIF8
         jy9hGeNeQ9AdZIiRi1m0Y/NxSza4X+qSDqmU1/Rd5IMo0zFUAa0b33MtC7mXgQ/vOK24
         IAbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=1oflysi4qfF6vyINOjiiFCoL74EM9gOF4eSvGLqGEIM=;
        b=EK8KM/BACTuh5TupJTt+mqiB6hvNyJYl0DvRTNN7n590WrrbDujz5a9FGt5h+x5Lyi
         n1C8YdXzFdyE8+yzeIU2XyurGraMihNmW+KRtuqHiyq6ZKWMpMfW2R/yABnxzVao7Klk
         A+6j+FDIsgMNA9VzJhF4EzqDOmFaMndSea6SiS8R0rSbv3aGcltwJfQFDVORefj2UY3L
         qhwB8u2gRPEFkBXg3j2Wp9E5r5hDVp1ZBsZhMh+fQAuA71ggexuMOGqTE3nhjpG/HU++
         c2GULsDZrx+nNhDElidrQ2J6m0fZCYVrdbYL/gM1ism7SSCwTGpWhjHllJWaY3oobFB0
         mZNA==
X-Gm-Message-State: AGi0PuYT42jPXlXjtl0SUPxZbWyJQTV9fqyCBvqcqHPInGpMpWEYZ29c
        CsxhlPv0q/4S2Sk5nz5gPFRjqnUw
X-Google-Smtp-Source: APiQypKu36SXOgKVH4TU3oOwUj38NSJwgqy6sFWogvrboihqkJjONOZ4M2Zf3RgbGtQYjWbrCyLUVQ==
X-Received: by 2002:adf:f986:: with SMTP id f6mr14700821wrr.221.1587324140667;
        Sun, 19 Apr 2020 12:22:20 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:3351:6160:8173:cc31? ([2001:a61:2482:101:3351:6160:8173:cc31])
        by smtp.gmail.com with ESMTPSA id n2sm20392134wrq.74.2020.04.19.12.22.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 19 Apr 2020 12:22:20 -0700 (PDT)
Cc:     linux-man@vger.kernel.org
Subject: Re: Errors in man pages, here: charmap(5): Content
To:     Helge Kreutzmann <debian@helgefjell.de>
References: <20200419064751.GA30074@Debian-50-lenny-64-minimal>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <6f6508cb-7e81-8663-caf5-d431bc4301e6@gmail.com>
Date:   Sun, 19 Apr 2020 21:22:17 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200419064751.GA30074@Debian-50-lenny-64-minimal>
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
> UTF-8 in Debian Squeeze:
> 
> "is followed by the maximum number of bytes for a character.  The default "
> "value is 1."

I don't understand this report.

Thanks,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
