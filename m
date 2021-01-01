Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 845502E8394
	for <lists+linux-man@lfdr.de>; Fri,  1 Jan 2021 12:42:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727119AbhAALl5 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 1 Jan 2021 06:41:57 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44284 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726134AbhAALl4 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 1 Jan 2021 06:41:56 -0500
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4525EC061573
        for <linux-man@vger.kernel.org>; Fri,  1 Jan 2021 03:41:16 -0800 (PST)
Received: by mail-wr1-x42c.google.com with SMTP id t30so21876379wrb.0
        for <linux-man@vger.kernel.org>; Fri, 01 Jan 2021 03:41:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=0smGQTXYuAKiCx3ZA9NyGRZ1p2kAWGjVr+V9EkHYjGY=;
        b=DbzpEkgMmAjv2wJHTNV9O3QlYKBPflqX/vuw5AvJOlDr06pz35hM5vvu852D3vON5r
         6DDgYkuQ15n/Jy6KYxRW8qLT8AWz1gUj2hcEWZzxP3OO3hgNUbP5NBhdSjLwy+8TfC01
         Hs7SCxmEd6F1ZhgwCv429o2QlmCSBvyr8NdZvOUDqOlMKTGczWBwqUHAWIVPuRKSY7YL
         u392vetdebPIqwp4gxaUZ8DCwYBHriI6OI8HRtacYO339P3u67O0e3XVWaKgfVAN7/x4
         amf71V+/G4PwmBI7aDjnZu5MLK2hpEG5S0fhdRoFlrCpKTgoBewW5Wc6TJTJUXK7vQ9q
         E1SQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=0smGQTXYuAKiCx3ZA9NyGRZ1p2kAWGjVr+V9EkHYjGY=;
        b=UC0rKDzu+pNRkNgNMViwiY86bjFMU9iHq/ZUrChsH37WV4BIUZGRa2tLD02LPd7n1M
         Ltv3c2A3INxNDp1/4eQreGPEc6uiQjg1mN+YGNEqJCcWRkFWICiguqWDPyrF2tjHHOoT
         1Hswup07U/o62p1P6E70/RSC4LOn+yqrmUCyAPyoccPJ3FgbhZcImSp2ZpapnEspxwXD
         7UJToyqaYWzY4t38xmhNk+o7YBNZOyfJ0gHUfrlQb7OL98tc3+qyaJcllxrkrqoRqDO/
         lcE131CZuzamaZvrxiLOpsgmKN7fvIqRFFBO2OADwINjauFQVNEypiQB1nRmszR+rtlG
         llUQ==
X-Gm-Message-State: AOAM532vKgXYEdIcj3XRYPqx7nfgpb/MtwXas8/2m6lWCOVPdqwiwDza
        gcQ/2HZnehCSSWGjCOwqoMHOGXo3Olo=
X-Google-Smtp-Source: ABdhPJyDnDGA+wcQM8jrCavykrc52/hnUIvSI8VMPylDNleWF7AV+8AnrIYal1+k0zsKQbhaK3r4mQ==
X-Received: by 2002:adf:e512:: with SMTP id j18mr67851985wrm.52.1609501274608;
        Fri, 01 Jan 2021 03:41:14 -0800 (PST)
Received: from ?IPv6:2001:a61:244d:fe01:9fb1:d962:461a:45e8? ([2001:a61:244d:fe01:9fb1:d962:461a:45e8])
        by smtp.gmail.com with ESMTPSA id l8sm81764423wrb.73.2021.01.01.03.41.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 01 Jan 2021 03:41:13 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man <linux-man@vger.kernel.org>
Subject: Re: [PATCH] execveat.2: srcfix
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
References: <20201230214147.874671-1-alx.manpages@gmail.com>
 <CAKgNAkjf8gS5Av2pzYqt_JHjjnCw-FrjqQicjhr20+MzgsK3Xg@mail.gmail.com>
 <bdda57ff-acdd-9109-5720-ba0db8138d41@gmail.com>
 <993e801d-4126-4e11-5a06-4b92879a7eb7@gmail.com>
 <2f321c87-7e12-2c41-6cd6-ac55024caf0a@gmail.com>
 <6c9c593c-1e89-ce75-c1d0-41e61c98bad7@gmail.com>
 <a6391e7c-6036-33ad-0512-88663307abde@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <952d3e06-d5fb-db69-f8e0-ee97d5ad2159@gmail.com>
Date:   Fri, 1 Jan 2021 12:41:13 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <a6391e7c-6036-33ad-0512-88663307abde@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 12/31/20 7:55 PM, Alejandro Colomar (man-pages) wrote:
> Hi Michael,
> 
> I'm not sure about some cases, but have a look at this:
> 
> a64l.3: compact
> asprintf.3: compact
> atan.3: wsfix
> backtrace.3: compact
> bstring.3: compact? (and maybe align names?)

Not sure about this one. Nothing done yet.

> byteorder.3: compact
> catopen.3: compact
> closedir.3: compact
> cmsg.3: separate headers from declarations
> dl_iterate_phdr.3: wsfix: 's/) (/)(/'

Done

> drand48.3: group functions as in DESCRIPTION

Done

> drand48_r.3: ^

^ 
> envz_add.3: compact?
> fgetc.3: compact

I grouped and rearranged.

> fseek.3: ffix!!

Oops!

> 	and then compact
> fseeko.3: compact
> fts.3: compact (and maybe align?)

Not sure about this one. Nothing done yet.

> futimes.3: compact
> getaddrinfo_a.3: fix alignment (and maybe compact?)

Not sure about this one. Nothing done yet.

> getdirentries.3: ffix!
> getfsent.3: compact

Done, with some rearrangement.

> getgrent.3: compact
> getgrent_r.3: compact?

Yes.

> getgrnam.3: compact? or sort? or nothing? not sure

Some compacting.

> gethostbyname.3: separate headers from declarations?

Yes, plus some grouping.

> getline.3: compact
> getmntent.3: compact

Not sure about this one. Nothing done yet.

> getspnam.3: compact or group

Grouped.

> getttyent.3: ffix!!

Ooops. Fixed.

> gsignal.3: group

Not sure about that. I'll leave this for now.

> hsearch.3: group

grouped and reordered.

> if_nametoindex.3: group
> inet.3: group

Did some grouping.

> insque.3: group
> isgreater.3: compact or group

Compact.

> key_setsecret.3: compact

Group.

> login.3: group
> makecontext.3: compact
> malloc_get_state.3: compact
> malloc_hook.3: compact

That feels too busy. No change (yet).

> mcheck.3: compact

Group

> memchr.3: compact
> mkstemp.3: compact
> mpool.3: compact

Some grouping.

> mq_getattr.3: compact and fix alignment
> mtrave.3: compact
> newlocale.3: compact
> pthread_attr_setschedpolicy.3: ffix: fit into 78-col terminal per
> Branden's advise.

Done.

> pthread_cleanup_push.3: ffix: Join lines
> pthread_cleanup_push_defer_np.3: ffix: Join lines
> pthread_setname_np.3: ffix: Join lines> pthread_tryjoin_np.3: compact
> puts.3: compact

I grouped and reordered the SYNOPSIS and the page text.

> rand.3: compact or group

Compact.

> random[_r].3: group or compact

Group.

> re_comp.3: compact
> recno.3: There are no APIs? Why not?
> regex.3: compact?

Not sure about this one. Nothing done yet.

> I didn't read past that.

Well thanks! What you did read was helpful!

> BTW, Why didn't you include man2?

Oh -- I cut and pasted the wrong line into the mail message.

I've made a commit that changed ~140 pages, and pushed.

Thanks,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
