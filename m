Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 19BE35323A3
	for <lists+linux-man@lfdr.de>; Tue, 24 May 2022 09:08:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234446AbiEXHH5 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 24 May 2022 03:07:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33244 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229638AbiEXHH5 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 24 May 2022 03:07:57 -0400
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 509DC5DBCB
        for <linux-man@vger.kernel.org>; Tue, 24 May 2022 00:07:56 -0700 (PDT)
Received: by mail-lf1-x12f.google.com with SMTP id bu29so29351044lfb.0
        for <linux-man@vger.kernel.org>; Tue, 24 May 2022 00:07:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=6l7t0h2YC+wKXRk5x8cBxK3PP/Ta2EEILKWcZVN8p4M=;
        b=A/UpdAPpZ4y6k6vj6hSloOxF+a0diEOOzkyLVOT8+e+2tAhMImm0T5OXORYny08LNe
         XjfamedcQjFat/WuhUfFWQiy2EH3lYKhhCm06xHqMwXsR0P2yNL/lg3d6IaOe4FtDg4w
         d6Xg/bvijwIxckXNTwbJTY7zv9LVox4YG/Zjnwd7wTCDID2m+VSfPETqgmnc2OuFmEhT
         6xMhbUkcGvZjzBp4FZKNMu1zGwRd3gIxVHVeoMYkkIj5lXjdB6c/orCfTjbXLa0pzTMV
         cw1eVxbb+lQy4UsSQGfr4Tah9BFfcDtIf3U6t4XM321oNDgDRXzvgqWhhExuV6yH1KMO
         VF/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=6l7t0h2YC+wKXRk5x8cBxK3PP/Ta2EEILKWcZVN8p4M=;
        b=WIhVpN3bwua211/lul4zzojyT8AP4D3ryDGMB2tB1dE/CtMyDA0H/xuYRrLinv4lEs
         qtBqjKJZyk90C3qf8AmcT3zx1KlpV/4f0lIZALLvjRmLuMii2YmVJBMGxNbWepBCq8AS
         +44F2mkVOc46c11I9rMjjwfbNbNs6zRkHDazHt4iNT5h5OcqpbcmqdzwtNxF/93EMjoK
         JBOh+ufOLppdVUZRzc9MuO+OBSDp5xt7ng67bBHcMVR1TxTLAoAE/y93j9opH/EmvyFz
         Mt+nyIc4Lb+ispYo/ogCS49TTvELQmbwZP+mBogZ759dCug0hb4LlSlZbcRdN3EqSgJa
         hcAg==
X-Gm-Message-State: AOAM532O7bmqiotgJYDn8bJlapO0x8/34t2JFSl8oifAPDQ+5vfy9ICD
        pmtCkCXz9XNbRm+QBODvkQd3KBU2y712jA93FVAzr577NLs=
X-Google-Smtp-Source: ABdhPJwQTRRE8Yjch+Zt/JvkdfSoIFLd2V4U48lGKVf3L+/r5E0ZzbSqYuq2pvKumL4Xf/a7FJyzfQ5W+uweQbHZa2c=
X-Received: by 2002:a05:6512:a8d:b0:477:cbab:94e7 with SMTP id
 m13-20020a0565120a8d00b00477cbab94e7mr16535744lfu.325.1653376074503; Tue, 24
 May 2022 00:07:54 -0700 (PDT)
MIME-Version: 1.0
References: <20220520141040.1136383-1-vincent@vinc17.net> <ca8d1d17-4bde-6728-fa15-8655f3e14c3c@gmail.com>
 <20220520161121.GA1112518@zira.vinc17.org> <f5fef324-4883-197e-1e3d-e3b5b36ceaf9@gmail.com>
 <20220520173043.GC1112518@zira.vinc17.org>
In-Reply-To: <20220520173043.GC1112518@zira.vinc17.org>
From:   Stefan Puiu <stefan.puiu@gmail.com>
Date:   Tue, 24 May 2022 10:07:43 +0300
Message-ID: <CACKs7VAsrEzneeu84quRvw5cRcio-j2rAWyHvQTNZf6_5CqWtg@mail.gmail.com>
Subject: Re: [PATCH] printf.3: Document 'l' length modifier for a, A, e, E, f,
 F, g, and G
To:     Vincent Lefevre <vincent@vinc17.net>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        lnx-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Vincent,

On Sat, May 21, 2022 at 8:33 AM Vincent Lefevre <vincent@vinc17.net> wrote:
>
> Signed-off-by: Vincent Lefevre <vincent@vinc17.net>
> ---
>  man3/printf.3 | 11 +++++++++++
>  1 file changed, 11 insertions(+)
>
> diff --git a/man3/printf.3 b/man3/printf.3
> index 4fa1f11f3..a231d626c 100644
> --- a/man3/printf.3
> +++ b/man3/printf.3
> @@ -503,6 +503,17 @@ argument, or a following
>  conversion corresponds to a pointer to
>  .I wchar_t
>  argument.
> +On a following
> +.BR a ,
> +.BR A ,
> +.BR e ,
> +.BR E ,
> +.BR f ,
> +.BR F ,
> +.BR g ,
> +or
> +.B G
> +conversion, this length modifier is ignored (C99; not in SUSv2).

I'm not a native English speaker, but I think "Following a ...
conversion" sounds better, unless I misunderstand the phrase.

My 2 cents,
Stefan.

>  .TP
>  .B ll
>  (ell-ell).
> --
> 2.36.1
>
