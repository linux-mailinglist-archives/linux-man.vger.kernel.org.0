Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AD51F77A472
	for <lists+linux-man@lfdr.de>; Sun, 13 Aug 2023 02:58:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229795AbjHMA6Z (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 12 Aug 2023 20:58:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38676 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229494AbjHMA6Z (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 12 Aug 2023 20:58:25 -0400
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com [IPv6:2a00:1450:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1592B1706
        for <linux-man@vger.kernel.org>; Sat, 12 Aug 2023 17:58:27 -0700 (PDT)
Received: by mail-ej1-x62e.google.com with SMTP id a640c23a62f3a-99c47ef365cso442720566b.0
        for <linux-man@vger.kernel.org>; Sat, 12 Aug 2023 17:58:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sargun.me; s=google; t=1691888305; x=1692493105;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zsydCHsv3NrtZXknNqSVGpwG8Hjbw10Jovno2E+iiXE=;
        b=n9fhaCKL1opDEDzJvGjxpUiIFyXFEzDIvehNyLM0K3KPF12uxq/RZtplqhYtbKPj78
         0vv2n0OamSy7ZD4xeALhnKdJ4+wL2vHUQ7MgBdAHjJ2DcXYwRNJy6Rj3uNKxRd5ZEXDh
         yNeJqzG6Xi80M7l3p5I5/6C3uaCIktqdw2F9I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691888305; x=1692493105;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zsydCHsv3NrtZXknNqSVGpwG8Hjbw10Jovno2E+iiXE=;
        b=PE0BiaEJ7rCatGz8c65kgEKYsuEZaB46vN56LhHnnGfh3Q5+0cEFls+C7YCDMvznEs
         8dkPx9UBYPeEUzSmvPwClDZJFYst0DnKx+lZxYbzHtG4XoB+WBqZJ+AWwdDvGVoel3Sh
         BENLJ1guQIDZw1/sQevlgZustSJUeeK0oYa/wLcISOJF2UrZ+jpZH1JiBERADucm86fF
         XzyPXXamw55d0IZGFRDod6nwLV5Mn7r3Eg+QhqilNrW42ulq9fpq4cO/dWnM2IM4w/IG
         XeCAWIm/jGK02ps+i1DgnorSE6YsTKYk9lOSvDQq/hJzvaEoiCGXQCtkuvBnBDdUfm30
         c3bA==
X-Gm-Message-State: AOJu0YxUneAJAFFEsJB7ygJ1X/DKfKDe7XHfvJ7qUIT4edqO9yM/cgBc
        /Xydsesns4W+pVL2smwv5qux3NHHQZWl3oh33P8kfQJVERm1loiboiye9xwt
X-Google-Smtp-Source: AGHT+IHB78IvoFYshyCOWBml8ZYzxlag8P8wBnFJh8X/7EhJCBnWMIeaODJTeFlFNcKJXrHfc1wNFIiR9ltlqPWyjqU=
X-Received: by 2002:a17:906:73dc:b0:99b:56f1:3002 with SMTP id
 n28-20020a17090673dc00b0099b56f13002mr5274438ejl.61.1691888304520; Sat, 12
 Aug 2023 17:58:24 -0700 (PDT)
MIME-Version: 1.0
References: <20230810022603.947583-1-sargun@sargun.me> <69c6a263-3578-2d1e-23c0-6a8e9c35602f@kernel.org>
 <923b82cd-9bfe-44bd-1d8b-26fa35799d64@kernel.org> <ZNfX5ilXYK3Ut8Tr@titan>
In-Reply-To: <ZNfX5ilXYK3Ut8Tr@titan>
From:   Sargun Dhillon <sargun@sargun.me>
Date:   Sat, 12 Aug 2023 18:57:48 -0600
Message-ID: <CAMp4zn-BHvCAKWTiVTWb6oEzkFRzd0jHXWHBE1h-BQ+mGUD=WQ@mail.gmail.com>
Subject: Re: [PATCH] clone.2: Fix the erroneous statement about CLONE_NEWPID
To:     John Watts <contact@jookia.org>
Cc:     Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Sat, Aug 12, 2023 at 1:05=E2=80=AFPM John Watts <contact@jookia.org> wro=
te:
>
> On Sat, Aug 12, 2023 at 07:51:43PM +0200, Alejandro Colomar wrote:
> > Does this depend on any recent kernel version?  In my system,
> > the assertion fails.
> >
> >
> > $ cat clone.c
> > ...
> >
> > $ cc -Wall -Wextra clone.c
> > $ ./a.out
> > main program:  pid: 18783, and ppid: 18703
> > a.out: clone.c:24: main: Assertion `ret !=3D -1' failed.
> > Aborted
It looks like this was added in
1f7f4dde5c945f41a7abc2285be43d918029ecc5 in v3.13.

>
> On my systerm I get the same result. strace says this:
>
> clone3({flags=3DCLONE_PARENT|CLONE_NEWPID, exit_signal=3D0, stack=3DNULL,=
 stack_size=3D0}, 88) =3D -1 EPERM (Operation not permitted)
>
> However when running as root it works.
>
> John.
CLONE_NEWPID requires privileges.

See:

              Only a privileged process (CAP_SYS_ADMIN) can employ
              CLONE_NEWPID.  This flag can't be specified in conjunction
              with CLONE_THREAD or CLONE_PARENT.
