Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id C576D13CAF
	for <lists+linux-man@lfdr.de>; Sun,  5 May 2019 03:45:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726397AbfEEBpa (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 4 May 2019 21:45:30 -0400
Received: from mail-ed1-f67.google.com ([209.85.208.67]:36271 "EHLO
        mail-ed1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726390AbfEEBp3 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 4 May 2019 21:45:29 -0400
Received: by mail-ed1-f67.google.com with SMTP id a8so10887672edx.3
        for <linux-man@vger.kernel.org>; Sat, 04 May 2019 18:45:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=iHyYDgkaXx7fXOfTUn3hBQErZgrArhBatg+QjVfvUio=;
        b=hPsJkmeyHBrHb2xdARUV4aUGz/mg4ui3ARXX1QodbJbUrYs4TA2S+GI5tFOWVP3XzL
         33H2ecLRK+hFRy6p6s9PpsjybpJ0Xrsmv+ZtdNAt77hcHVrz1yL2lhYSSr/oc2K5/wa0
         jGKN7ZYA1y9VgX5IxGKMhmg72pbhGjgAiTP8EzAurRcyC+WIGGAOs+MdqzPcu6a/SUdH
         VX+D5iKdnt8B4rjPQghUjkL60ieGtqDGVrfsQYL7MfwLOpUqMYrg2Mk26iYT0btrnp1r
         xVZOr0FvmiWW3domArO9Af78A/Ca/dsHk7fE+ycCB5f9sUg4BSE2guuo2NFCxR/t5a31
         xHWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=iHyYDgkaXx7fXOfTUn3hBQErZgrArhBatg+QjVfvUio=;
        b=dfE0SbAh2KSecwcKEwg8LoQoJfZgGb0pvepFH035IUmXr/5EsLE8yncvioMevo9JgN
         lsThzxDl4FjZzG7mHdM6dbiohVzW7vlhLx040JDl22LF9dJUGcct1/aiuQH2E/+fD0AN
         b34i8cmSr/EIr+RBL1Mf9aDSP4Jjer0WCCJWzPa/a8v3K1wbZNyL/m9eW6lMuBHlJesb
         orqrZOyJKGU3oatDBlUxg7hhOK7if4Y+HFJeKO6Gorxh4cKrA7Zqd2pgeak75CnZLjhy
         JE332sw8MuJydKMzuQvbH8fcSeHAMpWv55vD5GT5BU45WFb2x6KDRgB60/9zzm4Z/Q16
         RPAw==
X-Gm-Message-State: APjAAAWv14db1JE+qnSQEERjr/ZsyoIxG6x0kk7PCF8bN2MoL91XL5nm
        +UuarbTr9pfJBHEwTfNyvyNyHZYfTQrkD/soxEdNXQ==
X-Google-Smtp-Source: APXvYqwhYATYZo+o1doEkPt7aNtcOGdc4BW79A0NXOz1MfRAQCvDU3acCBSexb/H0Cky3XBANMuIiLQaK0dAlaAvQwA=
X-Received: by 2002:a17:906:6406:: with SMTP id d6mr13145482ejm.103.1557020728037;
 Sat, 04 May 2019 18:45:28 -0700 (PDT)
MIME-Version: 1.0
References: <20190422203443.9539-1-skarp@amazon.com>
In-Reply-To: <20190422203443.9539-1-skarp@amazon.com>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Sat, 4 May 2019 20:45:15 -0500
Message-ID: <CAKgNAkhioTbMbtXA+eTBf3atQNUv7qyH2sxYuSQU6=NsddZOPQ@mail.gmail.com>
Subject: Re: [PATCH 1/3] capabilities.7: wfix for Inheritable thread sets
To:     Samuel Karp <skarp@amazon.com>
Cc:     linux-man <linux-man@vger.kernel.org>, nmeyerha@amazon.com
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Samuel,

On Mon, 22 Apr 2019 at 15:35, Samuel Karp <skarp@amazon.com> wrote:
>
> Signed-off-by: Samuel Karp <skarp@amazon.com>
> ---
>  man7/capabilities.7 | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
>
> diff --git a/man7/capabilities.7 b/man7/capabilities.7
> index bcf6309e5..9f7ee670a 100644
> --- a/man7/capabilities.7
> +++ b/man7/capabilities.7
> @@ -44,6 +44,8 @@
>  .\"     capability, then we must also set the effective flag for all
>  .\"     other capabilities where the permitted or inheritable bit is set.
>  .\" 2011-09-07, mtk/Serge hallyn: Add CAP_SYSLOG
> +.\" 2019-04-10, Samuel Karp <skarp@amazon.com>
> +.\"     Clarify wording for Inheritable thread capability sets.
>  .\"
>  .TH CAPABILITIES 7 2019-03-06 "Linux" "Linux Programmer's Manual"
>  .SH NAME
> @@ -831,7 +833,8 @@ a program whose associated file capabilities grant that capability).
>  .TP
>  .IR Inheritable
>  This is a set of capabilities preserved across an
> -.BR execve (2).
> +.BR execve (2)
> +when running as a root user.
>  Inheritable capabilities remain inheritable when executing any program,
>  and inheritable capabilities are added to the permitted set when executing
>  a program that has the corresponding bits set in the file inheritable set.

This patch is not a "wfix" (a trivial wording fix), and also it's not
correct. Inheritable capabilities operate regardless of UID 0. Or, to
put things another way, what was the rationale behind your proposal
for this change?

Thanks,

Michael
