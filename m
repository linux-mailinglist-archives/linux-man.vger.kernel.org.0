Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E1A9B1F4D68
	for <lists+linux-man@lfdr.de>; Wed, 10 Jun 2020 08:01:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726035AbgFJGBS (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 10 Jun 2020 02:01:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41340 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725988AbgFJGBQ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 10 Jun 2020 02:01:16 -0400
Received: from mail-ed1-x543.google.com (mail-ed1-x543.google.com [IPv6:2a00:1450:4864:20::543])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0698FC05BD1E
        for <linux-man@vger.kernel.org>; Tue,  9 Jun 2020 23:01:16 -0700 (PDT)
Received: by mail-ed1-x543.google.com with SMTP id t21so487888edr.12
        for <linux-man@vger.kernel.org>; Tue, 09 Jun 2020 23:01:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding;
        bh=Mz+JYXF/q3ahrvI/z7JWO5z4x0W0fGkc/I2NjDtdgi4=;
        b=o8ehr6Fw6ENRZf9nc476Nu0XRlBXVNR4sO/KKMXZrl+8oCA7YYNXD/dHdMFfgCYE2z
         SKteSV35Z/25ktBdVBwMIDPr7tjdobA3XEvN+AntAnpeHvnweSBSeF5cKFn4JIrCpPtD
         wxzLx5kf5QYt/ZgxWcwPrsLdTtUau2HPB9H15sBMrHGD+EMF/LqcSryNiJE7P8mJQ3nX
         3VBl4n9ar1K1QhTC1TXn/BaFqP5Cq1AZlam+ebfSDW7f417HLZ7i9oP+xVUgC6Xxh7Db
         LoyQPKkFugKJeyuIKEZfJYQKPJGi/oMSBHBowdNw8I4bzYkgNs6Jcac0eEg7lNhBz3eY
         UPqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc:content-transfer-encoding;
        bh=Mz+JYXF/q3ahrvI/z7JWO5z4x0W0fGkc/I2NjDtdgi4=;
        b=NoFPF24TDqVMPFh+Ugxu7pX980MBcmRgBmu3wPtsY10HOtWoLP5TqGIp2oaqLm8MsU
         I0K4+CEJMmVcjhbX/e226DQ7Xpl+Rst2EN01WHxQ7VpzQHfq+RPEVyvp9/8H93UlOYdq
         4Y5xvCgo9JZ2lB3R3DwIxMdsPoMhLIGCl7prlU0rTzkGg5yEPZ7Sdp+rbCh+bD6ODw1d
         VwzbGAnNjTb9LIPwFSyBaAOU2RwMTTTfRsqc+MlXz/3kQaSJ/ZTyo8vZ90pFTP9oSLss
         NFEZwKy7cCyAURL/5WuAgLi/knrE/a7881ZB4ueWZYFEnOgaozWE9wg7aQ7BibIpGUzl
         18AQ==
X-Gm-Message-State: AOAM532kuuf0joH9I/i6syS9QjAhfJUXptvWHPgi01bQnnHjRThi6L3m
        Y4DDrR1K5D/2yNmlQBM+JOLM3GVVya9SPrgATAdLOx+Rpk8=
X-Google-Smtp-Source: ABdhPJz29aJhN2ajuQ5BSd9w2FlfE+kRycOqwdObVlzbfKtm6yNG2SC2NjSjbeoH6Y9iWqvyoUShyiz6onYsFNqNmOk=
X-Received: by 2002:a05:6402:1606:: with SMTP id f6mr1088203edv.286.1591768874444;
 Tue, 09 Jun 2020 23:01:14 -0700 (PDT)
MIME-Version: 1.0
References: <57abae5e-2394-0542-9e21-10c0bb837078@redhat.com>
 <87pnaoe70h.fsf@oldenburg2.str.redhat.com> <14751c26-4c4d-24c1-df12-429931b61780@redhat.com>
 <87r1uy3sgb.fsf@oldenburg2.str.redhat.com>
In-Reply-To: <87r1uy3sgb.fsf@oldenburg2.str.redhat.com>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Wed, 10 Jun 2020 08:00:00 +0200
Message-ID: <CAKgNAkjB3-LvJaTQ5cHyc-cduD6Yr0_dBrSmN_bih+YOzuBCww@mail.gmail.com>
Subject: Re: [PATCH v2] ld.so.8: Update "Hardware capabilities" section for
 glibc 2.31.
To:     Florian Weimer <fweimer@redhat.com>
Cc:     "Carlos O'Donell" <carlos@redhat.com>,
        linux-man <linux-man@vger.kernel.org>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Carlos,

What's the status of this patch?

Thanks,

Michael


On Tue, 2 Jun 2020 at 08:14, Florian Weimer <fweimer@redhat.com> wrote:
>
> * Carlos O'Donell:
>
> > +Care should be taken when packaging such application with a package ma=
nager,
> > +particularly the scenario where an optimized library is being removed.=
  With
> > +certain package managers, particularly rpm, the newer version of the
>
> Twice =E2=80=9Cparticularly=E2=80=9D.
>
> > +application is installed first, which means that for a period of time =
during
> > +the upgrade all applications that use the library may start with a mix=
ed set of
> > +libraries e.g.  the old library from the feature-based search path, an=
d new
>
> Commas arount e.g.?
>
> > +libraries from the upgrade. To avoid this scenario the new library ver=
sion
> > +should delete all known optimized libraries in the post-install phase.
>
> There is a different mechanism: Debian has patched glibc to disable
> hwcap subdirectors if the file /etc/ld.so.nohwcap exists.
>
> You now list the AT_PLATFORM directories (determined by the kernel on
> most architectures) along the regular hwcaps directories, although they
> are handled somewhat differently.  For example, on s390x, if you have a
> =E2=80=9Cz15=E2=80=9D machine (as indicated by AT_PLATFORM), the =E2=80=
=9Cz13=E2=80=9D subdirectory is
> not selected.  ldconfig will add it to the cache, but it will not be
> used at run time.  I'm not sure if your proposed description gives
> readers the right idea what happens.
>
> Thanks,
> Florian
>


--
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
