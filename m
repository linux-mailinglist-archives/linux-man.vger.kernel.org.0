Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3232C1B015E
	for <lists+linux-man@lfdr.de>; Mon, 20 Apr 2020 08:12:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725872AbgDTGMR (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 20 Apr 2020 02:12:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57120 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S1725780AbgDTGMR (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 20 Apr 2020 02:12:17 -0400
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com [IPv6:2a00:1450:4864:20::342])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 96BE9C061A0C
        for <linux-man@vger.kernel.org>; Sun, 19 Apr 2020 23:12:13 -0700 (PDT)
Received: by mail-wm1-x342.google.com with SMTP id y24so9942513wma.4
        for <linux-man@vger.kernel.org>; Sun, 19 Apr 2020 23:12:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=jFRqGu5YjrjQN+BNlnsLvDmEWiks6TeRXa3kW9QT354=;
        b=Ciy94WTmUwLLJMKQi29BlJu20y2imXNe5g8Po2SNVfPT6mi1pcC940LBJ7xplMdNpF
         MiTlVUrBLXRP5BKqpdlTR19NGWWeIfDrsW9PymTNlHJDDL+UhysPTzcuGffE4Wdazer1
         2HVNzrsQqNKzBfo+NONr4quIMjucjMe0WDd1yCtdNhg24q4vYeevGFIdGuoFIxHvHNDx
         go+cHXI371/gHFEA+R7NchAd6UiIK54TKwiHICNjZyJazB/K3mwa/l2UXivSV7UWLrk7
         VsvZmCLyQkDpsl81u/h4GsrIlirzXFlwwv26ZfeiidE9reDNmrZjzPPoxx6nRcKoj3ZP
         ouYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=jFRqGu5YjrjQN+BNlnsLvDmEWiks6TeRXa3kW9QT354=;
        b=LHjWAB6jIpLoNb5iMJkldqfbwNJzSkHnt8zLHXUKVNtMo30E/UgQP/TOqayHYad2AD
         XAxU7J3bNkHRYevCBV3gvYmSZqWamwKFu79r5kdjKM3NWqDpw/Sg1zRCZQ9EXzwkNBkq
         qoh8ALAvBy/Env3hO6/R2uLi0Tr1B+Li7cswDqeRvlElHeKmciFXlrQuRa/M0e8c2MRG
         yZPsBBDnUaxgMK1Z2DF5OhZbAmRpOI88N6qMp9ngwYdgCqdnyCsPDEi+7t3vDvv5P/aR
         st/SMIm7uSrJG/bA3jhdPMHGIzvGWVktjDVJTOvJrEEEoKU6Mvp0xQR4aEDDFviujm6t
         5Klg==
X-Gm-Message-State: AGi0PuY0Ow1M38S6EoxwnosQ/aYSdZ/sbpRlqTw+GrfdfJAltQwIE2bQ
        xkOZ1nFpUa++NcEHqR5qJkmVeFfA
X-Google-Smtp-Source: APiQypK5RZEj2QbNFAtVis8XwRS46ozLKwnpxvj4iAdvXHmW7yVcUssI0FAQQrEJDUZI9z6WQo7mbg==
X-Received: by 2002:a1c:bd54:: with SMTP id n81mr15570998wmf.141.1587363132220;
        Sun, 19 Apr 2020 23:12:12 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:3351:6160:8173:cc31? ([2001:a61:2482:101:3351:6160:8173:cc31])
        by smtp.gmail.com with ESMTPSA id q17sm18066498wmj.45.2020.04.19.23.12.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 19 Apr 2020 23:12:11 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: Errors in man pages, here: proc(5): Incorrect reference?
To:     Helge Kreutzmann <debian@helgefjell.de>
References: <20200419064815.GA31417@Debian-50-lenny-64-minimal>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <09a3dcc4-bf6d-e9a3-d1d9-4c9b5f7b5b21@gmail.com>
Date:   Mon, 20 Apr 2020 08:12:11 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200419064815.GA31417@Debian-50-lenny-64-minimal>
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
> pkeys(5) → pkeys(7) ?

Yes. Fixed.

Thanks,

Michael


> "\"ProtectionKey\" field contains the memory protection key (see "
> "B<pkeys>(5))  associated with the virtual memory area.  Present only if the "
> "kernel was built with the B<CONFIG_X86_INTEL_MEMORY_PROTECTION_KEYS> "
> "configuration option. (since Linux 4.6)"



-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
