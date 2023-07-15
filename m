Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F1406754A9C
	for <lists+linux-man@lfdr.de>; Sat, 15 Jul 2023 20:19:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229500AbjGOST5 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 15 Jul 2023 14:19:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40532 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229472AbjGOST5 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 15 Jul 2023 14:19:57 -0400
Received: from mail-qt1-x82b.google.com (mail-qt1-x82b.google.com [IPv6:2607:f8b0:4864:20::82b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1BD8026AF
        for <linux-man@vger.kernel.org>; Sat, 15 Jul 2023 11:19:55 -0700 (PDT)
Received: by mail-qt1-x82b.google.com with SMTP id d75a77b69052e-403b622101bso154871cf.1
        for <linux-man@vger.kernel.org>; Sat, 15 Jul 2023 11:19:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20221208; t=1689445194; x=1692037194;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=X0LejS2eQz+kIqBXCX3dVydKAFYVxgroHRAZmWVnnGo=;
        b=uNgl/j32z0gFkuE4WYU2S8GD6Z9S8xIEuhxXGqOHvcuAn60tsk3z2/T3g5nu0psk8t
         /5gbVOGTqX1vaipsDaMBUt8DbrFiTyNE4J1iSb0w0If71hwV76ASxuUYaImQ4KLHtnUh
         WwLtY5IZKdDGUbhBNvsN7K/T3VryC6/v1QVClLJW9P9jz6jqfoZ/pPKa9xg5MJn4HfCE
         ePaQGMDxEjGH3ewsNzE4IZBMDaOe8qB1hdLa+P2zZzwxslm4F2/CHVotEhvnB6IahMIE
         2Xu2RoB6YJzg9bDcWytP8nvmxAwHsqDEVpfk+UFyJbuDZ0tL3sFlP0IUHY/qedcmWr9T
         5ERw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689445194; x=1692037194;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=X0LejS2eQz+kIqBXCX3dVydKAFYVxgroHRAZmWVnnGo=;
        b=hHCI36vyGdvOsAJHxP77/azhfvRoggBpMDkC+gl9q5eS4FUeVM2koMrR2IwAWoIdZH
         2eA4yjao2ePQm7EEPcjTdXrIFp0rDzNQp54cIQgNsvGdalVM4XFfJeMzjhs8D3+AUUDX
         jSIc+tzAE6juL8BkmOq1Ex0v9zP/4i0jU/hrgVDkqjm//5XrxSMPBJl4jllSQfUoQOVy
         RtcEqQCXciaCgsF+P4FuKB1GB/1wH/xxj6TTN8sJc1aGbHbRN+rqHzStUkY+dAUyLIvI
         XpSwYuKapxQst2xuoWdSYGbny671Pq0akjDmoO3yjpX/CyBDLsucKEkd722B2LWpjn4R
         zKww==
X-Gm-Message-State: ABy/qLaa69+Kb9DFTU5302quqCzDmuE6RrX2KORBZB+iA3+YwJGGKRGL
        AESJEuhqdQIEumSiLrAC8teC0zdh5ps5gFfk5Mvu+eYMJENFHW9Km4BW8Q==
X-Google-Smtp-Source: APBJJlElCSLq9PpyltFxMV4yUa8RbYx6pQ1wtAs3WloX1FeMvfczGxQ4XRsiUsP2oywM39U13kYJl80KKjUq6/uk8aE=
X-Received: by 2002:a05:622a:1010:b0:403:b387:2bbd with SMTP id
 d16-20020a05622a101000b00403b3872bbdmr1220700qte.12.1689445193909; Sat, 15
 Jul 2023 11:19:53 -0700 (PDT)
MIME-Version: 1.0
References: <20230714070043.275611-1-maskray@google.com> <3879502b-90f7-c445-cc68-30f53f1c86fe@kernel.org>
In-Reply-To: <3879502b-90f7-c445-cc68-30f53f1c86fe@kernel.org>
From:   Fangrui Song <maskray@google.com>
Date:   Sat, 15 Jul 2023 11:19:42 -0700
Message-ID: <CAFP8O3LiBXNPELaoeVQgBCQshnxYMAMGBMGncJKPmMXnedqt8Q@mail.gmail.com>
Subject: Re: [PATCH] ld.so.8: Correct linker option name
To:     Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org
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

On Sat, Jul 15, 2023 at 9:42=E2=80=AFAM Alejandro Colomar <alx@kernel.org> =
wrote:
>
> Hi Fangrui,
>
> On 2023-07-14 09:00, Fangrui Song wrote:
> > The linker option that sets the DF_1_NODEFLIB flag is -z nodefaultlib
> > instead of -z nodeflib.
>
> Does -z nodeflib exist?  Please mention that in your commit message.
>
> Thanks,
> Alex

Hi Alex, -z nodeflib is not defined.

% ld.bfd -m elf_x86_64 -e 0 /dev/null -z nodeflib
ld.bfd: warning: -z nodeflib ignored
% ld.lld -m elf_x86_64 -e 0 /dev/null -z nodeflib
ld.lld: warning: unknown -z value: nodeflib

I have double checked that my commit message is accurate.

> >
> > Signed-off-by: Fangrui Song <maskray@google.com>
> > ---
> >  man8/ld.so.8 | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> >
> > diff --git a/man8/ld.so.8 b/man8/ld.so.8
> > index 1c9a13f56..351913bd8 100644
> > --- a/man8/ld.so.8
> > +++ b/man8/ld.so.8
> > @@ -83,7 +83,7 @@ From the cache file
> >  which contains a compiled list of candidate shared objects previously =
found
> >  in the augmented library path.
> >  If, however, the binary was linked with the
> > -.B \-z nodeflib
> > +.B \-z nodefaultlib
> >  linker option, shared objects in the default paths are skipped.
> >  Shared objects installed in hardware capability directories (see below=
)
> >  are preferred to other shared objects.
> > @@ -97,7 +97,7 @@ and then
> >  and then
> >  .IR /usr/lib64 .)
> >  If the binary was linked with the
> > -.B \-z nodeflib
> > +.B \-z nodefaultlib
> >  linker option, this step is skipped.
> >  .\"
> >  .SS Dynamic string tokens
>
> --
> <http://www.alejandro-colomar.es/>
> GPG key fingerprint: A9348594CE31283A826FBDD8D57633D441E25BB5
>


--=20
=E5=AE=8B=E6=96=B9=E7=9D=BF
