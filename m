Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C9D7628113F
	for <lists+linux-man@lfdr.de>; Fri,  2 Oct 2020 13:31:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726029AbgJBLbm (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 2 Oct 2020 07:31:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55378 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726017AbgJBLbm (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 2 Oct 2020 07:31:42 -0400
Received: from mail-oi1-x243.google.com (mail-oi1-x243.google.com [IPv6:2607:f8b0:4864:20::243])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 06C36C0613D0;
        Fri,  2 Oct 2020 04:31:42 -0700 (PDT)
Received: by mail-oi1-x243.google.com with SMTP id u126so886737oif.13;
        Fri, 02 Oct 2020 04:31:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=mnnBdvVoAs7YLFpNF04SfBRR73VgOIK46UIMo67rx88=;
        b=b+bW+RnH9hdevGaBLsw+/+/4vNzo+ITLwQZSERW+Zhk2zz9dMzvH8t8h5TbS3763u2
         mn5Y7Ow6TAgIWi/Hi/+7YfnyELvFdcfZ9YgFBgQFqAE6VHnPM+cJSJwXtFCtiAQTJzXk
         l0s5yqfC/cOW1nSic5DLrT730anc455Sa+KlovT95lKCA/Ip5M9KR6sBCPkLD+OqkHsy
         oyjVi/GYk9jJYqD9fxcescGgDzLxKjMDpY/436hrHYGok3ce/+LakF511waH35hEvV8Z
         f3H8yR4o2PczoRSVHRnCa/87QpDDvsIpjPBpCzkfk4NhLDX/b7vvFd7NOZ6kWRfiNOIE
         uJng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=mnnBdvVoAs7YLFpNF04SfBRR73VgOIK46UIMo67rx88=;
        b=d+vrF47AWQmw8SjVq9j7u+arwjzz5Lw1S5lZ/Ed6Wpxx8jCbmIArd5TC3bA0/JYZ06
         JBZcXLXfJ26HnaggmUi5pJWTiE6v6P7ctugFmvo8x2O6iucDj4NE6Rp7n94eq16Nzbbv
         /EJX+nECiwTIq0S4KZVFfeKuwNF5hWgr5gsD5mPlctbksXp9tQFoYpX9NWpmAL7Ayj1A
         zrSVg52ctjhSGMLRlZxLxofutzg3yBPG/uq3pBMOlXxiqW94tLz2GV14uOZP4g49m2FF
         2rAvYey8U6K3Ev3WMsRhaElxnJ8h3BV8gygQnqZI5o7rviX/uRK9IOFLVaMwbGVOcukb
         VOsQ==
X-Gm-Message-State: AOAM531rSdIaqyL8fF1El+uO8ZELQNWyiPW985PQcblc3OHMKZ+QLdYr
        KSXSwrYD/AdypSVmoyznQz+HfoDj4GXEeYpewpRjsPbX/sA=
X-Google-Smtp-Source: ABdhPJyGTHyvmUMr1RMtxBqF2YvdVOrsmV8o2rkTprrgjfnFPKzZcnmIM/sWFnE40ck3efT53RVUbJUQy6sCGj7MMac=
X-Received: by 2002:aca:ad08:: with SMTP id w8mr917932oie.148.1601638301365;
 Fri, 02 Oct 2020 04:31:41 -0700 (PDT)
MIME-Version: 1.0
References: <41affebd-3354-9420-0048-bffd14535e95@gmail.com>
 <20201001154946.104626-2-colomar.6.4.3@gmail.com> <538b683f-01d2-6148-4f1d-1b293eb5cd6b@cs.ucla.edu>
 <4b86f6e9-0d8a-f14a-73ce-ebbdc9d9edba@gmail.com> <CAH6eHdSLbaqTyXaPnBxnR4n+WVHJCBDF=C9RXa6To1rSuv0D4w@mail.gmail.com>
In-Reply-To: <CAH6eHdSLbaqTyXaPnBxnR4n+WVHJCBDF=C9RXa6To1rSuv0D4w@mail.gmail.com>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Fri, 2 Oct 2020 13:31:30 +0200
Message-ID: <CAKgNAkiHbK4RU_a_165yg3O6W0-GZMNLQoBNbut6ME=bW7pvCw@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] system_data_types.7: Add 'void *'
To:     Jonathan Wakely <jwakely.gcc@gmail.com>
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        Paul Eggert <eggert@cs.ucla.edu>,
        linux-man <linux-man@vger.kernel.org>,
        GNU C Library <libc-alpha@sourceware.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "gcc@gcc.gnu.org" <gcc@gcc.gnu.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Fri, 2 Oct 2020 at 12:49, Jonathan Wakely <jwakely.gcc@gmail.com> wrote:
>
> On Fri, 2 Oct 2020 at 09:28, Alejandro Colomar via Gcc <gcc@gcc.gnu.org> wrote:
> > However, it might be good that someone starts a page called
> > 'type_qualifiers(7)' or something like that.
>
> Who is this for? Who is trying to learn C from man pages? Should
> somebody stop them?

Yes, I think so. To add context, Alex has been doing a lot of work to
build up the new system_data_types(7) page [1], which I think is
especially useful for the POSIX system data types that are used with
various APIs. With the addition of the integer types and 'void *'
things are straying somewhat from POSIX into C. I think there is value
in saying something about those types, but I'm somewhat neutral about
their inclusion in the page. But Alex has done the work, and I'm
willing to include those types in the page.

I do think that something like type_qualifiers(7) strays over the line
of what should be covered in Linux man-pages, which are primarily
about the kernel + libc APIs. [2]

Thanks,

Michael

[1] https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/tree/man7/system_data_types.7
[2] Mind you, man-pages trayed over the line already very many years
ago with operators(7), because who ever remembers all of the C
operator precedences.

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
