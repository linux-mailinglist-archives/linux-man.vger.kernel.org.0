Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CC5602526C3
	for <lists+linux-man@lfdr.de>; Wed, 26 Aug 2020 08:21:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725957AbgHZGVT (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 26 Aug 2020 02:21:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39390 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725786AbgHZGVS (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 26 Aug 2020 02:21:18 -0400
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com [IPv6:2a00:1450:4864:20::343])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 03608C061574
        for <linux-man@vger.kernel.org>; Tue, 25 Aug 2020 23:21:17 -0700 (PDT)
Received: by mail-wm1-x343.google.com with SMTP id x5so570061wmi.2
        for <linux-man@vger.kernel.org>; Tue, 25 Aug 2020 23:21:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=DeuiSzwLFWXf2CFUqOgFa4x8DIds/ip/2/OET8yx9NM=;
        b=h6hiaxCCtEAfZSYLU1MHKBKGLtclZSBL3jNYATn6zPHexWkOz/ebSS/r7MRFz051ab
         gaUht++p/QrXR7Y5TK9jSbS0At7H3CgaWfRKOwrb3X/mVNWmjy96XIqVTq7C0Obpc/FO
         0CaH73xA0dQVOT7gTSAni3pW9jBUiYuRXQPFHPF3OCwIMjE8kOh/uiRd6cYClrRaZGgY
         /G74KXdqqVY0Uxw7+tRlzZp1ne1rf9jiYVjeKMx3vcvYLEDX6TfXBkFCwXLOMrY6p9fE
         /sqdk1ncoGZwas46G0G3Njwzr5es2KjbLzuDbxehFcMcaDqHEtigsDYlHMeo2kvElL6k
         kqIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=DeuiSzwLFWXf2CFUqOgFa4x8DIds/ip/2/OET8yx9NM=;
        b=D/5WhEqC8UF3N63OEJIiqzV3Y6HCfGeg54qE5C2I3GTxemNSD1x0rmPZpqwz7yGA0+
         pdA8SuOdLrQSMT9pow0Q3x7hqwcX0A97mLQH572Ky7FwG5tfmB3cj2ZBk2+IsSFATtgc
         RbIdnXD2+eC8f2f9X3MCx4BJaAqW2BbtQeu31yJkZaAP09nXxVCjGz8x6cTdVqXe9MUH
         nkVVWIABNaggn0DY3Phv6gVUXx7rIk4NfrhW76Rlkbw2jBAeOxPFZSTQoWtSvO727152
         rkLQvD5nCkCwLK6udJ3wQZQpnwyOjxd2AQl7DakyNeaH79uNaTz6MMXTZ+OGlQUkKS3F
         ofSA==
X-Gm-Message-State: AOAM531flYc4MzcG3DPH0OB0oqTqL1OT/YgpkrfTa3kpgKdzT7EQJI0w
        hdCd6zIYrAHIU25CAzybEoqAvUdUkQw=
X-Google-Smtp-Source: ABdhPJyWoN6HqU4hLx454FEbE8grSHSgeiswfz0BcdgxK1/mamUs5EtSs1Q7CbDhoka/5yKb8vZBTg==
X-Received: by 2002:a7b:c255:: with SMTP id b21mr5203150wmj.41.1598422876572;
        Tue, 25 Aug 2020 23:21:16 -0700 (PDT)
Received: from ?IPv6:2001:a61:253c:4c01:2cf1:7133:9da2:66a9? ([2001:a61:253c:4c01:2cf1:7133:9da2:66a9])
        by smtp.gmail.com with ESMTPSA id u7sm2949945wmb.16.2020.08.25.23.21.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 Aug 2020 23:21:15 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        Jakub Wilk <jwilk@jwilk.net>
Subject: Re: [PATCH] cmsg.3, getaddrinfo_a.3 getgrouplist.3: Use sizeof,
 consistently
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <cc176298-50e2-7831-f2f7-21be8cae9075@gmail.com>
 <e1b424c2-77c1-e995-a866-67a122d7bb07@gmail.com>
 <20200825111924.gwf3ck4bdq42lrzr@jwilk.net>
 <d084b7eb-a691-52e8-4996-5080af0175de@gmail.com>
 <CAKgNAki_wyf7dCShjpAaRLUeuL=+EFZYeVp0fY-EKHyOBW2hRw@mail.gmail.com>
 <d72263bb-7c84-3f33-ee44-a2cac2e2662c@gmail.com>
 <806999b7-8947-d350-2125-f04b69846f37@gmail.com>
 <d3537144-e4da-8359-bc08-4eaf8c7bd059@gmail.com>
 <9fcc512e-a12c-5b28-126f-aaf1854ed290@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <2b288808-c840-343f-9e56-8097765e5528@gmail.com>
Date:   Wed, 26 Aug 2020 08:21:12 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <9fcc512e-a12c-5b28-126f-aaf1854ed290@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Alex,

On 8/25/20 3:05 PM, Alejandro Colomar wrote:
> Hi Michael,
> 
> On 8/25/20 2:35 PM, Michael Kerrisk (man-pages) wrote:
>> Patch applied, but I had to fix up the title line, which got taken
>> from the mail subject line. Probably best to send subsequent patches
>> as new mails, rather than as replies to this thread.
> 
> This time I replied to the thread (so that the conversation can be
> followed in the archive), but changed the subject.  I hope that works.
> 
> (I sent this email only to you by accident; I'm sending it again with
> the CCs).
> 
> Patch (3) as numbered in the previous replies:
> 
> --------------------------------------------------------------------
>>From 1cb973629d94a048c5dcbe13fef76173f99dc3de Mon Sep 17 00:00:00 2001
> From: Alejandro Colomar <colomar.6.4.3@gmail.com>
> Date: Tue, 25 Aug 2020 14:52:03 +0200
> Subject: [PATCH] cmsg.3, getaddrinfo_a.3 getgrouplist.3: Use sizeof
>  consistently
> 
> Use ``sizeof`` consistently through all the examples in the following
> way:
> 
> - When the result of ``sizeof`` is multiplied (or otherwise modified),
>   write ``sizeof`` in the first place.
> 
> Rationale:
> 
> ``(sizeof(x) * INT_MAX * 2)`` doesn't overflow.
> 
> ``(INT_MAX * 2 * sizeof(x))`` overflows, giving incorrect
> results.
> 
> As a side effect, the parentheses of ``sizeof`` are not next to
> the parentheses of the whole expression, and it is visually
> easier to read.
> 
> Detailed rationale:
> 
> In C, successive multiplications are evaluated left to right (*), and
> therefore here is what happens (assuming x86_64):
> 
> ``(sizeof(x) * INT_MAX * 2)``:
> 
> 1) sizeof(x) * INT_MAX	(the type is the largest of both, which is
> 			 size_t (unsigned long; uint64_t)).
> 2) ANS * 2		(the type is again the largest: size_t)
> 
> ``(INT_MAX * 2 * sizeof(x))``:
> 
> 1) INT_MAX * 2		(the type is the largest of both, which is
> 			 int as both are int (int; int32_t), so the
> 			 result is already truncated as it doesn't fit
> 			 an int; at this point, the intermediate result
> 			 will be 2^32 - 2 (``INT_MAX - 1``) (if I did
> 			 the math right)).
> 2) ANS * 2		(the type is again the largest of both: size_t;
> 			 however, ANS was already incorrect, so the
> 			 result will be an incorrect size_t value)
> 
> (*):	https://en.cppreference.com/w/c/language/operator_precedence
> 
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>

