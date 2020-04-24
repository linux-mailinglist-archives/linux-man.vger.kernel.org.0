Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AC3831B7EE1
	for <lists+linux-man@lfdr.de>; Fri, 24 Apr 2020 21:30:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728379AbgDXTaG (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 24 Apr 2020 15:30:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34352 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S1725970AbgDXTaG (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 24 Apr 2020 15:30:06 -0400
Received: from mail-ej1-x642.google.com (mail-ej1-x642.google.com [IPv6:2a00:1450:4864:20::642])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5B6D7C09B048
        for <linux-man@vger.kernel.org>; Fri, 24 Apr 2020 12:30:06 -0700 (PDT)
Received: by mail-ej1-x642.google.com with SMTP id nv1so8434169ejb.0
        for <linux-man@vger.kernel.org>; Fri, 24 Apr 2020 12:30:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding;
        bh=kzn5VN4477WgATiA7tqwdtwcsjYS0Su7XVgPhDpjnyQ=;
        b=o16lP4bl84qJlabKznKHD+tCLXvqjwL36RJJYUWXdgM/vWTxJqMcP7hOnhaI0/aOvk
         HYepfCcg1xmvt2Jyj5TGNkbjDZsKgEe2RkbxJFLn4ot88MTXrY7sO2ESskUZqZ845l/7
         ap4e6FmZRpp1o7YJUcMOV59QO5E62ajIEIu/Pwf+tQUxwkkUxWCeRlWrw7ByQC3Vj2go
         Is+mXiDU521R2Jkb2u+aOGdbK0NknrWe2Fs99Y24tyBKAd7DlwU0hBHsIGwzcGjs/5H0
         X8qhYUvOUVIuEYoF0Ao9vb2fD3tkDinoF4Elz7XQppb7lE6EIwxUUrQY7tSY3YK7aqt8
         nYVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc:content-transfer-encoding;
        bh=kzn5VN4477WgATiA7tqwdtwcsjYS0Su7XVgPhDpjnyQ=;
        b=I9fME9yLLErTcEul3bczbASnEYaBnSmXVhPUvP+pkxiUGVf7zokA5Cqb5SWQNE7naV
         x0VXoeuDG0R7ICnBoZYx0eZx8pviAU0Q7mEWCBYIL7sjMNdSgA76eWnsz1sfZu3h0R7i
         nO4iUy6eIlNw7l7H7dwVRvGpIBOxZHJXHeIwvvb8c0cKfh2hNkP2HrxeqRt7x0VFNvH/
         YGlfe/gzlx/7EdvytI4P5wewqiv7go+tHVDIsDt4OSvq3r5NzvTLf1FrdXqA9ugvVBjr
         ebdzHwf4ZQrsz3XpcZ+1Oza2g/Az6eL7bd1BhMsPQE3Db01Zd6GvDuUa6JiQsQ9SQf12
         5G/A==
X-Gm-Message-State: AGi0PuZWafqNjxIEkwJvgqbRIiPHgMzL6SzfYhTvHVSFzLx62oSc8w2l
        4ZXebNJSIhvXAXeh7co5X6ePSkeX1fLgs/jg/API4A==
X-Google-Smtp-Source: APiQypIhsNg196/i+j8l/GsXtIymPKtWfR822P5+A2+a/MRO0eQt9LE0W6HBwgJh+UP7Q4l0EGtUIIkDN2x1MR+bnBI=
X-Received: by 2002:a17:906:54cd:: with SMTP id c13mr8244302ejp.307.1587756605047;
 Fri, 24 Apr 2020 12:30:05 -0700 (PDT)
MIME-Version: 1.0
References: <20200419064828.GA32187@Debian-50-lenny-64-minimal>
 <32ce9f2b-4655-66eb-fe7d-3ab7f1b861a8@gmail.com> <20200424175507.GA4623@Debian-50-lenny-64-minimal>
In-Reply-To: <20200424175507.GA4623@Debian-50-lenny-64-minimal>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Fri, 24 Apr 2020 21:29:53 +0200
Message-ID: <CAKgNAkhNRnMMA0G0Kir0d1uFmbs5Yu_LnuHzB1SANFpOGGgczA@mail.gmail.com>
Subject: Re: Errors in man pages,here: st(4): Wording?
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Fri, 24 Apr 2020 at 19:55, Helge Kreutzmann <debian@helgefjell.de> wrote=
:
>
> Hello Michael,
> On Mon, Apr 20, 2020 at 09:55:37AM +0200, Michael Kerrisk (man-pages) wro=
te:
> > On 4/19/20 8:48 AM, Helge Kreutzmann wrote:
> > > **
> > >
> > > report =E2=86=92 support?
> > >
> > > "The header file defines many values for I<mt_type>, but the current =
driver "
> > > "reports only the generic types B<MT_ISSCSI1> (Generic SCSI-1 tape)  =
and "
> > > "B<MT_ISSCSI2> (Generic SCSI-2 tape)."
> >
> > I think the wording is correct, but am not 100% sure. Please send more =
info
> > if you have any.
>
> No, we don't have any further information. Just the feeling, because
> normally driver support devices (or device types), which we thought
> was the case. I fixed the translation.
>
> Please close this report.
Ok.

--=20
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
