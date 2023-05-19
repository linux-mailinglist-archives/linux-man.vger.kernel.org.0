Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BA10E70A2C2
	for <lists+linux-man@lfdr.de>; Sat, 20 May 2023 00:22:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229898AbjESWWZ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 19 May 2023 18:22:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48410 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231330AbjESWWE (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 19 May 2023 18:22:04 -0400
Received: from mail-qv1-xf2d.google.com (mail-qv1-xf2d.google.com [IPv6:2607:f8b0:4864:20::f2d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 25E6EEE
        for <linux-man@vger.kernel.org>; Fri, 19 May 2023 15:22:03 -0700 (PDT)
Received: by mail-qv1-xf2d.google.com with SMTP id 6a1803df08f44-623a5f60355so6153866d6.1
        for <linux-man@vger.kernel.org>; Fri, 19 May 2023 15:22:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20221208; t=1684534922; x=1687126922;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xYdJR6miDYwpfAE5R2cftFEzzwiAQXUMtZ6DEEcLKco=;
        b=UogqHf3WWsEiGm5U2wDhAEMvourEpsL2WMKRANPMJoqdstKov+S/AbRWwcu4iSdZ6A
         9wablVOyRXB6/y9T2s4wJ3JmUeUJs78FbdVdbbfuP4DlENSRAw4RNmGW+6/b6QrfPY5t
         ygUulra0Ij57LDA5bwbqI23y2E6LLRg/5oWiOgr1ppo09z8Xs7nU4rhonIntOLpB0LTv
         99QtQfh9aZ7wJlK57jybwDSy9QaY8i8Se5RJer1MYTou1vUa8+v6cAWp591JdOG2NXxB
         J7JQw1rfBjpsGfYCwWcx05FgMTD+Qkzk9uFMnyt1yT8EUKOYEOqDEoQKVf1ngXUoXxhz
         vBLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684534922; x=1687126922;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xYdJR6miDYwpfAE5R2cftFEzzwiAQXUMtZ6DEEcLKco=;
        b=aT9G09aiMqMk5VyyrETwsLfmd6TmIojXKzZbb/6rqc43n0/GGrBJ0bV1cVU42xToyW
         KZdKv8N2KZhAcqxPX4qkY/oZR2yzVwIDeGAoFQ5znwiH6sEgbtMTBqv4KHTf2Ol3cXHH
         wWqc//uvS/vyIs3ed7L4KdFeal5Z4PhhMF6Bfzf7NRNfA7fH50fMOlrbvumhl8LZfyzP
         IWWVZdM//4rcYKH1JxJgV3NB+GpykEsCuDOi2jX0AzRDBkb/I+IWYKbLT5c2ZktbmoXF
         N2j8xzwmhi24udbXeDBxPnFYg5G4cfnLMYN//l+sj9b2Svv4g2VSnAfgw5eRC+5/u7Wn
         p3PQ==
X-Gm-Message-State: AC+VfDw24zcoo2n2qbuEOPNiEBqxI41UiN7cLKIk+3DjZVU+MU7QuLhS
        QPDGB0dmikQS+6IYf0aL1KqCBpASi3LncyJ0MfoC9Q==
X-Google-Smtp-Source: ACHHUZ45zlGgO0cDnFVAMXRIDaa8sb8fi8PwK/Eqnqs7U1vXZJ7vCac4okyPjPSMy6odH7W7yY3jexMttoIupCkzVnk=
X-Received: by 2002:ad4:5b84:0:b0:5a9:1bd5:375e with SMTP id
 4-20020ad45b84000000b005a91bd5375emr7043311qvp.21.1684534922093; Fri, 19 May
 2023 15:22:02 -0700 (PDT)
MIME-Version: 1.0
References: <CAELULbeXgZWn+Nw_rpUzkGgNCtb7oFf1+JS=KnNVuLhcF5Vabg@mail.gmail.com>
 <CAELULbf=z2WWpHm5QDTK81oWTC9zMZJg2MA69mjOorJQ5QAzGw@mail.gmail.com>
 <CAJgzZopuptYOKHQ32-mau9gzwaWOmRtTACqdmfZvox=c2itp7w@mail.gmail.com> <781c88a1-b71f-f600-8d75-068a65855d16@gmail.com>
In-Reply-To: <781c88a1-b71f-f600-8d75-068a65855d16@gmail.com>
From:   enh <enh@google.com>
Date:   Fri, 19 May 2023 15:21:50 -0700
Message-ID: <CAJgzZooLH5UnNU_j6jTkTFMCS+7gDMaTu9RYpSHnO2ELJat-+A@mail.gmail.com>
Subject: Re: [PATCH] Fix the man page
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     Zijun Zhao <zijunzhao@google.com>, alx@kernel.org,
        linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-17.6 required=5.0 tests=BAYES_00,DKIMWL_WL_MED,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        ENV_AND_HDR_SPF_MATCH,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED,USER_IN_DEF_DKIM_WL,
        USER_IN_DEF_SPF_WL autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Fri, May 19, 2023 at 1:03=E2=80=AFAM Alejandro Colomar
<alx.manpages@gmail.com> wrote:
>
> Hi Zijun, Elliott,
>
> On 5/19/23 01:30, enh wrote:
> > should probably remove the "The compilation warning looks to be going
> > away in glibc 2.17 see glibc commit
> > 4b7634a5e03b0da6f8875de9d3f74c1cf6f2a6e8" above, since this patch
> > fixes that, but leave the FIXME because it looks like there are more
> > FIXMEs below?
> >
> >
> > On Thu, May 18, 2023 at 4:27=E2=80=AFPM Zijun Zhao <zijunzhao@google.co=
m> wrote:
> >>
> >> Hi there,
> >>    We are annotating settimeofday(), gettimeofday() and we will make t=
v
> >> Nonnull if compilation warnings will
> >>
> >> result. But after checking
> >> https://elixir.bootlin.com/linux/latest/source/kernel/time/time.c#L199
> >> nd https://elixir.bootlin.com/linux/latest/source/kernel/time/time.c#L=
224,
> >>
> >> we think tv is okay to be nullable. So we make the fix to make it more=
 clear.
> >>
> >> Best,
> >>
> >> Zijun Zhao
>
> You'll also need to add _Nullable to the function prototypes in the
> SYNOPSIS.

heh, funnily enough, zijunzhao's adding exactly those annotations to
the bionic headers, which is how we stumbled across this.

> BTW, I see that glibc still requires nonnull in gettimeofday(3).  It's
> only settimeofday(3) that is nullable.

yeah, but the _kernel_ allows null in both (see kernel/time/time.c),
and this is section 2 of the man page. it's unclear to me whether
that's worth calling out up here, or should be down in the
Linux-specific section? (this page seems to be written as if it cares
about Hurd? "On a non-Linux kernel, with glibc ...".)

> See:
>
>
> $ grepc gettimeofday /usr/include/*/sys/time.h
> /usr/include/x86_64-linux-gnu/sys/time.h:67:
> extern int gettimeofday (struct timeval *__restrict __tv,
>                          void *__restrict __tz) __THROW __nonnull ((1));
>
>
> /usr/include/x86_64-linux-gnu/sys/time.h:75:
> #  define gettimeofday __gettimeofday64
>
>
> $ grepc settimeofday /usr/include/*/sys/time.h
> /usr/include/x86_64-linux-gnu/sys/time.h:86:
> extern int settimeofday (const struct timeval *__tv,
>                          const struct timezone *__tz)
>       __THROW;
>
>
> /usr/include/x86_64-linux-gnu/sys/time.h:106:
> #   define settimeofday __settimeofday64
>
>
> And while NULL may be non-UB, the manual page is not very clear on why
> someone would want to call these functions with NULL.  Could you
> please also explain why would someone want to call these functions
> with NULL?  (Let's discuss it in the list, and then we see what
> wording we use for the page.)

so there are definitely several orders of magnitude more users of a
null timezone --- most callers don't want that (not least because
glibc seems to not fill it out anyway? musl certainly doesn't,
implementing gettimeofday() in terms of clock_gettime() instead).

the users for a null time (and non-null timezone; i haven't seen
anyone -- not even a test -- pass null for both!) are interesting.
Android's init uses settimeofday() with only a timezone, but --
although the timezone to use is settable in device-specific init
scripts -- for devices in our tree, that's actually always 0. there's
other proprietary (non-Google) code that uses gettimeofday() with only
a timezone, and i'm honestly not sure whether it's deliberate that
it's asking the _kernel_ for the timezone or not (i'm guessing they
want the device timezone rather than the app timezone, but i do not
believe there are devices where the _kernel_ timezone matches the
device timezone?). certainly both of these use cases seem worth
following up on, and i will do.

but looking at musl (which ignores tz in both cases) it seems like the
most impactful change would be to fix "The functions gettimeofday()
and settimeofday() can get and set the time as well as a timezone" :-)

it also seems like an improvement to really call out the libc/kernel
differences more clearly though.

> Thanks!
> Alex
>
> --
> <http://www.alejandro-colomar.es/>
> GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5
>
