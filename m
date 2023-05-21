Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7A2FB70AFF4
	for <lists+linux-man@lfdr.de>; Sun, 21 May 2023 21:34:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229726AbjEUTeK (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 21 May 2023 15:34:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39526 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229563AbjEUTeH (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 21 May 2023 15:34:07 -0400
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com [IPv6:2a00:1450:4864:20::636])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 06D68DD
        for <linux-man@vger.kernel.org>; Sun, 21 May 2023 12:34:06 -0700 (PDT)
Received: by mail-ej1-x636.google.com with SMTP id a640c23a62f3a-969f90d71d4so782424066b.3
        for <linux-man@vger.kernel.org>; Sun, 21 May 2023 12:34:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684697644; x=1687289644;
        h=user-agent:message-id:in-reply-to:references:from:subject:cc:to
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=GoooyIBL9/kqCcZ9bFDaNRchyS+vK83vkFm2wRuz7v4=;
        b=qccx0wozfcdVkPlXP+bPWns7gdyfyLsB0copaJVtefkJ46JFPpvPWmMpGHhxu+4geq
         8sPpDbRqA1wFeU5dVzJxCbgwSyq/AfzqFaYOQ7r/x1AHgGtsFZLxLrypwSYj6Vmoe7VA
         9nfJtMxk3hSH9kvyRQrbTtzBP8aOMPcKy26SDFU9OjzQoyAOzObqkXGzgmohiYCMxEW6
         MHqHqzEr2SBIDvOUOhlG5CCBEVA1iz0zkoiSgALK0IzewyQWZM92rYO5ZDBsKM9J8Blp
         frmFHBk6ISwcZeUrkqSGmOrTK0TBEbBwEQJuVPUt074pQwj9g0CJDjsTXnEBjO+IwFKg
         lG7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684697644; x=1687289644;
        h=user-agent:message-id:in-reply-to:references:from:subject:cc:to
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=GoooyIBL9/kqCcZ9bFDaNRchyS+vK83vkFm2wRuz7v4=;
        b=FzckYy3dTgBJvzrKZc5I1g2KIy9mktgClZ7Blfej9yS7HyQucvRyMFund80kzJoEMA
         iYDZakMuk6342oGvnYzH2eW6cTFpHQfz0kWkc9DPu1R/KOnqUT6CJMJahCiBz22YoVXp
         Yaa3WHFMUIy4wPxgjmu57ZxRLTNHlW/c8w1Gj5/6xO0m+zmCvDsVqovOhCjQrSSaYbnd
         4ol7GMgmdWZnKAZzbcckSZbq2CZFPXeTCG4CyqqaugffFTDgOjPRyWoTISORo+rLOuxh
         3jKldnVqw36nN7W3tr2FHjaTMYPz8CFn0r6CmdvUbMQE06atSfqtAOA0NvTijT/Lt3rB
         cDCg==
X-Gm-Message-State: AC+VfDwkUkpRcQ0ldS3Oma7+bCNuQvagjRYdeBaiugN5JzNmYnty2O6c
        vhkhIgM3tTQfL2Lm/8Pb0gg=
X-Google-Smtp-Source: ACHHUZ75YHo7IqAnm0SMFYdh8EOOD6gHYUyBuJYDclZG6YYysnFSQsEFwPPx5dMq6lMSq3Aq9u6mPQ==
X-Received: by 2002:a17:906:fd8e:b0:96f:44b0:b3c0 with SMTP id xa14-20020a170906fd8e00b0096f44b0b3c0mr7192475ejb.56.1684697644211;
        Sun, 21 May 2023 12:34:04 -0700 (PDT)
Received: from localhost ([2a02:169:1e9:0:8f4d:9ee2:cc35:c67b])
        by smtp.gmail.com with ESMTPSA id h14-20020a17090619ce00b0096f84292cf5sm2205096ejd.132.2023.05.21.12.34.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 21 May 2023 12:34:03 -0700 (PDT)
Date:   Sun, 21 May 2023 21:34:02 +0200
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, Reuben Thomas <rrt@sc3d.org>,
        Steffen Nurpmeso <steffen@sdaoden.eu>,
        Bruno Haible <bruno@clisp.org>,
        Martin Sebor <msebor@redhat.com>,
        Alejandro Colomar <alx@kernel.org>
Subject: Re: [PATCH v1b] iconv.3: Clarify the behavior when input is untranslatable
From:   "Silvan Jegen" <s.jegen@gmail.com>
References: <CAOnWdoiYKybuDioeG01szmZAL_zkoU4RTqiP=ca6z6bqVj+OQA@mail.gmail.com> <20230520120458.6681-1-alx@kernel.org>
In-Reply-To: <20230520120458.6681-1-alx@kernel.org>
Message-Id: <3LV5SUSIERJL9.32AD41CNEEINU@homearch.localdomain>
User-Agent: mblaze/1.2-18-g13a188d (2023-03-25)
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Heyhey!

Just one typo I noticed below.

Alejandro Colomar <alx.manpages@gmail.com> wrote:
> From: Reuben Thomas <rrt@sc3d.org>
> 
> The manual page does not fully reflect the behaviour of glibc's
> iconv(3).  The manual page says:
> 
>     The conversion can stop for four reasons:
> 
>     -  An invalid multibyte sequence is encountered in the input.  In
>        this case, it sets errno to EILSEQ and returns (size_t) -1.
>        *inbuf is left pointing to the beginning of the invalid multibyte
>        sequence.
> 
>     [...]
> 
> The phrase "An invalid multibyte sequence is encountered in the input"
> is confusing, because it suggests that it refers only to the validity of
> the input per se (e.g. a non-UTF-8 sequence in input purporting to be
> UTF-8).
> 
> However, according to the original author of the manual page, Bruno
> Haible[1], it also refers to input that cannot be translated to the
> desired output encoding; and indeed, glibc's iconv returns EILSEQ when
> the input cannot be translated, even though it is valid.
> 
> This patch adds language that reflects the actual behavior.
> 
> Link: [1] <https://sourceware.org/bugzilla/show_bug.cgi?id=29913#c4>
> Link: <https://bugzilla.kernel.org/show_bug.cgi?id=217059>
> Signed-off-by: Reuben Thomas <rrt@sc3d.org>
> Cc: Steffen Nurpmeso <steffen@sdaoden.eu>
> Cc: Bruno Haible <bruno@clisp.org>
> Cc: Martin Sebor <msebor@redhat.com>
> Signed-off-by: Alejandro Colomar <alx@kernel.org>
> ---
> 
> Hi,
> 
> I'm resending Reuben's patch inline CCing all interested parties.  I'm,
> similarly to Steffen, not convinced that invalid input englobes output
> errors.  So, I think it would be better to split it into 2 different
> reasons, so that we have a 5th reason for the error.
> 
> I also slightly tweaked the commit log regarding formatting.
> 
> What do you think about having a 5th reason?
> 
> Cheers,
> Alex
> 
>  man3/iconv.3 | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/man3/iconv.3 b/man3/iconv.3
> index 66f59b8c3..e8694ca12 100644
> --- a/man3/iconv.3
> +++ b/man3/iconv.3
> @@ -73,7 +73,8 @@ .SH DESCRIPTION
>  such input is called a \fIshift sequence\fP.
>  The conversion can stop for four reasons:
>  .IP \[bu] 3
> -An invalid multibyte sequence is encountered in the input.
> +An multibyte sequence is encountered in the input which is either invalid,

s/An/A/


Cheers,
Silvan

> +or cannot be translated to the character encoding of the output.
>  In this case,
>  it sets \fIerrno\fP to \fBEILSEQ\fP and returns
>  .IR (size_t)\ \-1 .


