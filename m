Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 273CF1B0203
	for <lists+linux-man@lfdr.de>; Mon, 20 Apr 2020 08:56:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725930AbgDTG4e (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 20 Apr 2020 02:56:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35720 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S1725815AbgDTG4e (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 20 Apr 2020 02:56:34 -0400
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com [IPv6:2a00:1450:4864:20::341])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A964CC061A0C
        for <linux-man@vger.kernel.org>; Sun, 19 Apr 2020 23:56:33 -0700 (PDT)
Received: by mail-wm1-x341.google.com with SMTP id g12so10033066wmh.3
        for <linux-man@vger.kernel.org>; Sun, 19 Apr 2020 23:56:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=1+26wHdakAnFR53uXTQrWRaZSRKaWZrnihyuw0F3c70=;
        b=ME52qYhfalODDQ3aB+RWYiydJF/yZ0kDB3LlAnxesXUVbG6+sOZOmjRgoNMPpQG9Qc
         OFRwGKe0GxBimNcrNhlpNLw19NgPLR0ojjii+U/wvLqaikTHEjxyoXY4WMgGfquNx2DY
         iSfpy9dYKGkmo5joWKvK7PBYunvTHmjc0iXS0JpAsn1LKBoyHlVi9arWW7P4TZ0yXDq2
         NOJntScmLlvoBqPVVRfRuvW5xeAUg7QN/Ir9H670RXpJU2RjwvC0AGH/qD7Pz/QBCd+O
         R/bhw3TamUcY7EnBL3woqTjTFksKM6ejgB4J7l+0Vw44BL/qpGDxWWHG8x8voWFd0JeD
         jNkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=1+26wHdakAnFR53uXTQrWRaZSRKaWZrnihyuw0F3c70=;
        b=o1M2jt8F9Kvrw48NjAaIXXrIOb6/0CwJn0Bi0g6GrUM1Hql9lQt5Kw7A6GeHkwz74P
         Q8YR+HeO/0PCAH38OdIfBcJXwOlo+rkkVxuZsjDZVBN7UWMu2J6Oq+vzoc/wIT8LXs6F
         qi06dh4cCpoy6Az6rDJBj6inrMz9Lp9+kkl5X35Xjdt3jYltkXtwKPyQdfaLkixBVSxU
         X37H+MU2wwsyAbPI2p8oqFXk0AW8RXJUcvO30MeBSHXXoGMLWDWckCZZg/GbBak+6Nq4
         nOlBwkCGNbhc2pDc4uxMR4HIR7NW6L7QJf8ahafTeBRSYkyv57+bXQALE+JRdvaRg4kv
         Trmg==
X-Gm-Message-State: AGi0PuYwRCby4IJdK0bZSF3p3Dp/KOY3TO+1cJmXQvojaNIriW/HJsdi
        g6IQBdxB7RFzb8nJXK6eIwTT8isX
X-Google-Smtp-Source: APiQypIk742u8kGrUnnTbgFe4Jir/QI59tY8xHsYBFxfISBinvWewh5XjfMWZRHxR4gwpQxGHzjfQg==
X-Received: by 2002:a1c:6344:: with SMTP id x65mr16332013wmb.56.1587365791973;
        Sun, 19 Apr 2020 23:56:31 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:3351:6160:8173:cc31? ([2001:a61:2482:101:3351:6160:8173:cc31])
        by smtp.gmail.com with ESMTPSA id f23sm124961wml.4.2020.04.19.23.56.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 19 Apr 2020 23:56:31 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: Errors in man pages, here: charmap(5): Consistency
To:     Helge Kreutzmann <debian@helgefjell.de>
References: <20200419064751.GA30098@Debian-50-lenny-64-minimal>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <d79ae5ff-914d-3c86-43d2-16a7f94166fa@gmail.com>
Date:   Mon, 20 Apr 2020 08:56:30 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200419064751.GA30098@Debian-50-lenny-64-minimal>
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
> How do the following strings align with 
> zless /usr/share/i18n/charmaps/ISO-8859-1.gz
> 
> "The following lines may have one of the two following forms to define the "
> "character set:"
> 
> "The following lines may have one of the two following forms to define the "
> "widths of the characters:"

This report is too cryptic. Please elaborate.

Thanks,

Michael



-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
