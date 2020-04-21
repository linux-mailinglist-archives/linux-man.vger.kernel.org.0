Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B04DD1B24B3
	for <lists+linux-man@lfdr.de>; Tue, 21 Apr 2020 13:13:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726741AbgDULN3 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 21 Apr 2020 07:13:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46466 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726018AbgDULN2 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 21 Apr 2020 07:13:28 -0400
Received: from mail-ed1-x543.google.com (mail-ed1-x543.google.com [IPv6:2a00:1450:4864:20::543])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AAEDBC061A0F
        for <linux-man@vger.kernel.org>; Tue, 21 Apr 2020 04:13:27 -0700 (PDT)
Received: by mail-ed1-x543.google.com with SMTP id r7so9918255edo.11
        for <linux-man@vger.kernel.org>; Tue, 21 Apr 2020 04:13:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding;
        bh=yf7iZNtQkJSnz/OywDamkvlWybV52A/sSdTDu9IWcsE=;
        b=WKppmjy2Q6kD+NsWkQWbHgFizT9wirFHukVji/cRbETBicfsxtykI1iCe71nqo4/Xe
         M16KJ52RjHFyXe12HmSpiVLnUxxYSCNQM2txhYBkEaf492+4HHFBPjw2hm/bkpJd2aoZ
         Y5Q7Hmc0+iJxEl8WWYi4dfrzFSmaWVhRbSiyiobMI/5mSS39m5wgFANHxE9vRaWmW/uQ
         Kg7p2qnZLN+EheS2mDFzN1hvIjXAZJGPHoBsjqAmqiP8QFBtlxrxiKxosRzE90S+MtK/
         7u2icWnQmBiiAgKtt1FEn6okBwKdpeGj75oJvcaBd8Wu1aOOR6LIFeUHgUCFzolzyBul
         DvKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc:content-transfer-encoding;
        bh=yf7iZNtQkJSnz/OywDamkvlWybV52A/sSdTDu9IWcsE=;
        b=UppporYM1R5+pbzqflc8qF5Btt3hikuqOXP3CFJBjuYOEHloUblOQjL5X6xk+VPEV0
         ZVqhfIA4BgAhvTKoumStWgb+FHlGdiJYyY5hihLH7CcZ1B2uvU+41Ye9O33lFbqlD9Ix
         lPEGz+j1xIlcky9buLH+ImGQ68r7cKOV96L6qUMkaDRWnI2RRgsd7U4GfWJgd8ejS9pR
         LbUoMmkbImzEEJEnNMsUETowmt+aIMOaNtenUXVd0EhecA2h1jeyyu1XOfRdME9disNG
         abpsKzZQnGrCuZrCU4w6BZYcwVe8rSAAhBK9QTduErvQxgHJt3CMKH8qi9IXFBWPM5ei
         fTGA==
X-Gm-Message-State: AGi0PubvradllqjLanSmT1ndcKWqIj9627ppB+edrZUyl5jQFurwll0w
        47+O9KP+yFQDP2O3IadLNDQKdF1ZxVPiqhEF9JQ=
X-Google-Smtp-Source: APiQypIHH18modVY9S335PXnA6GVGjtCZZxdm9osYALwp4kt0FG6Pq9duuhnToDhRI7ib+YiNNyfNJ/+w/4os8iCDT8=
X-Received: by 2002:a05:6402:7d6:: with SMTP id u22mr18024503edy.149.1587467606308;
 Tue, 21 Apr 2020 04:13:26 -0700 (PDT)
MIME-Version: 1.0
References: <CAJWcbJEJDZS34g8v3dG-RAe=W0T-9ti_LUQ=GM9LJiEcetVphA@mail.gmail.com>
 <CAJWcbJEr0DxmJch2K-CjidF6oQ+wBn43zBXEBH5XZmDkgT=5kg@mail.gmail.com>
In-Reply-To: <CAJWcbJEr0DxmJch2K-CjidF6oQ+wBn43zBXEBH5XZmDkgT=5kg@mail.gmail.com>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Tue, 21 Apr 2020 13:13:15 +0200
Message-ID: <CAKgNAkhqHnZUuGCMHCDO+QMAjWEAosuAzZxzqJKstbUN0_6=Tg@mail.gmail.com>
Subject: Re: A problem with prctl(2) and proc(5)
To:     Eric Hopper <hopper@omnifarious.org>
Cc:     linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Eric,

On Tue, 24 Oct 2017 at 00:47, Eric Hopper <hopper@omnifarious.org> wrote:
>
> Also... execve(2) should make a passing mention of the DUMPABLE flag
> and point at the prctl documentation where it talks about set-user-ID
> processes. That would've greatly shortened my search for the answer I
> needed.

I added some sentences to the execve(2) page, so that tehre is now a
piece that reads:

       *  The  process's  "dumpable"  attribute  is  set  to the value 1,
          unless a set-user-ID program, a set-group-ID program, or a pro=E2=
=80=90
          gram  with  capabilities  is  being executed, in which case the
          dumpable  flag  may  instead  be  reset   to   the   value   in
          /proc/sys/fs/suid_dumpable,   in  the  circumstances  described
          under PR_SET_DUMPABLE in prctl(2).  Note that  changes  to  the
          "dumpable"  attribute  may  cause  ownership  of  files  in the
          process's /proc/[pid] directory  to  change  to  root:root,  as
          described in proc(5).

Thanks,

Michael

--=20
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
