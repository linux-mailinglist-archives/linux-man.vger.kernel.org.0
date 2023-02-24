Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 410726A2121
	for <lists+linux-man@lfdr.de>; Fri, 24 Feb 2023 19:06:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229485AbjBXSGk (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 24 Feb 2023 13:06:40 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34750 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229489AbjBXSGj (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 24 Feb 2023 13:06:39 -0500
Received: from mail-qv1-xf2a.google.com (mail-qv1-xf2a.google.com [IPv6:2607:f8b0:4864:20::f2a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CD5BB628D8
        for <linux-man@vger.kernel.org>; Fri, 24 Feb 2023 10:06:38 -0800 (PST)
Received: by mail-qv1-xf2a.google.com with SMTP id nf5so16436qvb.5
        for <linux-man@vger.kernel.org>; Fri, 24 Feb 2023 10:06:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TwBH70+vtoprzxAQ474Bwt+0spyuS5LIpYcdGrjxvOM=;
        b=WJX628Q2v/xk/7GMaeiDr/HRBkP0jmb9+m0qPqrdjwffSnuZXMpLywK03GBizU5uxs
         qWr6rUgadROD/YTmiUtLHdKZSOZWSF6QKvJo7xO99sIXEjc1Qw2axIcoC7HOMAzwpO+i
         r24dQohuUiP0ZwqeFTid/ARgEQvHJdsrDxMjye6uANBuV75ye2gg/OOTyClZu3rMc2kY
         gKOnMYBo5AuX/PEVsT4gc7jOX5Uos/8hsVcGiah5o8Cm64MGgo8QQXC7PeWA6whdokqL
         npeEACqKJX0NcyJUZMosRAnuvHRTLF0Ol9WsZfuSsyaoxSSpqIeknQ8wZVkjPS4624hj
         9B0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TwBH70+vtoprzxAQ474Bwt+0spyuS5LIpYcdGrjxvOM=;
        b=5K06SHRb5PKxGqQTPz4fdYkobA7GcWnmFNDnnOLZ5DXrhwFZSul9eer6g7iCBqTGap
         aNygGsnjsiVFARVJ1+tOzekbH6M6bdskG1MrDJ3C/gcqoTLjINWUErOtNE9yOk/19bAY
         otlq/pYtDWlc0HSuz3cJRtIya4DZQ1moCYyLxHyHt/Zu3rLqW5tOZI0dFZxAl1jSV4fv
         s9ySFCdhxOUQx+q80kRn9OM3v7wkcVQMPsnGw9yZX8WkNS/yzYUJdodbhDOzenL7mP9U
         34bRg+EpG0l32rdeeKAsA6q0BSMTHCB4RTuKh2oxD9jw0pLwWnnU5MDRHM35c58pyXxO
         NFoQ==
X-Gm-Message-State: AO0yUKWqTrugWcHxLhbKGCn58hwv9oTJx8HGiu4hZhQKzreD0OOuquW4
        KIV9G9SePHyuQJT80sYWXncTNatvviTNl9awLKQaUA==
X-Google-Smtp-Source: AK7set94hce/3G2wq902v6Xr53AoujmMdkk3+48/ul9o01MWVAvFaWsjyycaSOtblQ5QJcQ8ROStXHU4i8dwy9G6KOA=
X-Received: by 2002:ad4:4f26:0:b0:56c:1ff3:9e93 with SMTP id
 fc6-20020ad44f26000000b0056c1ff39e93mr2857624qvb.5.1677261997558; Fri, 24 Feb
 2023 10:06:37 -0800 (PST)
MIME-Version: 1.0
References: <CAJgzZoqxNGmDMbp8Dh0n5TQwDu-8POf8=9fyaaRUwLVRw2skZg@mail.gmail.com>
 <20230223213758.pixv4m6uf4gzhxxo@jwilk.net> <CAJgzZordjqNX4LHq9K9uatcWOoXO0whbHhuOeKgawtzvQ_OE+A@mail.gmail.com>
In-Reply-To: <CAJgzZordjqNX4LHq9K9uatcWOoXO0whbHhuOeKgawtzvQ_OE+A@mail.gmail.com>
From:   enh <enh@google.com>
Date:   Fri, 24 Feb 2023 10:06:26 -0800
Message-ID: <CAJgzZoqTNiEadyD5uAY17FAwPeMwGzqKVqPaaLy-pTz0tzu=qQ@mail.gmail.com>
Subject: Re: [PATCH] fseek.3: incorporate fseeko()/ftello().
To:     Jakub Wilk <jwilk@jwilk.net>
Cc:     linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        Rob Landley <rob@landley.net>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
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

(sending again as plain text.)


On Fri, Feb 24, 2023 at 10:02 AM enh <enh@google.com> wrote:
>
>
>
> On Thu, Feb 23, 2023 at 1:38 PM Jakub Wilk <jwilk@jwilk.net> wrote:
>>
>> * enh <enh@google.com>, 2023-02-22 12:42:
>> > The
>> >+.BR fseeko ()
>> >+end
>>
>> s/end/and/
>
>
> ack. will fix.
>
>>
>> >+.BR ftello ()
>> >+functions are similar, except that the
>>
>> "similar, except..." sounds awkward to me. (And it's not the wording
>> fseeko.3 used.)
>
>
> sounds right to me, and seems widely used in existing pages though? strnc=
mp(), for example. ("same, except" is also used in existing pages, but seem=
s less common.)
>
> but at a higher level (the "not the wording fseeko.3" used) i vacillated =
there between "just copy" and "try to improve" because i have two problems =
i'm trying to solve:
>
> 1. someone (rob) who knows the c library about as well as anyone i know w=
ho _isn't_ a c library maintainer themselves wasn't aware of fseeko()/ftell=
o(), and the existing fseek() page misled them into thinking that fsetpos()=
/fgetpos() was their only option.
>
> 2. in 2023 where most people assume sizeof(long)*8 =3D=3D 64, a lot of pe=
ople don't understand why fseek()/ftell() isn't "good enough". my initial v=
ersion of the patch talked more about ILP32 systems and LLP64 systems (aka =
"Windows") where "long" isn't equivalent to "int64_t". (but the need to tal=
k about _FILE_OFFSET_BITS too made the whole section a bit unwieldy.)
>
> any version of this patch fixes #1.
>
> fixing #2 well is the trickier part, and i'm curious if there are any oth=
er opinions there before i send out a new version of the patch?
>
>>
>> --
>> Jakub Wilk
