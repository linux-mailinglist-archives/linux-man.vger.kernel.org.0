Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BC9481B0456
	for <lists+linux-man@lfdr.de>; Mon, 20 Apr 2020 10:26:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726124AbgDTI0L (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 20 Apr 2020 04:26:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49710 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726099AbgDTI0K (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 20 Apr 2020 04:26:10 -0400
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com [IPv6:2a00:1450:4864:20::441])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1CA2CC061A0C
        for <linux-man@vger.kernel.org>; Mon, 20 Apr 2020 01:26:09 -0700 (PDT)
Received: by mail-wr1-x441.google.com with SMTP id g13so8952193wrb.8
        for <linux-man@vger.kernel.org>; Mon, 20 Apr 2020 01:26:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=dV9sb9Nqw84VdKfOAOTwNLjbMVEtvuB/Scvxnlo4JK8=;
        b=hMJYPfm4dcaqEXlXU/YyhsQu914i4J5YrG15kk/IpPaDQfBZDjZYC4ca/ip3sReG1n
         iSNqJJ1Ei0Bu45Frq/n8w/iDDlbTlUrqswv5UEb/gb7fcvXnO4B3XlAqtETXFNcu6YGs
         iWdTk4b/wo7EftS136FstugapQDCPur3M/sgm4zYpYCUfbqy3UYW6kFUdqfxfDmiDt5S
         tHT1yi6Xy/Xyaw1iTcGKLqZpkPnek/UnQqI+f0zeIxRFTp5NhB2ABncRnlA6B2wd68/W
         wKD02PQA3N4cb0KnTrpg2t9je1Jb93nJkXHyCEXSQzOL3nCNrADaOESj6/CRuGhnhDLt
         qJgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=dV9sb9Nqw84VdKfOAOTwNLjbMVEtvuB/Scvxnlo4JK8=;
        b=KdqH8y2yw1sKCMuhBT+6anhiLpr2SSB3mfAL3C2QZKOykZ3Tku+ygOap9fVCfcBaTU
         NyTcd31D+0F82z3mnli7mjgurS7wmFBWTVELNwn27jiYbNwf6ourGQ9q1bumus7AgFYO
         Z1X9TV9+K3mLauowx7951U4fVWFXfmqwQ5ZUjtRyGJ3/nSpvQzw3VA7AyGCjgk/AtdOH
         Yiy6nvBom89WigDNXABBuJ4Qe66TM7KU5Pp4PRYu75W0Pj36r8UeD7ttipmUiY7UOTYR
         uJLUlIl03wyj6kneppGU56TC4ooekyEuJ79zn3wjJD+Jz7Mg7XqB+7oTt8SrUv85pM3E
         /Z/g==
X-Gm-Message-State: AGi0PuYckCeBNWhXtK8+HuwRLcuE9wzjHobjlXVKZ33S2oXjxg30bTZ5
        K4BQRI5ajhBvqkm9nOpIIBqAru0p
X-Google-Smtp-Source: APiQypKU5JkldQwabZwxODg4Jkk8vOo6VN67qlgrmwIAInmGI8BybeviwuMqkdECpScAP259LTaEPw==
X-Received: by 2002:a5d:4e06:: with SMTP id p6mr15976024wrt.35.1587371167654;
        Mon, 20 Apr 2020 01:26:07 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:3351:6160:8173:cc31? ([2001:a61:2482:101:3351:6160:8173:cc31])
        by smtp.gmail.com with ESMTPSA id o129sm413007wme.16.2020.04.20.01.26.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Apr 2020 01:26:07 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: Errors in man pages, here: signal(7): Wording
To:     Helge Kreutzmann <debian@helgefjell.de>
References: <20200419064824.GA31956@Debian-50-lenny-64-minimal>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <b9cc503c-c302-2675-ba76-3d4b7ee6666e@gmail.com>
Date:   Mon, 20 Apr 2020 10:26:06 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200419064824.GA31956@Debian-50-lenny-64-minimal>
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
> Current wording hard to read:
> 
> a)
> "\"Input\" socket interfaces, when a timeout (B<SO_RCVTIMEO>)  has been set "
> "on the socket using B<setsockopt>(2): B<accept>(2), B<recv>(2), "
> "B<recvfrom>(2), B<recvmmsg>(2)  (also with a non-NULL I<timeout> argument), "
> "and B<recvmsg>(2)."
> 
> b)
> "\"Output\" socket interfaces, when a timeout (B<SO_RCVTIMEO>)  has been set "
> "on the socket using B<setsockopt>(2): B<connect>(2), B<send>(2), "
> "B<sendto>(2), and B<sendmsg>(2), if a send timeout (B<SO_SNDTIMEO>)  has "
> "been set."

Please explain the problem in more detail.

Thanks,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
