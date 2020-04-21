Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3789F1B1E67
	for <lists+linux-man@lfdr.de>; Tue, 21 Apr 2020 07:55:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726024AbgDUFzA (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 21 Apr 2020 01:55:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53820 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S1725881AbgDUFzA (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 21 Apr 2020 01:55:00 -0400
Received: from mail-ej1-x644.google.com (mail-ej1-x644.google.com [IPv6:2a00:1450:4864:20::644])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E8FAFC061A0F
        for <linux-man@vger.kernel.org>; Mon, 20 Apr 2020 22:54:59 -0700 (PDT)
Received: by mail-ej1-x644.google.com with SMTP id e2so7705127eje.13
        for <linux-man@vger.kernel.org>; Mon, 20 Apr 2020 22:54:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding;
        bh=gWCYn4b48cmPyilZvY9Hq+FYKKDICykPdRpECnsxq8k=;
        b=SbdoKurcinIZVwmCNIIzuDyf0/e0XGTfDzlK4Gdm0PWKrJj9DrTme5/NjkYvbto+RC
         XTTjS+wpIh2W8Mf1pc5nzhN4DkkkXBo0Sei4CdKM5YUnbmXrtn1UPWwordy9xaGTak1m
         xhNXyhaAD8m/c+VmlXuEcHoGjnrJw+M9ELX3okiyMP1wvSaEggik9DmmIxM+6igveUQc
         NmKUOCls0ih4WrFGajZA1dgucfVYjAwywjv5fG+xpD1n/qdF2UgMUOGLKeLm3eoB54Cg
         0N77oYHI0e3b3IGTCWpeQJtkdToZE+RWV11C0tna+9H5oYt9e9mzJOCVkrTG6Qgod5bM
         XCdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc:content-transfer-encoding;
        bh=gWCYn4b48cmPyilZvY9Hq+FYKKDICykPdRpECnsxq8k=;
        b=JqaJoChuUplvvKFdZ3VrAyo9whTLKY/Iy8+u7sURyq7y9SSoWQkgSPBghT/jLO3PlT
         8+mjgWnY304nsLKhi07pdlRyxFpiLrN5UrjelRIJBKi7LGGDs1OCHSNzp1hHcguykoHV
         TFf7+0hrsfu97tOYrAHjK8EwvXU7SYrtuCR7L7z1cv7y+3T9CJk+6+4L08MFJq7hY+Lv
         faiEpImuKmo3+Bo0RMj4Wr6T79UPk2o2hegDq0fo7meYVOyBvmARFD+Rx/uhXmlTKH/I
         svWeisyYdjbkI7dziNPiBCGHkcjoX9LxK8k+To+k8Q9PHAFktR9a16CVuSfx6SDno1ND
         509Q==
X-Gm-Message-State: AGi0PubljQvb0Wc8H9hiKodfJWYQJywKonSQ8OTqhbWgiqcMvaGgEM4r
        m7Q36BvY7Eons/StEP6lZTygoqgZO3zOIi6Ybkbjkg==
X-Google-Smtp-Source: APiQypIMS50StelTzRcFKgO+GU6K4uOUka3lbcZpspuvKkMYWaTuCPlO1d1QjmOjT+FGL9klN3YEPqHbgkaB6rqInYg=
X-Received: by 2002:a17:906:1fd6:: with SMTP id e22mr19947370ejt.150.1587448498636;
 Mon, 20 Apr 2020 22:54:58 -0700 (PDT)
MIME-Version: 1.0
References: <20200419064834.GA32517@Debian-50-lenny-64-minimal>
 <95611010-1ec8-c461-8502-71515373c961@gmail.com> <20200420222616.yoc26jiehdn4cgaj@jwilk.net>
 <20200420225036.kecqxc57ond764za@jwilk.net>
In-Reply-To: <20200420225036.kecqxc57ond764za@jwilk.net>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Tue, 21 Apr 2020 07:54:47 +0200
Message-ID: <CAKgNAkgAKDPP1KWptcQEZmq1i6CJ5KANietfUTr13r_cPnv-HA@mail.gmail.com>
Subject: Re: Errors in man pages, here: tzfile(5): Punctuation
To:     Jakub Wilk <jwilk@jwilk.net>
Cc:     Helge Kreutzmann <debian@helgefjell.de>,
        linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Tue, 21 Apr 2020 at 00:50, Jakub Wilk <jwilk@jwilk.net> wrote:
>
> >* Michael Kerrisk <mtk.manpages@gmail.com>, 2020-04-20, 11:13:
> >>>Final comma =E2=86=92 fullstop
> >>>
> >>>"Some readers may mishandle time zone abbreviations that contain fewer=
 than 3 "
> >>>"or more than 6 characters, or that contain ASCII characters other tha=
n "
> >>>"alphanumerics,"
> >>
> >>I can't find this text. Please elaborate/check.
>
> This text is from the tz's man page:
> https://github.com/eggert/tz/blob/2019c/tzfile.5#L348
>
> But the sentence in question does not end with the comma.
> I guess it's a bug in the software that processed the man page?
>
>
> >This text was added in a Debian patch:
> >https://sources.debian.org/src/manpages/4.16-2/debian/patches/0010-tzfil=
e.5.patch/
>
> (Blargh! I meant to sent this to the other thread about tzfile(5).)

Thanks for the info. Jakub.

--=20
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
