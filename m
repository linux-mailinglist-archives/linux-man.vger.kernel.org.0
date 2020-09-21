Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BBC9E271C44
	for <lists+linux-man@lfdr.de>; Mon, 21 Sep 2020 09:49:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726347AbgIUHtY (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 21 Sep 2020 03:49:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35656 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726211AbgIUHtX (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 21 Sep 2020 03:49:23 -0400
Received: from mail-oi1-x242.google.com (mail-oi1-x242.google.com [IPv6:2607:f8b0:4864:20::242])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C0BF5C061755
        for <linux-man@vger.kernel.org>; Mon, 21 Sep 2020 00:49:23 -0700 (PDT)
Received: by mail-oi1-x242.google.com with SMTP id c13so15949060oiy.6
        for <linux-man@vger.kernel.org>; Mon, 21 Sep 2020 00:49:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=ZRb/z0FS+7ggr4bPeRFmg5nUyML05GL5dN29AMiiQb4=;
        b=fNaLxMKqRCfPSfJLisbfUBMq0ZDnUO1+zDZ9hFXd0m5K1kzm9COEktDakmLiDL4I6f
         MvB1HCCGYJ1sF8TuZlOs/5lhZWuXG6Mv+DSdW+HKYUERwQSWFoN7HEzlwVVFYnnDBDOQ
         zF+rXinDZAib/f8ega4s+2cao28y/pS+aVO0e1ye/6tYO++L/Bx1z1PTVu9MV3SaSJU1
         VAdmL1nJKpPSRhtHqMS3HZzgj+VcsGLQHpazI4nUQlyP9T1sLLvFURh01VQnmCJuJpvM
         DeJGlSSFIGVsDXsPR294/lVDTp/C5DexUkioqxvBz+XGjFdOaYV9GuyjrMYOM3a3zX6I
         NO/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=ZRb/z0FS+7ggr4bPeRFmg5nUyML05GL5dN29AMiiQb4=;
        b=GXpt3ZNjWZwgSz9ToHayAtfgEAxshBGk26+EH5w4HUA6MWb8uJxJhvZNM+kU7a5O4Y
         fWSuiuWFYyDlhJbchER/cansRANEm0VVYYRWv/CDVr9iMcvA0yYJX4AmrWJcTnqzIFLD
         CoQlMV3yBT+hr2oNpfHztyln/zzxMT+drd3jakvXYCTWZ355Jigz6rxIr71VB2zKGIoq
         N09AwnxQMENmc9xdnw49w/At2TLohsLdg0hVEK1HD4ixEupMz9waoQsBKalW0o3SJycn
         nZdeRCKj4LXau77WTqfGGyQfYmV63Uv10m6ccKg3z0SC4VVr+2FkLl8E6DbOKU36iCFX
         D3uw==
X-Gm-Message-State: AOAM5303nCOmaVHbsZVga+lVHWJJH6ghspC3YzHyUg/7dZtBBal9TjN1
        m51c7bAQyEuV1i3bF4SgPeneeLldweFQXioJcRc=
X-Google-Smtp-Source: ABdhPJy9fI/M39QFT+WXoG14ETNpzelCtzp5sO/ho1l/f9+z5WrHIfXBFDZG3fpUvIxMtBiIBACqZfmlnZvpXTvo/XI=
X-Received: by 2002:a54:458f:: with SMTP id z15mr14957660oib.148.1600674563122;
 Mon, 21 Sep 2020 00:49:23 -0700 (PDT)
MIME-Version: 1.0
References: <20200920214012.454410-1-colomar.6.4.3@gmail.com>
 <61f4e2a4-d468-ceba-2ccf-ce0c061aa20b@gmail.com> <f70c7f62-9d61-71aa-67cf-43501a29bccc@gmail.com>
In-Reply-To: <f70c7f62-9d61-71aa-67cf-43501a29bccc@gmail.com>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Mon, 21 Sep 2020 09:49:11 +0200
Message-ID: <CAKgNAki7=AJ7p2AwPkf9+4AkYKdOL6b4D0NyVdwZzu-qHFvGiA@mail.gmail.com>
Subject: Re: man-pages.7: Simplify indentation of structure definitions, shell
 session logs, and so on
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On Mon, 21 Sep 2020 at 09:32, Alejandro Colomar <colomar.6.4.3@gmail.com> wrote:
>
> Hello Michael,
>
>
> Indentation of structure definitions, shell session logs, and so on
>
> When  structure definitions, shell session logs, and so on are included
> in running text, indent them by 4 spaces (i.e.,  a  block  enclosed  by
> .in +4n and .in), format them using the .EX and EE macros, and surround
> them with suitable paragraph markers (either .PP or .IP).  For example:
>
>                 .PP
>                 .in +4n
>                 .EX
>                 int
>                 main(int argc, char *argv[])
>                 {
>                     return 0;
>                 }
>                 .EE
>                 .in
>                 .PP
>
>
> That could be simplified to the following, right?:
>
>                 .IP
>                 .EX
>                 int
>                 main(int argc, char *argv[])
>                 {
>                     return 0;
>                 }
>                 .EE
>                 .PP
>
> Or is there any difference?

.IP indents by 8 spaces by default, I think. Also, .IP won't indent
further, if we are already in an area of indented paragraphs.

Thanks,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
