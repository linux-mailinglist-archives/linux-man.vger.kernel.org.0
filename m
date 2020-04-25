Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B85A41B87A5
	for <lists+linux-man@lfdr.de>; Sat, 25 Apr 2020 18:15:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726125AbgDYQPm (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 25 Apr 2020 12:15:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57192 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726076AbgDYQPl (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 25 Apr 2020 12:15:41 -0400
Received: from mail-ej1-x644.google.com (mail-ej1-x644.google.com [IPv6:2a00:1450:4864:20::644])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9F861C09B04D
        for <linux-man@vger.kernel.org>; Sat, 25 Apr 2020 09:15:41 -0700 (PDT)
Received: by mail-ej1-x644.google.com with SMTP id e2so10047053eje.13
        for <linux-man@vger.kernel.org>; Sat, 25 Apr 2020 09:15:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=0WiVwyuEQkAYfke5GAs2kMxX4Q59OqUoiQYXMOh2hJc=;
        b=DzBb0A+oQCfqqsLX1dGEHlRAg5ieQv/YZGzgvciwTk62Kcr62Vs1TXJfgjUEeLG6s2
         GHPXpmXFoK/9xsjLOw4DXizAL/lrzHQ9V3OiLiJ0c2pieZJ4tiZnCgEAGZElKN4oaq0i
         P/+M9WqcmHxCjP09O0fYEzebwk7seCzAL7xRL1CA/sIZGePWVIRj+uZEA3Xg9KauHPsm
         Gmnz+/QmlZmPWq7g1k+VpUZMuNhFYkq2nkkPFcQcMygSjXp89QZVSepT76x+a5y4fEVx
         OVVZkf0Xr1nogsA1TscErIFaSJ7oE7XgXnGRpq9V+LrhaBAn/Kvs4tG1EBwfaYDp3+/c
         rCrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=0WiVwyuEQkAYfke5GAs2kMxX4Q59OqUoiQYXMOh2hJc=;
        b=bfasdtWYS3tVtUIk9saVkPGJmwTVstukbvKlnNL5WC11jFSNACqHD2ng4EPKGdGirZ
         NfxbSAuRuJo+27n1bga8/gzEcU9+2/y/BXqoL1UBtf/yE+2YSVr8cwPuQsCUvIqzs7I1
         M25gRNG2vknXRfuCkfzMgTevbAl2FQ6a+pqslnpbQox12E2Z+D/ZJW0GjeQx0RkR5tuR
         VpCY3LON215cf+OumRucVZuye8DCX9GWZmSciTaaDK2yQSD5KUTU4jFtRNzNg2QyUllQ
         wAmkaRYfla62FkpKRolNa/dbXq8vr+xVvZJbJaV+0gJ+o4pvaGNc1ZihMxvOmHkuXoLy
         0t5g==
X-Gm-Message-State: AGi0PuZyjoTZguG/DKO51xb84JC3oe1QyJ3o3PFwSExic/qs5C608ZYb
        ZJsvgmTqhXUGs+Do9Oo4c4vzpyTkIGte9Z0FuhVSKA==
X-Google-Smtp-Source: APiQypIJk5ZjVy3GTNabL95ydemzougIu46PVSLuZne0Xy15fgQyB1KTI+xcB6YHop4xFWLAoshGxKGI9hZIhNIoMJc=
X-Received: by 2002:a17:906:5fd2:: with SMTP id k18mr12022545ejv.243.1587831340343;
 Sat, 25 Apr 2020 09:15:40 -0700 (PDT)
MIME-Version: 1.0
References: <CAC8K6BNGULq_XQCWJz2ZiDr1xN+3_eD1jnO1x2f9Kw0nV5=5bw@mail.gmail.com>
In-Reply-To: <CAC8K6BNGULq_XQCWJz2ZiDr1xN+3_eD1jnO1x2f9Kw0nV5=5bw@mail.gmail.com>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Sat, 25 Apr 2020 18:15:29 +0200
Message-ID: <CAKgNAkhb5j0NV8E7OFvyG_EKfs82bSqsq2DdQ5waSuXRkYfJUA@mail.gmail.com>
Subject: Re: [patch] strtok.3 add note about glibc-2.25+ segfault for call
 like strtok_r(NULL,"|",NULL)
To:     Marcin Stolarek <stolarek.marcin@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>, wdijkstr@arm.com
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Sat, 25 Apr 2020 at 14:52, Marcin Stolarek <stolarek.marcin@gmail.com> wrote:
>
> The change in glibc commit d58ab810a6e325cc351684d174c48cabce01bcc1
> (author in CC):
>
> From commit description:"[...] Also avoid an unnecessary call to
> strcspn after the last token by adding an early exit for an empty
> string.[...]"
>
> Important code change:
> /* Parse S into tokens separated by characters in DELIM.
> @@ -45,11 +41,17 @@
>  char *
>  __strtok_r (char *s, const char *delim, char **save_ptr)
>  {
> -  char *token;
> +  char *end;
>
>    if (s == NULL)
>      s = *save_ptr;
>
> +  if (*s == '\0')
> +    {
> +      *save_ptr = s;
> +      return NULL;
> +    }
> +
>
> may result in the mentioned segmentation fault if the char *str passed
> to strtok_r is a NULL (for 1st call).

I'm a little puzzled here. Getting a segfault if the first argument to
strtok_r() is NULL on the first call seems not so surprising to me.
Why would you expect otherwise? What am I missing?

Thanks,

Michael