Thanks! Patch applied.

Cheers,

Michael

> ---
>  man3/cmsg.3          | 2 +-
>  man3/getaddrinfo_a.3 | 2 +-
>  man3/getgrouplist.3  | 2 +-
>  3 files changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/man3/cmsg.3 b/man3/cmsg.3
> index 2f9910093..99ee950f9 100644
> --- a/man3/cmsg.3
> +++ b/man3/cmsg.3
> @@ -242,7 +242,7 @@ cmsg = CMSG_FIRSTHDR(&msg);
>  cmsg\->cmsg_level = SOL_SOCKET;
>  cmsg\->cmsg_type = SCM_RIGHTS;
>  cmsg\->cmsg_len = CMSG_LEN(sizeof(int) * NUM_FD);
> -memcpy(CMSG_DATA(cmsg), myfds, NUM_FD * sizeof(int));
> +memcpy(CMSG_DATA(cmsg), myfds, sizeof(int) * NUM_FD);
>  .EE
>  .in
>  .SH SEE ALSO
> diff --git a/man3/getaddrinfo_a.3 b/man3/getaddrinfo_a.3
> index af8f88937..cd4cad0dc 100644
> --- a/man3/getaddrinfo_a.3
> +++ b/man3/getaddrinfo_a.3
> @@ -473,7 +473,7 @@ add_requests(void)
> 
>      while ((host = strtok(NULL, " "))) {
>          nreqs++;
> -        reqs = realloc(reqs, nreqs * sizeof(reqs[0]));
> +        reqs = realloc(reqs, sizeof(reqs[0]) * nreqs);
> 
>          reqs[nreqs \- 1] = calloc(1, sizeof(*reqs[0]));
>          reqs[nreqs \- 1]\->ar_name = strdup(host);
> diff --git a/man3/getgrouplist.3 b/man3/getgrouplist.3
> index aea52d999..372f2613f 100644
> --- a/man3/getgrouplist.3
> +++ b/man3/getgrouplist.3
> @@ -164,7 +164,7 @@ main(int argc, char *argv[])
> 
>      ngroups = atoi(argv[2]);
> 
> -    groups = malloc(ngroups * sizeof(gid_t));
> +    groups = malloc(sizeof(gid_t) * ngroups);
>      if (groups == NULL) {
>          perror("malloc");
>          exit(EXIT_FAILURE);
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
