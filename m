Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A84767A4D09
	for <lists+linux-man@lfdr.de>; Mon, 18 Sep 2023 17:45:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229722AbjIRPp6 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 18 Sep 2023 11:45:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56168 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229697AbjIRPpy (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 18 Sep 2023 11:45:54 -0400
Received: from mail-lj1-x234.google.com (mail-lj1-x234.google.com [IPv6:2a00:1450:4864:20::234])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AA5F010EC
        for <linux-man@vger.kernel.org>; Mon, 18 Sep 2023 08:44:32 -0700 (PDT)
Received: by mail-lj1-x234.google.com with SMTP id 38308e7fff4ca-2c0179f9043so12251921fa.1
        for <linux-man@vger.kernel.org>; Mon, 18 Sep 2023 08:44:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=szeredi.hu; s=google; t=1695051579; x=1695656379; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=pnZOaaX9WnOq4XyS/JjlYL/avJUHH7HaI21NKLakfeo=;
        b=j2GRKG1OrY8I2YM8MQSp7QaPVHyfcJ1cxWabVqejxTFe/rumngpv2Xh5GJEM4qlOqp
         AGaTzcEoKarx7J+8GklEgXEicZLy1bM1gwfq/7rHqUS06BN1pTKYs1SNEpk1heWVDkah
         7//RA224XGoGJXOLRtre6RmNw//FN3cmAfSm8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695051579; x=1695656379;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pnZOaaX9WnOq4XyS/JjlYL/avJUHH7HaI21NKLakfeo=;
        b=Z5XSyjlTLZrQUZcBSE2hcfMGGl1aUi8YVjfliLhZP8KTbyEeRAtLy5hKtbjVLJa8uc
         bF/KpdaEhdfrXKygvX3EPOiauuYvihkG8K8l9d/zG+XI7AnoORTo3+Sq3jVG1EVCwJDD
         kLrlICeHV+HMIfyAEwDB9/6CONIYacvkOVwcVYGeQhrO1fygbq3CfD/Ovaz3+1S371FJ
         eEtFsbV0KHaYGF29U0preKsPpGw71WoRIna8RAk4aYA0ApMOJIAHfaIIQIf4PwoC2uNW
         IXENSyWNWZo93UXLdksuaBE0VLkwqO9SeA8VVdev8xHItYalVVe9rzdzczQtKLVf536B
         3sBw==
X-Gm-Message-State: AOJu0YxsB3/tjQAa4FnYRSUJWpkwBreoUbBvkc4S9kwpKUhky+NIWxRt
        DOmnjwTa7ReqVPPubLEZqqaSqJv2WtVmP56LF9rmtg==
X-Google-Smtp-Source: AGHT+IEX3jWGmr70VHerLgs6yoJuT4x4No/6ZV9HiQJ69deItIn2LBGC4+/JWaXUJDPQe4rYusp8sYIm7bRZFyKgHH0=
X-Received: by 2002:a2e:8751:0:b0:2bd:1f81:fc47 with SMTP id
 q17-20020a2e8751000000b002bd1f81fc47mr8984284ljj.22.1695051579729; Mon, 18
 Sep 2023 08:39:39 -0700 (PDT)
MIME-Version: 1.0
References: <20230914-salzig-manifest-f6c3adb1b7b4@brauner>
 <CAJfpegs-sDk0++FjSZ_RuW5m-z3BTBQdu4T9QPtWwmSZ1_4Yvw@mail.gmail.com>
 <20230914-lockmittel-verknallen-d1a18d76ba44@brauner> <CAJfpegt-VPZP3ou-TMQFs1Xupj_iWA5ttC2UUFKh3E43EyCOQQ@mail.gmail.com>
 <20230918-grafik-zutreffen-995b321017ae@brauner> <CAOssrKfS79=+F0h=XPzJX2E6taxAPmEJEYPi4VBNQjgRR5ujqw@mail.gmail.com>
 <20230918-hierbei-erhielten-ba5ef74a5b52@brauner> <CAJfpegtaGXoZkMWLnk3PcibAvp7kv-4Yobo=UJj943L6v3ctJQ@mail.gmail.com>
 <20230918-stuhl-spannend-9904d4addc93@brauner> <CAJfpegvxNhty2xZW+4MM9Gepotii3CD1p0fyvLDQB82hCYzfLQ@mail.gmail.com>
 <20230918-bestialisch-brutkasten-1fb34abdc33c@brauner>
In-Reply-To: <20230918-bestialisch-brutkasten-1fb34abdc33c@brauner>
From:   Miklos Szeredi <miklos@szeredi.hu>
Date:   Mon, 18 Sep 2023 17:39:28 +0200
Message-ID: <CAJfpegvTiK=RM+0y07h-2vT6Zk2GCu6F98c=_CNx8B1ytFtO-g@mail.gmail.com>
Subject: Re: [RFC PATCH 2/3] add statmnt(2) syscall
To:     Christian Brauner <brauner@kernel.org>
Cc:     Miklos Szeredi <mszeredi@redhat.com>,
        Linus Torvalds <torvalds@linux-foundation.org>,
        linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-api@vger.kernel.org, linux-man@vger.kernel.org,
        linux-security-module@vger.kernel.org, Karel Zak <kzak@redhat.com>,
        Ian Kent <raven@themaw.net>,
        David Howells <dhowells@redhat.com>,
        Al Viro <viro@zeniv.linux.org.uk>,
        Christian Brauner <christian@brauner.io>,
        Amir Goldstein <amir73il@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Mon, 18 Sept 2023 at 17:22, Christian Brauner <brauner@kernel.org> wrote:
>
> > So to be clear about your proposal: .mnt_root and .mountpoint are
> > initialized by the caller to buffers that the kernel can copy paths
> > into?
>
> Yeah, u64 pointer to a buffer and a size (see e.g., @set_tid and
> @set_tid_size for struct clone_args, @log_buf and @log_size and other
> args in there).
>
> >
> > If there's an overflow (one of the buffers was too small) the syscall
> > returns -EOVERFLOW?
>
> Yeah, I mean we have to make some things their problem.
>
> To me that is an acceptable compromise.

Okay, so there are now (at least) two buffers, and on overflow the
caller cannot know which one got overflown.  It can resize both, but
that doesn't make the caller any simpler to implement.

Also the interface is kind of weird in that some struct members are
out, some are in (the pointers and the lengths).

I'd prefer the single buffer interface, which has none of the above issues.

Thanks,
Miklos
