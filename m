Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 56CC13E9A1D
	for <lists+linux-man@lfdr.de>; Wed, 11 Aug 2021 22:55:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229655AbhHKU4E (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 11 Aug 2021 16:56:04 -0400
Received: from mail-40131.protonmail.ch ([185.70.40.131]:25406 "EHLO
        mail-40131.protonmail.ch" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229589AbhHKU4E (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 11 Aug 2021 16:56:04 -0400
Date:   Wed, 11 Aug 2021 20:55:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=spmail.info;
        s=protonmail3; t=1628715338;
        bh=EJ/Yn/mNvpMKPkHKhKeQkFmJre4Pi9TamJs1Em7IIwg=;
        h=Date:To:From:Cc:Reply-To:Subject:In-Reply-To:References:From;
        b=fOlO6NiZBvl7xw17pp75Db1IcUe8rjqve1vK9C/Lgl9SYfihHG3I3Dr6TjawjU3qT
         kchljVwScc5Xkf+kNg9SFSOaCtlfrLKmIxK459tqi73mLXsgrHOQDdwPBSxbPUlaFA
         VEpGyBmjO+gkcuVI4y8Ey9+sWfE0HYnfdiS6wp5zksamfPc8QreDUvzm4qHfcTNod1
         ZPzaUW4J5eFWwKO0pqyHL0vsfEdO6YSNQbggVkvj4a3UKp5A4GCbjO2vkU/jWuQ5Xb
         GYgHzeP0PGOlLciTqYjkaS+6878z84YaqPNHClnMwj0DVQbAeA0Yq+tZlUkiPHQKQr
         25Jh7MLUZQNew==
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
From:   Sergey Petrakov <kr@spmail.info>
Cc:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Reply-To: Sergey Petrakov <kr@spmail.info>
Subject: Re: [PATCH 07/32] printf.3: wfix
Message-ID: <bZx77Wr724ZA6_R6yNtLRnnVtw6BkglNw8OOn8wgTeqUQkweplmlpNpywT_orgMA6BjKkQ7_XKS60BXG1uIqu35Ov9onsqt_bBsGR-l34Ac=@spmail.info>
In-Reply-To: <6372ea2d-e10b-0f71-126e-201363b0c6f9@gmail.com>
References: <20210728202008.3158-1-alx.manpages@gmail.com> <20210728202008.3158-8-alx.manpages@gmail.com> <78b9440a-1e5b-3f2f-65f7-e222dfa1e477@gmail.com> <557edcab-8036-9249-e7bb-cb4e3765f59d@gmail.com> <5d08063e-5109-3ea3-30d0-77af0c842029@gmail.com> <6372ea2d-e10b-0f71-126e-201363b0c6f9@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.2 required=10.0 tests=ALL_TRUSTED,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF shortcircuit=no
        autolearn=disabled version=3.4.4
X-Spam-Checker-Version: SpamAssassin 3.4.4 (2020-01-24) on
        mailout.protonmail.ch
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Michael and Alex,

On Sunday, August 8th, 2021 at 02:10, Michael Kerrisk (man-pages) <mtk.manp=
ages@gmail.com> wrote:
> Hello Alex,
>
> On 8/8/21 12:32 AM, Alejandro Colomar (man-pages) wrote:
>
> > On 8/8/21 12:20 AM, Alejandro Colomar (man-pages) wrote:
> >
> > > stdio (7)', and it's only a ffix.
> >
> > s/7/3/
>
> I dropped the original patch, and made ir
>
> .BR stdio (3)
>
> This is a case where it would have been good to ask the
> proposer for a commit message explaining the motivation for
> the original patch (when that patch was submitted).

A few paragraphs at the beginning of the description section
of printf(3) briefly describe the functions in the printf()
family. In these paragraphs, a word in italics almost always
represents a token of C source code:
1) the identifier (format, stream, str, fd, size, ap) or the
   type (va_list) of a parameter in the function declarations
   at the top of the man page;
2) the identifier (va_end, va_arg) for a function-like macro;
3) the identifier (stdout) for the standard output stream.

There is one exception to this rule - stdio. This word
represents a library, not a token. It's not a big problem,
of course, but I think that similar formatting of different
things may be confusing.

The original patch was an attempt to fix this issue. The final
one (by Michael Kerrisk):

-.I stdio
+.BR stdio (3)

is a more suitable solution.

I'm sorry that I didn't include this explanation in the
initial email.

--

Regards,
Sergey Petrakov
