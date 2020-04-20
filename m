Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E23701B015D
	for <lists+linux-man@lfdr.de>; Mon, 20 Apr 2020 08:12:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725865AbgDTGMK (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 20 Apr 2020 02:12:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57108 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S1725780AbgDTGMK (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 20 Apr 2020 02:12:10 -0400
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com [IPv6:2a00:1450:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B280EC061A0C
        for <linux-man@vger.kernel.org>; Sun, 19 Apr 2020 23:12:09 -0700 (PDT)
Received: by mail-wr1-x444.google.com with SMTP id f13so10555836wrm.13
        for <linux-man@vger.kernel.org>; Sun, 19 Apr 2020 23:12:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=+4RnnmReOMt1CayCZAQxIrxBCDFnpcRmKSXAJg2/kQQ=;
        b=mr7r3oiSnzKsI+rUdJ3W9QPotfrXBnGpoLIm08KTpvdKq4KPre40ygxmQRuIIwxCa7
         H9XKr1QS5rvn5FutorpUzJUv2Tr7+/oNON3EooYCXCjBYfjtfAe/LdbAUyXn0uM91UY5
         zhj6Wv0UEjdjA9DaD14B/zx4FgSYoZuXto+xNHOAij7yrUiocXvrGSdKxt22zy/YL+Ew
         +x+4NBSzJz40J2+NN9ab/H45eAvQ1skKP7CzVBVGxIJV6bwHOVnEMhFeL8kK03awDFfY
         gMaWAzVGDmPOamglg2dQhnJS5ZOHx7Bm/b9sEKIO8+bEdi4o3k9E/y49HmRj8dv/BW3M
         sNfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=+4RnnmReOMt1CayCZAQxIrxBCDFnpcRmKSXAJg2/kQQ=;
        b=HdvkO5tjDni32u+ntQJp040EXKWgqDY7s3XLUu8KcQGRwW1TYmfsxnQufkrcLcOZ1Y
         NtmgE604S4Bwn1c9MUoTn7neJATIe9scZsLviF/pR/A2RCEMKBsndepTX+xD8L39dKFX
         E7eZ/ffWmeAUA9lEJrfbAXBbx3kugEtAiXUihlwNxoA3OxOe+dSCN5MYW+MXGeK9h/ed
         e49rDWpXB3UW+OLElLcxIW/WD/z4fyDdfXbS2ugo927o0zWMngaLEV4KXxNbxsbsGPmc
         HenCBqkHqGWsANZzURrKCer8RygUcpExoQDs9ghjdpyGL+wHFHBKpGttzYdVUrEIHFGa
         Ln7Q==
X-Gm-Message-State: AGi0PuYMy/pSm8At78G2ZjTB83bBEkwc8qQYWGtZ9QhqfnDpLurc/iIU
        zGN8h6Yw3h7ncZKPPXYUt8brWDGp
X-Google-Smtp-Source: APiQypIRS8RCK0ksFY6+FzJ7fHKyHgwrx406+jJyqVhrrVBbv27hH1NDELjHyZpbhmrOfNXA3hkZ7w==
X-Received: by 2002:adf:fa04:: with SMTP id m4mr16652011wrr.30.1587363128277;
        Sun, 19 Apr 2020 23:12:08 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:3351:6160:8173:cc31? ([2001:a61:2482:101:3351:6160:8173:cc31])
        by smtp.gmail.com with ESMTPSA id y70sm14007768wmc.36.2020.04.19.23.12.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 19 Apr 2020 23:12:07 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: Errors in man pages, here: proc(5): Content
To:     Helge Kreutzmann <debian@helgefjell.de>
References: <20200419064815.GA31441@Debian-50-lenny-64-minimal>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <3e0b74dd-b3df-2abf-843f-b22821b5a4b6@gmail.com>
Date:   Mon, 20 Apr 2020 08:12:07 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200419064815.GA31441@Debian-50-lenny-64-minimal>
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
> T twice, i.e. for both stopped and tracing stop?
> 
> "I<State>: Current state of the process.  One of \"R (running)\", \"S "
> "(sleeping)\", \"D (disk sleep)\", \"T (stopped)\", \"T (tracing stop)\", \"Z "
> "(zombie)\", or \"X (dead)\"."

Thanks. Fixed:

diff --git a/man5/proc.5 b/man5/proc.5
index 79a527216..deb107359 100644
--- a/man5/proc.5
+++ b/man5/proc.5
@@ -2501,7 +2501,7 @@ One of
 "S (sleeping)",
 "D (disk sleep)",
 "T (stopped)",
-"T (tracing stop)",
+"t (tracing stop)",
 "Z (zombie)",
 or
 "X (dead)".

Cheers,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
