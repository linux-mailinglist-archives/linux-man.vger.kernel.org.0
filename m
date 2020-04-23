Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4B5C21B64CD
	for <lists+linux-man@lfdr.de>; Thu, 23 Apr 2020 21:50:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727877AbgDWTu5 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 23 Apr 2020 15:50:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37848 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726772AbgDWTu5 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 23 Apr 2020 15:50:57 -0400
Received: from mail-ej1-x643.google.com (mail-ej1-x643.google.com [IPv6:2a00:1450:4864:20::643])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D64DDC09B042
        for <linux-man@vger.kernel.org>; Thu, 23 Apr 2020 12:50:56 -0700 (PDT)
Received: by mail-ej1-x643.google.com with SMTP id n4so5634298ejs.11
        for <linux-man@vger.kernel.org>; Thu, 23 Apr 2020 12:50:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=70YdZiLhtSsJ+QAUCBOB9EpC2sli7FYInNvgwRMKABM=;
        b=WvFh/6cc2XV+r6YO6PSMgBG8R89IFQfB7hsGFL+lxAWpDKniSa64+g6RcmF/HOAArZ
         WoyaesOax4P9xFK+LNY9Ylga3vH8XgwGi3DlKP0sRZ1CYiAfR9XfWbyvyMQSf6b1Szg5
         pByudjC4DjDj80fwAVKdi/VgOmEzsPxjVBlQgx95LDdcp8E6ByB+6NsTNFJEwZpY9fRc
         Aoqp1l71T0efY1OdQBBEdenmIDnlpG5jUyv7YTgEkD2+hr21El/i2DOKaUw2zcJtr5DN
         MpVR7Pl5Iu7dIaccrvO9hSDATc87nb07jVRknEjWZ/sySDxgyyAVPkjlDkPFOFqJAirJ
         ZS+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=70YdZiLhtSsJ+QAUCBOB9EpC2sli7FYInNvgwRMKABM=;
        b=WmRS4DKSxZO8bzE4Md1zhWnUtvt5rKnuSREQX5uBL519Wu1anzsG+S0HVp2WeeZihh
         i8N5QGTAY4yLBnx5Uq8zyU45H8YX4N4Oj2ATZxGZZLajMEqt9b2Ndm8OwXFsyCXdvqVx
         umfwNpGjRYk4359tXwCSorU3Y6JeCCnRdQvUQdRB5qv3yuF8Z5KYdRecCYa0TgruyHNx
         tRmp879e/3VG5FVErMGEzamQvVHt4YvN4y67GfhyWTtUr/S0iwrQDxRSFH/vUxnCEV0K
         UgEg23Q7uq4norQBRirLrBSeHuj+yO92dmKPfT68Z5qZc3sRw62V+LdwgXx8emWO7HnB
         kVyA==
X-Gm-Message-State: AGi0PuaICJmysu18ULKuNMTefVr3GUpdp56ZMmiUtBZlKhFJ3Hg9CqqA
        XBDx4zK7CiSGnxpQJv3uNF/t5X9gs4hA70TdaQ3Ljw==
X-Google-Smtp-Source: APiQypIn50qO6R3jkqcTl+9dJFMU2FEEqZHq9QE9doNKlrsibwcvJcHMy1glmfCR+QuOJnPJ4TYLf/Uk5jC/hXvB0Z8=
X-Received: by 2002:a17:906:1fd6:: with SMTP id e22mr4250684ejt.150.1587671455138;
 Thu, 23 Apr 2020 12:50:55 -0700 (PDT)
MIME-Version: 1.0
References: <20200419064751.GA30074@Debian-50-lenny-64-minimal>
 <b0ec27f5-645d-4a1b-174d-07ff11bd24ba@gmail.com> <20200423193437.GA6193@Debian-50-lenny-64-minimal>
In-Reply-To: <20200423193437.GA6193@Debian-50-lenny-64-minimal>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Thu, 23 Apr 2020 21:50:44 +0200
Message-ID: <CAKgNAkigwnY9yLcX3Ygwar7h6ypa3bkDaEwU+_Nbn30jM4w4Pw@mail.gmail.com>
Subject: Re: Errors in man pages, here: charmap(5): Content
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Thu, 23 Apr 2020 at 21:34, Helge Kreutzmann <debian@helgefjell.de> wrote:
>
> Hello Michael,
> On Mon, Apr 20, 2020 at 08:53:33AM +0200, Michael Kerrisk (man-pages) wrote:
> > On 4/19/20 8:47 AM, Helge Kreutzmann wrote:
> > > **
> > >
> > > UTF-8 in Debian Squeeze:
> > >
> > > "is followed by the maximum number of bytes for a character.  The default "
> > > "value is 1."
> >
> > I don't understand this report. Please elaborate.
>
> Sorry, I tried to reconstruct this report, but as the reporter is no
> longer available I failed.
>
> Please close this report.

Ok.

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
