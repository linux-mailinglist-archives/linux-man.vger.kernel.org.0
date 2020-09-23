Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E636027534E
	for <lists+linux-man@lfdr.de>; Wed, 23 Sep 2020 10:36:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726196AbgIWIgV (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 23 Sep 2020 04:36:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35502 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726130AbgIWIgV (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 23 Sep 2020 04:36:21 -0400
Received: from mail-ot1-x342.google.com (mail-ot1-x342.google.com [IPv6:2607:f8b0:4864:20::342])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E2820C0613CE
        for <linux-man@vger.kernel.org>; Wed, 23 Sep 2020 01:36:20 -0700 (PDT)
Received: by mail-ot1-x342.google.com with SMTP id o6so18224013ota.2
        for <linux-man@vger.kernel.org>; Wed, 23 Sep 2020 01:36:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding;
        bh=dKQsrKAaJr2iK8I9AUb778jOhXb77aaTO0ZsoEGJO+M=;
        b=m/UBRRDun0ENjmjZiqB5E86o8Wm1qZ7J+nv7BBKAebDViutzw+3exrHdRisS1I88jh
         fuUK88JDTuWWNj3gJDDU3aaot3rLSW6ef8I1gd4S8BMXxJCMi0L4sNsVN2LzlJpmYT5a
         3tQESDpiUXeJ+aaYxkMpGe7KjiSMoc8rzx+wyJ8/Slj7Fp3j5FdhtF59t139xAoWMSy5
         TjSygwxVw6csoOwcFT6Sq3ve922hSvnL0h0TQ4Vi7Y6rAjqwk88evd7XBTXUIVfUNOaI
         xczSR9lvAWLdajhdUe7QyYxYKNv8G3nZf533qtmmoOcjHcmamGoMJrqXYjfT9f5484Fd
         +dwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc:content-transfer-encoding;
        bh=dKQsrKAaJr2iK8I9AUb778jOhXb77aaTO0ZsoEGJO+M=;
        b=YX4pgMEbia0+u7uz5De/kfC2NOImyF3FeIAqjt2QeWHKNNhtTjiAcwqGEKwSGCdmx7
         sUl+uKVVvUT0YF8K+ob/tZMD5LAp9fB2oEdILb/8ewwOTIKUfLAPwn8AZOBYrJC27zaV
         ztmjCamYzDkf8Ok3g8+USOUXNpgYX6vs9wrxLbzjl2OjLtMGgnL9LWNiTwGH6xmFlEB1
         cmaB1rdixW8dktfkF6ijQjFeQ2T/hTeZ7p4/PR97ptW8w+mYqtErtstZdcqiC9AafUYI
         W1t29fgFmshRnnvjJMLfait14fIJpGNG6qh3NvR/JJzj1SC2XZt9aGGJ4kRpE0Q+JGum
         oNrw==
X-Gm-Message-State: AOAM531/tBSxK7+vN7ec7dXRvYH/EUi+tSX8pkt1hXdClNf4wJ3op+HC
        NmYDOUD7TVwsXPQCob94eb4Dr0Rddk/Xdbf6yJ0CqvBYpFE=
X-Google-Smtp-Source: ABdhPJxR5YpkDkxX/V/ZPUJ2D26TN4hthKLo1ehWAN1cO5yTeEPs6R8LMwCKWpeqqG+WsHLWeSjPY2VzIui3ADy5ct8=
X-Received: by 2002:a9d:68d3:: with SMTP id i19mr5693701oto.308.1600850179977;
 Wed, 23 Sep 2020 01:36:19 -0700 (PDT)
MIME-Version: 1.0
References: <fb6463f6-49d7-e473-d5e1-1cdf8375e498@gmail.com>
 <6c5b89f8-4281-4434-cbee-28f88d07920c@gmail.com> <4ea99048-4bfd-9cba-44cd-9c37fdad8fce@gmail.com>
 <CAKgNAkjys+LYn1qaSXhM2gJfkv_UOnpeNPyh3QCqNLcMNBKB+g@mail.gmail.com>
 <d093c1a5-b31a-1200-3cd6-6b5d2cf28ad3@gmail.com> <3a56a8af-6371-89f3-cac2-31dd64791c99@gmail.com>
 <65e2bdf5-425b-9381-b1ac-3f101113c70f@gmail.com> <CAKgNAkiKyK6=QHoopQwBAVe6ACKY+JXGMyr4KzzXkofg560BQA@mail.gmail.com>
 <Pine.BSM.4.64L.2009222032470.12616@herc.mirbsd.org>
In-Reply-To: <Pine.BSM.4.64L.2009222032470.12616@herc.mirbsd.org>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Wed, 23 Sep 2020 10:36:08 +0200
Message-ID: <CAKgNAkizCjN9m0T3m9ATqHVDNyK_m5uSG2+_jVSEsT12UMLzxw@mail.gmail.com>
Subject: Re: [IDEA] New pages for types: structs and typedfefs
To:     linux-man <linux-man@vger.kernel.org>
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        Florian Weimer <fweimer@redhat.com>,
        libbsd@lists.freedesktop.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

[Thorsten, I have removed you from the CC because I get persistent
bounce messages whenever I send you mail. Hopefully you see this reply
via the list.]

Thorsten, thanks for your input.

On Tue, 22 Sep 2020 at 22:40, Thorsten Glaser <tg@mirbsd.org> wrote:
>
> Michael Kerrisk (man-pages) dixit:
>
> >I think quoting POSIX is fine (fair use etc.)
>
> =E2=80=9Cfair use=E2=80=9D only applies to the USA. For pieces quoted und=
er
> USA =E2=80=9Cfair use=E2=80=9D copyright still applies in all other count=
ries,
> and, worse, you can=E2=80=99t issue a licence for it (as you don=E2=80=99=
t own
> it).

Yes, it's complicated in theory at least. (I suspect it's simpler in practi=
ce.)

> https://pubs.opengroup.org/onlinepubs/9699919799/frontmatter/notice.html
> specifically reserves the copyright for POSIX.
>
> https://pubs.opengroup.org/onlinepubs/9699919799/help/terms.html
> specifically does not issue a licence for reproduction.

Obviously, it is a gray area, but there's a significant difference
between quoting a sentence or three from the standard and
reproducing/redistributing the standard.

> I know that some POSIX documents were re-released under a free-ish
> licence some time ago for inclusion into some manual pages, but I
> don=E2=80=99t have a reference for that and don=E2=80=99t know the scope.

Yes:
https://lwn.net/Articles/581858/

> Please get explicit permission from The Open Group before quoting
> from POSIX in anything you intend to distribute to the general public.

While I'm pretty sure they would allow this without problem, I'm
wondering if it's worth the effort. Ideally, we'd have text written by
someone in their own words. Reproducing the text of the standard has
limited value, since people can in any case consult the standard
directly.

Alex, how about we just go much simpler, saying something like:

[[
This type represents floating-point status flags; for further details
see fenv(3).
]]

Thanks,

Michael

--=20
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
