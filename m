Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 48BDB6BF893
	for <lists+linux-man@lfdr.de>; Sat, 18 Mar 2023 08:54:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229769AbjCRHyo (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 18 Mar 2023 03:54:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42148 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229881AbjCRHym (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 18 Mar 2023 03:54:42 -0400
Received: from mail-oi1-x232.google.com (mail-oi1-x232.google.com [IPv6:2607:f8b0:4864:20::232])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C5593233F8
        for <linux-man@vger.kernel.org>; Sat, 18 Mar 2023 00:54:33 -0700 (PDT)
Received: by mail-oi1-x232.google.com with SMTP id be16so5480126oib.0
        for <linux-man@vger.kernel.org>; Sat, 18 Mar 2023 00:54:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679126073;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ESSgT8w5sgTnsHyFI1Z37ra0Yui3QZZOyN9DRW5nrCM=;
        b=jEZUPaoArU7tfGVrsOp2/ecKIXe6TbMUfyYZZU9dAoxne3KqgxlnvRmsmGdtGsI6MW
         dmBwb/TWOLwCbrd4DcdJyvJbsanSC1GNZ5O+Oe13ZJ9xB+rmYN232Acsjv9W+bdfCDxG
         gIOTqv2mvwxQWgACSRvUYB+J1/DgHTXdo6sC6fS+AqLUjYNJUGel+gaAUlJUCaYTWNsm
         pQVpHzK1ItrdnSkGjZfTfTzemgcV/pNZ2sbfYSq4zo1rTO5fWZnZRUzBl4OTUa36fBfL
         VTejda/5sufEF8J2d75hMpWM1NjjizRitQ2cAJnyvYZMyE4iYT/bxD2QXkl7CgPnRYci
         9YqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679126073;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ESSgT8w5sgTnsHyFI1Z37ra0Yui3QZZOyN9DRW5nrCM=;
        b=NfXyuoP7Ofr7Iw6t19klYN1w19d17lgxoXiYlMh3H2Zx5er/YCW1Pe9+CxiU73yoNs
         Q6Xe/m0JY1rdGSA6mBlPt4O8Ybq0yl37taI4MFWUDuzJb0Gh+DH9hfNuYTGRYPtJRNCn
         8A28lgmTqsKEJYAv0zUxSWC3Ti1q9CaE4MJVUdD+sZBYJbKttE5kkn2vx+CWVnEsSVsK
         PThX/wJeUuCL4q/9fDPdGaxW9Ihc7Vb8p6sQLx7T8aBckDwIiKtTf7oUaGsHULUfQPxs
         If+D1RreHhcaSSPzBnn9Aesw+/ba8yOR9s/62ByZHqd4lUuw9AJbHSDgObl+s9dBk7zo
         Chsg==
X-Gm-Message-State: AO0yUKWdjiEiPHfh1+QGB1RUp8pXYd0nnwdo6t70Hx5iUlFnz5JCa+dd
        6FjRvNdl/v4fezJ4ElE6fc7CgSRXJ0o3IZOo4D0vnFD1nlE=
X-Google-Smtp-Source: AK7set/C3uZ5W4iCgzn9WwzSZRR9+OpZ5/oQGPmLsqj/mbulctQwon0jjmLyOVa8JRgMV9FGzjEalvQbZo3N36qD974=
X-Received: by 2002:a05:6808:342:b0:386:91d1:34b1 with SMTP id
 j2-20020a056808034200b0038691d134b1mr3959826oie.10.1679126071577; Sat, 18 Mar
 2023 00:54:31 -0700 (PDT)
MIME-Version: 1.0
References: <20230205152835.17413-1-alx@kernel.org> <20230206184530.zn5kq7x6xmcfxhqm@redhat.com>
In-Reply-To: <20230206184530.zn5kq7x6xmcfxhqm@redhat.com>
From:   roucaries bastien <roucaries.bastien+debian@gmail.com>
Date:   Sat, 18 Mar 2023 07:54:05 +0000
Message-ID: <CAE2SPAbnWViwyrjz1s_X18RPtZyqZJj0d8_ib=oYcUgQhCsh8w@mail.gmail.com>
Subject: Re: [PATCH] sockaddr.3type: BUGS: Document that libc should be fixed
 using a union
To:     Eric Blake <eblake@redhat.com>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, Alejandro Colomar <alx@kernel.org>,
        GCC <gcc@gcc.gnu.org>, glibc <libc-alpha@sourceware.org>,
        =?UTF-8?Q?Bastien_Roucari=C3=A8s?= <rouca@debian.org>,
        Stefan Puiu <stefan.puiu@gmail.com>,
        Igor Sysoev <igor@sysoev.ru>, Rich Felker <dalias@libc.org>,
        Andrew Clayton <a.clayton@nginx.com>,
        Richard Biener <richard.guenther@gmail.com>,
        Zack Weinberg <zack@owlfolio.org>,
        Florian Weimer <fweimer@redhat.com>,
        Joseph Myers <joseph@codesourcery.com>,
        Jakub Jelinek <jakub@redhat.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi,

I have opened a defect at austin group
https://www.austingroupbugs.net/view.php?id=3D1641

Bastien

Le lun. 6 f=C3=A9vr. 2023 =C3=A0 18:45, Eric Blake <eblake@redhat.com> a =
=C3=A9crit :
>
> On Sun, Feb 05, 2023 at 04:28:36PM +0100, Alejandro Colomar wrote:
>
> Regardless of the merits of the patch, let's not introduce typos:
>
> > +++ b/man3type/sockaddr.3type
> > @@ -120,6 +120,26 @@ .SH NOTES
> >  .I <netinet/in.h>
> >  and
> >  .IR <sys/un.h> .
> > +.SH BUGS
> > +.I sockaddr_storage
> > +was designed back when strict aliasing wasn't a problem.
> > +Back then,
> > +one would define a variable of that type,
> > +and then access it as any of the other
> > +.IR sockaddr_ *
> > +types,
> > +depending on the value of the first member.
> > +This is Undefined Behavior.
> > +However, there is no way to use these APIs without invoking Unedfined =
Behavior,
>
> Undefined
>
> > +either in the user program or in libc,
> > +so it is still recommended to use this method.
> > +The only correct way to use different types in an API is through a uni=
on.
> > +However,
> > +that union must be implemented in the library,
> > +since the type must be shared between the library and user code,
> > +so libc should be fixed by implementing
> > +.I sockaddr_storage
> > +as a union.
> >  .SH SEE ALSO
> >  .BR accept (2),
> >  .BR bind (2),
>
> Also, while I could raise the issue with the Austin Group on your
> behalf to get the POSIX wording improved, I think it would work better
> if you initiate a bug report rather than having me do it:
>
> https://www.austingroupbugs.net/main_page.php
>
> --
> Eric Blake, Principal Software Engineer
> Red Hat, Inc.           +1-919-301-3266
> Virtualization:  qemu.org | libvirt.org
>
