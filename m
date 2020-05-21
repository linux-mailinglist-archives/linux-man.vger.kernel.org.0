Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0C7F31DCDCB
	for <lists+linux-man@lfdr.de>; Thu, 21 May 2020 15:15:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729289AbgEUNPs (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 21 May 2020 09:15:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43262 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727846AbgEUNPr (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 21 May 2020 09:15:47 -0400
Received: from mail-ej1-x642.google.com (mail-ej1-x642.google.com [IPv6:2a00:1450:4864:20::642])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8543EC061A0E
        for <linux-man@vger.kernel.org>; Thu, 21 May 2020 06:15:46 -0700 (PDT)
Received: by mail-ej1-x642.google.com with SMTP id n24so8787026ejd.0
        for <linux-man@vger.kernel.org>; Thu, 21 May 2020 06:15:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=PxMiFZL9ST+/NzM82cFArwiytd2uUdSJ2FCMszct2qo=;
        b=UUDWLgC9gRnwiVMEbTrUskaM7C6myjOLAMemglHzh5F5I2hIvEyI7jpRDfZ4OJ/lXj
         c9JdUR1AOn2wEpjKaq923dVf4JQrmRx/t5x+hDNa3eH9rnxW+v/ggHZc/ekLiaLMFRXn
         Lz9CJtLD7fVVKqZ3ovG6c3ioU8+Q8zskDF5EnnyxcEEipL9x/hhsKzD0NJ3wJTix43Bw
         93QAGikQda5KRNcWhNMt4SEIp2iOL2JHZRoIKuzAqjLBhN+aMaTLXIyKuqB01bcQ0nFA
         nQhG5aKH6k24DzUoiix0AXlG9QcCjwmyPGXcYRxVhhz7tRUlgTcDCc62olN5LvAU4+OR
         rpBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=PxMiFZL9ST+/NzM82cFArwiytd2uUdSJ2FCMszct2qo=;
        b=rHFzd05WzyolcgleLD6uykINfoWooSUIQL8BMWVAtXN/j62zj7qKx/HYM3PUHQVYWQ
         xj3v+hsVDxnkUHLoc9KPGRrnlo19VmIDHO5Hr1DyzV1HaoRoG5syBXrsbZAb6UstPcSz
         zopdDTYM8pLTChDCb0Wt4HXgyC/5m8KOv3Bb13Ayx2ba4+w8hKbqbS3OPxrMlsL3aWvU
         uT45TLmJziGFKhnLW2jgpVCLVOBX/aBOrc9UWzeePbr9UZaBD9x77wFCkp3ndpsmtPUD
         x5MDEaw9IUOQW0BU576y0GAH1d05ZzSt+R6kWqYYrl7cS0cRxnoJxLA8opWv98GCPnGv
         Fs4w==
X-Gm-Message-State: AOAM533+GFoOt3/04jF2Mp8+xCJ1N23jB+FnM7P+ZbWu8U76BrWTD90y
        d8svKeBblBvP/aeZSOAB9MBa6dlWAMaekAzoRCg=
X-Google-Smtp-Source: ABdhPJw4Sm5TXhupfAF1AHVE5cixi8zkAipB/LylbY+ZqNhB+Rz5ayFuFdEsap0JpF1ksPrr/e7gqxCu/XT89kyX+KY=
X-Received: by 2002:a17:906:c29a:: with SMTP id r26mr3417083ejz.286.1590066945206;
 Thu, 21 May 2020 06:15:45 -0700 (PDT)
MIME-Version: 1.0
References: <87a722a6yl.fsf@oldenburg2.str.redhat.com> <CAKgNAkgM-NKziND+x+LZkcgJz_LKE94BK6VYqOz2b+A2c6idJw@mail.gmail.com>
 <87a7218pbk.fsf@oldenburg2.str.redhat.com>
In-Reply-To: <87a7218pbk.fsf@oldenburg2.str.redhat.com>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Thu, 21 May 2020 15:15:34 +0200
Message-ID: <CAKgNAkgjre_oBAJtvV1aR597nH5o2aH6pzBgOrURnaC_Kh0gcw@mail.gmail.com>
Subject: Re: [PATCH] ldconfig.8: Mention new default for --format in glibc 2.32
To:     Florian Weimer <fweimer@redhat.com>
Cc:     linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Thu, 21 May 2020 at 14:06, Florian Weimer <fweimer@redhat.com> wrote:
>
> * Michael Kerrisk:
>
> > Hi Florian,
> >
> > On Wed, 20 May 2020 at 18:48, Florian Weimer <fweimer@redhat.com> wrote:
> >>
> >> This reflects glibc commit cad64f778aced84efdaa04ae64f8737b86f063ab
> >> ("ldconfig: Default to the new format for ld.so.cache").
> >>
> >> Signed-off-by: Florian Weimer <fweimer@redhat.com>
> >
> > Thanks for the patch. Question below.
> >
> >> ---
> >>  man8/ldconfig.8 | 8 ++++++--
> >>  1 file changed, 6 insertions(+), 2 deletions(-)
> >>
> >> diff --git a/man8/ldconfig.8 b/man8/ldconfig.8
> >> index eb9c86dae..e184478a7 100644
> >> --- a/man8/ldconfig.8
> >> +++ b/man8/ldconfig.8
> >> @@ -125,8 +125,12 @@ Cache format to use:
> >>  .IR old ,
> >>  .IR new ,
> >>  or
> >> -.IR compat
> >> -(default).
> >> +.IR compat .
> >> +Since glibc 2.32, the default is
> >> +.IR new .
> >> +.\" commit cad64f778aced84efdaa04ae64f8737b86f063ab
> >> +Before that, it was
> >> +.IR both .
> >
> > Should "both" be "compat"?
>
> Eh, yes.  Should I send a new patch?

No, it's okay. I'll edit.

Cheers,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
