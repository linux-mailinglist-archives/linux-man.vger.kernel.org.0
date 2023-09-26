Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 15EA47AF211
	for <lists+linux-man@lfdr.de>; Tue, 26 Sep 2023 19:59:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229922AbjIZR7E (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 26 Sep 2023 13:59:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34810 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234911AbjIZR7E (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 26 Sep 2023 13:59:04 -0400
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com [IPv6:2a00:1450:4864:20::630])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 906F2126
        for <linux-man@vger.kernel.org>; Tue, 26 Sep 2023 10:58:57 -0700 (PDT)
Received: by mail-ej1-x630.google.com with SMTP id a640c23a62f3a-9936b3d0286so1181012766b.0
        for <linux-man@vger.kernel.org>; Tue, 26 Sep 2023 10:58:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1695751136; x=1696355936; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OFnOg1pHsHZEv3DUGjzvzkoO5rnnk2Rnu4AXIw+yFKI=;
        b=kYlLsKieq7fs3ThP49Duis//E8IRlK9svvEN15ImTwQXePQ11hqe+79mldpHcmGNP1
         jYTxOktF31/u7GG/3f4rjusm5wrCtotPO168Vi7zkfvWRyRAWnP6fW8fqRltGvGpuGX8
         4u/T0Idz/LTfg9PAoJtzoG/Raw56tLqgZuTSHRBGIWfXb1uTn11DfUUxUjOzoiN4FQuB
         CEFl8BwUElNVAo/SIAm/FVcfMoYJaiiKI72fkHgJP8AW1w56w6QPU24rU+veNt9QGRxx
         /93T8QppVR1vA62Ff0aEhOCNc6BsFsoEQmiovob1Rl1itaAVmN3g/rcTpABnXxE5/wV3
         XNnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695751136; x=1696355936;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OFnOg1pHsHZEv3DUGjzvzkoO5rnnk2Rnu4AXIw+yFKI=;
        b=FRJ7D6yZc1GkGqUFaukjnBlvHTbjERPvDz6EaP7fZYfDksOjz2byCZG6OgIIeQklFm
         Wqja2CgwhzZcC8Y6kDYDeacbfA8Xbr3KXBKd4DQkmuL2vpTs6CnSsJzs/V2VSZcewyAL
         mRIkd5XzYTcGZI5RyeBwU+zhucgq+6ElLm+D3PWoojAHlSFNn79RQATSxV1wRa1puB4E
         Z8RvwiJnIP78WhSXsp6dMs4bko8ekWQQ5PYCXmQA3DxIar23qLXHRFJWXZgmR8DeKBH1
         vHzq8Ev7n/t3WiUUpKANNT/X6gz5LKJiz+dBApHvU3voIF5XQPm+rba82zjvEnkIjKdf
         jGPw==
X-Gm-Message-State: AOJu0YwimTow7vZTZnKL8OTGuV9IV93V/GFWLZT/uV+bkr2ppjuvjIHS
        qXd5VZZEN/BqRgnnnveVHXMseE9tcSMQSboFkRIBJQ==
X-Google-Smtp-Source: AGHT+IH1UvbPZN+AYVuNOlZ5+jvqeSn4QL2gxS1iQykyVPMWg3fp23GOvge4u4/OO7F77GHkmagIn5MVyEy5F7QLAnU=
X-Received: by 2002:a17:906:319a:b0:9ae:659f:4d2b with SMTP id
 26-20020a170906319a00b009ae659f4d2bmr9062850ejy.56.1695751134910; Tue, 26 Sep
 2023 10:58:54 -0700 (PDT)
MIME-Version: 1.0
References: <20230919190206.388896-1-axelrasmussen@google.com>
 <20230919190206.388896-9-axelrasmussen@google.com> <s4p5qch6llhedcr736vityb6ttvajk5xip7ebdijgw6zt4jbkk@nt2qh2ixmi3e>
In-Reply-To: <s4p5qch6llhedcr736vityb6ttvajk5xip7ebdijgw6zt4jbkk@nt2qh2ixmi3e>
From:   Axel Rasmussen <axelrasmussen@google.com>
Date:   Tue, 26 Sep 2023 10:58:18 -0700
Message-ID: <CAJHvVcjTBmQewEUKPCa-ZFEEv_Lczx5Pp9=vgnnTPSrqc4RhVA@mail.gmail.com>
Subject: Re: [PATCH 08/10] ioctl_userfaultfd.2: clarify the state of the
 uffdio_api structure on error
To:     Alejandro Colomar <alx@kernel.org>
Cc:     Peter Xu <peterx@redhat.com>, linux-man@vger.kernel.org,
        linux-mm@kvack.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-17.6 required=5.0 tests=BAYES_00,DKIMWL_WL_MED,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        ENV_AND_HDR_SPF_MATCH,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,
        USER_IN_DEF_DKIM_WL,USER_IN_DEF_SPF_WL autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Mon, Sep 25, 2023 at 4:56=E2=80=AFPM Alejandro Colomar <alx@kernel.org> =
wrote:
>
> Hi Axel,
>
> On Tue, Sep 19, 2023 at 12:02:04PM -0700, Axel Rasmussen wrote:
> > The old FIXME noted that the zeroing was done to differentiate the two
> > EINVAL cases. It's possible something like this was true historically,
> > but in current Linux we zero it in *both* EINVAL cases, so this is at
> > least no longer true.
> >
> > After reading the code, I can't determine any clear reason why we zero
> > it in some cases but not in others. So, some simple advice we can give
> > userspace is: if an error occurs, treat the contents of the structure a=
s
> > unspecified. Just re-initialize it before retrying UFFDIO_API again.
> >
> > Signed-off-by: Axel Rasmussen <axelrasmussen@google.com>
>
> I can't apply this patch due to conflicts (due to not having applied two
> of the previous ones).  Please resend all remaining patches in following
> revisions of the patch set.
>
> The applied ones are here:
>
> <https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/log/?h=3Dcon=
trib>
>
> It's kind of like Linux's 'next' branch.

