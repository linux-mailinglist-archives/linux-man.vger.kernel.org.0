Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C14A16A5ADA
	for <lists+linux-man@lfdr.de>; Tue, 28 Feb 2023 15:32:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229629AbjB1Oc1 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 28 Feb 2023 09:32:27 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56232 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229486AbjB1Oc0 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 28 Feb 2023 09:32:26 -0500
Received: from mail-yw1-x1131.google.com (mail-yw1-x1131.google.com [IPv6:2607:f8b0:4864:20::1131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8C2722D171
        for <linux-man@vger.kernel.org>; Tue, 28 Feb 2023 06:32:24 -0800 (PST)
Received: by mail-yw1-x1131.google.com with SMTP id 00721157ae682-536cd8f6034so277277507b3.10
        for <linux-man@vger.kernel.org>; Tue, 28 Feb 2023 06:32:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112; t=1677594744;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=D/DWpY9jG+0Vj6TEUzZ0n7XaUOfKz9frqehaHp++kVU=;
        b=IBTRpOErzxvNiRSGh0BR3htOGXoeWftsv4AVxNYmb3QTy28fh8jGFfGUOSUn1i2aYv
         Nw98DEDhUj7Ta0iYJn9a3gWlMnTog41aJ4Bvla1LATrYBg3MvgDdo8ZYV6UoYWVw9/8j
         ll7o81MPWD4CDjqr02MDzYRuPCO+dVEYN8zy1TvJtN3HgCcC6WIAH5Hl4dTgX5tK2pBl
         Tf+/QPppm39+L/FYjq4qFEe22j6vVJkEpgaHHuB0NVLM36rwMDDwxmyFThZbQsZ6uL18
         j4vltmMRXb4VCj/r777lvvyGYI/Kq6UVmJxMEn0ORdIJPmuEh7HKwbqnYTnATc8t7dav
         phGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1677594744;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=D/DWpY9jG+0Vj6TEUzZ0n7XaUOfKz9frqehaHp++kVU=;
        b=aUy9yYu0aWlu0yZDmdU5rDuUY54cA10masXJvFw4eIQSeoG48tThLX61ZzuU1X72VR
         ww4VOtHjHkfdPXepXCwiEZZRIBN6peo8Zg0Os53ySVFrB71iku4jRjotuS3Ekqdan+Fm
         JZklo+0DyiU4eEHUJP2gq6DSmkduoYmDnAh0VFiG2MzIwumGTWOoRJNFbqWkkufniHuv
         ntF0lypaN9Jaq1cbIVM8j4FkNKKGrp06G1j4H3SoYH4OH/NgjCALwAMVs4GIP1y3zV/i
         4GjLODGVksB59u2pHxxjYZ0kDARt7BuJh2NqIkPaIM/oHseWRBC5ZI6FI3XcciS5uvCq
         a/6Q==
X-Gm-Message-State: AO0yUKXFteDtuAyNKwhpWR7IslV6XhXvVQZ7SgOqfGpAh0/6X5kn9CYB
        2R2U3XlcwrhJBy61MvL7oX+rBj9YOKk3mevxNl+gkg==
X-Google-Smtp-Source: AK7set/xcsAyHPgJwm7dsjwsT5RqEM9rkrB5/jdxZSfZ+JruuzNBRyy0BNawyncyUI7t1M/8wzGwAXsapNvzBLBT8Ms=
X-Received: by 2002:a81:3e0f:0:b0:52e:f66d:b70d with SMTP id
 l15-20020a813e0f000000b0052ef66db70dmr1799412ywa.0.1677594743502; Tue, 28 Feb
 2023 06:32:23 -0800 (PST)
MIME-Version: 1.0
References: <CAJ0cOr-v1GDCqsU86w-rZVvejtppOAW56FxApFPnfPwRmAd47w@mail.gmail.com>
 <CAJ0cOr-x+hg5cH_wHH+uJ4co69qYZN425d-nFdoqFtuM79Kxzg@mail.gmail.com>
 <CAJgzZooiJVgKDH9KkW_FKZJThDVLJjqGLQ3RB1NnHVQVbA-QjQ@mail.gmail.com>
 <2d8c77b3-ba32-1494-037b-ad609e1c263a@gmail.com> <CAJ0cOr_+tgOp4VRvHkPa6o10sTBpM8+T6-DJK2a1JkUBvrHFmA@mail.gmail.com>
 <CAJ0cOr99WV6fbdPj3t7QHG4QH0oHAPZb-8sJWYJ0SPMBBYc_Og@mail.gmail.com>
 <e4de4979-59b1-46b3-66b9-1d54a39bf8fa@cs.ucla.edu> <CAJ0cOr9_w4gjNnTNnMAWP9upxxtjm+x1Fu6CwqG7W=_Xn2CBPQ@mail.gmail.com>
 <3913cf8f-7dff-330b-ea7f-4722ff5b2bbc@cs.ucla.edu>
In-Reply-To: <3913cf8f-7dff-330b-ea7f-4722ff5b2bbc@cs.ucla.edu>
From:   Almaz Mingaleev <mingaleev@google.com>
Date:   Tue, 28 Feb 2023 14:32:12 +0000
Message-ID: <CAJ0cOr9cpWMcO5aCPTdAsfJ=PeDMWeQeu4RZOPSuwNRhLj+UYw@mail.gmail.com>
Subject: Re: %z and %Z in strftime man page require clarification
To:     Paul Eggert <eggert@cs.ucla.edu>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>, enh <enh@google.com>,
        mtk.manpages@gmail.com, linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-17.6 required=5.0 tests=BAYES_00,DKIMWL_WL_MED,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        ENV_AND_HDR_SPF_MATCH,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        USER_IN_DEF_DKIM_WL,USER_IN_DEF_SPF_WL autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Alex and Michael,
Please let me know if the patch proposed by Paul can be applied
on its own.
If you also think that mktime should be updated, I can try to
prepare a patch for it.


On Mon, 27 Feb 2023 at 20:43, Paul Eggert <eggert@cs.ucla.edu> wrote:
>
> On 2/27/23 00:52, Almaz Mingaleev wrote:
> > Thanks Paul, looks good to me. Just one follow-up question: mktime's
> > man page does not mention tm_gmtoff / tm_zone fields. Should it also
> > be updated, for completeness?
>
> Quite possibly. Lots of updates are needed in this area; I'm afraid I
> haven't had time to look into it. (The general rule ought to be to keep
> it short and sweet, and of course that takes more time....)
