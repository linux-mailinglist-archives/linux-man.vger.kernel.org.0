Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 693801AFDA1
	for <lists+linux-man@lfdr.de>; Sun, 19 Apr 2020 21:45:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726513AbgDSTp3 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 19 Apr 2020 15:45:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45730 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726472AbgDSTp3 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 19 Apr 2020 15:45:29 -0400
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com [IPv6:2a00:1450:4864:20::441])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 142F2C061A0C
        for <linux-man@vger.kernel.org>; Sun, 19 Apr 2020 12:45:29 -0700 (PDT)
Received: by mail-wr1-x441.google.com with SMTP id g13so7487432wrb.8
        for <linux-man@vger.kernel.org>; Sun, 19 Apr 2020 12:45:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=c26YuWPV0sqey2RdcAWMX0rizNoRwJMSBw7EIQatRZo=;
        b=GuS5p7pdTt+vJFx8DXwrE5Yo+iyeZE9V9lSygQtMC4jNDm7u2SQWJXq51/7VYgUeS2
         N1Uq7Ie3qvJ2a0bbiSQZvEot1AHzozVf9ZvNsX2kcvAYpm/VNRxMJHF5+cY1o+PEUZy4
         RqmEx2ovJI3nsdLUTKSV0KTP1H7KbwEa53/mPtDEH/sXOg6K0GmZ38URMNO/nqyfYrex
         cIRZgggMp0xus8nEG8YqSHl7MMSGYbzEGg+qdN4ttVjcsOrQhBxa/NN8ghd+g66HVHo5
         fN8gWKvzU90FwAh9LCpucoxBQ9wGXUbTPMvk48Bjy0CZZwQFdySv1yQScWQGMjgxRJAw
         Psng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=c26YuWPV0sqey2RdcAWMX0rizNoRwJMSBw7EIQatRZo=;
        b=jP5oxFwLDsWzma27vSy3OPP2/vau1El1UIfDgtxIKU8OIPZpqtuZTnvdzZtuw0hagA
         H9q9+iYXiWbKl2kgK298FGe3bS7BZnB0U6UuaXeHZbFR8JsAT4UxQaMc2jhQd62j3yPI
         DkokLsZ8irC090yLfbUiIFMN9efqcP33ORIQsT3wuJZtzaIJ9+qFTgmXoCGMTP2eNhe+
         osyO/I/xzaarutAoCS9CUMFlFQfW0FrQq0+SGH7oXZFHa6bUUAEcG565WF4dXqXyU6KC
         ZT33lWSaSuHhfwaASkcduaf8RbDqlFiow84/oFIscmMeJ44qO3cc7Cm6mHbq3SNjATkS
         PxPA==
X-Gm-Message-State: AGi0PuZvO7jcb1Jzzl3RgdGb8a3E/o1iZ5RzYV5hSFzZqu9qByJBKTJU
        KWndj9qkcDlfJFhFRmq+acZKOhij
X-Google-Smtp-Source: APiQypLqPAVmBheqDFnM/Mc79mF3XPXrkrfQyGnxMZ3ojF1690980iefUfkm3EM5wMAUQgXnk2a7dQ==
X-Received: by 2002:adf:ee05:: with SMTP id y5mr14417580wrn.176.1587325527633;
        Sun, 19 Apr 2020 12:45:27 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:3351:6160:8173:cc31? ([2001:a61:2482:101:3351:6160:8173:cc31])
        by smtp.gmail.com with ESMTPSA id g74sm16803116wme.44.2020.04.19.12.45.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 19 Apr 2020 12:45:27 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: Errors in man pages, here: x25(7): Superfluous full stop
To:     Helge Kreutzmann <debian@helgefjell.de>
References: <20200419064838.GA32748@Debian-50-lenny-64-minimal>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <27999bd1-6880-2fbd-388c-7e469f6f4b66@gmail.com>
Date:   Sun, 19 Apr 2020 21:45:24 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200419064838.GA32748@Debian-50-lenny-64-minimal>
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
> 
> **
> 
> Superfluous full stop
> 
> msgid "x25 - ITU-T X.25 / ISO-8208 protocol interface."

Fixed.

Thanks,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
