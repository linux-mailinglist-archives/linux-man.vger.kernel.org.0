Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E2F391B0166
	for <lists+linux-man@lfdr.de>; Mon, 20 Apr 2020 08:12:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725872AbgDTGMz (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 20 Apr 2020 02:12:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57236 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S1725780AbgDTGMz (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 20 Apr 2020 02:12:55 -0400
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com [IPv6:2a00:1450:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 95378C061A0C
        for <linux-man@vger.kernel.org>; Sun, 19 Apr 2020 23:12:53 -0700 (PDT)
Received: by mail-wr1-x444.google.com with SMTP id x18so10619583wrq.2
        for <linux-man@vger.kernel.org>; Sun, 19 Apr 2020 23:12:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=TBa/V791BpM1hK31mMbhr/Fazp1qaa7yRRQsIk2PO9M=;
        b=TAX7P/TZBDa9QImqLVmU4+aUjC1aLt3Xks8KVvwY6JvePimxKr3nYOTSGx3zF+ukLm
         7LGwXSYwN5rraJsvLNTEtkC+h3V5VRKDP/lrs0KcgmIvk6Xj6u4RfmM6uFP2dQZFIJCp
         TAu4gtTbraU+5kAp4KRlwF84H5ak2iBIkhu3qijn+fxwVlLeq5XB2IjJNRgAKk/Lyr67
         HlWeNsEStxt0cv4SSwRzzr7jzy6/Lqerbo7oXvXSTSKuL7+8bXmAjl+AzN8fHMXN13cU
         xyaf7mdRGnrabuOPHgLtPPKx+e9GwxD0ArhYEliANas1TFCiCLriMSF89cNtu51f1n9e
         KDww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=TBa/V791BpM1hK31mMbhr/Fazp1qaa7yRRQsIk2PO9M=;
        b=iuK9MIu9uBnk5ntKCHDsiXaEuVqRGlWzXARHrnTAFXFyh+BMIuOA3nXFpAw77O75fL
         xWbWWddgP9zKn/4bxCDStAYN96UgCAhHdT2jVyZt/9fRq1zCwAYjLSVksyfatDwGGnRB
         XNOXbUTlZ4nCNZWabSbp0vaXXl0OuY93WB9nnUdFRB2hx9ULTbivuDmDkhWzbuvF9wRd
         EZPBrqtplrdNEgqdGvS/8/TiKSOmsdMzP8sIhkKzTKdU/kHIiMVYRsUzfchacMZCVwO+
         wk5xU2tfdgEZyBeBBcU4kopEtQpwSFE0AUYqzYBTT2viyetRVNfE2g69qmje1U/gW0l6
         i2nA==
X-Gm-Message-State: AGi0PuYJ6iKJz+HbVTtvKJ5AFqs7eOnWzTyfcy0j6EOg1FXfQUi4ZfA7
        TxrGuww2foaTl1Xi5bnT/i8xd9AI
X-Google-Smtp-Source: APiQypK4mNecqwudjEuai9wURmUV+cdtcwMfeYIEqJzWfLyD4ADiKj/VOO2WeBShPeYed8CpYQy2GA==
X-Received: by 2002:adf:e986:: with SMTP id h6mr16680330wrm.256.1587363172214;
        Sun, 19 Apr 2020 23:12:52 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:3351:6160:8173:cc31? ([2001:a61:2482:101:3351:6160:8173:cc31])
        by smtp.gmail.com with ESMTPSA id l5sm17882525wmi.22.2020.04.19.23.12.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 19 Apr 2020 23:12:51 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: Errors in man pages, here: mlock(2): Missing full stop
To:     Helge Kreutzmann <debian@helgefjell.de>
References: <20200419064810.GA31162@Debian-50-lenny-64-minimal>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <482d357b-6b0f-2c99-d5b0-047f67b3fbc3@gmail.com>
Date:   Mon, 20 Apr 2020 08:12:51 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200419064810.GA31162@Debian-50-lenny-64-minimal>
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
> Missing final stop
> 
> "In Linux 4.8 and earlier, a bug in the kernel's accounting of locked memory "
> "for unprivileged processes (i.e., without B<CAP_IPC_LOCK>)  meant that if "
> "the region specified by I<addr> and I<len> overlapped an existing lock, then "
> "the already locked bytes in the overlapping region were counted twice when "
> "checking against the limit.  Such double accounting could incorrectly "
> "calculate a \"total locked memory\" value for the process that exceeded the "
> "B<RLIMIT_MEMLOCK> limit, with the result that B<mlock>()  and B<mlock2>()  "
> "would fail on requests that should have succeeded.  This bug was fixed in "
> "Linux 4.9"

Fixed.

Thanks,

Michael



-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
