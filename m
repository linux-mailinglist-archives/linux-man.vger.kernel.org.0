Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CBFD32155B7
	for <lists+linux-man@lfdr.de>; Mon,  6 Jul 2020 12:39:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728830AbgGFKjf (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 6 Jul 2020 06:39:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48338 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728525AbgGFKjf (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 6 Jul 2020 06:39:35 -0400
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com [IPv6:2a00:1450:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B68ACC061794
        for <linux-man@vger.kernel.org>; Mon,  6 Jul 2020 03:39:34 -0700 (PDT)
Received: by mail-wr1-x443.google.com with SMTP id z2so17988807wrp.2
        for <linux-man@vger.kernel.org>; Mon, 06 Jul 2020 03:39:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=jLbvJlvk44GWfhSdI9R3ULIXdh7GjLAYj6Ga2LOnNbo=;
        b=oG59BHOgnD+Z/oRtvxhT2/04c0RGNfBvS/JAhMAuEoOwkgKefNGXAuTfj5Jr3WKYEN
         P0E26taLPVkDbJWnuU8r2jZAFinU23nXII6tMX3eTrLmz2u0B6fAE4PDKn6VPCeUY1/g
         0DwgRDGjbt3RixKrYLFf/cNWPOw35KMgJVZUTCQ4eXyR2h75i0YkjbJHgtWSDJJ/l/92
         7fd/+Y5nKDDsPNn+3yTAO/9uX6cJdGmisA/MIUy00pHC/7Up3cOnoieDpeazurtjp86u
         pbCH/21eKEx1Nej2zdjQs+mKDb9LAXXSXDbMEel3emIcBHhJDtaC3M0AO/IoIHiCOMLf
         GI7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=jLbvJlvk44GWfhSdI9R3ULIXdh7GjLAYj6Ga2LOnNbo=;
        b=iWXAHkVNpFl2NIQdHjTJgdqAa6zMJCNYI1/Ot33airORdMlqNHngIdpjb1mFq+78B5
         mJuqzROxYwMof6FNPd56zbZGrypl+vJp5hDqQBmmOEMEPYY6RoQ89d75MpEGo9VfUDSb
         /EYOAD1scw/QR+yTk3yQHBtKkBYuQ+Qv6LAia3vvioeAI6EenETtGm9N5UFia7g+Nlyi
         El9VyjYW7+zCnV4cHwA8aCnZEHQD9m54gyr9peXH1EipoK6Cnqr1URqHjilvnGFq4EJp
         PJZdD10lmR0ZzXyfw8B71Q4Tb3gLjplg8CGCffZigllrMCx1nv/OdWXOQJJPY9IfU5Zd
         BKpA==
X-Gm-Message-State: AOAM533f3VS5STJt5o6xATBh+TGIdJCUNdtKirTAMzOQaVRJpMM7d0x7
        bqCza1QzDIAi9U/WrxCu5TUoMja2
X-Google-Smtp-Source: ABdhPJzRmPmUa/YndorhC9x5qX9D7OEpcsvEJH0w3hf8SIfW6iyMuJNS/ZpyL7OG95UVU9LoQEXxaA==
X-Received: by 2002:adf:f388:: with SMTP id m8mr49926941wro.338.1594031973176;
        Mon, 06 Jul 2020 03:39:33 -0700 (PDT)
Received: from ?IPv6:2001:a61:3adb:8201:9649:88f:51f8:6a21? ([2001:a61:3adb:8201:9649:88f:51f8:6a21])
        by smtp.gmail.com with ESMTPSA id 138sm19501258wmb.1.2020.07.06.03.39.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Jul 2020 03:39:32 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: Errors in man pages, here: mmap.2, wording
To:     Helge Kreutzmann <debian@helgefjell.de>
References: <20200706101414.GA26601@Debian-50-lenny-64-minimal>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <84e342cc-34ce-4c28-25ec-e9de5e4b2469@gmail.com>
Date:   Mon, 6 Jul 2020 12:39:31 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200706101414.GA26601@Debian-50-lenny-64-minimal>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 7/6/20 12:14 PM, Helge Kreutzmann wrote:
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
> Man page: mmap.2
> Issue: and in order  → in order
> 
> "For example, suppose that thread A looks through I</proc/E<lt>pidE<gt>/maps> "
> "and in order to locate an unused address range that it can map using "
> "B<MAP_FIXED>, while thread B simultaneously acquires part or all of that "
> "same address range.  When thread A subsequently employs B<mmap(MAP_FIXED)>, "
> "it will effectively clobber the mapping that thread B created.  In this "
> "scenario, thread B need not create a mapping directly; simply making a "
> "library call that, internally, uses B<dlopen>(3)  to load some other shared "
> "library, will suffice.  The B<dlopen>(3)  call will map the library into the "
> "process's address space.  Furthermore, almost any library call may be "
> "implemented in a way that adds memory mappings to the address space, either "
> "with this technique, or by simply allocating memory.  Examples include "
> "B<brk>(2), B<malloc>(3), B<pthread_create>(3), and the PAM libraries E<.UR "
> "http://www.linux-pam.org> E<.UE .>"

Thanks. Fixed.

Cheers,

Michael



-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
