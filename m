Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BEB4A694088
	for <lists+linux-man@lfdr.de>; Mon, 13 Feb 2023 10:15:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229945AbjBMJPd (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 13 Feb 2023 04:15:33 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41860 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230249AbjBMJPc (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 13 Feb 2023 04:15:32 -0500
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AE6DCB472
        for <linux-man@vger.kernel.org>; Mon, 13 Feb 2023 01:15:29 -0800 (PST)
Received: by mail-wr1-x42d.google.com with SMTP id k3so3741867wrv.5
        for <linux-man@vger.kernel.org>; Mon, 13 Feb 2023 01:15:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=2/wDA6gY+HUUi4aTLVGn8aX/U7xalZHMSPo140v3Sb0=;
        b=XDhWYCh+d6WHxcPj6IVPT9c+U42EndCBSnv4Fs4cZMHZrpEAaJW2jSc/0jiO4DnhBK
         ix5GERaVBX1w/AtPNMRMxPsfwTUpRev8i1VKjc0pRG06hnLkqosVpxSp2iWCyK1KrOgD
         8XMZDCR2bgFMzOBsVYsYV/6Cv1GFZA5nWjp8lr977oCuuhbxFxHvPYR2JfLLy57lAN4e
         CGc5kHp0aD8XeRRhxCpNoESAw76hc96+QxxbiuCoi0+EYP88zQ9kE/mibrFTzpCqu46v
         +LeJ4S3UtN1yG7/w4h64NerqkLWaDzIXVnZ4LSgddiWz5UUOm/dxee6mkbRLZU656kCg
         hbrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2/wDA6gY+HUUi4aTLVGn8aX/U7xalZHMSPo140v3Sb0=;
        b=djuQdV0fgpgsP/EkLkB398VQpXe+xBKzb6z0WQiHykebZOzBHNuNYkQJ1nwTJRDmVL
         CcRJTO84tOpfxCpwz3oWuJDRYlek+vTlHp5dK9DpNoiMsP0TsJ8kJE+ywecN5ZUsM9o2
         qoMObBjrStWYG9NiRv9L4wITnSY7rLMvM0CKEoAzrIivMqOtehARA4O1Y05HTkd2xwrq
         WeH1j++Q38ypn6TXa47f2qS8bnu+nM2POZfCk/28lCc0IwiTDThnBBqgYt4ByL1hU16I
         7B4WkC59m6BifvoWGC9LHSVpNVJSd+iWJxxOBjEhZnS8YJ2HpSVJLzhttCxXMZbcbF5z
         QIOA==
X-Gm-Message-State: AO0yUKU33YzF0qkJXNfC0TJ+0m86h9UCbPfDTFCdwpwk5RoK2VZ9RqAe
        MaCY+iKCAstu78k7n6DqZOvGBhozF+VVb7h3vFvRVw==
X-Google-Smtp-Source: AK7set+N5W5EJKMCK2rpHzkCjt9OrB9IZUamwRQfzRe1JvlGwNWT++m5IshQ+FZKzbwR/kBmS+8TwO2PhojC9PSdqxM=
X-Received: by 2002:a5d:61ce:0:b0:2c5:521a:18ca with SMTP id
 q14-20020a5d61ce000000b002c5521a18camr255160wrv.526.1676279728133; Mon, 13
 Feb 2023 01:15:28 -0800 (PST)
MIME-Version: 1.0
References: <CAJ0cOr-v1GDCqsU86w-rZVvejtppOAW56FxApFPnfPwRmAd47w@mail.gmail.com>
In-Reply-To: <CAJ0cOr-v1GDCqsU86w-rZVvejtppOAW56FxApFPnfPwRmAd47w@mail.gmail.com>
From:   Almaz Mingaleev <mingaleev@google.com>
Date:   Mon, 13 Feb 2023 09:15:06 +0000
Message-ID: <CAJ0cOr-x+hg5cH_wHH+uJ4co69qYZN425d-nFdoqFtuM79Kxzg@mail.gmail.com>
Subject: Re: %z and %Z in strftime man page require clarification
To:     mtk.manpages@gmail.com, alx.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, Elliott Hughes <enh@google.com>
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

Friendly ping.


On Thu, 28 Jul 2022 at 09:16, Almaz Mingaleev <mingaleev@google.com> wrote:
>
> Hi Michael,
> Current strftime specification in C language standard is not accurate.
> It tells that tm_isdst is enough to find out time zone's offset. But
> that's not true, for example Europe/Lisbon has changed [0] its
> standard offset from 00:00 to 01:00 and back to 00:00, so an exact
> date is needed to answer that.
>
> To get correct answer with the current glibc tm struct should either
> come from localtime or there should be a mktime call prior to
> strftime. You can find a repro example and discussion here [1]. Paul
> Eggert has proposed a fix to C standard [2].
>
> Should man pages reflect that i.e. mention that there should be
> localtime/mktime calls for %z and %Z?
>
> Thanks,
> Almaz
>
> P.S. I am resending the email. My previous attempt was bounced back as
> it wasn't TEXT/PLAIN.
>
> [0] https://github.com/eggert/tz/blob/a249a0c64b2f87a24c7f1aab43056fb597c95b96/europe#L2400
> [1] https://mm.icann.org/pipermail/tz/2022-July/031668.html
> [2] https://mm.icann.org/pipermail/tz/2022-July/031674.html
