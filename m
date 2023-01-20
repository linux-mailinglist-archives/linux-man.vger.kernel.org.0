Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0E113675208
	for <lists+linux-man@lfdr.de>; Fri, 20 Jan 2023 11:07:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230499AbjATKHR (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 20 Jan 2023 05:07:17 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53832 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230498AbjATKHQ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 20 Jan 2023 05:07:16 -0500
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com [IPv6:2a00:1450:4864:20::533])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D8E81A838F
        for <linux-man@vger.kernel.org>; Fri, 20 Jan 2023 02:07:03 -0800 (PST)
Received: by mail-ed1-x533.google.com with SMTP id v30so6118573edb.9
        for <linux-man@vger.kernel.org>; Fri, 20 Jan 2023 02:07:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=sRo27/PYWmZ4FopKtG2CjACVTRyMIbWssLzOvhuBLKE=;
        b=DBWndoGrfdumvsAPs8YmivpDwhCjcxfkPwoy6MC+KW7eAH4V0hJS7ojGPArL2o4DNa
         5ny7uizob7jgy40ewL3fHman9S8hw9C3aGz5vyfwNJNp+sPrbV0m8PO+YaG6N5GFZbx9
         2iB+YM48rwCQWl5LyHgXJ0TL8mwXRBWS4Kjfxv3DH0/qrkRgGjKsaPcu/BPAr8tWYfP3
         tLkt66hlUxh4xLJuv6Tra7JCiurtJOG7S0zovRLWlMtt79yZgX145wOaZQLXo+/Wb4GH
         bhIL54gtim+/XO0v6DpGFnnzDyVQvt4//mKfiWLZqJgjpUCxRAt0PA+J+AgeDzfpNCvA
         SCRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sRo27/PYWmZ4FopKtG2CjACVTRyMIbWssLzOvhuBLKE=;
        b=xpQgrWIi0YrNXwJFhGb8eAYeEB1GbRVEKIrvKQyhQUkl1T63XFCNkHvoThYx9nuu9z
         KrtjeQB/4NC+WwaAFr8eJWihru/2ASeZLWstY3Zl9Hd36wohxAlakP1C2EvwqG+r0coD
         pegZm0I/lqgrjBJfn1ejUxymIQBwHr1oHJlGLo7E5g7Li7tnGBC51XXLtN4GwypLc4wa
         AxdXMPVQKFvkgd3K/+C/IsSUKyE3weBOYk+TZdFMuY9+VBGO5Qoew3TMM0zFY7J2ldK1
         LzdQ6O8hGTvz2Q7ZzjhrcDi+EUGNS1B9dpWXTWqfDnIjBzzd7tQsKm46DIkmX4iflrJl
         vQow==
X-Gm-Message-State: AFqh2kpaWkf0becOq3STszpySS8g96K5JsKecuwL9Ydb99pAgMmbF6Dh
        nT9+nSdjRSv42Dq87yWbmEEZTB9sypVXNbuRISE=
X-Google-Smtp-Source: AMrXdXuQ/0wr3nb6+MmHFjyyvyoFgO50VhXGdhv2Oc9PGiRZW6lrCTqvVsTV3dZE0wmIaImeIGyYK3Vgn1FZ/FD2hAc=
X-Received: by 2002:a05:6402:707:b0:49e:1502:46d6 with SMTP id
 w7-20020a056402070700b0049e150246d6mr1664093edx.197.1674209221939; Fri, 20
 Jan 2023 02:07:01 -0800 (PST)
MIME-Version: 1.0
References: <ab492040-2058-bcbe-c920-a9088a20f071@gmail.com>
In-Reply-To: <ab492040-2058-bcbe-c920-a9088a20f071@gmail.com>
From:   Stefan Puiu <stefan.puiu@gmail.com>
Date:   Fri, 20 Jan 2023 12:06:50 +0200
Message-ID: <CACKs7VAXOXLw5Zm0wqVt8dDwam_=w8aeAu5wNpXcTRSqObimyQ@mail.gmail.com>
Subject: Re: struct sockaddr_storage
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     GNU C Library <libc-alpha@sourceware.org>,
        linux-man <linux-man@vger.kernel.org>, gcc@gcc.gnu.org,
        Igor Sysoev <igor@sysoev.ru>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On Thu, Jan 19, 2023 at 4:14 PM Alejandro Colomar
<alx.manpages@gmail.com> wrote:
>
> Hi!
>
> I just received a report about struct sockaddr_storage in the man pages.  It
> reminded me of some concern I've always had about it: it doesn't seem to be a
> usable type.
>
> It has some alignment promises that make it "just work" most of the time, but
> it's still a UB mine, according to ISO C.
>
> According to strict aliasing rules, if you declare a variable of type 'struct
> sockaddr_storage', that's what you get, and trying to access it later as some
> other sockaddr_8 is simply not legal.  The compiler may assume those accesses
> can't happen, and optimize as it pleases.

Can you detail the "is not legal" part? How about the APIs like
connect() etc that use pointers to struct sockaddr, where the
underlying type is different, why would that be legal while using
sockaddr_storage isn't?
Will code break in practice?

>
> That means that one needs to declare a union with all possible sockaddr_* types
> that are of interest, so that access as any of them is later allowed by the
> compiler (of course, the user still needs to access the correct one, but that's
> of course).
>
> In that union, one could add a member that is of type sockaddr_storage for
> getting a more consistent structure size (for example, if some members are
> conditional on preprocessor stuff), but I don't see much value in that.
> Especially, given this comment that Igor Sysoev wrote in NGINX Unit's source code:
>
>   * struct sockaddr_storage is:
>   *    128 bytes on Linux, FreeBSD, MacOSX, NetBSD;
>   *    256 bytes on Solaris, OpenBSD, and HP-UX;
>   *   1288 bytes on AIX.
>   *
>   * struct sockaddr_storage is too large on some platforms
>   * or less than real maximum struct sockaddr_un length.
>
> Which makes it even more useless as a type.

I'm not sure using struct sockaddr_storage for storing sockaddr_un's
(UNIX domain socket addresses, right?) is that common a usage. I've
used it in the past to store either a sockaddr_in or a sockaddr_in6,
and I think that would be a more common scenario. The comment above
probably makes sense for nginx, but different projects have different
needs.

As for the size, I guess it might matter if you want to port your code
to AIX, Solaris, OpenBSD etc. I don't think all software is meant to
be portable, though (or portable to those platforms). Maybe a warning
is in order that, for portable code, developers should check its size
on the other platforms targeted.

Just my 2 cents, as always,
Stefan.

>
>
> Should we warn about uses of this type?  Should we recommend against using it in
> the manual page, since there's no legitimate uses of it?
>
> Cheers,
>
> Alex
>
> --
> <http://www.alejandro-colomar.es/>
