Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 563C56A3DB5
	for <lists+linux-man@lfdr.de>; Mon, 27 Feb 2023 10:03:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229775AbjB0JDC (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 27 Feb 2023 04:03:02 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60220 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229705AbjB0JCr (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 27 Feb 2023 04:02:47 -0500
Received: from mail-yw1-x112f.google.com (mail-yw1-x112f.google.com [IPv6:2607:f8b0:4864:20::112f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D13061ACE5
        for <linux-man@vger.kernel.org>; Mon, 27 Feb 2023 00:53:14 -0800 (PST)
Received: by mail-yw1-x112f.google.com with SMTP id 00721157ae682-536be69eadfso156611547b3.1
        for <linux-man@vger.kernel.org>; Mon, 27 Feb 2023 00:53:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112; t=1677487938;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=NsyNxT+cgUfwdKVydNp8DAuNc58fB9BEeRTFm/4w3wI=;
        b=PuurOHvggevLTVqJKOL63zdyqptZnPIJP/Vuhys/3RksiMrgRwdzaa4FtiW9bSjhVo
         FrcON756g2XNSxaErCsqUG5AsyiGS48fWldBbo1R6qix8M0uuM1iAI4FglLJdIpTDgv6
         7nI6QMD+LFEqN/B14zv47d7zI3e+hGvPBnnyB9Z661kT9EAPNoBIgrabNyA9KK4jszGa
         /BI5Mc51q2vYm/WP0HF3nxvNflVjuTV/aDnvKzlKxGyWZl/0nLKvC95YnSKW0c3QvoW4
         03tUkJUCqp2WdyVCowJuGmXN5BAXcHR5bBSeH349eNc8J2sFyPtRgx18R/TWgqVusTSG
         HNVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1677487938;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NsyNxT+cgUfwdKVydNp8DAuNc58fB9BEeRTFm/4w3wI=;
        b=htZBNCuoU7e5nvdkiUaEz2lJhGz9I5WgFp2Oz3YLXZ2oVpSOax9Y1WoUTSR8ufMt+p
         ykJDmT6OVyyfeK1OWc48OwUs9eff/FdGp92xKTWbd5RW+FAq+jT1czODye5KZrxKzJt+
         +RbLc0Rr/PwiKdTHPXo8kEPlPZeP/lhaZ1PtYjAh8PMaSasxrsJjmOKU6at6R7Ki08wz
         G6zDjETYBOumgr84G2IkPdSDij0eLTD5YAy48hAYzl4jWPXH/UpePcGgLHjfNYhnBdDi
         ydbBueK2HYAE4f39JJRbYB4E2cCoF7RWTa2aj/01w2ipX7hCvGg4QzOMDyRu5R8N26mC
         NjwQ==
X-Gm-Message-State: AO0yUKV1jdtPix6Kyt//0H7LgnHaJnVwCdt/+5KV0AhTmaj4tUYWI/qs
        4pT8KGjIM1wRJ11NOu9oj8xOI9Czu0vo7sKJmi9Y7Q==
X-Google-Smtp-Source: AK7set/4B6zyuvQ0XKh9BE9nxrXL6EqocqFoX99jgaFxF3ng0kd+xU8evjK75HRimKGCsuGEiYKuc21Ga5oVvQfEBV4=
X-Received: by 2002:a81:4414:0:b0:52e:f66d:b70d with SMTP id
 r20-20020a814414000000b0052ef66db70dmr9384516ywa.0.1677487937821; Mon, 27 Feb
 2023 00:52:17 -0800 (PST)
MIME-Version: 1.0
References: <CAJ0cOr-v1GDCqsU86w-rZVvejtppOAW56FxApFPnfPwRmAd47w@mail.gmail.com>
 <CAJ0cOr-x+hg5cH_wHH+uJ4co69qYZN425d-nFdoqFtuM79Kxzg@mail.gmail.com>
 <CAJgzZooiJVgKDH9KkW_FKZJThDVLJjqGLQ3RB1NnHVQVbA-QjQ@mail.gmail.com>
 <2d8c77b3-ba32-1494-037b-ad609e1c263a@gmail.com> <CAJ0cOr_+tgOp4VRvHkPa6o10sTBpM8+T6-DJK2a1JkUBvrHFmA@mail.gmail.com>
 <CAJ0cOr99WV6fbdPj3t7QHG4QH0oHAPZb-8sJWYJ0SPMBBYc_Og@mail.gmail.com> <e4de4979-59b1-46b3-66b9-1d54a39bf8fa@cs.ucla.edu>
In-Reply-To: <e4de4979-59b1-46b3-66b9-1d54a39bf8fa@cs.ucla.edu>
From:   Almaz Mingaleev <mingaleev@google.com>
Date:   Mon, 27 Feb 2023 08:52:06 +0000
Message-ID: <CAJ0cOr9_w4gjNnTNnMAWP9upxxtjm+x1Fu6CwqG7W=_Xn2CBPQ@mail.gmail.com>
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

Thanks Paul, looks good to me. Just one follow-up question: mktime's
man page does not mention tm_gmtoff / tm_zone fields. Should it also
be updated, for completeness?
I'd assume it is not a big deal as I couldn't find anyone who faced the
same issue with timezone formatting in strftime, but still.

On Sat, 25 Feb 2023 at 01:11, Paul Eggert <eggert@cs.ucla.edu> wrote:
>
> That patch looks complex and rather than go into its nooks and crannies,
> how about something much simpler, like the attached? This would be
> better for the typical reader of the strftime man page.
>
> Although tm_zone and tm_gmtoff are not 100% portable to oddball
> platforms like MS-Windows, they'll be in the next POSIX and if that
> portability issue is to be documented at all any longwinded discussion
> should go in tm.3type not here.
