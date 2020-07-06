Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 43C402155D8
	for <lists+linux-man@lfdr.de>; Mon,  6 Jul 2020 12:51:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728527AbgGFKvQ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 6 Jul 2020 06:51:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50138 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728525AbgGFKvQ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 6 Jul 2020 06:51:16 -0400
Received: from mail-ej1-x644.google.com (mail-ej1-x644.google.com [IPv6:2a00:1450:4864:20::644])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CEF62C061794
        for <linux-man@vger.kernel.org>; Mon,  6 Jul 2020 03:51:15 -0700 (PDT)
Received: by mail-ej1-x644.google.com with SMTP id w16so41842501ejj.5
        for <linux-man@vger.kernel.org>; Mon, 06 Jul 2020 03:51:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=/tmt/mapjlU/NrxE1PqXCuud2AiSjuoLGZdqKkE73Gw=;
        b=kEDp/s2fgZzvWwEfdxxnC5p6zfT/U8D0H/t6zlmF/EG3r2rMXWIiQZNzJvb5rZmsKp
         JfKIsXfPq/xctHwEFVWLghUOnBZyDdmniEunrd5jIBqq+bsdZ424MrRc1GHwRcxykNmA
         rIAURo/4ENtBGaCfIGCekbB9TCFYG/u+16mdTt7iFUiux85ci8/kbyShu9s3jdn1PeNf
         iQvAwBB7nEWGTsDD/N/BNNZEkSwVIU5eF2cQR9qfvAjCRxMC2D+Kj03FdRbyPaVkJ4jd
         KlMykJ5TIX9XPkrokkxNzO9gVcMfu2pZezno4bB9B8nueqQtARkcCQW0beHrZpLkxAzI
         Yp6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=/tmt/mapjlU/NrxE1PqXCuud2AiSjuoLGZdqKkE73Gw=;
        b=Z1UgPhbiGfWyfycs4v3/h/nm+gQ3PuF5onIkiZfcC5t1vZOcdjyjF5lu2J/879SWJx
         NPVzOlp6tKn86YMX5Q/4W5i/OJkhZbEaZ+0DoJFRUvBLDAxFv0ONKtiT2f6a5T0Geo/a
         lHLUfpCIFtUaQ8S/ePirX3/06BzvjHHagXwS4HCjboqCGDS2FldpagpNpBQYQveNR3PD
         I/uilvSfqfV76PcwL0pH9n/n4IAncdz5kzPmLnDaIk7rEJByBnC0/Adh7Lsl7poZuvvX
         KKnphP8w43KFHrZHma0Guz+0pict8A2hAYwvbwXB/U8+udpuvmPen8oy5zG3F1OAE1l7
         a6Hw==
X-Gm-Message-State: AOAM5337x39alXkcdfoEh/2f/UEPAyeElgWdwb88iCQKf4+sfrDozWxw
        pOOgtRZQb8XJyU3x6faM2/wP9h17
X-Google-Smtp-Source: ABdhPJyPtFH8HnwZ7UbXTB9EccOwwYv+/wuF9fVgEv5b/gp03SYjbjn7ZNFS3XVywruogRno9ryc1w==
X-Received: by 2002:a17:906:4685:: with SMTP id a5mr40523590ejr.46.1594032674317;
        Mon, 06 Jul 2020 03:51:14 -0700 (PDT)
Received: from ?IPv6:2001:a61:3adb:8201:9649:88f:51f8:6a21? ([2001:a61:3adb:8201:9649:88f:51f8:6a21])
        by smtp.gmail.com with ESMTPSA id z20sm22957951edq.97.2020.07.06.03.51.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Jul 2020 03:51:13 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: Errors in man pages, resolver.3: Typo?
To:     Helge Kreutzmann <debian@helgefjell.de>
References: <20200706101611.GA26790@Debian-50-lenny-64-minimal>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <a437829d-a3ef-e8f1-9d32-68f4743e4fb6@gmail.com>
Date:   Mon, 6 Jul 2020 12:51:13 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200706101611.GA26790@Debian-50-lenny-64-minimal>
Content-Type: text/plain; charset=windows-1252
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 7/6/20 12:16 PM, Helge Kreutzmann wrote:
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
> Man page: resolver.3
> Issue: 2x res_query? Shouldn't it be res_nquery once?
> 
> "The following functions are lower-level routines used by B<res_query>()/"
> "B<res_query>()."

Yes. Fixed.

Cheers,

Michael



-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
