Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C46BC65DF16
	for <lists+linux-man@lfdr.de>; Wed,  4 Jan 2023 22:32:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230073AbjADVcS (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 4 Jan 2023 16:32:18 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45718 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230233AbjADVcS (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 4 Jan 2023 16:32:18 -0500
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9330F26D
        for <linux-man@vger.kernel.org>; Wed,  4 Jan 2023 13:32:16 -0800 (PST)
Received: by mail-wr1-x42c.google.com with SMTP id az7so9975148wrb.5
        for <linux-man@vger.kernel.org>; Wed, 04 Jan 2023 13:32:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:in-reply-to
         :user-agent:references:date:subject:cc:to:from:from:to:cc:subject
         :date:message-id:reply-to;
        bh=FKBlx740w9A5UAeJo05D8jbCIPN2LFJg0L8SLYifXos=;
        b=GaX2K8jQpdswaduOtffTYBsu2GWdIHWx3f77IFUGpLZ3/HIMUm4+lq6B2aaLVrp7gA
         8htSjolG0NlL7Lw2pgnDKz2xAJCmicWZG6KeAggc8AMyRPdtihZL+1yBiSbbm/AIwsS3
         h4gVZcx79PfBET+MK6ra3Cyn/DKRmP2EeZGKeF+sfEvdzyH2ooPRS1YL3Zu2I7tmHCRE
         Ac2QMNAhLdiU9HtZtl7U9JEG5yHU3ZnFHfFVety6qoBjLuSJODLPvfHk+PgJi8x/WzO1
         +m4lxILFaAa/TGsDKN//XxCCb8Vl8Sqre1r7L0bMp8T+eTihtJAVHlqaLJeYGHkLaBlc
         JSXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:in-reply-to
         :user-agent:references:date:subject:cc:to:from:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=FKBlx740w9A5UAeJo05D8jbCIPN2LFJg0L8SLYifXos=;
        b=ZNnu6mEuK4aHosmrG1jO5NGpSij8X7ALubeOVjSjxMiZBxOBlHlMXupefMSEech7fq
         qyNfWkev7fHhoZVT+sBcpvHqsEkYntcKZcC7vWtvXyMhaJTWav2ASgwz4wLCJulC0Bua
         FJMWex8TNOzg0apPG8OiOlcrkHOV9ns/NRzDr+W0duBXVx/Ws8yfoORsjRnuY88aiqbq
         +dtV2y6/wMzS2KGfuL6ahcocQAeMr14wlBF9DJRRMXCFpvUg4QDEc/u7bW/1zpF3UrtF
         9WdXuHXvlLAeeAd2cGzfxde017Iio9CyOjzz2ThI3AfAT7nbCYHC0HHAL5DJb4pXhGor
         x74w==
X-Gm-Message-State: AFqh2ko3AnUzzltjDELz333SmkpuKTDZROu/vohvb3zS0pDZ4O4Dg9qv
        nmsMSJQ+Kt1wRSQAnNGcqKKFdJd+XvtCVw==
X-Google-Smtp-Source: AMrXdXtppnsDd+8AVYBNy6o2vlqJ1phIHhxItHYGjkl2h4aRH3dcPnFnR3W7SjSlxQawcOH5KIpyTQ==
X-Received: by 2002:a5d:6d0f:0:b0:28b:456c:1b6d with SMTP id e15-20020a5d6d0f000000b0028b456c1b6dmr23679664wrq.55.1672867934918;
        Wed, 04 Jan 2023 13:32:14 -0800 (PST)
Received: from gmgdl (dsl-59-113.bl26.telepac.pt. [176.78.59.113])
        by smtp.gmail.com with ESMTPSA id c8-20020a5d4148000000b002428c4fb16asm34847934wrq.10.2023.01.04.13.32.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Jan 2023 13:32:14 -0800 (PST)
Received: from avar by gmgdl with local (Exim 4.96)
        (envelope-from <avarab@gmail.com>)
        id 1pDBMr-00CTMA-1S;
        Wed, 04 Jan 2023 22:32:13 +0100
From:   =?utf-8?B?w4Z2YXIgQXJuZmrDtnLDsA==?= Bjarmason <avarab@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     Linus Torvalds <torvalds@linux-foundation.org>,
        linux-man@vger.kernel.org, Alejandro Colomar <alx@kernel.org>,
        Tejun Heo <tj@kernel.org>, Craig Small <csmall@enc.com.au>,
        Alexey Dobriyan <adobriyan@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Subject: Re: [PATCH 0/2] proc.5: note broken v4.18 userspace promise
Date:   Wed, 04 Jan 2023 21:59:38 +0100
References: <cover-0.2-000000000-20221223T174835Z-avarab@gmail.com>
 <CAHk-=wh6f8+e7Nm1nj1yNGB7d1SivgrBw8Gd3Ow58pc+NoNi1w@mail.gmail.com>
 <cf8e5404-f3bc-8a27-9cd0-2cdc0c26d030@gmail.com>
User-agent: Debian GNU/Linux bookworm/sid; Emacs 27.1; mu4e 1.9.0
In-reply-to: <cf8e5404-f3bc-8a27-9cd0-2cdc0c26d030@gmail.com>
Message-ID: <230104.86r0wat28y.gmgdl@evledraar.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


On Wed, Dec 28 2022, Alejandro Colomar wrote:

> [[PGP Signed Part:Undecided]]
> Hi,
>
> On 12/23/22 19:12, Linus Torvalds wrote:
>> On Fri, Dec 23, 2022 at 10:00 AM =C3=86var Arnfj=C3=B6r=C3=B0 Bjarmason
>> <avarab@gmail.com> wrote:
>>>
>>> Whereas the fix here is a fix for a promise we're currently making
>>> which hasn't been true since v4.18.
>> Hah. Ack. Did anybody ever actually notice?
>> I wonder if the newer limit of 64 characters for kworkers shouldn't
>> even be mentioned at all, and if the 16-byte truncation for user space
>> should also be just removed.
>> Those limits should never have been some documented API, they were
>> always just implementation details, after all.
>>               Linus
>

Sorry about the late reply, holidays.

> I agree.  A variable implementation detail like this doesn't provide
> anything valuable to users; especially since there's no statbility
> promise at all.  I'd rewrite to just remove the (16) implementation
> detail.
>
> =C3=86var, would you send an v2 that removes implementation details, rath=
er
> than fixing the details?

Maybe, because I'm not sure I'm qualified to document this anymore. My
current patch just extends the description to cover the 4.18 divergence.

Let's separate a few things here:

 A. The long-standing docs promise that it's limited to 16 bytes
 B. Since 4.18 that hasn't been true for (some of) the kernel's own
    processes, where the limit's been 64.
 C. Was the part of "A" where a limit was documented at all a good idea
    in retrospect?
 D. If "C"'s a "no" (which seems to be the consensus) what should the
    docs say?
 E. I hadn't mentioned this before, but the docs for prctl()'s
    PR_SET_NAME document the same 16 byte limit.

I think the current behavior since 4.18 is a broken userspace promise,
although admittedly a minor/obscure one.

I think even if going forward the documentation is deliberately
ambiguous about it, it would make sense to briefly document the 16 and
64 byte limits as past limits, to at least help to explain why current
code parsing "/proc/*/stat" seems to be confident in those (or more
commonly, the 16 bytes).

The code I wrote was rather anal about that promise, but e.g. looking at
htop(1)'s source code they've got a total limit of 2048 for this sort of
line (MAX_READ). I'm sure if I went fishing I could find other similar
cases (and probably some lower ones).

I don't think it would be good to just leave it ambiguous for those
trying to use this interface. They might assume any of 16 bytes (from
finding the prctl() PR_SET_NAME docs), 64 bytes (from reading kernel
sources), 255 (maximum filename length) etc.

Wouldn't the least bad thing be to:

 * Cover "A" and "B" in passing, i.e. explain past promised /
   implemented limits.
 * Note that this is no guarantee, but that...
 * ...we might use up to N, where N is some sane limit (1024? 2048?
   4096?).

   So programs that parse this now could just increase their fixed
   buffers, rather than having to use some getc()/realloc() loop, as
   they might if the interface makes no promises about an upper bound,
   and if they're being paranoid about future-proofing the parser.

   If so I have no opinion on what value of "N" would be sane, other
   than it seems best to pick something.

?

> On 12/23/22 18:59, =C3=86var Arnfj=C3=B6r=C3=B0 Bjarmason wrote:
>> diff --git a/man5/proc.5 b/man5/proc.5
>> index 115c8592e..b23dd1479 100644
>> --- a/man5/proc.5
>> +++ b/man5/proc.5
>> @@ -2092,9 +2092,13 @@ The filename of the executable, in
>   parentheses. Tools such as
>>   may alternatively (or additionally) use
>>   .IR/proc/  pid /cmdline.
>>   .IP
>> -Strings longer than
>> +For userspace, strings longer than
>>   .B TASK_COMM_LEN
>>   (16) characters (including the terminating null byte) are silently tru=
ncated.
>> +Since Linux version 4.18.0 a longer limit of 64 (including the
>> +terminating null byte) has applied to the kernel's own workqueue
>> +workers (whose names start with "kworker/").
>> +.IP
>>   This is visible whether or not the executable is swapped out.
>>   .TP
>>   (3) \fIstate\fP \ %c

