Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3AD171AFD61
	for <lists+linux-man@lfdr.de>; Sun, 19 Apr 2020 21:22:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726377AbgDSTW1 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 19 Apr 2020 15:22:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42184 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726201AbgDSTW0 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 19 Apr 2020 15:22:26 -0400
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3E1F4C061A0C
        for <linux-man@vger.kernel.org>; Sun, 19 Apr 2020 12:22:26 -0700 (PDT)
Received: by mail-wm1-x331.google.com with SMTP id y24so8876916wma.4
        for <linux-man@vger.kernel.org>; Sun, 19 Apr 2020 12:22:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=L296pi8d93ax7kjzb5+AJSYZ863N4Xt3F+fubIBZ5WA=;
        b=R2463sp9Qw4C2Mxrg0wSw8w25sjuei3O3VaA1siqbGEH4gLYocbxuEB2BPxWj9clgR
         sHzZ64SoLal9mEerNE+i49gmHfPfUNirLqEWSaMmw+3FIN8pwGmcH6U6p01oo7VulZFW
         ZBoSqUwPJE5BLC9tDsd9sVZkfMJfDm+CUdbAVfgrGNn1tqDfFoiJ1z8RYPjqqlvPpKL5
         MXEkeOSA81Fl+zkZ6cOo/cta/0t1l1QkiACZ3eSFgIqq2MaOcrn6jUI3ZrKrDocwEr8k
         7tjbrjG7Oat+hIGyIqVIv5XfMN3EK/rU7bSwVOT77b5lOBkwNObS61dOpXZ6vKXH39mm
         hP9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=L296pi8d93ax7kjzb5+AJSYZ863N4Xt3F+fubIBZ5WA=;
        b=G8vaoubxPXK6M8JnFz6DS/JYAIFjvi1TdQEx5tM6o++WV5o2BL9F57GDwQYQNfpYJf
         Y8ughLp1qqpu4h3lHTLQy8PRervCtjMhHRZ1Je/qtA6ujPU1R+P2Mw4XYVbKZO0r0rfg
         tLOb1zh+8R5DDJzbGq0Gl6CdIhOgZiRWMPx939ID5P9yzKEqm0mfHghgakB93OkpWkM+
         mjAXg9hnJ2rtAAB934wwxH6iafCN9px7MtifNRtfLqM3Q8E24JMt12MzGOwWngsPo6Y9
         3fu5fsN9z7TDzsByIXFqdnx4vHHZqK32wrn/VF0l0x+a02e1kEEkV8HcoIchLjcMBeYL
         EcNQ==
X-Gm-Message-State: AGi0PuZffNTH4KHo/dnq/WdapjB2wH+3eCBkulpmbGa+jLWWK5ari26R
        IvgK53T4zMj5yyY6J4fSRYzoXEI6
X-Google-Smtp-Source: APiQypL4vg+MIlPV3S3RTdrVpBRl4tvj/rWeJoLSSdsDZxQmw7JpsZgJO/0GQRIkbXWEQKZm82fiJQ==
X-Received: by 2002:a1c:9e51:: with SMTP id h78mr370990wme.177.1587324144811;
        Sun, 19 Apr 2020 12:22:24 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:3351:6160:8173:cc31? ([2001:a61:2482:101:3351:6160:8173:cc31])
        by smtp.gmail.com with ESMTPSA id h137sm17479194wme.0.2020.04.19.12.22.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 19 Apr 2020 12:22:24 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: Errors in man pages, here: capabilities(7): Spelling
To:     Helge Kreutzmann <debian@helgefjell.de>
References: <20200419064750.GA30023@Debian-50-lenny-64-minimal>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <ee26d042-d1bd-2c54-7a7c-667078c436dd@gmail.com>
Date:   Sun, 19 Apr 2020 21:22:23 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200419064750.GA30023@Debian-50-lenny-64-minimal>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
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
> Two issues:
>   a)  s/Extended/extended/
> msgid ""
> "perform operations on I<trusted> and I<security> Extended Attributes (see "
> "B<xattr>(7));"

Changed.

>   b) user IDs → user ID

No change. Nothing wrong that I can see here.

Thanks,

Michael

> "I<Note>: according to the rules above, if a process with nonzero user IDs "
> "performs an B<execve>(2)  then any capabilities that are present in its "
> "permitted and effective sets will be cleared.  For the treatment of "
> "capabilities when a process with a user ID of zero performs an B<execve>(2), "
> "see below under I<Capabilities and execution of programs by root>."




-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
