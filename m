Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1037D586C8F
	for <lists+linux-man@lfdr.de>; Mon,  1 Aug 2022 16:07:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231915AbiHAOH4 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 1 Aug 2022 10:07:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58142 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229943AbiHAOHz (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 1 Aug 2022 10:07:55 -0400
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com [IPv6:2a00:1450:4864:20::62b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 98A241759C
        for <linux-man@vger.kernel.org>; Mon,  1 Aug 2022 07:07:54 -0700 (PDT)
Received: by mail-ej1-x62b.google.com with SMTP id gk3so8410803ejb.8
        for <linux-man@vger.kernel.org>; Mon, 01 Aug 2022 07:07:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:in-reply-to:references:user-agent:date
         :message-id:mime-version:content-transfer-encoding;
        bh=tebAr8yLyLQlv3t7LJFgWlm5hs5PHrswBDN66M0FIPA=;
        b=Jl5HDpBO+39s9J/rFfmianJfNOd+kJgCIH7ff3nRHQA5uFaVVcDI6vkFUr3IScpUhX
         +/ZXihYHfHcYlhdFQQzQVyGeYrl7CTTz2kreCTp0nyNNdQET1ZCK0xh8STkHfMhClfQM
         AJjEezEqS2Ki8GBMCGGBYP2agm3TPz9R8ccDJ8cPdwD58A1kyJs9Qfcd6O7B9SwiuHw3
         qovd5aE86dgpJm8d5K6Oe6Je1pe0IJl/GpOPhoY5pynhx5afDGyH+wKaRjowpx67dHFC
         Z9yeENp3ff5CewM49faEtTPMfU6wchyNKNatAcBq2/+2ZAi52kd4lOKTyBl0s2Oe0X6v
         nMWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :user-agent:date:message-id:mime-version:content-transfer-encoding;
        bh=tebAr8yLyLQlv3t7LJFgWlm5hs5PHrswBDN66M0FIPA=;
        b=Uke8aZ8UQLTJWPohQLYA61OJ5QFZFXY/hulh5+fP5aKVqcEZSlOkVIE1Qo59Mpz6A0
         yaQkiftap/3IOjmW6oGM936ggl7f1D2RoDINyf0/evsfOpuuAzlZsyoSFXHw0ZdInIlB
         f2hH5e9cg6J2IzENzpW6A6hHjpGH1EjG7zqOH+j64aSSc97OOa+eaTQOpgRN5Pr6MDWb
         xM+n2UGuuSWBP32Hqn1MEXDOHAF4B+/GQOETz9oBV+mFZAfFhUMki69/J7AqUpei6cwj
         1cFW9Qxo9k6bUT/M6A4qkh0+YSYtO2aC0KRwSeXr7i/eNp8TYS+rAhhecjOdL3/7qaw2
         Vegg==
X-Gm-Message-State: ACgBeo051AeZDgQQgaTPvLvN7WPzDQ3yPLGE2eQYxs6nRMixSKs2KkB3
        uxWmmONIBRPUcljgOvSxIHY=
X-Google-Smtp-Source: AA6agR4ufJKsF+lDCHAMT133vOJBryG30jPyOU5Y2c4qIOG7fcoBDuSr3zcQTPfLNTW6MvDHGICRSQ==
X-Received: by 2002:a17:906:eec9:b0:730:8226:3915 with SMTP id wu9-20020a170906eec900b0073082263915mr4282892ejb.513.1659362873122;
        Mon, 01 Aug 2022 07:07:53 -0700 (PDT)
Received: from localhost (internet-185-112-167-51.cznet.cz. [185.112.167.51])
        by smtp.gmail.com with ESMTPSA id e10-20020a056402088a00b0043ba437fe04sm6845275edy.78.2022.08.01.07.07.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Aug 2022 07:07:52 -0700 (PDT)
From:   =?utf-8?B?xaB0xJtww6FuIE7Em21lYw==?= <stepnem@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Cc:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Subject: Re: [PATCH 1/6] getrlimit.2: tfix
In-Reply-To: <d1e19ee4-d75a-86a5-e6c1-32dfd7460a3c@gmail.com>
References: <20220729114506.1669153-1-stepnem@gmail.com>
 <d1e19ee4-d75a-86a5-e6c1-32dfd7460a3c@gmail.com>
User-Agent: Notmuch/0.36 (https://notmuchmail.org) Emacs/29.0.50
 (x86_64-pc-linux-gnu)
Date:   Mon, 01 Aug 2022 16:09:01 +0200
Message-ID: <20220801160901+0200.350977-stepnem@gmail.com>
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

On Mon, 01 Aug 2022 15:03:29 +0200
Alejandro Colomar wrote:

> On 7/29/22 13:45, =C5=A0t=C4=9Bp=C3=A1n N=C4=9Bmec wrote:
>> Signed-off-by: =C5=A0t=C4=9Bp=C3=A1n N=C4=9Bmec <stepnem@gmail.com>
>
> I applied the 6 patches from the patch set, including the controversial=20
> \~ vs '\ ' one.  I think that fix is better as a separate one, which=20
> should include references to the SI that I quoted.

Thank you. For convenience, here is the one '\~' outlier (I was sitting
on that one in case Branden or anyone else would still want to chime in:
the conflict with groff_man(7) does seem unfortunate), feel free to do
with it as you please:

-- >8 --
From: =3D?UTF-8?q?=3DC5=3DA0t=3DC4=3D9Bp=3DC3=3DA1n=3D20N=3DC4=3D9Bmec?=3D =
<stepnem@gmail.com>
Date: Sat, 30 Jul 2022 20:42:03 +0200
Subject: [PATCH] ioctl_fideduperange.2: use '\ ' instead of '\~' between
 number and unit

Signed-off-by: =C5=A0t=C4=9Bp=C3=A1n N=C4=9Bmec <stepnem@gmail.com>
---
 man2/ioctl_fideduperange.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man2/ioctl_fideduperange.2 b/man2/ioctl_fideduperange.2
index 8bf114e8bb3b..585ed8beb9d7 100644
--- a/man2/ioctl_fideduperange.2
+++ b/man2/ioctl_fideduperange.2
@@ -100,7 +100,7 @@ and the struct
 array must not exceed the system page size.
 The maximum size of
 .I src_length
-is filesystem dependent and is typically 16\~MiB.
+is filesystem dependent and is typically 16\ MiB.
 This limit will be enforced silently by the filesystem.
 By convention, the storage used by
 .I src_fd

-- 8< --

> I'll try to apply a global fix about spacing.  Anyway, could you please=20
> share the grep commands you used to find it?  It might help me see you=20
> command, in case I miss some corner cases.

Oh, nothing fancy at all, just grepping for '\ ' or '\~', e.g.

  grep -R '\\~' man*

--=20
=C5=A0t=C4=9Bp=C3=A1n
