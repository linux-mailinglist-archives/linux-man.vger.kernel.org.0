Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4C9A7768018
	for <lists+linux-man@lfdr.de>; Sat, 29 Jul 2023 16:39:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229971AbjG2OjO (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 29 Jul 2023 10:39:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32798 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229741AbjG2OjN (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 29 Jul 2023 10:39:13 -0400
Received: from mail-yw1-x1135.google.com (mail-yw1-x1135.google.com [IPv6:2607:f8b0:4864:20::1135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4AB70A8
        for <linux-man@vger.kernel.org>; Sat, 29 Jul 2023 07:39:12 -0700 (PDT)
Received: by mail-yw1-x1135.google.com with SMTP id 00721157ae682-5841be7d15eso33814227b3.2
        for <linux-man@vger.kernel.org>; Sat, 29 Jul 2023 07:39:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1690641551; x=1691246351;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5XGxqX0XHfInh782meH1lyoRZmlxFFhmxg7Ce3Cx2a0=;
        b=nGoPLzRZ5p3OYua0XhByk12QOIsDXh5rLJYuGLguGI0Gvih7EmwfabOh5AIPmZM5BO
         wu6KMAtzL3mLzsVTYQqFNTbVb0iFE9lHzBwSVEJqFwNHkahSAIYh8JQo/5S5RM5X6NrP
         LOTHZ6dc5kp6LyRFkWgqb81iQlO50K8IVpiVo/477QbMkqAjwYQOSvHv1O1VyLHuCzYf
         eESfLu+iFrpW/gI4SALHidHHgJ065HFcBMJJJ1u97pO1kymfcFAlrEzJp0DoMvlqiTk2
         4yqPgSWEtpibPmmT8AWcOfhDJyNd9SSyucMHNHqRcAQhIO62baPwD43jrDpPwGCCuoKA
         l9uA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690641551; x=1691246351;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5XGxqX0XHfInh782meH1lyoRZmlxFFhmxg7Ce3Cx2a0=;
        b=id5tEjK+X4MYL61McO5g2iXYs8p9l+i6B9sXZp5cghG+Zjm1yMmsaa4Ll3vEDbJndF
         MIiKK4EMyIf5qN4tPmPwW/5jtHx26tkOqofRPTUVJ+5xfmo3pn698jsPB8aRIt/nlghH
         puTJ4cFrrgjL3YbH4xGcA9ErC1PM/mGUHvo0Ekb9tWOJKAGyEzGmyNO+8gV+iO6ziang
         YwhzuaczqmF5+8peOg8+4UsQbDtQwmvdKwL+pNPh0zLmhOyKL0/EBkkEMjbImSJNSwaf
         W+CT9vVpuhDT8Ip+nFw8Tz0yF1jDyOkl+4TzAJvuZgUGOWQ8Jmsa5TXSDZLh74Pj2dPA
         PPRA==
X-Gm-Message-State: ABy/qLactuzPYPljfenbfeW4luhisLhR3ffB7CwEVNy/kq+32Ddft0BF
        vZogq+wwEUHNpe44dD/wI4o=
X-Google-Smtp-Source: APBJJlHMHLSnLnDXqNXJNscko2D/qWrk4I3NmqI+RRg+wOqtJvlvUkjh0BFedZkmCIn3dkUpg+Xoow==
X-Received: by 2002:a81:83ca:0:b0:56d:330d:86e2 with SMTP id t193-20020a8183ca000000b0056d330d86e2mr5474823ywf.28.1690641551431;
        Sat, 29 Jul 2023 07:39:11 -0700 (PDT)
Received: from firmament.home.arpa (c-73-106-204-164.hsd1.ga.comcast.net. [73.106.204.164])
        by smtp.gmail.com with ESMTPSA id g5-20020a0ddd05000000b005616d72f435sm1798444ywe.116.2023.07.29.07.39.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 29 Jul 2023 07:39:11 -0700 (PDT)
From:   Matthew House <mattlloydhouse@gmail.com>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     Lennart Jablonka <humm@ljabl.com>, linux-man@vger.kernel.org
Subject: Re: [PATCH] string_copying.7: don't grant strl{cpy,cat} magic
Date:   Sat, 29 Jul 2023 10:38:46 -0400
Message-ID: <20230729143855.1656509-1-mattlloydhouse@gmail.com>
In-Reply-To: <48509f53-05c5-4a6f-7ad8-e5d1639dc674@kernel.org>
References: <ZMQVYtquNN-s0IJr@beryllium> <8fe571c9-eda2-bd1e-0d78-9c5e8f7222fe@kernel.org> <ZMRUmgRfRVxL3wEo@fluorine.ljabl.com> <48509f53-05c5-4a6f-7ad8-e5d1639dc674@kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Sat, Jul 29, 2023 at 8:29 AM Alejandro Colomar <alx@kernel.org> wrote:
> I lied.  I should have said that it writes what is safe to write, and
> then uses a somewhat "safer" version of undefined behavior (compared
> to other string copying functions).  The standard differentiates
> "bounded UB", which doesn't perform out-of-bounds stores, from
> "critical UB", which performs them.  In usual jargon, UB is UB, and
> there's no mild form of UB; however, the standard prescribes a bounded
> form of UB.  However, I'm not sure compilers --and specifically GCC--
> follow such a prescription of bounded UB, so it's better to consider
> all UB to be critical UB, just to fall on the safe side.

Do you have a source for this? As far as I am aware, the standards have
always followed the "UB is UB" philosophy, which is why standards-oriented
people keep trying to reiterate it. I've never heard of anything like
"bounded UB" vs. "critical UB". C17 draft N2176 provides no such
distinction in its definition:

> 3.4.3
> undefined behavior
>
> behavior, upon use of a nonportable or erroneous program construct or of
> erroneous data, for which this International Standard imposes no
> requirements
>
> Note 1 to entry: Possible undefined behavior ranges from ignoring the
> situation completely with unpredictable results, to behaving during
> translation or program execution in a documented manner characteristic of
> the environment (with or without the issuance of a diagnostic message), to
> terminating a translation or execution (with the issuance of a diagnostic
> message).
>
> EXAMPLE An example of undefined behavior is the behavior on integer
> overflow.

(In the C23 draft, another note has been added and the example has been
modified, but the definition remains the same. In [intro.abstract], C++ is
even more thorough, clarifying that UB at any point trashes the entire
program execution, past and future.) POSIX is a bit more vague, warning
that UB can result in arbitrary nonexistent or invalid values or behaviors:

> undefined
>
> Describes the nature of a value or behavior not defined by POSIX.1-2017
> which results from use of an invalid program construct or invalid data
> input.
>
> The value or behavior may vary among implementations that conform to
> POSIX.1-2017. An application should not rely on the existence or validity
> of the value or behavior. An application that relies on any particular
> value or behavior cannot be assured to be portable across conforming
> implementations.

The closest thing I can find to "bounded" vs. "critical UB" is an old
proposal by Thomas Plum in 2007-8 (documents N1278, N1331, and N1344) to
define "critical undefined behavior". Is this proposal what you're
referring to? It never made it anywhere near being added to the standard,
as far as I can tell.

Thank you,
Matthew House
