Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 33BB92D4974
	for <lists+linux-man@lfdr.de>; Wed,  9 Dec 2020 19:51:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729615AbgLIStq (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 9 Dec 2020 13:49:46 -0500
Received: from mout.gmx.net ([212.227.15.19]:52339 "EHLO mout.gmx.net"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1729345AbgLIStq (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Wed, 9 Dec 2020 13:49:46 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
        s=badeba3b8450; t=1607539693;
        bh=7bXh3n/KCokbrMLR3EhGfXTCtORfVq6I9T+jHsRl2EU=;
        h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
        b=Zl5if3SkION80MMByNi1nbs7so1bCxpFKqRyur7O75DV+cAMI0PJlUI87gp8rn8hS
         +mjZpNSOEyesVvpiyBTU6HgD8JwD9cSXIUIIw736IeJ10ZzkEDft0aHkWyxgYziKFu
         O7U+n6jhTR6+ayqnc5Qx5iuPmLfrO/IvARkf5gX0=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.123.83] ([62.143.246.89]) by mail.gmx.com (mrgmx005
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1M7K3i-1klwyv2Wdw-007jlZ; Wed, 09
 Dec 2020 19:48:13 +0100
Subject: Re: cacheflush.2
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>,
        "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
References: <794cf0d1-d528-4b5a-3ce0-b1b5f588dc6d@gmx.de>
 <ca265930-00d7-44f5-b2dd-535a5cf0310a@gmail.com>
From:   Heinrich Schuchardt <xypron.glpk@gmx.de>
Message-ID: <5257a883-29f0-6eaa-5708-d1f47356a57a@gmx.de>
Date:   Wed, 9 Dec 2020 19:48:12 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <ca265930-00d7-44f5-b2dd-535a5cf0310a@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:ea/UueFXFUAjU4wHpWmMIr0aVeOE0/XEHhOwdzgMz9lCmg/slxR
 ozd+6BcF0/JPbCO7Ckv/l/dXwcR/oVyckEjkhTgpTDv9RcwFtufzCSlvJYDkawOsSmJEyqX
 uzxwA+HpE4bHqxePAwNcqZl18Q20JFrxMGxYR8jkLTZKjWyFedHsnkX5ZycsrgYZFQkmvRM
 VPSlN0tHJOgB4DCqphBpA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:A+IDv74BGeU=:IKpH3m5pwtPJYcmROu2N4B
 EGT/f6nYkyw1HQvArMsjDVayfQYNeYIsrCktU58ppIRiw6r1LMDFqajR3Hzdqkw+/uaMuWTyE
 IykV43Ryt1XkwOOInsJpnjjEVmhVnf1Jfmda9tOQhPzUxfaVrnD6iBQA8kz29SWTYBWV16k46
 YASPvWsCumlCHYYCf0Aojssoogx7PbZAfyySKi1+Xu9+RHA53aGWefrLDcnP+j5nsEFJN6DIc
 4nxPDT0vuaxgTGBRr/uIxfLbMJvrTbOqH8mawnQcTiB+e7pYh4k9PoaTfgprcBlUl3ActSP0y
 JWx/ga+xqLt6QWPcceHqyM4yIyW2rHPTrEM6GtVHFpzQs3Q68flKDH38NDvAE1PCMS8bT3Ptt
 PZ31femZEKkcz+JBF/fl0TKbbV+QH/QhtSz+xIRTa60w8Itbwc8Wp2t1LmoxWgBT/6qyRBjrp
 NnN+cQ1PZ4vOw9b75O+UwMYLA5AX8Ahr4IMQ1Wi2BTXIbKKdELMVXFnhmgIG+17OjJqVOHIg0
 89UNggTmxBO8MxQauqJOYMxr2brFBfFxJBSbpVL2S1ODU87owTW+J4gT6R1Z3TGDn0nGcLzJK
 cyw87wcwR3ZgV2gj4XP6PlK6Brn14EnJGyeRU7USTZefTENgWlL6L7Ez7G52JM5Jki7ZK8mtd
 4tKr/X0Bdgxu7AoOqYDvWupnPfvhM3ybf3MUt70LGd3uXcYGaOlIW133cBUPm0PJIixxi7Kvy
 mFLzdXHQZY6Nv8sQhqsTTbB3CPpsB/YtWuOAa36+8IO1WoSXSFMoqhwjy6ROaoeiXRcZrM3t1
 nPdptAleYpwCpjwX0hOx2JbsH7SQrQBdvQ52bncBkmMrPwHd/4bUMJrr96jI9WK0pVUoZUzCP
 y+B/S8wNrAYeAYqGvthg==
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 12/9/20 7:34 PM, Alejandro Colomar (man-pages) wrote:
> Hi Heinrich & Michael,
>
> What about the following?:
>
> [
> NOTES
>         GCC provides a similar function, which may be useful on  archi=
=E2=80=90
>         tectures that lack this system call:
>
>             void __builtin___clear_cache(void *begin, void *end);
> ]

I just checked building with Clang/LLVM. There the arguments are of type
(char *). See the following error output:

+arch/sandbox/cpu/cache.c:19:26: error: passing 'uint8_t *' (aka
'unsigned char *') to parameter of type 'char *' converts between
pointers to integer types with different sign [-Werror,-Wpointer-sign]
+        __builtin___clear_cache(state->ram_buf,
+                                ^~~~~~~~~~~~~~
+arch/sandbox/cpu/cache.c:20:12: error: passing 'uint8_t *' (aka
'unsigned char *') to parameter of type 'char *' converts between
pointers to integer types with different sign [-Werror,-Wpointer-sign]
+                                state->ram_buf + state->ram_size);
+                                ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Best regards

Heinrich

>
> Cheers,
>
> Alex
>
> On 12/9/20 7:04 PM, Heinrich Schuchardt wrote:
>> Hello Michael,
>>
>> function cacheflush() does not exist on many architectures.
>>
>> It would have saved me a lot of time if the man-page had referenced GCC=
's
>>
>> void __builtin___clear_cache(void *begin, void *end)
>>
>> Maybe you can add it to NOTES.
>>
>> Best regards
>>
>> heirnich
>

