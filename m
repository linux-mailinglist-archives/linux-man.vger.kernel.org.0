Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1B3E01B01CF
	for <lists+linux-man@lfdr.de>; Mon, 20 Apr 2020 08:50:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725815AbgDTGun (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 20 Apr 2020 02:50:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34812 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S1725773AbgDTGum (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 20 Apr 2020 02:50:42 -0400
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com [IPv6:2a00:1450:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 99FB6C061A0C
        for <linux-man@vger.kernel.org>; Sun, 19 Apr 2020 23:50:42 -0700 (PDT)
Received: by mail-wr1-x444.google.com with SMTP id k13so9466730wrw.7
        for <linux-man@vger.kernel.org>; Sun, 19 Apr 2020 23:50:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=9J9KttFSBwiqThVlau0JYaoNZ9B8tmnj00sGwXcZWkI=;
        b=eUoSmtzaMdvuq+D0j3US1ZVqGnfJ7m+xVgJp8kXunzOdsQqgHPhBJeiCZzBFceE84m
         6xenBHvRqxvuETsgnqbbfjbxohl6CeWn5QKGJsDoePPs3y0bxnWlZG3n/SkxWjc+vvy/
         6wqSnN9pZnpDAr1nuv5ERWeDDBWVPWfPWuEWF37yZKBeS3Yc7I8kzXZDy+Vt1ebs6G1Y
         mNrxsnN/EnLtMCUWY+BrrntOHxtj65l/zrszVvuTc0RCrh1MQNpQr10N24fwdcFsa/Px
         6zRkjmOp/8Vs6gy/kkWkBM4xmXpewGbHL3fTTBbJ2C6Lx8+saXDnO2f9dAzjS/NdtHpC
         khSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=9J9KttFSBwiqThVlau0JYaoNZ9B8tmnj00sGwXcZWkI=;
        b=cI1CQ3Y5MvQ1z+vBme9WLFkFBOdfWBjIweReaMQIdrIlAnnfH/+ZEUQAC3WxesRahC
         2cggnObQfmJtU45Jxs4V672P2ZE6mjpQDmewERqXxJO/D9Sl2uSXc8NJXmu8q57tF1Sc
         7J7d5zgN8Zbazt+Cr99q8JDRi9eYby/4L1b4xSj/iTupQhEOb5fsDpU9gynTXzQFAGUy
         3EI4+IuKfNG+VMoTLNTO1wFJo/YCxgtKZFrkKeQMUyYQe8fRR3m5AI9MIGyhZ2jCOoDX
         KOxRlReuJ8fxvQ7p2EVvFhQqDBzRFkKnSd6ciW0egGnlUPvZ2dS8UW14foQWB+S9D0oe
         lRYw==
X-Gm-Message-State: AGi0PubS4epc1iS6zuJDlc55pvIpu9mYV/COjeLeZ1N+gd/OyXZX+qP1
        ygCg07rj861re/XDn9x99p3SAqWC
X-Google-Smtp-Source: APiQypJC/afVWI+SU2IdKeZi5Qy+bn3Dfpb3oi9XyMfja3hNBIsb4p0wInfuJvAgLCZhne42l1O5fQ==
X-Received: by 2002:adf:84c2:: with SMTP id 60mr16694785wrg.65.1587365441205;
        Sun, 19 Apr 2020 23:50:41 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:3351:6160:8173:cc31? ([2001:a61:2482:101:3351:6160:8173:cc31])
        by smtp.gmail.com with ESMTPSA id t2sm81027wmt.15.2020.04.19.23.50.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 19 Apr 2020 23:50:40 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: Errors in man pages, here: exec(3): Wording
To:     Helge Kreutzmann <debian@helgefjell.de>
References: <20200419064758.GA30446@Debian-50-lenny-64-minimal>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <48e91a45-a58e-7473-87b9-656a6500163e@gmail.com>
Date:   Mon, 20 Apr 2020 08:50:39 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200419064758.GA30446@Debian-50-lenny-64-minimal>
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
> The translator in charge wondered why the term "frontend" is used here 
> and not the term "wrapper", because this function calls another 
> function. He also cites the (German version of)
> https://en.wikipedia.org/wiki/Front_end_and_back_end
> 
> "The B<exec>()  family of functions replaces the current process image with a "
> "new process image.  The functions described in this manual page are front-"
> "ends for B<execve>(2).  (See the manual page for B<execve>(2)  for further "
> "details about the replacement of the current process image.)"

The wording has been this way for decades (the page is taken from BSD),
and I think the meaning is clear.

That said, it would not be my first choice of wording. I've changed it to
"are layered on top of"

Thanks,

Michael



-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
