Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 11AA616587
	for <lists+linux-man@lfdr.de>; Tue,  7 May 2019 16:19:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726265AbfEGOTi (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 7 May 2019 10:19:38 -0400
Received: from mail-io1-f68.google.com ([209.85.166.68]:41741 "EHLO
        mail-io1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726399AbfEGOTi (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 7 May 2019 10:19:38 -0400
Received: by mail-io1-f68.google.com with SMTP id a17so6200253iot.8
        for <linux-man@vger.kernel.org>; Tue, 07 May 2019 07:19:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=PQygpln5qHr5dk9WjVI62nlTEqhJbZilsnT4YqjBjAw=;
        b=Ua/RolF3JPC2Ak03bLCpkKU0IJds5tEqusSkj12fe0yvRIg9SvCrktx9HSCdA408hL
         +8o/ZGmS+IyI3vJ9AbOaOzS/phxXsKLHUJJ17CK3NqCd5oxg69SPeNAXR/SqsJn1JO9f
         PCex3knmWd5LSqwdiB/18V9O2UL81AnGJdYbBq20FUuAUarVrJdXW1zX9Ayghw4UfQ4l
         S14qS31csBC4Dh+CRq0A9hTPkqrMRi3+lV+xYCFlvxY2Vc8CGPOF2y50LIiuvyKzfX3N
         OIvwcovMZ4iTaRPNEMRunM4f6wXDLg9hd/nKmcZ3nyTi9u6xo96RoEZLkTXUVhRIuJIy
         2hPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=PQygpln5qHr5dk9WjVI62nlTEqhJbZilsnT4YqjBjAw=;
        b=lwtYJXadVtDN46gBKWL69bjTKO5kHc8w0FRZLcCvBXOLzTEmPxLwWrF7B7igwiJjj2
         R2u0fdpoMtH5AZqJYaiNDDhgwZi5lC8AB/BGdSp8hOra4Qov5KjYZqX3ERzlfZfEq2/c
         qgIGSuPazof1pvQCwXqcDKub8J51deP9CG7hRuvjMjPuqIn+kKSOZNCXvhIx47HHWIGt
         u8Fpq/RKEkFd7DCIbQK+UugwHIwKrelQpjWAJ2YrSyStZj0JeMipVLvwtKxZKvZLMGoc
         MBcKHxi2h9CVuNSRDcvMWtXRrq3EAvHAib5pqsZAMPs3RhL4xHJ/4iSpZ9dVhPV3MvLy
         cBEQ==
X-Gm-Message-State: APjAAAX8YmZ4xqqBdgc91BybDQAcslmYbxSPzXDKvjH0UramhqkTmR7X
        UPvQOKb4rXyZWvcr78EtkLzR2B4L8LztvPE3A66+Hg==
X-Google-Smtp-Source: APXvYqy0d4DHKen//K+OonpmOqfhws1wK8ymz61uMiW7bs/Um7AR/LDoDgv/uQKZHIqCo6VW0UqkZRqfKz8WSs0QOzE=
X-Received: by 2002:a6b:c886:: with SMTP id y128mr10325327iof.220.1557238777469;
 Tue, 07 May 2019 07:19:37 -0700 (PDT)
MIME-Version: 1.0
References: <CAG+x03ByjP2jdimjENgnOsNMwHgpgCVv==Fna_aLhj_d7Eh+ZA@mail.gmail.com>
 <5CD17675.80800@bfs.de>
In-Reply-To: <5CD17675.80800@bfs.de>
From:   Francesco Sanesi <francesco.sanesi@gmail.com>
Date:   Tue, 7 May 2019 16:19:26 +0200
Message-ID: <CAG+x03A7fQpYkxVQjRt=y1SN6-ysP3_6NA7r0d7JXdnv3SrB6Q@mail.gmail.com>
Subject: Re: [patch] awk.1p: tilde rendered as " " in man page and online HTML page
To:     wharms@bfs.de
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Thank you for your prompt reply.
I came up with a patch mainly because it synthetically conveys lots of
info, but being quite inexperienced in the *roff galaxy I'm glad to
see my proposal improved.

Best regards,

Francesco Sanesi

On Tue, May 7, 2019 at 2:13 PM walter harms <wharms@bfs.de> wrote:
>
>
>
> Am 07.05.2019 13:54, schrieb Francesco Sanesi:
> > In awk's POSIX documentation,
> > both online at:
> > http://man7.org/linux/man-pages/man1/awk.1p.html
> > and in the awk(1p) man page:
> > man-pages-posix-2013-a/man1p/awk.1p
> > bundled in the archive man-pages-posix-2013-a.tar.xz downloaded from:
> > https://mirrors.edge.kernel.org/pub/linux/docs/man-pages/man-pages-posix/
> > some instances of '~' (tilde) have been rendered as ' " " ' (space -
> > double quotes - space - double quotes - space).
> >
> > Referring to man-pages-posix-2013-a/man1p/awk.1p, these instances are
> > fixed in the attached patch.
> > It has been created with plain "git diff". Since I was not able to
> > find any SCM repository for the POSIX man pages, the commits it refers
> > to are obviously not meaningful (I created a local git repository to
> > test "git diff" and "git apply").
> >
> > The list of fixes has been determined comparing the above documents
> > with "The Open Group Base Specifications Issue 7, IEEE Std 1003.1,
> > 2013 Edition" at
> > http://pubs.opengroup.org/onlinepubs/9699919799.2013edition/utilities/awk.html
> >
> > Thank you for your great job.
> > Best regards.
> >
>
> good catch,
> but perhaps it is better to use the groff character description: \[ti]
> this will avoid possible translations by less then perfect tools.
> (see man grof_char).
>
>
> re,
>  wh
>
>
