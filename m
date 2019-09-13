Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 668E4B1C89
	for <lists+linux-man@lfdr.de>; Fri, 13 Sep 2019 13:49:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726771AbfIMLtv (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 13 Sep 2019 07:49:51 -0400
Received: from mail-ed1-f66.google.com ([209.85.208.66]:33397 "EHLO
        mail-ed1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729421AbfIMLtv (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 13 Sep 2019 07:49:51 -0400
Received: by mail-ed1-f66.google.com with SMTP id o9so26835209edq.0
        for <linux-man@vger.kernel.org>; Fri, 13 Sep 2019 04:49:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=w6t8wEe3q92ucorJiKbWT2lcDMH05TPDKdQtQRc08fQ=;
        b=rtlTWfONedc8MCPpnQst4U6Ccpr5ICmKbgSneAOmCp8gKZNx3vRoHaheUHVL0k6wrs
         5LjZb14DR7ckW9UOuqbFtnYywSTDIRGzAWMb4pKJrQbJjeck3e29s3LowabEHnN82tcn
         G5XqamUpKYbhJyA5Gk/TcFV7cOS9H75B4ROvjTCImqDEl7UG4D8y6CL1qqyUaWeJ//oQ
         Sy95Mr1q3eHRgTlRJ6mXwZJ8Eyf0lGarwJ885OJQCCyqJIHL686x4NQGQIU2BDNrKEMy
         w34Vo8P0ki/0P8PBJVGC+yaMf7/frV1Mzh/CIJK5SuiGQpZEZTqYSSoBHgL5/7em1yY2
         6Gag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=w6t8wEe3q92ucorJiKbWT2lcDMH05TPDKdQtQRc08fQ=;
        b=YESzqvKy8+vIGFCXuU1MVqvBjEDsP/tgchsHWwL2onEhCXlLUpsVL87m5xCTwAgItj
         OU/dwjN8FasrbN+DTy2g5QCgZLKlEY2LfMQoOSK/wae6ee5BKQGol4G+HrJo3bO0lAGK
         AbZeucOmKhNpExTUMFk9dlusxepdaGkmze3OYvy7oLnl09kUs7lM54MMyexd4d7+ujv7
         vv5ezMi8GtyfxW56yz5/CiYYuYnkjNIPsFfVrR1DMYI0laA7CTguDWnxSgGUWYXBb9vM
         v52S8rtRlAbqgXjXe3hqbBPu9U9VDcHcycGsmDBoR3YZ4UBWDmL5mdCmuxwuxv6uQR/w
         cJnQ==
X-Gm-Message-State: APjAAAWY3ZuvYKr2JQ6SkkaWkwQLlVTpWjqdLhik3aE7EYcyi7DZqrds
        WbyHI+Jqg0phB9g+LWwT/Nxp4kIuwoOaYAptCFiS7rdH
X-Google-Smtp-Source: APXvYqysJUHepeI4a23kA3nOZPcpjGFtIHsE8UAI+HZSmimmR1vOgNrIxNzPLb1CkMt4TqoUz+VEFH0rlj271Ep40+s=
X-Received: by 2002:a17:906:5299:: with SMTP id c25mr22526424ejm.64.1568375388283;
 Fri, 13 Sep 2019 04:49:48 -0700 (PDT)
MIME-Version: 1.0
References: <1567584638-3133-1-git-send-email-xuyang2018.jy@cn.fujitsu.com>
In-Reply-To: <1567584638-3133-1-git-send-email-xuyang2018.jy@cn.fujitsu.com>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Fri, 13 Sep 2019 13:49:37 +0200
Message-ID: <CAKgNAkh+XhM_LufZ1=7z0Q2O-bFZozGOFkWSuYam=ep+EPqxKQ@mail.gmail.com>
Subject: Re: [PATCH] move_pages.2: mark deprecated E2BIG
To:     Yang Xu <xuyang2018.jy@cn.fujitsu.com>
Cc:     linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Yang Xu,

On Wed, 4 Sep 2019 at 10:10, Yang Xu <xuyang2018.jy@cn.fujitsu.com> wrote:
>
> E2BIG was removed in 2.6.29, we should mark it as
> deprecated.
>
> Signed-off-by: Yang Xu <xuyang2018.jy@cn.fujitsu.com>
> ---
>  man2/move_pages.2 | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/man2/move_pages.2 b/man2/move_pages.2
> index dcdedf28a..3370e9e00 100644
> --- a/man2/move_pages.2
> +++ b/man2/move_pages.2
> @@ -168,7 +168,8 @@ to indicate the error.
>  .SH ERRORS
>  .TP
>  .B E2BIG
> -Too many pages to move.
> +Too many pages to move. It was deprecated since 2.6.29.
> +.\" 3140a2273009c01c27d316f35ab76a37e105fdd8
>  .TP
>  .B EACCES
>  .\" FIXME Clarify "current cpuset" in the description of the EACCES error.

Thanks. I applied this patch. I subsequently reworded the text a little to be:

       E2BIG  Too many pages to move.  Since Linux 2.6.29, the kernel  no
              longer generates this error.

Okay?

Thanks,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
