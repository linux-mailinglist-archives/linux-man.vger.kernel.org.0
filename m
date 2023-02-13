Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id ABA38694CF5
	for <lists+linux-man@lfdr.de>; Mon, 13 Feb 2023 17:32:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230388AbjBMQcn (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 13 Feb 2023 11:32:43 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55194 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231314AbjBMQcb (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 13 Feb 2023 11:32:31 -0500
Received: from mail-qt1-x829.google.com (mail-qt1-x829.google.com [IPv6:2607:f8b0:4864:20::829])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 58E0D206B8
        for <linux-man@vger.kernel.org>; Mon, 13 Feb 2023 08:32:12 -0800 (PST)
Received: by mail-qt1-x829.google.com with SMTP id cr22so14321052qtb.10
        for <linux-man@vger.kernel.org>; Mon, 13 Feb 2023 08:32:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=zpCVBh7KxF/wek5Mc76aJ4J3cVFa6InCSJkJHZ08o6g=;
        b=pb0okdZjVqZ9bJqSAU1K3p1L7d8JskqsATDvPu+XnbcGznGZ3YUARvGjAdmV4G8YxN
         bW23n36vSgw3LZSxg1nOATt1ptIQ59YGwgAxNnPJwBepYK9E1YLedJJ552Jv1JkzAOb3
         bDkthrPKWb+4uXKx3UboXLk5Sz3B4V69o4ZjkYS1w64hQALqBhQnJbZqeZym5XroakQC
         AYPJWhSOARuPIxiCHbQocUgCazpxBANpBggKt0R3nm/OLVgcHun8wJSCCJiXkjPhSLea
         Ujq2ib0XZFDzlmXB7dADcJmfoNu//1vY4S/Dq9bhdv5wL8vQUC9D8cwTF56plBwUDoGI
         VksQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zpCVBh7KxF/wek5Mc76aJ4J3cVFa6InCSJkJHZ08o6g=;
        b=eECiRCFEa7aoRGH3AGDHMBDRir1B5AoRLGVmyhgizRJ6x+oi3uWR87E6fch+axgqNC
         +66u6T0QnOYiy8gOPeAh4m8cQq25vUS+YjezT03Fpca6Z8Z1lrkDPOnK3eXv5J5Jq7V/
         L2qcSVVFodKsFqU9K8Eg+ZA49NoijTp9GizTpLA/bjUkRMY1DRHuVJnFvEBchoLI1vbq
         D80nYC9tqcDQhssEOo+ajzQ5WDzu6ihtj8/cBdOGiqzCQbsyGQsf63XbnlVc6wFBhXZ4
         t5b+KCuoJIhD9DtiMacgbwR/XC5NBk88lJJcd32E6U8MfB7MQeeIVd5a7sZJgrojTaSN
         LQHw==
X-Gm-Message-State: AO0yUKVcWrplwRhX3lknYaPc2xMS2C5uJklsanIlomMFR/iiEC/vYYjt
        1GmLUHnDQLacj7Y0APD8TJ1j6m39njUnIZQyp9f0ZiFuksK2C9anatI=
X-Google-Smtp-Source: AK7set8bP/sIIq2QiRCNb2Bgv/EJ+iDMZg530TqwwWcV1Ij3xmG+j2atE8fw5wLrBcbAypQ+nabq6AcgHbV10t3x3Ww=
X-Received: by 2002:a05:622a:1a97:b0:3b6:2e1c:e542 with SMTP id
 s23-20020a05622a1a9700b003b62e1ce542mr2088625qtc.272.1676305927060; Mon, 13
 Feb 2023 08:32:07 -0800 (PST)
MIME-Version: 1.0
References: <CAJ0cOr-v1GDCqsU86w-rZVvejtppOAW56FxApFPnfPwRmAd47w@mail.gmail.com>
 <CAJ0cOr-x+hg5cH_wHH+uJ4co69qYZN425d-nFdoqFtuM79Kxzg@mail.gmail.com>
In-Reply-To: <CAJ0cOr-x+hg5cH_wHH+uJ4co69qYZN425d-nFdoqFtuM79Kxzg@mail.gmail.com>
From:   enh <enh@google.com>
Date:   Mon, 13 Feb 2023 08:31:56 -0800
Message-ID: <CAJgzZooiJVgKDH9KkW_FKZJThDVLJjqGLQ3RB1NnHVQVbA-QjQ@mail.gmail.com>
Subject: Re: %z and %Z in strftime man page require clarification
To:     Almaz Mingaleev <mingaleev@google.com>
Cc:     mtk.manpages@gmail.com, alx.manpages@gmail.com,
        linux-man@vger.kernel.org
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

(given how complex a topic this is -- based on the discussion on the
tz mailing list -- you might want to send a specific suggestion in the
form of a patch...)

On Mon, Feb 13, 2023 at 1:15 AM Almaz Mingaleev <mingaleev@google.com> wrote:
>
> Friendly ping.
>
>
> On Thu, 28 Jul 2022 at 09:16, Almaz Mingaleev <mingaleev@google.com> wrote:
> >
> > Hi Michael,
> > Current strftime specification in C language standard is not accurate.
> > It tells that tm_isdst is enough to find out time zone's offset. But
> > that's not true, for example Europe/Lisbon has changed [0] its
> > standard offset from 00:00 to 01:00 and back to 00:00, so an exact
> > date is needed to answer that.
> >
> > To get correct answer with the current glibc tm struct should either
> > come from localtime or there should be a mktime call prior to
> > strftime. You can find a repro example and discussion here [1]. Paul
> > Eggert has proposed a fix to C standard [2].
> >
> > Should man pages reflect that i.e. mention that there should be
> > localtime/mktime calls for %z and %Z?
> >
> > Thanks,
> > Almaz
> >
> > P.S. I am resending the email. My previous attempt was bounced back as
> > it wasn't TEXT/PLAIN.
> >
> > [0] https://github.com/eggert/tz/blob/a249a0c64b2f87a24c7f1aab43056fb597c95b96/europe#L2400
> > [1] https://mm.icann.org/pipermail/tz/2022-July/031668.html
> > [2] https://mm.icann.org/pipermail/tz/2022-July/031674.html
