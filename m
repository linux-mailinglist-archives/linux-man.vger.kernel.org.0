Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 114CB7A8E76
	for <lists+linux-man@lfdr.de>; Wed, 20 Sep 2023 23:30:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229520AbjITVag (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 20 Sep 2023 17:30:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52264 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229574AbjITVaf (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 20 Sep 2023 17:30:35 -0400
Received: from mail-qv1-xf29.google.com (mail-qv1-xf29.google.com [IPv6:2607:f8b0:4864:20::f29])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D5F54CF
        for <linux-man@vger.kernel.org>; Wed, 20 Sep 2023 14:30:29 -0700 (PDT)
Received: by mail-qv1-xf29.google.com with SMTP id 6a1803df08f44-65637c04014so1278556d6.3
        for <linux-man@vger.kernel.org>; Wed, 20 Sep 2023 14:30:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1695245428; x=1695850228; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fY0UvEkKdo6g9mXThesw0BKoq3Ay1mjDZTJP6Rhwq14=;
        b=CWK0G2+eJugbYr09qYYZjCtp3cqD6LZK0ekhdGV/YO6HrI2pyLYKXIKsKj8Jb9b6r7
         ovasHMZ0tOuwSYVX8VUxvbMYcIOOi/HT7b7VT7LderxpMFH/3hQi2u4TCFN3x1w3Z7tc
         I8VwnDvKlYowXZ/nU5PcWssLzhH4eZu20gl0uDKZ5OMIwmeiVi9XTvoE3fnOjF8Hs+0F
         L23bS31j6bTJ5em/4IjIdL91EOo0RAmYOj2zdoCWTA4EvYIlBAKaDSwZZHF9C3jTyNVP
         KqRsaZoOiYEZPz0CaYXXlBBo2sy1ashuvdyeRtsAG4TNsG4asfTfiYzhOdWtPCdGPsRc
         +5Lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695245428; x=1695850228;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fY0UvEkKdo6g9mXThesw0BKoq3Ay1mjDZTJP6Rhwq14=;
        b=CkshRD/ua9NasETEgamB6hrKH4G+bZc+69Xyy55LRS8+8o5mdg07i4vC8KO6xX/HQL
         yTFXmL9xKasV3bWzQN6CdpbClUKqfDr97Em7SpbSUfc+jD6XnLhuApNdyH0Gd/4MGVtA
         g4Mjt//Lu4eYGTetMQKIlYKS6uwBDgCnWcXg6zNj6xTzjLjsXKioslvRzc9AMk8BVo15
         xJJfm9UzKRgCCiONhksojFMXlRRQ7i2ErZ77Zv6UWkpWiTKqW2H9gdBv2rKaIaq3e2sa
         FQCrUG5dJF8Fgox4PJnb7MAxSrbrWPqc3nOfSpoOGFMsdroet9CIUI930kgmcbJs1pQW
         74MA==
X-Gm-Message-State: AOJu0YyL/QBD17xGpiKJQA6cH2ufJxOJuoZHEgg4bRIhcxYTbsBmFFvn
        ll3DN/EY7I/OlYXD2Bjq6ksvuZoqYFPOykUIYv9n+g==
X-Google-Smtp-Source: AGHT+IHaudEt3lZwQQc719xT0Mutj18vS489ulUEYcDEwiHP4wZcdBCVq4BdMemH5z+T27qB7sSVwzA0C9x31e++PYg=
X-Received: by 2002:a0c:b382:0:b0:64f:4ec5:12c6 with SMTP id
 t2-20020a0cb382000000b0064f4ec512c6mr3416973qve.26.1695245428508; Wed, 20 Sep
 2023 14:30:28 -0700 (PDT)
MIME-Version: 1.0
References: <CAJgzZoqty5f=ivODLB6pvZpm4bZWAt83ET5jpMwrEb9oVqS6MQ@mail.gmail.com>
 <fa623e75-e5bf-b32d-8ce8-27ed59ae03d7@cs.ucla.edu> <CAJgzZorrrPLSJ-EWrsGcXg9y-ipVsX9FjHtdeh1x15yY7c-eHw@mail.gmail.com>
 <e06035f7-145a-13cd-554c-ca65a3d8f98a@cs.ucla.edu>
In-Reply-To: <e06035f7-145a-13cd-554c-ca65a3d8f98a@cs.ucla.edu>
From:   enh <enh@google.com>
Date:   Wed, 20 Sep 2023 14:30:13 -0700
Message-ID: <CAJgzZorUUsoC77+LE=XpvB3mmUbZEXyzvVi4+0FKqdjRevC3AQ@mail.gmail.com>
Subject: Re: [PATCH] difftime.3: be more explict about "difference".
To:     Paul Eggert <eggert@cs.ucla.edu>
Cc:     linux-man <linux-man@vger.kernel.org>,
        "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
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

that looks really good. i'm glad i poked you with my terrible patch. thanks=
!

On Wed, Sep 20, 2023 at 1:11=E2=80=AFPM Paul Eggert <eggert@cs.ucla.edu> wr=
ote:
>
> On 2023-09-20 07:13, enh wrote:
> > that's why i added you --- to suggest better wording =F0=9F=A4=A3
>
> I noodled around a bit. There are several mistakes about timestamps in
> the man pages. difftime, for example, copies the C standard's "calendar
> time" wording but in Linux it's just a seconds count and need not have
> anything to do with 1970 or any other calendar. And there are lots of
> other howlers about leap seconds and 2038, improperly parenthesized
> macros, unclear wording like "incremental adjustments", out-of-date
> references, etc.
>
> Attached is a proposed patch to fix the problems I found before I ran
> out of time. I haven't checked formatting. I'm sure it could be improved
> further.
