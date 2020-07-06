Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 21A3B21560B
	for <lists+linux-man@lfdr.de>; Mon,  6 Jul 2020 13:04:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728787AbgGFLEG (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 6 Jul 2020 07:04:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52148 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728739AbgGFLEG (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 6 Jul 2020 07:04:06 -0400
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com [IPv6:2a00:1450:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A453AC061794
        for <linux-man@vger.kernel.org>; Mon,  6 Jul 2020 04:04:05 -0700 (PDT)
Received: by mail-wr1-x443.google.com with SMTP id f7so37331334wrw.1
        for <linux-man@vger.kernel.org>; Mon, 06 Jul 2020 04:04:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=uB5pd+pIp2moUoF9o8F7VsL1KYcJ6wYROMXJqZ+B7v4=;
        b=L0e1ummZtyALThPFRmckRNfEvvByq+kF0NSZpoDSTuMJtC5soDVTr+dCP6WCmsd5lo
         lIIVEidZ7OJOfKxIzag3vq5z7GFErao3hHosu40UOHpwGX2SAF6sAoWBRgB7hAAfCqj7
         iMJNdjlrdxYfWeh5VWq1ooLztdlkl5HCZtxIyM5kGe8QyLP4X1/s2QWHxDHGBVcOQw3Z
         O7tpswozGfZxqQp9OBMecyua2JV7qEOO/D3RFTN9T1msCxe6Z9CiVB04SQXS7hRfVYay
         pRMBlwgGqK/jO0O0Ll3NgLyJkYoJWojeigAbrmVI1wrdrlZm0px02SRKL/b8pGK/KO3k
         Y4Rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=uB5pd+pIp2moUoF9o8F7VsL1KYcJ6wYROMXJqZ+B7v4=;
        b=h+xHcU2n/E9YQUMCt6EVCjLunmgcLY6xaFBmOWTXiuglEKfpjQt1UTG9xLd+N50L05
         cZSxrHnZVPLOxT+nrWCRYbz4aJQNMBKkJtZWdYMLDpSiCwUtwuZtuILwZSK5k/9EjfIX
         ienYr42+x+Fb22XqaXMqx6dIH8HcafZ6CcfFUz0kGB/rUW8BppSoqnpKOCfdXCFCkrno
         SGe/JZ+9OTvjTc3eDwruZ/rTsCVrOew+N7eSJNybYf2/XTwjCh0hTxPu1KI1XlJ9M/Ix
         TsYuf3TLOdi+1c+wrKpFKMWC9tRLk+aM8cqMVqIcCMD7vYwM6L6AQAeo8GidwghLFB2L
         5kRQ==
X-Gm-Message-State: AOAM532kYH3+/GEBgzh7wyDBLIAWFx2GcPg8EKCrO/FZj24cJqlwFEZn
        lNHqnEZHi1OGlArvF5/7jyt9+XQb
X-Google-Smtp-Source: ABdhPJyaKTqLJEWx06cxorWNsjiWGYDAf0ap+lDja/kOCwiSlOfM/FFJWkNeLu5rB90JPbcbwz901A==
X-Received: by 2002:a5d:4e81:: with SMTP id e1mr45576984wru.22.1594033444179;
        Mon, 06 Jul 2020 04:04:04 -0700 (PDT)
Received: from ?IPv6:2001:a61:3adb:8201:9649:88f:51f8:6a21? ([2001:a61:3adb:8201:9649:88f:51f8:6a21])
        by smtp.gmail.com with ESMTPSA id n16sm24515320wra.19.2020.07.06.04.04.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Jul 2020 04:04:03 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: Errors in man pages, here: resolv.conf.5, incomplete?
To:     Helge Kreutzmann <debian@helgefjell.de>
References: <20200706101553.GA26758@Debian-50-lenny-64-minimal>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <459f7150-9a63-bc3d-659b-8b0648e171b3@gmail.com>
Date:   Mon, 6 Jul 2020 13:04:02 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200706101553.GA26758@Debian-50-lenny-64-minimal>
Content-Type: text/plain; charset=windows-1252
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 7/6/20 12:15 PM, Helge Kreutzmann wrote:
> Dear linux man page maintainer,
> the manpage-l10n project maintains a large number of translations of
> man pages both from a large variety of sources (including linux man
> pages) as well for a large variety of target languages.
> 
> During their work translators notice different possible issues in the
> original (english) man pages. Sometimes this is a straightforward
> typo, sometimes a hard to read sentence, sometimes this is a
> convention not held up and sometimes we simply do not understand the
> original.
> 
> We use several distributions as sources and update regularly (at
> least every 2 month). This means we are fairly recent (some
> distributions like archlinux also update frequently) but might miss
> the latest upstream version once in a while, so the error might be
> already fixed. We apologize and ask you to close the issue immediately
> if this should be the case, but given the huge volume of projects and
> the very limited number of volunteers we are not able to double check
> each and every issue.
> 
> Secondly we translators see the manpages in the neutral po format,
> i.e. converted and harmonized, but not the original source (be it man,
> groff, xml or other). So we cannot provide a true patch (where
> possible), but only an approximation which you need to convert into
> your source format.
> 
> Finally the issues I'm reporting have accumulated over time and are
> not always discovered by me, so sometimes my description of the
> problem my be a bit limited - do not hesitate to ask so we can clarify
> them.
> 
> I'm now reporting the errors for your project. If future reports
> should use another channel, please let me know.
> 
> **
> 
> Man page: resolv.conf.5
> Issue: Shoudln't it be glibc 2.3.4 to 2.24? (See next paragraph)
> 
> "B<ip6-bytestring> (since glibc 2.3.4)"

Yes. Fixed.

Cheers,

Michael



-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
