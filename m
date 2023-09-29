Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9698E7B2EEB
	for <lists+linux-man@lfdr.de>; Fri, 29 Sep 2023 11:10:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232876AbjI2JKW (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 29 Sep 2023 05:10:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34108 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232833AbjI2JKV (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 29 Sep 2023 05:10:21 -0400
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com [IPv6:2a00:1450:4864:20::632])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 83CDF1AB
        for <linux-man@vger.kernel.org>; Fri, 29 Sep 2023 02:10:18 -0700 (PDT)
Received: by mail-ej1-x632.google.com with SMTP id a640c23a62f3a-9b275afb6abso95753566b.1
        for <linux-man@vger.kernel.org>; Fri, 29 Sep 2023 02:10:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=szeredi.hu; s=google; t=1695978617; x=1696583417; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=MH8m71qOsOYfTIlYbU2nLX0qZUlnksErh8AJml6gZsI=;
        b=HJa/qFiCw51SAap8KA07eiWOzu4mdOeM9uhYqpP8HamJ2luEkNucgYbCSz2HYdLdbF
         8sDc6a/3t1lwM4q7dOFO/fWzTTGb8RsO2yms0QUWnyQvW79xkf/LcOeufbFK+dw4CLiV
         uzSEmbU/9ohgC4/8tCdblnqJ21HK+xWQu902o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695978617; x=1696583417;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MH8m71qOsOYfTIlYbU2nLX0qZUlnksErh8AJml6gZsI=;
        b=ZNgPMMp6LlZfRMe41KS/E8YgZnUJ5UtKk/0brxtiZlCnS6u1YnRVoBhf1Tc+xoB4Jg
         wOLgLKfXpPUcMBjdmXX32oE+gEnswaXpF92RvC9NI61iPu5KCwx1TRYCr/IN1L9yV4PV
         12Lj9P9nzqJQEGr9XaHv0lbbjH5sULEgaXm0YMGwb+8XaSH+tFpZwvyLNsq2WlnxSvxI
         T0FtzhO5UZiamdiPpRtCLcBkfnJOccaaFoMwVXBFFoZ3z7SF8IC00bY9iHytWHi7wa6X
         NF6GBITkMvTlLi6VbWiYDw72Nqmm4n0By5Z/zouzrBWWOemra6o8IbDmrlAjNflViOeD
         zevQ==
X-Gm-Message-State: AOJu0Yw+1Efo5q6zG02QKc8M77xuA2Y1mBGOXMGUKDLf1NcxQn6t59uT
        ZsqjSPWUTvhUzlG8RR3GnDoLts/VfESQwDtJ0izwgA==
X-Google-Smtp-Source: AGHT+IHyl6jYqyOZcL8xPT3WtxUI5NbSnwKiR15P3UdBiaJSeqGvThML8eIxVJXSU+59W1w0fIIWjZ8R6AqpiVy0hmU=
X-Received: by 2002:a17:907:1def:b0:9a9:e71b:cd65 with SMTP id
 og47-20020a1709071def00b009a9e71bcd65mr3433801ejc.6.1695978616584; Fri, 29
 Sep 2023 02:10:16 -0700 (PDT)
MIME-Version: 1.0
References: <20230928130147.564503-1-mszeredi@redhat.com> <20230928130147.564503-4-mszeredi@redhat.com>
 <5787bac5-b368-485a-f906-44e7049d4b8f@themaw.net>
In-Reply-To: <5787bac5-b368-485a-f906-44e7049d4b8f@themaw.net>
From:   Miklos Szeredi <miklos@szeredi.hu>
Date:   Fri, 29 Sep 2023 11:10:04 +0200
Message-ID: <CAJfpegt80_Tyto3QyD48V_yzHSghqg8AC_OPHEMPkDjEYCcisQ@mail.gmail.com>
Subject: Re: [PATCH v3 3/4] add statmount(2) syscall
To:     Ian Kent <raven@themaw.net>
Cc:     Miklos Szeredi <mszeredi@redhat.com>,
        linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-api@vger.kernel.org, linux-man@vger.kernel.org,
        linux-security-module@vger.kernel.org, Karel Zak <kzak@redhat.com>,
        David Howells <dhowells@redhat.com>,
        Linus Torvalds <torvalds@linux-foundation.org>,
        Al Viro <viro@zeniv.linux.org.uk>,
        Christian Brauner <christian@brauner.io>,
        Amir Goldstein <amir73il@gmail.com>,
        Matthew House <mattlloydhouse@gmail.com>,
        Florian Weimer <fweimer@redhat.com>,
        Arnd Bergmann <arnd@arndb.de>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Fri, 29 Sept 2023 at 02:42, Ian Kent <raven@themaw.net> wrote:
>
> On 28/9/23 21:01, Miklos Szeredi wrote:

> > +static struct vfsmount *lookup_mnt_in_ns(u64 id, struct mnt_namespace *ns)
> > +{
> > +     struct mount *mnt;
> > +     struct vfsmount *res = NULL;
> > +
> > +     lock_ns_list(ns);
> > +     list_for_each_entry(mnt, &ns->list, mnt_list) {
> > +             if (!mnt_is_cursor(mnt) && id == mnt->mnt_id_unique) {
> > +                     res = &mnt->mnt;
> > +                     break;
> > +             }
> > +     }
> > +     unlock_ns_list(ns);
> > +     return res;
> > +}
>
> Seems like we might need to consider making (struct mnt_namespace)->list
>
> a hashed list.

Yes, linear search needs to go.  A hash table is probably the easiest solution.

But I'd also consider replacing ns->list with an rbtree.  Not as
trivial as adding a system hash table and probably also slightly
slower, but it would have some advantages:

 - most space efficient (no overhead of hash buckets)

 - cursor can go away (f_pos can just contain last ID)

Thanks,
Miklos
