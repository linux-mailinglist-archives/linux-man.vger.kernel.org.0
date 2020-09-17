Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6701926E712
	for <lists+linux-man@lfdr.de>; Thu, 17 Sep 2020 23:05:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726344AbgIQVFn (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 17 Sep 2020 17:05:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35780 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726234AbgIQVFm (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 17 Sep 2020 17:05:42 -0400
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com [IPv6:2a00:1450:4864:20::344])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 39EA4C06174A
        for <linux-man@vger.kernel.org>; Thu, 17 Sep 2020 14:05:42 -0700 (PDT)
Received: by mail-wm1-x344.google.com with SMTP id q9so3285327wmj.2
        for <linux-man@vger.kernel.org>; Thu, 17 Sep 2020 14:05:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=pA5ZUCNYuVu4EpFwVqNWhLHePdRINhy7jXIUBdlTxXk=;
        b=XXPK3LpvKW857yAWDSTXKJTVd7JDSprRuZ1OB3TgIMG3WftZlJW4z3lb8nrG041W24
         vbqAaFEHWcDPSR/oeGvWLpHoK82PsQcXlX5sPKn85l05m2suXldzM94DsfYIFSOTSNAq
         +mvMeRgK10ncm+LyktRfRczYMumbPaFwyLfTfPEIN/fNtDOASMyp8jvtPVyE9M8Kkz3A
         NDGPD53jlTXB3Qq2IbjJkUC3AHJGg4l56NQUk2PB2IVraCGbbginmwK7Cw4our4B/LDh
         gNvUL/Wp1zMTP4pvcWIBnM3F6R1OYzWJoKJfbTKHlc+gHRF6TQoEt2wcDm/Ye0VMWY80
         fXEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=pA5ZUCNYuVu4EpFwVqNWhLHePdRINhy7jXIUBdlTxXk=;
        b=dT7zHq35cyGfSt3g1HTBQYNrpAs90J9ADMXpPejQN/0wn9ky1LEelEwo8bJl3Ql/VW
         kUVGPxqDlYDAGATQVEYMm4Tf82n7uFv1Npf1/9OZQDySamY61kvfOySAbeotAdwsBDgD
         K59L+veH1iaAHe5vsBV+O4cJb6vXr0IiDr4bKhsBZPgp85T2SKJUFJMhkeWbS0ABCe6d
         qVCawlM8byiIe6qVGkol+dPM5KwwlGgMCP8/eKLj0Pc3ezDdczgjVpVw9k5JOoSSZJp2
         RCSDFiTc/Aubi9K7X/sgdAS5XU+LqJVO3Fke4pLlpjf7JSjBjjuSy7v0qJVcznEKg5MC
         Jogg==
X-Gm-Message-State: AOAM533HW+v0vY5sF8UKoBjMEX+vKq3kWT2Ch2R+bz1OUU2rhW7Zfn7x
        5skmc8MsWcELUU/iZ/M70sg=
X-Google-Smtp-Source: ABdhPJy5fHFpZSJ50TbHn1Wmn6gUmQC2SxP0cNYheoSR1ZSMwKo18QSUuZqf6LHNmNKJ3iW4QkVzJg==
X-Received: by 2002:a1c:1f42:: with SMTP id f63mr11567922wmf.1.1600376740703;
        Thu, 17 Sep 2020 14:05:40 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id n2sm1339622wma.29.2020.09.17.14.05.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 17 Sep 2020 14:05:39 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org, tg@mirbsd.org,
        fweimer@redhat.com, jwilk@jwilk.net, libbsd@lists.freedesktop.org,
        Andries.Brouwer@cwi.nl
Subject: Re: [PATCH v7 0/8] Document system data types
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <6dc80c25-85bf-925c-49c2-f79865027c0f@gmail.com>
 <20200917104305.12270-1-colomar.6.4.3@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <a4840762-ecdf-121d-198b-537125cad603@gmail.com>
Date:   Thu, 17 Sep 2020 23:05:37 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200917104305.12270-1-colomar.6.4.3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Alex

On 9/17/20 12:42 PM, Alejandro Colomar wrote:
> Hi Michael,
> 
> I'm proud enough of the result to commit it now :-}.

And fair enough! It's been a great piece of work!

> Changelog since v6:
> 
> - ffix
> - wsfix
> - wfix
> - Change ordering of headers (no actual change)
> - Curate See also (sigval)
> - Add NOTES section (about structures)

I've merged all of the patches. However, I then squashed 
all the patches adding the links into a single commit.

> On 2020-09-17 12:27, Michael Kerrisk (man-pages) wrote:
>> That sounds okay to me. I presume you plan to uncomment the
>> lines above that mention sigevent and siginfo_t, right?
> 
> Right.

Did you actually do that.? It seems not. Wanna send me 
a patch?

Thanks,

Michael




-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
