Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EDFAC2E79B9
	for <lists+linux-man@lfdr.de>; Wed, 30 Dec 2020 14:36:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726412AbgL3NgY (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 30 Dec 2020 08:36:24 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45182 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726539AbgL3NgY (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 30 Dec 2020 08:36:24 -0500
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com [IPv6:2a00:1450:4864:20::62a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BB5E8C06179C
        for <linux-man@vger.kernel.org>; Wed, 30 Dec 2020 05:35:24 -0800 (PST)
Received: by mail-ej1-x62a.google.com with SMTP id ga15so21926597ejb.4
        for <linux-man@vger.kernel.org>; Wed, 30 Dec 2020 05:35:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=hhVDFcTiAsOUWOg0Qp3Sas26/ERM11GbtAzcPnz3rHo=;
        b=UMpcCWBri4a94enC2jzC8X9bLXLnPPc8Th243dzLDXu8ahgnc/iD/ztCTbVr1xnWtW
         DLz4IerCyemHf6C6usiCBunVnINnRVU/NmY/DsLu1NbF/jEz7MpguJuTIXOPVfV3iJOF
         m5buAparA3V3SuvGlrEROcMgNGGTUh0VW+Mh51MmFkNub54lTm4jLIMoJcveeevtks4a
         i7PxalqtWsCf2ntuw9pjMMbjCuxd6rAL3D1TWnIJqTR50YD1iZ3x11xPWjihhj/OFVQv
         oxW2fm0zQ8kwB7+gx0McywPh3pNDP+L33Kc0a9UvnpVRluFgIwCKlgCPoZG2jvuhoVXW
         J/ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=hhVDFcTiAsOUWOg0Qp3Sas26/ERM11GbtAzcPnz3rHo=;
        b=ldB7CAgRLyKkV6LDHYEhnPCOgdICHW43/CcAJCusikO/7IVO/GDTSIDTQ6x0+fuy1W
         iELkUYVj3gSLBtqIFI64V9/42otjfbs07MYG3y9dnLXTVas2q/0m0Yknu3Ih2YChZBJZ
         fMa5w28lk0NT1cmjoAPklna93w076nv9Ma2wOq+xIbHdsZ843OiHgqbMVrcTseWryxBr
         FY+2E0f2g8bVQZdmiR5GNgSAKAY6Ebu3DZR2V0+05xlrKyCfVVUb+nV7EDZNlOJyG7Jf
         f6HmA3E8b1oJ+q5CpAcq8mZXsOJ+8TAW24Pk4Fol7u2/6WrOy3qWmxWGGDAcvdFZRZam
         KWYA==
X-Gm-Message-State: AOAM531V21GWOrLg4cjOJdI6HB2fF+hnIlc1hhxxXvUAEdadX3PHbTn0
        JkbcHKmbTRrVds8VVvL1nCE=
X-Google-Smtp-Source: ABdhPJy5n7h1Fqc/8UQ6D2CY6FOuOvNkRxZoWtYemwnoyx/iuRY3x8GzByHL9AUCkXbo03NtsZN4Wg==
X-Received: by 2002:a17:906:b306:: with SMTP id n6mr48887694ejz.473.1609335323521;
        Wed, 30 Dec 2020 05:35:23 -0800 (PST)
Received: from ?IPv6:2001:a61:2467:2f01:faca:3d43:5e40:30d1? ([2001:a61:2467:2f01:faca:3d43:5e40:30d1])
        by smtp.gmail.com with ESMTPSA id h15sm38224071edz.95.2020.12.30.05.35.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Dec 2020 05:35:22 -0800 (PST)
Cc:     mtk.manpages@gmail.com,
        "Alejandro Colomar (mailing lists, readonly)" 
        <alx.mailinglists@gmail.com>, Davidlohr Bueso <dbueso@suse.de>,
        linux-man@vger.kernel.org, Joe Lawrence <joe.lawrence@redhat.com>,
        Robert Kettler <robert.kettler@outlook.com>,
        "Eric W. Biederman" <ebiederm@xmission.com>,
        Kees Cook <keescook@chromium.org>,
        Michal Hocko <mhocko@kernel.org>
Subject: Re: [PATCH] semctl.2: Correct SEM_STAT_ANY description
To:     Manfred Spraul <manfred@colorfullife.com>,
        Yang Xu <xuyang2018.jy@cn.fujitsu.com>
References: <1608616543-21436-1-git-send-email-xuyang2018.jy@cn.fujitsu.com>
 <746deff0-e919-173b-25f6-34fc465a7ba0@gmail.com>
 <e7b0eb9e-b1d2-ed46-f7ac-66f22ef3faf1@colorfullife.com>
 <5FEBDFF3.7020606@cn.fujitsu.com>
 <265f82a2-42e7-45a4-1f80-8d24d66fceda@colorfullife.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <516a60fc-bb97-1b36-1830-fb5191617ed5@gmail.com>
Date:   Wed, 30 Dec 2020 14:35:21 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <265f82a2-42e7-45a4-1f80-8d24d66fceda@colorfullife.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Manfred,

On 12/30/20 12:20 PM, Manfred Spraul wrote:
> On 12/30/20 3:03 AM, Yang Xu wrote:
>> Hi Manfred
>>> Hi,
>>>
>>>
>>> On 12/22/20 12:55 PM, Alejandro Colomar (mailing lists; readonly) wrote:
>>>> Hi Yang,
>>>>
>>>> It looks good to me.
>>>> I'll add a few people that might want to comment.
>>>
>>> The code returns a semid_ds structure, and if I take strace as reference
>>> implementation, then user space expects a semid_ds as well.
>>> https://github.com/strace/strace/commit/8f0870a780bfd8cd9a91c3b7ad05baccda10bc84 
>>>
>>>
>>>
>>> In addition, the current page is self-inconsistent: seminfo doesn't
>>> contain sem_perm.
>> semctl manpage doesn't say seminfo contain sem_perm. Or, I miss something?
> 
> The current man page says that SEM_STAT_ANY returns a seminfo structure, 
> without checking sem_perm.
> 
> This is self-inconsistent: struct seminfo contains global 
> (per-namespace) information, sem_perm.mode is a per-array information.
> 
> I.e.: It is clear that the man page needs to be updated, and not the code.

After reading this thread, I'm not quite clear. Do you mean some 
additional change is required after Xang Yu's patch?

Thanks,

Michael

>> $rpm -qf /usr/share/man/man2/semctl.2.gz
>> $ man-pages-5.07-3.fc33.noarch
>>        SEM_STAT_ANY (Linux-specific, since Linux 4.17)
>>               Return a seminfo structure containing the same 
>> information as for SEM_STAT.  However, sem_perm.mode is not checked 
>> for read access for semid meaning
>>               that any user can employ this operation (just as any 
>> user may read /proc/sysvipc/sem to obtain the same information).
>>
>>
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
