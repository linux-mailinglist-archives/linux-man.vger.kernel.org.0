Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1D55A1B1601
	for <lists+linux-man@lfdr.de>; Mon, 20 Apr 2020 21:38:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725897AbgDTTiE (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 20 Apr 2020 15:38:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42222 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S1725550AbgDTTiE (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 20 Apr 2020 15:38:04 -0400
Received: from mail-ed1-x541.google.com (mail-ed1-x541.google.com [IPv6:2a00:1450:4864:20::541])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EAC24C061A0C
        for <linux-man@vger.kernel.org>; Mon, 20 Apr 2020 12:38:03 -0700 (PDT)
Received: by mail-ed1-x541.google.com with SMTP id g16so8403995eds.1
        for <linux-man@vger.kernel.org>; Mon, 20 Apr 2020 12:38:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding;
        bh=5c03YbccI5+2Q9WOyvbAlyVb+r9DgzLxHim5ykFSVCc=;
        b=UEjgO7vp5Gr7l2HDwaPge4t2qDK4CejgWtzShFmcoc1HiMNZlYgnNeC/sb9aYpB5Io
         bMQwDr/LC2h+XUrL/7l+J31eY7IXW0aJOQrza+jEFovJE0vRh46tIA5qc0nFouJRzfkC
         3ONWW7GjRiR7bTklhToLnsoB/C38jdhQO6/aKbVCozTKdyA+Gb+tQxiPy9hPbtEfEx+s
         /LsIE5i5scCsRFwrXFLVGm1Rbo/TnzZvuecSg78dzz8Hxv1Xe1RVNJg8yoW1ADaphFP4
         FRjbIrBkWHBktKmbeki0NBr1dQjUk7TTvg1SggyXqe286YmG0BUUKUj+iJPYA1UqoXTX
         ww3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc:content-transfer-encoding;
        bh=5c03YbccI5+2Q9WOyvbAlyVb+r9DgzLxHim5ykFSVCc=;
        b=YGV21hVZOZIIuS4TuvUSSrNNBJd5wocE+C/cvDRdMrpTkPAAY/ZTjjoQdunxdGlhWY
         qRC/VTOqcWvO0emGwYpxHhQgPZ64tqL7CV/363jZNDhsHvaKyYmONi73h2UsS1nN9zfq
         JrYzLsfrXEhtrgMdtL0vLWU/9iAtiBemtJxx95YSbLplRwnYfPi3xsc4ujLeavzL6/at
         37nKHjWD4pG0uAZyb0JnbPSYSl0fIBilkDD9NbG6bEvkwcGQDNScOIpY3VoD+GmLGwPZ
         kfr5L1C7Sp+R4urUcPplAIm/UQJYT9AONe2Icwfs31Px4x2oajEdbeFm9o1sq5fRV9Iz
         nHxg==
X-Gm-Message-State: AGi0PuZ1yQ6sFGsGDjUepgpfHvGRTMBVTKeNADnMa+Et2opv+lRprtmW
        jjwOJQHCu9V4j4rI5KHgG4kZvE7q4JVCOicHByb9ww==
X-Google-Smtp-Source: APiQypJU/MRzdt925nK2wbGu3uBFSR5wufcjQrfIhmGtyxcU7xuLgUGuOQlXTKvDy4t9chBNb579HbP3+4imLuoxKzs=
X-Received: by 2002:aa7:d513:: with SMTP id y19mr16203338edq.367.1587411482641;
 Mon, 20 Apr 2020 12:38:02 -0700 (PDT)
MIME-Version: 1.0
References: <20200419064750.GA30023@Debian-50-lenny-64-minimal>
 <ee26d042-d1bd-2c54-7a7c-667078c436dd@gmail.com> <20200420193306.GC19913@Debian-50-lenny-64-minimal>
In-Reply-To: <20200420193306.GC19913@Debian-50-lenny-64-minimal>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Mon, 20 Apr 2020 21:37:50 +0200
Message-ID: <CAKgNAkgBK8ORKA2HrXrtLGBB9Lfd5twOwy4qvxevGBG6jBW9gA@mail.gmail.com>
Subject: Re: Errors in man pages, here: capabilities(7): Spelling
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Helge,

On Mon, 20 Apr 2020 at 21:33, Helge Kreutzmann <debian@helgefjell.de> wrote=
:
>
> Hello Michael,
> On Sun, Apr 19, 2020 at 09:22:23PM +0200, Michael Kerrisk (man-pages) wro=
te:
> > On 4/19/20 8:47 AM, Helge Kreutzmann wrote:
> >
> > >   b) user IDs =E2=86=92 user ID
> >
> > No change. Nothing wrong that I can see here.
>
> > > "I<Note>: according to the rules above, if a process with nonzero use=
r IDs "
> > > "performs an B<execve>(2)  then any capabilities that are present in =
its "
> > > "permitted and effective sets will be cleared.  For the treatment of =
"
> > > "capabilities when a process with a user ID of zero performs an B<exe=
cve>(2), "
> > > "see below under I<Capabilities and execution of programs by root>."
>
> Ok, so a process can have multiple user IDs then?

Yes. See credentials(7).

Thanks,

Michael
--=20
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
