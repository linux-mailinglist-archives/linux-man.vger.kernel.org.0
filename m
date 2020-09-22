Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C7558273E2E
	for <lists+linux-man@lfdr.de>; Tue, 22 Sep 2020 11:11:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726534AbgIVJLA (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 22 Sep 2020 05:11:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45020 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726488AbgIVJLA (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 22 Sep 2020 05:11:00 -0400
Received: from mail-oi1-x242.google.com (mail-oi1-x242.google.com [IPv6:2607:f8b0:4864:20::242])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5F286C061755
        for <linux-man@vger.kernel.org>; Tue, 22 Sep 2020 02:11:00 -0700 (PDT)
Received: by mail-oi1-x242.google.com with SMTP id z26so20242057oih.12
        for <linux-man@vger.kernel.org>; Tue, 22 Sep 2020 02:11:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=gIRpG1uKXvGbQQSo0ZTeK2nJg3Y8DkYwbVGjswpAOAs=;
        b=pouuIvn+ee6aV0pWGtgnVGzkW/ciujBjph7cPK5ovLk0dZNai51jtee81vsNDHrCeo
         7N7FdRbTqp2T6i/KOnG59GouCRn1SyHydkaiel0ZqXSdpoDSXNh0RdcefyumyLRS7cPR
         qKhepVq/QY3ay0H7V9wYPz3AtXxmkF+J1RHvW6U5n1Pco0Xn5j0xBnuzcWNrX3zb1e3E
         ytBMRcT4ATycgsYpI7YJE04kJAFW58AGNaux0810vNfTaOHiFxO+CEtYDRDbHXria6FN
         f23Z7QG/qZyMzU9O5JPXyVBESru+Z4BISVzgwGmifUgWG53lCkvBPTqYCMnEY/2A9xeX
         S5WA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=gIRpG1uKXvGbQQSo0ZTeK2nJg3Y8DkYwbVGjswpAOAs=;
        b=ncSmf2lv1/PPrR6IbiqaB6P7NPyxibF1ZZ49yGq4LinLzNgiYsOZdOcssRz4SRgj5W
         7aGo87SYUXx6yXV5JXrjG7LLqYZSxA/QJ2trWNVsiBWwxzixBCnly6kNEyZ0vdm3pN20
         m9hA+1PbLluN1N9yOcRSxmZ4pfdL7x5HbyhqGnIWQFL3A5A6+2qv3rMhU9NAyL9uzbL6
         6gAml8EbOlzX2niPq2eOlNZDkcfB3w5pxEqf1qB8e7ixmPezJQQR3QuMGu+ISiqcvX08
         HBOraoF3CeUBSt67uWZxgI/4UZ1y7ud4vFRr/YaggQSr+T2hhNmdffFmQOhXOcNiZ0IJ
         6PIA==
X-Gm-Message-State: AOAM530u/2+RnANCFiejdnyXpAJXJhWhkPCGOxItTY5RvhOQ5MxX26At
        izT4+9Phy8gG9dRNdXWWxAvSc7YfUdV5+yiwfgo=
X-Google-Smtp-Source: ABdhPJxd5WjZHd1CQv5l7W0s8fdS1qMoCCbKUrGSq+XW3aiseFwK9Zpu9ji7JF5eo5nZXE8P/dZFyHCr0w6xnAFAROg=
X-Received: by 2002:a54:458f:: with SMTP id z15mr1997312oib.148.1600765859787;
 Tue, 22 Sep 2020 02:10:59 -0700 (PDT)
MIME-Version: 1.0
References: <20200922085813.17449-1-colomar.6.4.3@gmail.com>
In-Reply-To: <20200922085813.17449-1-colomar.6.4.3@gmail.com>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Tue, 22 Sep 2020 11:10:48 +0200
Message-ID: <CAKgNAkhhEfdJ_N_kezsTP6P+eWyNy7oNP0eX2n+9qR0u0acGYQ@mail.gmail.com>
Subject: Re: [PATCH] system_data_types.7: ffix
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On Tue, 22 Sep 2020 at 10:58, Alejandro Colomar <colomar.6.4.3@gmail.com> wrote:
>
> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>

Thanks for checking my patches, and thanks for the fix.

Cheers,

Michael

> ---
>  man7/system_data_types.7 | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
> index b026541b0..59c64fb89 100644
> --- a/man7/system_data_types.7
> +++ b/man7/system_data_types.7
> @@ -158,10 +158,10 @@ or
>  A type used to hold a general identifier.
>  According to POSIX,
>  this shall be an integer type that can be used to contain a
> -.IR pid_ t ,
> -.IR uid_ t ,
> +.IR pid_t ,
> +.IR uid_t ,
>  or
> -.IR gid_ t .
> +.IR gid_t .
>  .IP
>  Conforming to: POSIX.1-2001 and later.
>  .IP
> --
> 2.28.0
>


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
