Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8E742755049
	for <lists+linux-man@lfdr.de>; Sun, 16 Jul 2023 20:24:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229809AbjGPSYt (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 16 Jul 2023 14:24:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37092 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229576AbjGPSYt (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 16 Jul 2023 14:24:49 -0400
Received: from mail-qt1-x82e.google.com (mail-qt1-x82e.google.com [IPv6:2607:f8b0:4864:20::82e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4EE061B0
        for <linux-man@vger.kernel.org>; Sun, 16 Jul 2023 11:24:48 -0700 (PDT)
Received: by mail-qt1-x82e.google.com with SMTP id d75a77b69052e-40371070eb7so255091cf.1
        for <linux-man@vger.kernel.org>; Sun, 16 Jul 2023 11:24:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20221208; t=1689531887; x=1692123887;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SiyXwtg/91p8cD6vwqosAoKLeV9nCSLvqLPfMtZ5N1k=;
        b=FDv0ORr7qAZC9O/Z9xmmGkXLRoZ0GQUjUwajYyEaU0HI3EOVun6YUeKpPBdVLYmzfz
         j9U/5afxEDAztXk+r6NV+719MN5nMp9b/bXRBn2N5Pazp/TUmvaniXVTUN16vK8ZVppV
         nI+Jshn479TiQZKMSO9M7/WC0ZRabJZz4UvFEiImBjdSpV2vkeGSoN30c6HlVx3Ov553
         I9yvc7fERdrlH9mEkGYX1XnxIPlnU1t3snAXuua0BHcIjxvlG+A1GBnNMazTZuECnEDr
         rGVSLMQoLpmN61I1TkuZGEgqt4bN/6dPfgWFlk8y2cSLOmTFn/eNvWh72cYOs+8Z9u3+
         EFgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689531887; x=1692123887;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SiyXwtg/91p8cD6vwqosAoKLeV9nCSLvqLPfMtZ5N1k=;
        b=i9fwCaI5onAkiB44iblmegWeEF8ljkos50kyLASAAVjSFUzIhiYXfVw28OBUSGG47h
         6iVRm7IReVtYstfnatX3gXsWzcQuuUvO9IrhV3YiMDxmeJ0c5JjPBzN1iRvgtiuHq6Lb
         nK50Tb6IJM2rIY4Pm0H6pzqE527T1/3rs0GyfOYmw4CuZreNxIFPNIwXN4IdFmkpBuPh
         qPzleTmPQhnRDqKBOJ+cZHO4DeF3iR9bUxTGJn+/p2ktbfAyIqncjWckovoq7Rbrwf5b
         o0JiWlY7md6hNN8ZVEB+wyUpYMCkjfoXHuFwy387fn3hIN4OHhdkPMv/xOktLq9e8bfY
         GJzw==
X-Gm-Message-State: ABy/qLY+N0bl9dk2RBrG4tA1RdqiZt6XT9SL1Pw5r8E7DM5JkQxvvIvj
        8kSP5ajbAu/SCvNRTIXLuoUBjJxVNW01vuaZZnNTF5C7kNotjeRthJDA+Q==
X-Google-Smtp-Source: APBJJlHj3TbVCMiWe89uKdR2hIc5U7PXSsu8EnoO/XzR5Ao7bYaMlGNBu6c+rAp7sMi2OCZmSFto4sDWPjuJjNRgQV4=
X-Received: by 2002:a05:622a:1826:b0:403:a6e5:9cdf with SMTP id
 t38-20020a05622a182600b00403a6e59cdfmr1150217qtc.8.1689531887281; Sun, 16 Jul
 2023 11:24:47 -0700 (PDT)
MIME-Version: 1.0
References: <20230714070043.275611-1-maskray@google.com> <3879502b-90f7-c445-cc68-30f53f1c86fe@kernel.org>
 <CAFP8O3LiBXNPELaoeVQgBCQshnxYMAMGBMGncJKPmMXnedqt8Q@mail.gmail.com> <b32e42ef-244f-29b7-381b-3659036e4765@kernel.org>
In-Reply-To: <b32e42ef-244f-29b7-381b-3659036e4765@kernel.org>
From:   Fangrui Song <maskray@google.com>
Date:   Sun, 16 Jul 2023 11:24:35 -0700
Message-ID: <CAFP8O3LqMD-Zw6tFJ5cW82rtC2pJFCS4RqWvZmThSt0ZVNX=yA@mail.gmail.com>
Subject: Re: [PATCH] ld.so.8: Correct linker option name
To:     Alejandro Colomar <alx@kernel.org>
Cc:     linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-17.6 required=5.0 tests=BAYES_00,DKIMWL_WL_MED,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        ENV_AND_HDR_SPF_MATCH,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE,USER_IN_DEF_DKIM_WL,USER_IN_DEF_SPF_WL
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Sat, Jul 15, 2023 at 5:46=E2=80=AFPM Alejandro Colomar <alx@kernel.org> =
wrote:
>
> Hi,
>
> On 2023-07-15 20:19, Fangrui Song wrote:
> > On Sat, Jul 15, 2023 at 9:42=E2=80=AFAM Alejandro Colomar <alx@kernel.o=
rg> wrote:
> >>
> >> Hi Fangrui,
> >>
> >> On 2023-07-14 09:00, Fangrui Song wrote:
> >>> The linker option that sets the DF_1_NODEFLIB flag is -z nodefaultlib
> >>> instead of -z nodeflib.
> >>
> >> Does -z nodeflib exist?  Please mention that in your commit message.
> >>
> >> Thanks,
> >> Alex
> >
> > Hi Alex, -z nodeflib is not defined.
> >
> > % ld.bfd -m elf_x86_64 -e 0 /dev/null -z nodeflib
> > ld.bfd: warning: -z nodeflib ignored
> > % ld.lld -m elf_x86_64 -e 0 /dev/null -z nodeflib
> > ld.lld: warning: unknown -z value: nodeflib
> >
> > I have double checked that my commit message is accurate.
>
> I say it because it is a bit ambiguous, in the sense that it's not clear
> if nodeflib is a valid flag but which is not the one we're interested in,
> or if it's just an invalid flag.
>
> It's not a problem for those who know, but it reduces the work for those
> who don't know.  Anyway, that was my guess, but I was only 90% certain
> without checking.  I suggest appending this at the end of your commit
> message:
>
> ```
> -z nodeflib is not defined.
>
> % ld.bfd -m elf_x86_64 -e 0 /dev/null -z nodeflib
> ld.bfd: warning: -z nodeflib ignored
> % ld.lld -m elf_x86_64 -e 0 /dev/null -z nodeflib
> ld.lld: warning: unknown -z value: nodeflib
> ```
>
> What do you think?
>
> Thanks,
> Alex

Thank you for the suggestion! I agree that adding the commands clarifies th=
ings.
Sent v2: https://lore.kernel.org/linux-man/20230716182227.2226356-1-maskray=
@google.com/T/#u

> >
> >>>
> >>> Signed-off-by: Fangrui Song <maskray@google.com>
> >>> ---
> >>>  man8/ld.so.8 | 4 ++--
> >>>  1 file changed, 2 insertions(+), 2 deletions(-)
> >>>
> >>> diff --git a/man8/ld.so.8 b/man8/ld.so.8
> >>> index 1c9a13f56..351913bd8 100644
> >>> --- a/man8/ld.so.8
> >>> +++ b/man8/ld.so.8
> >>> @@ -83,7 +83,7 @@ From the cache file
> >>>  which contains a compiled list of candidate shared objects previousl=
y found
> >>>  in the augmented library path.
> >>>  If, however, the binary was linked with the
> >>> -.B \-z nodeflib
> >>> +.B \-z nodefaultlib
> >>>  linker option, shared objects in the default paths are skipped.
> >>>  Shared objects installed in hardware capability directories (see bel=
ow)
> >>>  are preferred to other shared objects.
> >>> @@ -97,7 +97,7 @@ and then
> >>>  and then
> >>>  .IR /usr/lib64 .)
> >>>  If the binary was linked with the
> >>> -.B \-z nodeflib
> >>> +.B \-z nodefaultlib
> >>>  linker option, this step is skipped.
> >>>  .\"
> >>>  .SS Dynamic string tokens
> >>
> >> --
> >> <http://www.alejandro-colomar.es/>
> >> GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5
> >>
> >
> >
>
> --
> <http://www.alejandro-colomar.es/>
> GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5
>


--=20
=E5=AE=8B=E6=96=B9=E7=9D=BF
