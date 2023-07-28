Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2D6C376774E
	for <lists+linux-man@lfdr.de>; Fri, 28 Jul 2023 22:59:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230473AbjG1U7b (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 28 Jul 2023 16:59:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50748 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231882AbjG1U7b (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 28 Jul 2023 16:59:31 -0400
Received: from mail-qt1-x834.google.com (mail-qt1-x834.google.com [IPv6:2607:f8b0:4864:20::834])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 08AEA4483
        for <linux-man@vger.kernel.org>; Fri, 28 Jul 2023 13:59:30 -0700 (PDT)
Received: by mail-qt1-x834.google.com with SMTP id d75a77b69052e-4036bd4fff1so78671cf.0
        for <linux-man@vger.kernel.org>; Fri, 28 Jul 2023 13:59:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20221208; t=1690577969; x=1691182769;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oFuLALwL/EJEaH5j96tk6JYPk6zWfn7tZvQhNBjCohY=;
        b=Equ3d4pYXEqC3R0pSwEc7wt9q6Xp9GlJfsCXZk+PgNwmUJZlQJllZeHx1FfWerFxd6
         pke6OYeKFslRli0n2ZkvA/qs8F4ZntfJFvaV01qy2DFdUOPjC7VwL93lMC6FdPamcHr4
         +rNiE3v0XYZBuipR7OlYxate+4m0QNaRoe2HVU7Eyex5JNH+kj6vNaltGl+PdkbyeovR
         i/NDNshA1ao05fOhJdEqVJOxUnoqidKYGj1mZOjMlUR8ol8RTRCzg0qTtu8fnnLCk9HD
         gmu1+GRB6hEo+5KFE2bZ50JQUgDXwReyeiOp2PgyDhqVD48yMPzAJhwn56oXsgfiT5mi
         ho0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690577969; x=1691182769;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oFuLALwL/EJEaH5j96tk6JYPk6zWfn7tZvQhNBjCohY=;
        b=FFvgbakEo4fI7AZ+8QsU+GO8jtXaXFh+pmy/aEcYe/zcrFijWMtcJhK7xqj3vpRig0
         WdIGTJCLMi9WZ/GT9xdUC3TSo30JTKBc2OipeWHw7r/eRCBp8giYG0Sns+C3Rtfv7zwr
         GcWsoWpQ9dRG6Z2jR8h8LCl9a+ZUgg+kpUed6RZvEK3tfTwjAcVZ/nsX2OWQ5Qp0Ujhz
         1x8RI/4WVEM7SWN7+IT4X4eLJhS4E9wGE/PqzWreE7CrDHKQ2H06xgBjQ+tA2g7un5VH
         3NjTwjbt5gzgMWv1RoqJuOtLvNSN4OqIjOzOPcGNcdxPnOLnZZB/G6wqLUgcAwpfM5nH
         JjRA==
X-Gm-Message-State: ABy/qLayUXTqM8gQcWs5B6gm2oXcZhipQNgVBOV4cZfpXXBDyvSDLdsx
        p01+g7FB2fUSg28k/8IkJwmpOcHoA7RuxgI8r4qjBw==
X-Google-Smtp-Source: APBJJlH3xQqwcJy3WXudUzB48NagTPLITELiWu6JcvLc1TlvAJcacjUWKQPPHfoNMtFJICBxF2bQcgTuZajn2RwHsro=
X-Received: by 2002:a05:622a:653:b0:403:aee3:64f7 with SMTP id
 a19-20020a05622a065300b00403aee364f7mr65678qtb.6.1690577969003; Fri, 28 Jul
 2023 13:59:29 -0700 (PDT)
MIME-Version: 1.0
References: <CAELULbeXgZWn+Nw_rpUzkGgNCtb7oFf1+JS=KnNVuLhcF5Vabg@mail.gmail.com>
 <CAELULbf=z2WWpHm5QDTK81oWTC9zMZJg2MA69mjOorJQ5QAzGw@mail.gmail.com>
 <CAJgzZopuptYOKHQ32-mau9gzwaWOmRtTACqdmfZvox=c2itp7w@mail.gmail.com>
 <781c88a1-b71f-f600-8d75-068a65855d16@gmail.com> <CAJgzZooLH5UnNU_j6jTkTFMCS+7gDMaTu9RYpSHnO2ELJat-+A@mail.gmail.com>
 <41ea7196-c824-196d-7794-0f61d0947bcd@gmail.com> <CAELULbcAtuqehXmDeRjOPtCOuriw9hrUU2Ndw8-i0Z=9GkbNzg@mail.gmail.com>
 <CAELULbfDFt2Z3T45_brzhWzL8182R=uxpHy_rSdgBSXpp+QQKQ@mail.gmail.com>
 <CAJgzZoqS-QJWX87P5B1LQxCktm9BAVfVVBwBxV87RhmQg0fsdg@mail.gmail.com>
 <CAJgzZooCj9FcHwMam0TC_y6c33K8OFuWGGS0_-Ji+eEhLsXo_Q@mail.gmail.com>
 <e7083e0d-92c2-ae07-7ff5-f7fa1ca91be6@kernel.org> <bf4dd8ed-ded3-6fe0-d3fa-afa63164bc4c@kernel.org>
 <CAELULbcxcmRXCkXx3_q2WMb8eMHTGfRRw=kmsOCBr-YRauOgUQ@mail.gmail.com>
 <61009d70-8033-2e6d-7916-f45033398d7d@kernel.org> <CAELULbd+_kOKdJcKuTS8XqbcFyeZB6Qsi8J_YAe6WuO_+n=26A@mail.gmail.com>
 <9b26cd45-08e1-8905-4b8a-dfa65d654b99@kernel.org>
In-Reply-To: <9b26cd45-08e1-8905-4b8a-dfa65d654b99@kernel.org>
From:   Zijun Zhao <zijunzhao@google.com>
Date:   Fri, 28 Jul 2023 13:58:52 -0700
Message-ID: <CAELULbfFmfKpV=xhUAGwYrch2yZxRx6qc5s090WkBkpnoPupMA@mail.gmail.com>
Subject: Re: [PATCH] Fix the man page
To:     Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org, enh <enh@google.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-17.6 required=5.0 tests=BAYES_00,DKIMWL_WL_MED,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        ENV_AND_HDR_SPF_MATCH,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED,USER_IN_DEF_DKIM_WL,
        USER_IN_DEF_SPF_WL autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alejandro,
  Excited to hear that! Thank you!
Best,
Zijun

On Fri, Jul 28, 2023 at 1:48=E2=80=AFPM Alejandro Colomar <alx@kernel.org> =
wrote:
>
> On 2023-07-27 20:33, Zijun Zhao wrote:
> > Hi Alejandro,
> >   Sorry for the late reply! Thank you for your help! Yes, all comments
> > are very clear, understandable and helpful! This is the new patch.
> > Thank you for reviewing! Also, thank Elliott for helping! Hope this
> > patch is qualified!
> > Best,
> > Zijun
>
> Heh, I replied to the wrong email.  Thanks for the patch; I applied it
> (I applied this one, even if I replied to the other one).
>
> Cheers,
> Alex
>
> >
> >
> > On Sat, Jul 15, 2023 at 9:13=E2=80=AFAM Alejandro Colomar <alx@kernel.o=
rg> wrote:
> >>
> >> Hi Zijun,
> >>
> >> On 2023-07-12 01:48, Zijun Zhao wrote:
> >>> Hi Alejandro,
> >>>   Sorry for the late reply!
> >>
> >> No problem :-)
> >>
> >>> I made some changes(make the subject more
> >>> formal, add a blank line, respect the80-column right margin and use -=
u
> >>> to when doing git format-patch) and attached the patch below.
> >>
> >> Thanks!
> >>
> >>> But I am
> >>> a bit confused about semantic newlines. I think I already start on a
> >>> new line and use clause breaks to split long sentences? Do I
> >>> misunderstand something? Thank you!
> >>
> >> Here's your patch, modified to use semantic newlines:
> >>
> >> +The kernel accepts null for both time and timezone.
> >> +The timezone argument is ignored by glibc and musl,
> >> +and not passed to/from the kernel.
> >> +Android's bionic passes the timezone argument to/from the kernel,
> >> +but Android does not update the kernel timezone
> >> +based on the device timezone in Settings,
> >> +so the kernel's timezone is typically UTC.
> >>
> >> Does it make sense now?
> >>
> >> I'll also comment a few things about the patch:
> >>
> >>> +The kernel accepts null for both time and timezone.
> >>
> >> We should use the 'tv' and 'tz' identifiers.  We should also use NULL.
> >> I suggest:
> >>
> >> The kernel accepts NULL for both
> >> .I tv
> >> and
> >> .IR tz .
> >>
> >>> +The timezone argument is ignored by glibc and musl,
> >>> +and not passed to/from the kernel.
> >>> +Android's bionic passes the timezone argument to/from the kernel,
> >>
> >> Could you give an example of why bionic differs from glibc and musl,
> >> and why it can be useful.  It is mostly curiosity, but it might be
> >> useful to have it documented in the commit message.
> >>
> >>> +but Android does not update the kernel timezone
> >>> +based on the device timezone in Settings,
> >>> +so the kernel's timezone is typically UTC.
> >>
> >> Cheers,
> >> Alex
> >>
> >> --
> >> <http://www.alejandro-colomar.es/>
> >> GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5
> >>
>
> --
> <http://www.alejandro-colomar.es/>
> GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5
>