Thanks for the review Alex! I'll fix up the issues noted and send the
remaining few patches this week. :)

>
> Cheers,
> Alex
>
> > ---
> >  man2/ioctl_userfaultfd.2 | 16 ++++++++--------
> >  1 file changed, 8 insertions(+), 8 deletions(-)
> >
> > diff --git a/man2/ioctl_userfaultfd.2 b/man2/ioctl_userfaultfd.2
> > index 1aa9654be..29dca1f6b 100644
> > --- a/man2/ioctl_userfaultfd.2
> > +++ b/man2/ioctl_userfaultfd.2
> > @@ -272,6 +272,14 @@ operation returns 0 on success.
> >  On error, \-1 is returned and
> >  .I errno
> >  is set to indicate the error.
> > +If an error occurs,
> > +the kernel may zero the provided
> > +.I uffdio_api
> > +structure.
> > +The caller should treat its contents as unspecified,
> > +and reinitialize it before re-attempting another
> > +.B UFFDIO_API
> > +call.
> >  Possible errors include:
> >  .TP
> >  .B EFAULT
> > @@ -305,14 +313,6 @@ twice,
> >  the first time with no features set,
> >  is explicitly allowed
> >  as per the two-step feature detection handshake.
> > -.\" FIXME In the above error case, the returned 'uffdio_api' structure=
 is
> > -.\" zeroed out. Why is this done? This should be explained in the manu=
al page.
> > -.\"
> > -.\" Mike Rapoport:
> > -.\"     In my understanding the uffdio_api
> > -.\"     structure is zeroed to allow the caller
> > -.\"     to distinguish the reasons for -EINVAL.
> > -.\"
> >  .SS UFFDIO_REGISTER
> >  (Since Linux 4.3.)
> >  Register a memory address range with the userfaultfd object.
> > --
> > 2.42.0.459.ge4e396fd5e-goog
> >
