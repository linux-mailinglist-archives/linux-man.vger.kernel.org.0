Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D0DDC1AFE15
	for <lists+linux-man@lfdr.de>; Sun, 19 Apr 2020 22:27:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725891AbgDSU1W (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 19 Apr 2020 16:27:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52246 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725848AbgDSU1W (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 19 Apr 2020 16:27:22 -0400
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com [IPv6:2a00:1450:4864:20::344])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 759A9C061A0C
        for <linux-man@vger.kernel.org>; Sun, 19 Apr 2020 13:27:20 -0700 (PDT)
Received: by mail-wm1-x344.google.com with SMTP id t63so7682230wmt.3
        for <linux-man@vger.kernel.org>; Sun, 19 Apr 2020 13:27:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=dtmQOOOlwHJSNG2/S7QEDqD8ZsM0Amvp5wa1jOmPAK4=;
        b=Kx7VcdySVrTe3wac1dN5XArk05y4pAWWLWa44P9jF2ZIxE/eTPfi3TTIPD/1hG8+aE
         8hUEhl4JfgwRtxByiQBfoUQxlH6OfG9r1Um9E0mPwn8fJU8VKKsblsl1uQGc4WT3qjjl
         iHSS+RFFXxsn0TZWj12JsxfCF6kA2boEEcT+zIog5jmH1Azjwf0rdf4/nMt7znONB0qy
         mgE3/sIBpGGlH0tVWCb0yxvdeyW5QhHNg+rWKXFzFpluFee9in6CqG0hV9MdAdDJlAfc
         7jUORsEwsv/pzc+uef10xpYMboCTkmLfiQqeuCcpbAHztzPGiiCzIsVpautkI8E39d2F
         4k+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=dtmQOOOlwHJSNG2/S7QEDqD8ZsM0Amvp5wa1jOmPAK4=;
        b=ZlGghu0bHTVIq1aZU4y9UHZAKuisCnFQ8GQ6Ad5ceVoXFPnkxf9aQOjg3XQtbSoboq
         vj6fFPiwbImXEiWf1YCZcUd6pltC4CBqSvMc7xphCD2s5tKdJCfK7UbXnBc10fsQiQpr
         ageTsZLBmrtXWviEFKZNgbEePiz3fknZm+LSBH1jrs1CrPj/YI8ksLd1RFdkxu/DBqJa
         DhkWQNn+EViwDtgEyXrDGWGU91VFvBe9W/z/Oeq88YbrUj6gJAdZfrlNvsSuHGSnGEcK
         7RKBfo4V5cgg1+fMceXzlof6qhwIR/86sukpXZqCow9SKhUztMd86b+zEBs4vN9X5Th8
         PRdA==
X-Gm-Message-State: AGi0Pub7PAnrfS2I5OJnf+uKMbRlRDtljoPxTUX0a5oM2Fv+PS9oUPjb
        m07S9IUGldThDJIswVM7rjuPgAvI
X-Google-Smtp-Source: APiQypLOqDsNyA4ev7/6G9cVbehbjkstzzpfS/MexKYbrEVZNGZg5Le+sSTFkRzs7Da7azGXcDFyTw==
X-Received: by 2002:a1c:668a:: with SMTP id a132mr14682807wmc.46.1587328038569;
        Sun, 19 Apr 2020 13:27:18 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:3351:6160:8173:cc31? ([2001:a61:2482:101:3351:6160:8173:cc31])
        by smtp.gmail.com with ESMTPSA id t17sm11891878wro.2.2020.04.19.13.27.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 19 Apr 2020 13:27:18 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: Errors in man pages, here: termcap(5): Typo?
To:     Helge Kreutzmann <debian@helgefjell.de>
References: <20200419064832.GA32424@Debian-50-lenny-64-minimal>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <6045dd61-7fd2-1f22-32b4-fcb0a45cbc59@gmail.com>
Date:   Sun, 19 Apr 2020 22:27:17 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200419064832.GA32424@Debian-50-lenny-64-minimal>
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
> s/capability/compability/
> 
> "The termcap database is an obsolete facility for describing the capabilities "
> "of character-cell terminals and printers.  It is retained only for "
> "capability with old programs; new programs should use the B<terminfo>(5)  "
> "database and associated libraries."

Fixed.

Thanks,

Michael



-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
