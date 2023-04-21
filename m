Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 881C46EB407
	for <lists+linux-man@lfdr.de>; Fri, 21 Apr 2023 23:58:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232058AbjDUV6s (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 21 Apr 2023 17:58:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46328 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231282AbjDUV6s (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 21 Apr 2023 17:58:48 -0400
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com [IPv6:2a00:1450:4864:20::62c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F26F293
        for <linux-man@vger.kernel.org>; Fri, 21 Apr 2023 14:58:46 -0700 (PDT)
Received: by mail-ej1-x62c.google.com with SMTP id a640c23a62f3a-94a34a0b9e2so295336366b.1
        for <linux-man@vger.kernel.org>; Fri, 21 Apr 2023 14:58:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=isovalent.com; s=google; t=1682114325; x=1684706325;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kYdMszRABG6MW2WgEWO+PiUjXtWPZWN6zXGKBnXPsIw=;
        b=MMx9fz8eSTfT5py2aJhvlNHt7lrY24XCo9BhvbtmJvr7KYPiVCuRAHOBM1pEhFNa1Z
         emVDB/93JNUz4LFYvU+admoVsQpLVBT/Getvt/fgZUN2DpczfyQZ/MTGiedTYtNMQ5Qp
         3QjZjBzEecYjta36LlNP8dvTyfyNRmbB+61TGkT5lo75bKjezzsy4mhAb5TtOgneBY/o
         aoSGaxYe8WKJ25NuWl4upgs/jGHYMk5o3153QEaBCj6BYyxtUDfgzMZxYeE4EHDqyxqF
         igRLdw/y2YzUOMWpOhnGLikCxexPefc3eBTrBHiWSDQTQlnOGed+nsbE2XcAUflYpC3G
         wUGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682114325; x=1684706325;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kYdMszRABG6MW2WgEWO+PiUjXtWPZWN6zXGKBnXPsIw=;
        b=YRmkSB5scd5kWzI4xqjaZ2WTa1pdWaYvmd1Jfk51IZO9+9i+pPVn6z2HgyUBkzS/VP
         zxB1SG/pTG3mAFniIuagVH8bZHGN+tQcESPEgYY1fYeypqfN+eHBiodMrtiHnjXz9DmQ
         QAyiwZP6SlpB0XX+VWFTSTtAzdAIiSuTf/chJx54K5NkPYWYWhZJrbxK4g7HTtRARa41
         nAtwfp88gF+tqNbBsN7TxTSA6aGtyrOlVuTKivPTAFxKh+t8+BaoFvQ8oEmvv4dSOzJq
         4DHM/0cZX4JtT6U3t+mzLGWRHkIti1lDIPSTMdATCMVqYGmd2VP54HhBGBxiOGfT9Z1E
         xzxw==
X-Gm-Message-State: AAQBX9fm7TQuvw5YqJPzGFNubke0ETKGnRTGacW03yyfnzPujtZKDdvh
        4vPMAmEtzaEmo2fAkE/TrqxrWFyib3cVQV/y6I842Q==
X-Google-Smtp-Source: AKy350YpUU2rc4p8chkAJLsbmdoQXx6Izf4lTwuRx3By9ve6wp6nbN5/KOd5qUpSRPiypMMJrQ1h6zo9NEh6D/sIruQ=
X-Received: by 2002:a17:907:900e:b0:94e:ec32:ba28 with SMTP id
 ay14-20020a170907900e00b0094eec32ba28mr3314971ejc.29.1682114325424; Fri, 21
 Apr 2023 14:58:45 -0700 (PDT)
MIME-Version: 1.0
References: <20230421150555.5075-1-gnoack3000@gmail.com> <d45fce19-e7eb-ed15-3223-df02ba926cc1@gmail.com>
In-Reply-To: <d45fce19-e7eb-ed15-3223-df02ba926cc1@gmail.com>
From:   Quentin Monnet <quentin@isovalent.com>
Date:   Fri, 21 Apr 2023 22:58:34 +0100
Message-ID: <CACdoK4KUx=ygK-PanXpPfJjivMty5UsEdUx9uPX-btuucFsRwQ@mail.gmail.com>
Subject: Re: [PATCH] mount_setattr.2, openat2.2, bpf-helpers.7, landlock.7: wfix
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     =?UTF-8?Q?G=C3=BCnther_Noack?= <gnoack3000@gmail.com>,
        linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Fri, 21 Apr 2023 at 20:45, Alejandro Colomar <alx.manpages@gmail.com> wr=
ote:

> > diff --git a/man7/bpf-helpers.7 b/man7/bpf-helpers.7
> > index 26ddf8369..663dfd1d1 100644
> > --- a/man7/bpf-helpers.7
> > +++ b/man7/bpf-helpers.7
> > @@ -3025,7 +3025,7 @@ copied and the last byte is set to NUL.
> >  On success, returns the number of bytes that were written,
> >  including the terminal NUL. This makes this helper useful in
> >  tracing programs for reading strings, and more importantly to
> > -get its length at runtime. See the following snippet:
> > +get its length at run time. See the following snippet:
>
> Good, but bpf-helpers.7 is generated from kernel sources.  This
> one will depend on what kernel developers want.  I CCed Quentin,
> since he's nice and might be able to tell if BPF guys are
> interested in this kind of wording fixes.

Hi G=C3=BCnther, Alejandro,

Yes, this page is generated from the comments in
include/uapi/linux/bpf.h, in the kernel repository. From the root of
the repo, you can visualise the changes with:

    $ ./scripts/bpf_doc.py | rst2man | man -l -

I can't speak for the rest of BPF folks, but personally I'm OK with
the patch, especially if it makes spelling more consistent between man
pages. Patches for this file should target the bpf-next tree
(https://docs.kernel.org/bpf/bpf_devel_QA.html#submitting-patches).

Thanks,
Quentin
