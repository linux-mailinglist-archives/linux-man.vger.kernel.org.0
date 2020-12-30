Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 48F462E77FF
	for <lists+linux-man@lfdr.de>; Wed, 30 Dec 2020 12:21:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726356AbgL3LVR (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 30 Dec 2020 06:21:17 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52678 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726290AbgL3LVQ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 30 Dec 2020 06:21:16 -0500
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6F7D4C061799
        for <linux-man@vger.kernel.org>; Wed, 30 Dec 2020 03:20:36 -0800 (PST)
Received: by mail-wm1-x32c.google.com with SMTP id c133so4728731wme.4
        for <linux-man@vger.kernel.org>; Wed, 30 Dec 2020 03:20:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=colorfullife-com.20150623.gappssmtp.com; s=20150623;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language;
        bh=vlIz8qKLh0Mw7iBe3bCfYd5T/mgfgcIicaaUGuMkXoc=;
        b=zMixGQS5qZCTipik7qggixwFj+pf/zIdzivxDO7JRRn7YFX6rkiw6muEsaxov0Gi/R
         4DQCgZ6Pf+5Lei7EgPLF/bf8CV4ZQbDmCIm5q7MANMkUisdnjIuudE+iQ5e9mckT7jVf
         ruQ0/gvRsF2lqZug9kUpcgbx7FFYKhSwiionCmSk+dB2alowxzr6gG6AayY9/lRNhRO1
         xpkCmi/dS607YMIJBKCBemnr5Lo5KNEScb1WpaDUZO/t9V9gQT3pjlpbndDI388UnRNY
         UlwexZEs5X4+tMCjiEpIWSYN31WfWNjVJhjLIna/vRALJNB3OWWpeG8dsffj0Kjvosp9
         Q8Qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=vlIz8qKLh0Mw7iBe3bCfYd5T/mgfgcIicaaUGuMkXoc=;
        b=cKk/Km34Wvk4dLlSr68nL++xO5NFIJeLKqRb2SNaF6OSftWcXUxKEWlcxKDCBv9+mV
         jxo8sne299QXKGsC/wHt1gckza7OMYMu8ctn15jF3HmCX+UGj6mDjY1fDIu5CAG/vR1+
         dLut/72tQ/BDqw0rd6wTsRLD/RChUb0dnY9WxKdV5NQygWSCAKkzuEtC+r5WkTtGLM0W
         zeq49/DbRJUkPzoDMEyj/r/JTaNCkzIvE/SldzSzsi5Her6s6tN9yh+pX4sLSXv/AXpe
         5l1xtGJkIALDLKmPsBbjBaL3d+QfaAcaxJBbOevfvUlaKPiXkyp0EkQR5kLtu2i0kDxq
         QzuQ==
X-Gm-Message-State: AOAM531amgSQkqShOFLiOi8haSS4tHqqqRjVHIGAsvXnvQEc4obQqP50
        gCXVbWfYIlm1TUd04MWPhdt8ig==
X-Google-Smtp-Source: ABdhPJyuVaSEgEKR6ROcrbmwr1F4I0ENAbiU1rryjoaFy8pSSgVAFslJAX4huipx95sguz43AKRwTA==
X-Received: by 2002:a1c:e083:: with SMTP id x125mr7466613wmg.0.1609327234996;
        Wed, 30 Dec 2020 03:20:34 -0800 (PST)
Received: from localhost.localdomain (p200300d9970348005c94200a58b3c908.dip0.t-ipconnect.de. [2003:d9:9703:4800:5c94:200a:58b3:c908])
        by smtp.googlemail.com with ESMTPSA id v20sm6781622wml.34.2020.12.30.03.20.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Dec 2020 03:20:34 -0800 (PST)
Subject: Re: [PATCH] semctl.2: Correct SEM_STAT_ANY description
To:     Yang Xu <xuyang2018.jy@cn.fujitsu.com>
Cc:     "Alejandro Colomar (mailing lists, readonly)" 
        <alx.mailinglists@gmail.com>, mtk.manpages@gmail.com,
        Davidlohr Bueso <dbueso@suse.de>, linux-man@vger.kernel.org,
        Joe Lawrence <joe.lawrence@redhat.com>,
        Robert Kettler <robert.kettler@outlook.com>,
        "Eric W. Biederman" <ebiederm@xmission.com>,
        Kees Cook <keescook@chromium.org>,
        Michal Hocko <mhocko@kernel.org>
References: <1608616543-21436-1-git-send-email-xuyang2018.jy@cn.fujitsu.com>
 <746deff0-e919-173b-25f6-34fc465a7ba0@gmail.com>
 <e7b0eb9e-b1d2-ed46-f7ac-66f22ef3faf1@colorfullife.com>
 <5FEBDFF3.7020606@cn.fujitsu.com>
From:   Manfred Spraul <manfred@colorfullife.com>
Message-ID: <265f82a2-42e7-45a4-1f80-8d24d66fceda@colorfullife.com>
Date:   Wed, 30 Dec 2020 12:20:33 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <5FEBDFF3.7020606@cn.fujitsu.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 12/30/20 3:03 AM, Yang Xu wrote:
> Hi Manfred
>> Hi,
>>
>>
>> On 12/22/20 12:55 PM, Alejandro Colomar (mailing lists; readonly) wrote:
>>> Hi Yang,
>>>
>>> It looks good to me.
>>> I'll add a few people that might want to comment.
>>
>> The code returns a semid_ds structure, and if I take strace as reference
>> implementation, then user space expects a semid_ds as well.
>> https://github.com/strace/strace/commit/8f0870a780bfd8cd9a91c3b7ad05baccda10bc84 
>>
>>
>>
>> In addition, the current page is self-inconsistent: seminfo doesn't
>> contain sem_perm.
> semctl manpage doesn't say seminfo contain sem_perm. Or, I miss something?

The current man page says that SEM_STAT_ANY returns a seminfo structure, 
without checking sem_perm.

This is self-inconsistent: struct seminfo contains global 
(per-namespace) information, sem_perm.mode is a per-array information.

I.e.: It is clear that the man page needs to be updated, and not the code.

> $rpm -qf /usr/share/man/man2/semctl.2.gz
> $ man-pages-5.07-3.fc33.noarch
>        SEM_STAT_ANY (Linux-specific, since Linux 4.17)
>               Return a seminfo structure containing the same 
> information as for SEM_STAT.  However, sem_perm.mode is not checked 
> for read access for semid meaning
>               that any user can employ this operation (just as any 
> user may read /proc/sysvipc/sem to obtain the same information).
>
>

