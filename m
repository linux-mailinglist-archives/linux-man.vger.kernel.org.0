Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CBF0B6EBB25
	for <lists+linux-man@lfdr.de>; Sat, 22 Apr 2023 22:19:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229895AbjDVUTK (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 22 Apr 2023 16:19:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39312 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230044AbjDVUS1 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 22 Apr 2023 16:18:27 -0400
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com [IPv6:2a00:1450:4864:20::52d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3E3782690
        for <linux-man@vger.kernel.org>; Sat, 22 Apr 2023 13:18:00 -0700 (PDT)
Received: by mail-ed1-x52d.google.com with SMTP id 4fb4d7f45d1cf-50674656309so4362503a12.0
        for <linux-man@vger.kernel.org>; Sat, 22 Apr 2023 13:18:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682194678; x=1684786678;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=0mbRcnrWhSeM0U/4E3Ug3ZrctpDrFh5sUGyUL/1OA3U=;
        b=Cc6Lq5gjuUfnxmnWP9HWpZC2WmAaCd2xGa2xKSCx3nr8F854kkZyfnOXNWsvb+k7GN
         9EzgEJMJ3yrGfrpMCpeE33F2drnMopcZMmYZtamEXeI3806t6AvrMwiKqdOyc0FDCSnZ
         89mDZsLWs1F5p1m17enhVSTkE0msmhTl4X3Mi4IcU9XEUfQfmclmOWNAEVcnGG25PGa5
         iXowVSlBfj+aawQVe4Ky3jViaUM+UT4gA2VEWQNL2SNy9F5nITzI9twuaH24mwZdYlF3
         XqDyaUNhKtEAgxukagNHoE7y8c1EmI2M3BHYKvgbFUgsigGw6ziLT/qrzhg9UJSp8yqp
         ffGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682194678; x=1684786678;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=0mbRcnrWhSeM0U/4E3Ug3ZrctpDrFh5sUGyUL/1OA3U=;
        b=ETLPCR4IdhT0A33f7ry2Jr2ET6feAa/oFx9cIztstkaJfj9o/K+JBWrsld+xUGXuwn
         O+p5QY0Vhow3a/9f4TljXhxpr2C6xcDI2uaKKqcT/ssppmF5o7I0SAnNgr/N2ecYGlGd
         7Z1Mu4VCvS8QU6uHohV21qtD/OsLb1rL5Gu1QMt8TNNpx2GTlsPL1cUu+PaVvbBZSdXZ
         lYP3PQwOOA+o/3Or7VKhoLMqv6oLXbFzgymdyinm5kPcauDYMlLH+Qn60gHFzWE745wl
         fDTJ1ZtsNab+NJk9MY3FELYYeaLGejgMa6cuVu+Ap+7Sy1qarWQoOkBCqn0lMjQ4iPpv
         19JQ==
X-Gm-Message-State: AAQBX9eDeUqTpdz2yAMim0AVxsRmLq3+MmmRXey9+7aZlTP2wbgvVETZ
        3OHyp0M5qRyz9WDBIaC6AoQ=
X-Google-Smtp-Source: AKy350afpmyR7fZ8RSVpgFGanBNh+Moga1ehYmAqVya8zk0lZYhFZq52jWKqKMEpPBjl4isVflfeQQ==
X-Received: by 2002:aa7:da44:0:b0:504:aae4:a034 with SMTP id w4-20020aa7da44000000b00504aae4a034mr8206917eds.31.1682194677548;
        Sat, 22 Apr 2023 13:17:57 -0700 (PDT)
Received: from localhost ([2a02:168:633b:1:9d6a:15a4:c7d1:a0f0])
        by smtp.gmail.com with ESMTPSA id w20-20020aa7cb54000000b004fa19f5ba99sm3073831edt.79.2023.04.22.13.17.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 22 Apr 2023 13:17:57 -0700 (PDT)
Date:   Sat, 22 Apr 2023 22:17:55 +0200
From:   =?iso-8859-1?Q?G=FCnther?= Noack <gnoack3000@gmail.com>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     Quentin Monnet <quentin@isovalent.com>, linux-man@vger.kernel.org
Subject: Re: [PATCH] mount_setattr.2, openat2.2, landlock.7: wfix
Message-ID: <20230422.a974761497ef@gnoack.org>
References: <20230422150646.5263-1-gnoack3000@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230422150646.5263-1-gnoack3000@gmail.com>
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Whoops, this was meant to be a "V2" patch, of course...

–Günther

On Sat, Apr 22, 2023 at 05:06:46PM +0200, Günther Noack wrote:
> Fix spelling of "run time", as documented in man-pages(7):
> 
> * "run time" in two words when used as a noun
> * "run-time" with hyphen when used as an adjective
> 
> There is another occurrence in bpf-helpers.7,
> but that content gets generated from the kernel source
> and should be fixed there.
> 
> Signed-off-by: Günther Noack <gnoack3000@gmail.com>
> ---
>  man2/mount_setattr.2 | 2 +-
>  man2/openat2.2       | 2 +-
>  man7/landlock.7      | 2 +-
>  3 files changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/man2/mount_setattr.2 b/man2/mount_setattr.2
> index 24801a4bd..8df02641a 100644
> --- a/man2/mount_setattr.2
> +++ b/man2/mount_setattr.2
> @@ -862,7 +862,7 @@ may change in the future
>  user-space applications should zero-fill
>  .I struct mount_attr
>  to ensure that recompiling the program with new headers will not result in
> -spurious errors at runtime.
> +spurious errors at run time.
>  The simplest way is to use a designated initializer:
>  .PP
>  .in +4n
> diff --git a/man2/openat2.2 b/man2/openat2.2
> index e90211fad..182851089 100644
> --- a/man2/openat2.2
> +++ b/man2/openat2.2
> @@ -545,7 +545,7 @@ may change in the future (with new fields being added when system headers are
>  updated), user-space applications should zero-fill
>  .I struct open_how
>  to ensure that recompiling the program with new headers will not result in
> -spurious errors at runtime.
> +spurious errors at run time.
>  The simplest way is to use a designated
>  initializer:
>  .PP
> diff --git a/man7/landlock.7 b/man7/landlock.7
> index b6c9d3821..df7b87e80 100644
> --- a/man7/landlock.7
> +++ b/man7/landlock.7
> @@ -251,7 +251,7 @@ will stay enforced on all this thread's descendants.
>  This allows creating standalone and modular security policies
>  per application,
>  which will automatically be composed between themselves
> -according to their runtime parent policies.
> +according to their run-time parent policies.
>  .\"
>  .SS Ptrace restrictions
>  A sandboxed process has less privileges than a non-sandboxed process and
> 
> base-commit: 59e44e4511391a98f531c08aaba17391f3b7075b
> -- 
> 2.40.0
> 
