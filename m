Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 363DD1AFDFA
	for <lists+linux-man@lfdr.de>; Sun, 19 Apr 2020 22:17:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725932AbgDSUR1 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 19 Apr 2020 16:17:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50718 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725905AbgDSUR1 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 19 Apr 2020 16:17:27 -0400
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com [IPv6:2a00:1450:4864:20::343])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 33ED3C061A0C
        for <linux-man@vger.kernel.org>; Sun, 19 Apr 2020 13:17:27 -0700 (PDT)
Received: by mail-wm1-x343.google.com with SMTP id u127so7892691wmg.1
        for <linux-man@vger.kernel.org>; Sun, 19 Apr 2020 13:17:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=jVx8H4WlJD89PfYNirhBs8Udh2b0gwEAlT3rKRC8RsY=;
        b=Kxlk+Rh2g2veTOoR11p/x/imdhwkSAeieGiCD74quD53cYKqma5F8nK++3Ai3LWXqG
         qIiROzS925hiubyCSRCoOyTLcg5TN+W/QbWLLvc9R9fdD5cMMhNeL0NaRw+w6BZYwCB3
         NS2vZs5NjBNfbaACp2yfNwWJSOLmjfiLeUMaIBHSY5QjGif5N2qmQHwwFySe1nZc7Hoe
         kj2xMeU1IW5lcsoKNQZej+KYMjbD94MxrK/iMlc7LLqAHZ9WqOPJ0vjlt3yg2jBoN74T
         vkozk0iONQdf6xFtVbXu5m/q8xGQLSP9lNzgPSeAfhP4B6T35Bk66Sh5IGVe9LChIzbq
         OXHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=jVx8H4WlJD89PfYNirhBs8Udh2b0gwEAlT3rKRC8RsY=;
        b=Fd444rc2kAlD43e06c/dsPsyWB1AiDoJdI5SVXkIlvdIfNCiJGo2UG4VPonA95xPzs
         a0FuDLqYe4ix3pSiVvkF4eaAa+i9LDZnJASB0cZzp9uoJTLFd2q9d83P6GM+ytrsrE/M
         7fT8rSsYEblyymKorJkQcikSfrwNlnkvGTdFZTdzUeyKEKVfd+feHj6oax8txFs0gRuD
         DlEbMNETR4gOmcIeqDUHXLBDiijLahjfEDyIwr8oGmkytCP3TNU9okOUZLSy3yLL3Xi9
         YmozQ5ruTwwhHZKlgoJEqe9ggovx0OU5AATQnj/5TbpDGwF/66CITAO4wgtKF3NH8599
         JnRw==
X-Gm-Message-State: AGi0PuYXLlaltKIgoGdwkl2I3fe3YIIeU8uFX1amM7EZ/idkrQG3fVJo
        AVfj4lc4vXOjbZH2cOJS0nFKHK69
X-Google-Smtp-Source: APiQypKyYV+q8+3wH/y+mPySGjZZ5ialTYa8UeCjOX3sTKVQH9SUvxvNniOiHCdBbBHsZVxnbwjaFg==
X-Received: by 2002:a05:600c:21ca:: with SMTP id x10mr13399863wmj.113.1587327445548;
        Sun, 19 Apr 2020 13:17:25 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:3351:6160:8173:cc31? ([2001:a61:2482:101:3351:6160:8173:cc31])
        by smtp.gmail.com with ESMTPSA id s30sm16271570wrb.67.2020.04.19.13.17.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 19 Apr 2020 13:17:25 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: Errors in man pages, here: st(4): Missing space
To:     Helge Kreutzmann <debian@helgefjell.de>
References: <20200419064828.GA32164@Debian-50-lenny-64-minimal>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <33bfaa68-07ff-b524-7c02-79c2afe6301b@gmail.com>
Date:   Sun, 19 Apr 2020 22:17:24 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200419064828.GA32164@Debian-50-lenny-64-minimal>
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
> SystemV → System V
> 
> "When this option is enabled, the tape devices use the SystemV semantics.  "
> "Otherwise, the BSD semantics are used.  The most important difference "
> "between the semantics is what happens when a device used for reading is "
> "closed: in System V semantics the tape is spaced forward past the next "
> "filemark if this has not happened while using the device.  In BSD semantics "
> "the tape position is not changed."

Fixed.

Thanks,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
