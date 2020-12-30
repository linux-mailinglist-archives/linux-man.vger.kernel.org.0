Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C5F0A2E79FC
	for <lists+linux-man@lfdr.de>; Wed, 30 Dec 2020 15:35:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726276AbgL3Oel (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 30 Dec 2020 09:34:41 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54138 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725853AbgL3Oel (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 30 Dec 2020 09:34:41 -0500
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4A2BDC061799
        for <linux-man@vger.kernel.org>; Wed, 30 Dec 2020 06:34:00 -0800 (PST)
Received: by mail-wr1-x436.google.com with SMTP id t16so17615022wra.3
        for <linux-man@vger.kernel.org>; Wed, 30 Dec 2020 06:34:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=colorfullife-com.20150623.gappssmtp.com; s=20150623;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language;
        bh=9kzRwcICtGOd682T0A6UNnRh/H8Mb6lsuf7zaKBHWDQ=;
        b=mJ6uxus1n9HDIa+idxz1CffWKmU8OoeGz6VgITn3XZhY/KgDmXnKaCeG42rrUjgEQA
         mCp+yErMUN3AxuptEjx2W8LUSQKpU1cHMaWa/I8EUqJFR6o73DH5xArFNzWGG9c/HmXn
         mZOCWIGJ678khOm2W98pzpGwHW0EIlb9xdgy+2PtvbVbtVbTMEqDrsfPQ22Z/oCInrLP
         XkoDnb0FQq3TAmezuWT+R7lEYjkOQCxGPd3TcoP77s59RfVOFb34wzlPMtgCHn8fjUjM
         nV26hKteopFqG2MZDLqKtr+7bIsC1dtVSzYRbNjUxA6tUx0BYmIIoL/w7FiRd3D/DC81
         WcNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=9kzRwcICtGOd682T0A6UNnRh/H8Mb6lsuf7zaKBHWDQ=;
        b=gb8MbteMY0yH6zSwzDEB6rOCWMD9aurli89kTxTzaidH4rTnOJBfaTXwDZEyl9yRI+
         loYSQ3kB2SmJEOxPYrF+HzgWLIoDRxFfc0MeRiohAyutYzO4rvQFlUgFzZ+JO9jIwplm
         f6MnWvX3Cyc+HDBaAnx+9bpWukVSW9Ku024FpYdd99/weC5plNQO5i+PQw7NpnXsJzBP
         PkplNValabFUcvi+rPZmhO+VmdO2q9xPowSrLv78Y2x3FpdBEbIxtNLPrHJ5iEvBh+xh
         5KglbhFrxNhdKD4VYY68XTdDV2eiVUa0FB9NDyisoHelecZgTOQR2oLo54Hs0Kr8VkNf
         y1Dw==
X-Gm-Message-State: AOAM5315MEvTHM0wZ4/eA1+Rxse3ZaJF3BSc3WyZfe1BjeUMsQ+QUr3N
        Rj1O3M8AbQpSGbf999HcKwjHFw==
X-Google-Smtp-Source: ABdhPJyIi1jCLALSjBmTX2aOiugrfUkzHHTxZk4Hf5EVYLbHaJAGnje2xbQl0UvXu/56uOF0C2zjog==
X-Received: by 2002:a5d:4ccb:: with SMTP id c11mr58046501wrt.324.1609338838990;
        Wed, 30 Dec 2020 06:33:58 -0800 (PST)
Received: from localhost.localdomain (p200300d9970348005c94200a58b3c908.dip0.t-ipconnect.de. [2003:d9:9703:4800:5c94:200a:58b3:c908])
        by smtp.googlemail.com with ESMTPSA id j15sm67556833wrr.85.2020.12.30.06.33.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Dec 2020 06:33:58 -0800 (PST)
Subject: Re: [PATCH] semctl.2: Correct SEM_STAT_ANY description
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        Yang Xu <xuyang2018.jy@cn.fujitsu.com>
Cc:     "Alejandro Colomar (mailing lists, readonly)" 
        <alx.mailinglists@gmail.com>, Davidlohr Bueso <dbueso@suse.de>,
        linux-man@vger.kernel.org, Joe Lawrence <joe.lawrence@redhat.com>,
        Robert Kettler <robert.kettler@outlook.com>,
        "Eric W. Biederman" <ebiederm@xmission.com>,
        Kees Cook <keescook@chromium.org>,
        Michal Hocko <mhocko@kernel.org>
References: <1608616543-21436-1-git-send-email-xuyang2018.jy@cn.fujitsu.com>
 <746deff0-e919-173b-25f6-34fc465a7ba0@gmail.com>
 <e7b0eb9e-b1d2-ed46-f7ac-66f22ef3faf1@colorfullife.com>
 <5FEBDFF3.7020606@cn.fujitsu.com>
 <265f82a2-42e7-45a4-1f80-8d24d66fceda@colorfullife.com>
 <516a60fc-bb97-1b36-1830-fb5191617ed5@gmail.com>
From:   Manfred Spraul <manfred@colorfullife.com>
Message-ID: <d588d638-5abe-eb2a-e336-3e6fe31ad525@colorfullife.com>
Date:   Wed, 30 Dec 2020 15:33:57 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <516a60fc-bb97-1b36-1830-fb5191617ed5@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

On 12/30/20 2:35 PM, Michael Kerrisk (man-pages) wrote:
> Hi Manfred,
>
> On 12/30/20 12:20 PM, Manfred Spraul wrote:
>> On 12/30/20 3:03 AM, Yang Xu wrote:
>>> Hi Manfred
>>>> Hi,
>>>>
>>>>
>>>> On 12/22/20 12:55 PM, Alejandro Colomar (mailing lists; readonly) wrote:
>>>>> Hi Yang,
>>>>>
>>>>> It looks good to me.
>>>>> I'll add a few people that might want to comment.
>>>> The code returns a semid_ds structure, and if I take strace as reference
>>>> implementation, then user space expects a semid_ds as well.
>>>> https://github.com/strace/strace/commit/8f0870a780bfd8cd9a91c3b7ad05baccda10bc84
>>>>
>>>>
>>>>
>>>> In addition, the current page is self-inconsistent: seminfo doesn't
>>>> contain sem_perm.
>>> semctl manpage doesn't say seminfo contain sem_perm. Or, I miss something?
>> The current man page says that SEM_STAT_ANY returns a seminfo structure,
>> without checking sem_perm.
>>
>> This is self-inconsistent: struct seminfo contains global
>> (per-namespace) information, sem_perm.mode is a per-array information.
>>
>> I.e.: It is clear that the man page needs to be updated, and not the code.
> After reading this thread, I'm not quite clear. Do you mean some
> additional change is required after Xang Yu's patch?

Sorry for the confusion:

No further changes are required.

(I have crosschecked shmctl, msgctl, actual code, and strace as user 
space example: After Xang Yu's patch is applied, everything is consistent)

--

     Manfred


