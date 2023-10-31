Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 45CDE7DCF63
	for <lists+linux-man@lfdr.de>; Tue, 31 Oct 2023 15:43:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233467AbjJaOcP (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 31 Oct 2023 10:32:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36164 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231286AbjJaOcO (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 31 Oct 2023 10:32:14 -0400
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com [IPv6:2a00:1450:4864:20::535])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E8C3DC9
        for <linux-man@vger.kernel.org>; Tue, 31 Oct 2023 07:32:11 -0700 (PDT)
Received: by mail-ed1-x535.google.com with SMTP id 4fb4d7f45d1cf-53de0d1dc46so9798214a12.3
        for <linux-man@vger.kernel.org>; Tue, 31 Oct 2023 07:32:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698762730; x=1699367530; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pYkF1pgkKsV2HtPR+M+fVg6faWCeYfW3CX9Dbh26WGg=;
        b=WI0yXZO4KSFeRvYbjUAxvXnGAQ34/XZLD69WnT5xLagETRnwLHcePgYRbA6+8pLzxt
         atDjxqSs8Fc+XZepNrdrIE/VCZyj/Kb1offdyWqBx6pZQI0mwpIkmXazG5LGJlNrYThL
         n6Iq1hi86cq+kPO617FJp32T8G9aur36Dnt3v1t8S8zOJ8QhW3+PvwzL8u6yE6HOIUL7
         wYrHvGX+ntZ5u+NnHwaZ8c+FvSvsGIUKHqQQ17RPLv58qXZe7D6jWIuQPTjFfTvqihPX
         BeYNZJ2llrYTEVyi+cSsh0MfACjt9/HWqdSv2PPHdVbcweQr3E5MF+/Kq/kSJvX6H6NC
         uGbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698762730; x=1699367530;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pYkF1pgkKsV2HtPR+M+fVg6faWCeYfW3CX9Dbh26WGg=;
        b=psxlKe+D37ywZwghT8fwNZnXs5scGWl0W1BrfSgTYkCNqo8McP6BsGbQQbknmnGWJb
         C6n5lBAlthScMDG7GXDn6E2M4dUtOhDT3q78jCIGkCA/ErJ6lOTiYiMz3bpZ68PEaT/P
         Ly1yHVMwL4l6dFIz+Kpo9JQLzDhhzC91ex4rtOfVy6RCiJTE7VKx4TEjDjp5QbWYzboW
         ZEU8lLcJd41+Xio0auebmR2mD9m2r0Z7sm5hESSN+rfWwWr8Pn4NEoeVDjEEX8ZbXn0N
         bl/dtzue8scKcBAZLo8IWPQMC//bDdZLi7oivJzUf5IqSICMr7hNJkIJTFEPzvxP7buH
         eilA==
X-Gm-Message-State: AOJu0Yy3uk/teac2EWnCxm5jdmRLbcstplV7MXdhRoQXMpQx7wrcmObn
        eNHtBGz8sVBxy3JcVEbcQC4kk3TPEAlS3sBpm7I=
X-Google-Smtp-Source: AGHT+IEdv23Ibo47KVNkR94Bw9ee5rLo54urh1qDL3NRFtmEvwR/kiTbmV4p1+T3U+sB3UzeGk72/ZJ8EXQE4u2V7gE=
X-Received: by 2002:a50:9f82:0:b0:53d:e139:64a5 with SMTP id
 c2-20020a509f82000000b0053de13964a5mr12500441edf.27.1698762730145; Tue, 31
 Oct 2023 07:32:10 -0700 (PDT)
MIME-Version: 1.0
References: <4678853.9Mp67QZiUf@nimes> <ZUD12kxqzd0PsT_E@debian>
In-Reply-To: <ZUD12kxqzd0PsT_E@debian>
From:   Stefan Puiu <stefan.puiu@gmail.com>
Date:   Tue, 31 Oct 2023 16:31:58 +0200
Message-ID: <CACKs7VCi-MZfrhPLGqPDz71ciTBkKGriMwJQAy16WoP--P6=QQ@mail.gmail.com>
Subject: Re: [PATCH] prctl.2: Fix typo
To:     Alejandro Colomar <alx@kernel.org>
Cc:     Bruno Haible <bruno@clisp.org>, linux-man@vger.kernel.org,
        alx.manpages@gmail.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex and Bruno,

On Tue, Oct 31, 2023 at 4:06=E2=80=AFPM Alejandro Colomar <alx@kernel.org> =
wrote:
>
> Hi Bruno,
>
> On Sun, Oct 29, 2023 at 09:51:55PM +0100, Bruno Haible wrote:
> > The synopsis of the prctl.2 page has:
> >
> >        int prctl(int option, ...
> >
> > This makes no sense, because
> >   - the first argument is not optional; it is mandatory.
> >   - the title of the page is "operations on a process or thread".
> >
> > It is thus clear that the first argument indicates the operation to per=
form.
> >
> > Find attached the correction.
>
> Agree.  I've seen there are other similarly incorrect uses of the word
> "option" where "operation" should have been used in the same page (but
> there are some that are correctly used).  Would you mind checking the
> entire page for those other replacements?

Hmm, 'option' is not the same as 'optional'. I guess the first
parameter can be seen as an 'option' passed to prctl() along with some
other parameters, right?

Also, there are multiple occurrences of 'option' in the page (e.g.
'This option is mainly intended...'), so only changing the argument
name would introduce an inconsistency in the page. The argument is
also called '__option' in glibc headers on my system (in
/usr/include/x86_64-linux-gnu/sys/prctl.h):

/* Control process execution.  */
#ifndef __USE_TIME_BITS64
extern int prctl (int __option, ...) __THROW;
#else
# ifdef __REDIRECT
extern int __REDIRECT_NTH (prctl, (int __option, ...), __prctl_time64);

So, I would say I'm not sure this improves things.

Just my 2 cents,
Stefan.
