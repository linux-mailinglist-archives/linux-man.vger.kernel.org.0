Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3A9E063627D
	for <lists+linux-man@lfdr.de>; Wed, 23 Nov 2022 15:55:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237832AbiKWOzb (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 23 Nov 2022 09:55:31 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56616 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237907AbiKWOz3 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 23 Nov 2022 09:55:29 -0500
Received: from mail-pg1-x52a.google.com (mail-pg1-x52a.google.com [IPv6:2607:f8b0:4864:20::52a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7A68270A3A
        for <linux-man@vger.kernel.org>; Wed, 23 Nov 2022 06:55:27 -0800 (PST)
Received: by mail-pg1-x52a.google.com with SMTP id v3so16964338pgh.4
        for <linux-man@vger.kernel.org>; Wed, 23 Nov 2022 06:55:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=TuABNMzmtMJk533o5Pt4fmGJ6ME5js+SgiYTzgTkNh0=;
        b=WhgpfDnI1QSImekjfUbsO60ghuCZkHXxAn8osbLrglUeFCWDv3PqftvYb7XTJOIQ45
         KCytg3OiK7l22NPpSg+pjoTfZ21qDn98C0CQCrYhCys0Z6y9+SjmSfU836MdraYnIaa1
         lTHYdjnpo6mtvYTtpKzuE87kjoswbHkh9CQkEode2U+TTRFLZDO71PXlD22v9jylkRBo
         yfWRgP+8Nj7tGMBtaWQ6ZzUgbPofkOCiaw0V44pso4IjlTjdULf+Knf6H6jNCjEGfjYT
         6d2NOm6K5tg5UhTzCo+XQGXCPw8SGeqg7VxaPjVhr4WS9HG+Mp/eJgDjXgzUfvMRnGUJ
         UsVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TuABNMzmtMJk533o5Pt4fmGJ6ME5js+SgiYTzgTkNh0=;
        b=gcKchepL5NgBjsrc8ua+ZKGkVN/bKVuogQsyo2Y3DVCCrb9gDyQfjyHFUj4+gTtC/o
         8R2wrNs16WraDkvbg1FlAW3Jr3tapIObT1sisrrS5RW394+rrQ/BETiyTXVy7ypUOyH3
         K0Z+AVsp8AyPuet8Ylo/XkTmbUCkdaJytglkcqocLoMdvrjozdEy43Ej/vp4ot6n71Gi
         8pdUiOzaGJeYjLtto0E4YWh2e15K4vlswhaQwG0sCzC5/n5vae6domGOLBQ8hzTwyp9/
         TqSjzzHeA1S8sJ8FKp0YzSSHS60qk17t31PGMW7lPLAL5d+cyI8+YK6JPugOCU6csavc
         hkHg==
X-Gm-Message-State: ANoB5pl8gnWxCgw1qpUVk5RgIaHUbggy5G74DPl0YdhVMS0wRhVjg4CE
        HjsCMilr6Ic5ZJF6i0/iB7/cKJ1tQm0txDCPMOA=
X-Google-Smtp-Source: AA0mqf5jN3fc8gphv3S+BgC+TYl3ktWck64zNyYk29trpsEDIv2AIaKKqM87OQGinlw3y3oy2ApAzRwyBohl8mStUV0=
X-Received: by 2002:a05:6a00:10cd:b0:567:546c:718b with SMTP id
 d13-20020a056a0010cd00b00567546c718bmr9407505pfu.17.1669215326983; Wed, 23
 Nov 2022 06:55:26 -0800 (PST)
MIME-Version: 1.0
References: <20221110001318.10696-1-andrew@digital-domain.net>
 <853fa349-8e78-8ce8-f76f-79b4b9353913@gmail.com> <Y31XOPOsB932l0cd@thunder.hadrons.org>
 <CACKs7VAQsxDc2XrsAYSEbA9eqRnLHuXykVmNTit+tCFMyGLCwA@mail.gmail.com> <50485f46-99d0-69ee-0882-7e403334080c@gmail.com>
In-Reply-To: <50485f46-99d0-69ee-0882-7e403334080c@gmail.com>
Reply-To: noloader@gmail.com
From:   Jeffrey Walton <noloader@gmail.com>
Date:   Wed, 23 Nov 2022 09:55:15 -0500
Message-ID: <CAH8yC8=TWk=umVZ-mt29wzQe7xGMXYQ7cZ0rgCG88Dn3x7QLNA@mail.gmail.com>
Subject: Re: [musl] Re: [PATCH] memmem.3: Added list of known systems where
 this is available
To:     musl@lists.openwall.com
Cc:     Stefan Puiu <stefan.puiu@gmail.com>,
        Guillem Jover <guillem@hadrons.org>,
        Andrew Clayton <andrew@digital-domain.net>,
        linux-man@vger.kernel.org,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        Alejandro Colomar <alx@kernel.org>,
        Brian Inglis <Brian.Inglis@systematicsw.ab.ca>,
        Rich Felker <dalias@libc.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Wed, Nov 23, 2022 at 9:29 AM Alejandro Colomar
<alx.manpages@gmail.com> wrote:
>  ...
> >> In any case I also find it useful to have this kind of portability
> >> information when deciding what to use in code.
>
> And I must admit it's also useful to me (this all started because Andrew and I
> had to use memmem(3) at a project where macOS compatibility is relevant --not
> critical, but relevant--).

If you are a die-hard free software person using GNU gear, then Gnulib
provides memmem. There's no need to worry about availability or
portability courtesy of Gnulib. See
https://www.gnu.org/software/gnulib/manual/html_node/memmem.html .

Jeff
