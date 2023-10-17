Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E3A347CCFEF
	for <lists+linux-man@lfdr.de>; Wed, 18 Oct 2023 00:15:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344159AbjJQWOz (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 17 Oct 2023 18:14:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52210 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234819AbjJQWOy (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 17 Oct 2023 18:14:54 -0400
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com [IPv6:2a00:1450:4864:20::62b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E22AED3
        for <linux-man@vger.kernel.org>; Tue, 17 Oct 2023 15:14:52 -0700 (PDT)
Received: by mail-ej1-x62b.google.com with SMTP id a640c23a62f3a-99357737980so1014854166b.2
        for <linux-man@vger.kernel.org>; Tue, 17 Oct 2023 15:14:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1697580891; x=1698185691; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=22eF3O2TV81lbDaOLeeipX0IchRIXInorQwN4073ktY=;
        b=0s8NvcHDiEPrcGGGB1Nwc+G1nxgCKQbfc03sGQIwdFHF4AODiMuGrRpl8xGE6iI+T2
         nlpSB/JUxpomK0w+5pb2u1WfVinN2CS308zr/0TvkxTrUaQHpJx8VTjcUfWEYK+zV+VC
         4571tOOfxlOe1FKnWo9ZZXZ1ZD05U5SmzwI3nzcTzXPm0qeqJCXelNcUQNSDAlZcjOjD
         kxhi4qWYsBqP1ACL3uyxnPT9K9h9ynCilZrxsezC6JMalwhElPzP1v26Ky9NLGHznM6y
         c5MUO4/C74Uqy8x+E/nVDTVANs4dg4lrV5Swzkgh6qu67I8OiQkL7x1WYsaOLQg9hbfy
         jCwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697580891; x=1698185691;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=22eF3O2TV81lbDaOLeeipX0IchRIXInorQwN4073ktY=;
        b=NDuTqrLE80YkOzfQYj9qXMiaZN9DoaUSNumIPrppnxNo0XVHJYD5bpCQgRRy4d3+Th
         lejP0Tnrm8JOGyYs4HCGvZ9eEOpGA3MlNXmIP2g7TLki4ThomYwSQzWuQwKXxkjWR0Ol
         07OuNByk0MSTv4QP68k6zxG2SLPMhGqXirdOV6yXxUcYqvupglUDTTHqRIg+RH7SBGG0
         6O7+yrunrfpwZ3kHyRWUGiRIe4cEy9yBi8hZ23w47gKcgtcIAZnDK4MBot7T8sgzCy4+
         ZixR3CnXMPWcxi8m69Nws1jEQ/owiSkuo/nywnqNP0BvgBls1BVti/vbEEeaFBI5rsr5
         cEEA==
X-Gm-Message-State: AOJu0YwD1ba7/ByKzAmahd4K+vQs/K6hPixDtmNmXK9UhEIMwo3nV64q
        8RJfblU0OV9Pi90OZTddG5TVdvCjueBHObH+KtYT9Q==
X-Google-Smtp-Source: AGHT+IG+XmqggKBq5nwPvXK6m2hCydWFbDeVYOhBwPQFOK1zKkDPFI+mPRGPCEEOINmjQKitWoKVYkXAmGAMLNuQh5k=
X-Received: by 2002:a17:907:2688:b0:9c5:2806:72e2 with SMTP id
 bn8-20020a170907268800b009c5280672e2mr2457377ejc.34.1697580891048; Tue, 17
 Oct 2023 15:14:51 -0700 (PDT)
MIME-Version: 1.0
References: <20231003194547.2237424-1-axelrasmussen@google.com>
 <20231003194547.2237424-5-axelrasmussen@google.com> <ZSMn-H_BUmJMi9La@debian>
 <ZS77PhZA9q6zQw7_@thunder.hadrons.org> <ZS7_yTIlIknvr7WS@debian>
In-Reply-To: <ZS7_yTIlIknvr7WS@debian>
From:   Axel Rasmussen <axelrasmussen@google.com>
Date:   Tue, 17 Oct 2023 15:14:13 -0700
Message-ID: <CAJHvVcjb+v94PzAZ1=RZo+4mdXP1WHaJu-wfOtOwfkdPzCUC2g@mail.gmail.com>
Subject: Re: [PATCH v2 4/5] ioctl_userfaultfd.2: fix / update UFFDIO_REGISTER
 error code list
To:     Alejandro Colomar <alx@kernel.org>
Cc:     Guillem Jover <guillem@hadrons.org>, Peter Xu <peterx@redhat.com>,
        linux-man@vger.kernel.org, linux-mm@kvack.org,
        linux-kernel@vger.kernel.org, Mike Rapoport <rppt@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-17.6 required=5.0 tests=BAYES_00,DKIMWL_WL_MED,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        ENV_AND_HDR_SPF_MATCH,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,
        USER_IN_DEF_DKIM_WL,USER_IN_DEF_SPF_WL autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Tue, Oct 17, 2023 at 2:42=E2=80=AFPM Alejandro Colomar <alx@kernel.org> =
wrote:
>
> Hi Guillem!
>
> On Tue, Oct 17, 2023 at 11:23:10PM +0200, Guillem Jover wrote:
> > Hi!
> >
> > On Mon, 2023-10-09 at 00:06:48 +0200, Alejandro Colomar wrote:
> > > This produces some unwanted space.  Please apply the following fix to
> > > your patch.
> > >
> > > diff --git a/man2/ioctl_userfaultfd.2 b/man2/ioctl_userfaultfd.2
> > > index 6e954e98c..795014794 100644
> > > --- a/man2/ioctl_userfaultfd.2
> > > +++ b/man2/ioctl_userfaultfd.2
> > > @@ -432,11 +432,11 @@ .SS UFFDIO_REGISTER
> > >  no mapping exists in the given range,
> > >  or the mapping that exists there is invalid
> > >  (e.g. unsupported type of memory),
> > > -or the range values (
> > > -.I range.start
> > > +or the range values
> > > +.IR ( range.start
> >
> > I think you meant =C2=AB.RI=C2=BB here?
>
> Yup!  Good catch.

Thanks, I'll apply this change in a v3.

>
> Cheers,
> Alex
>
> >
> > >  or
> > > -.I range.len
> > > -) are not multiples of the relevant page size,
> > > +.IR range.len )
> > > +are not multiples of the relevant page size,
> > >  or
> > >  .I range.len
> > >  is zero.
> > >
> >
> > Regards,
> > Guillem

Regarding the -EBUSY ordering, I did it this way because that's the
order in which the conditions are checked in the code. But, I agree
that isn't very obvious / useful to any reader of the man page :) and
alphabetical order is preferred. I'll correct that in v3.

>
> --
> <https://www.alejandro-colomar.es/>
