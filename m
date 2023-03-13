Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0315E6B7CF6
	for <lists+linux-man@lfdr.de>; Mon, 13 Mar 2023 17:02:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229992AbjCMQCE (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 13 Mar 2023 12:02:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39980 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230521AbjCMQCD (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 13 Mar 2023 12:02:03 -0400
Received: from mail-il1-x12a.google.com (mail-il1-x12a.google.com [IPv6:2607:f8b0:4864:20::12a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5DD4B73039
        for <linux-man@vger.kernel.org>; Mon, 13 Mar 2023 09:02:02 -0700 (PDT)
Received: by mail-il1-x12a.google.com with SMTP id x10so7151256ill.12
        for <linux-man@vger.kernel.org>; Mon, 13 Mar 2023 09:02:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112; t=1678723321;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=H+xY2nVz/Ox3K/46E7s1LMqKz4xiup9uCNT+kycNbuM=;
        b=hmBY2L8MS+qeFzLKESr/080AgcjIlUxguRA7Wcl3NPZgpVv73a2giQdoLK6EtFQnCs
         yw5W5eWK3FI/xfYAop44H8bLzJg4Ia89a78aCYUl9n1iyhiNQXODUBvXnloxMPJfNyyK
         96HRFL/xdLrQXE2TxOTF20r5YKkvQRso75Yp9TokhzvCwwSBtXXIJn4c1TRQI3w6uWbX
         2aRGXZdQoecxIjE/5Q5iEjd6u/afbIv35bJxxQz/Mb9f/P8X8UYr9BpigeuS1R5Utff7
         T3drpVMsFfzSIVw8D1OLX3mlMC/o9++0DfwYoc5+t3x5oNkFFIRHYhKPn5hELYWfwrGY
         kA8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678723321;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=H+xY2nVz/Ox3K/46E7s1LMqKz4xiup9uCNT+kycNbuM=;
        b=EXTlxrJ51LQpVpFeqJg9chOnslpqIDu68tHh10Xf5W9N6nPCi9eUUelulxI8wgD7Y9
         GR1mgVqdwbs2CnokEWsbgp/45BCFoiNqK+z+c2bwsr5VyeOWEjFK6UM2hm5PtDLrlE+N
         QQY/Eoaor0b0eSylvSbyH5+UwL9KjFG2B1BSjzolhlTLyw5ewwxn4YBDkbabs/1d8gbc
         GQKnDv3cYBhO9ufPnV8a12VoOR8igrmRXvf2MeqS0eLlSD30o51BCNTzTWHqNXdCArFm
         PGvRU2UUSK2EX51Wak4E/JXbailISwbmJpsG30e1tptfWxwrZAQRJaXz0PLE6uj992r9
         H0Pg==
X-Gm-Message-State: AO0yUKWy2yWpZO5SXMEdOnXWXg+4sUDOK/DrfuaoYJvCn+GyHG3ms/7h
        EJO2QaQR7j2A/2Mp5ASkmiuhhepuDqOrRWAlmuFRiw==
X-Google-Smtp-Source: AK7set98u2F5M7tI5HlWfeK/UWz+N041r5hLXSxXG6wJMPnmUhnHX5wK1NUXdqi1CGlRzVlilyRoArOZW4cXnrFlPCo=
X-Received: by 2002:a92:c04d:0:b0:30b:d67e:dbe3 with SMTP id
 o13-20020a92c04d000000b0030bd67edbe3mr111363ilf.3.1678723321495; Mon, 13 Mar
 2023 09:02:01 -0700 (PDT)
MIME-Version: 1.0
References: <20230313134614.780515-1-talumbau@google.com> <20230313134614.780515-2-talumbau@google.com>
 <20230313145209.snt5ci5sjop2utq4@jwilk.net>
In-Reply-To: <20230313145209.snt5ci5sjop2utq4@jwilk.net>
From:   "T.J. Alumbaugh" <talumbau@google.com>
Date:   Mon, 13 Mar 2023 10:01:25 -0600
Message-ID: <CABmGT5GOHfpNfU=vJttS-yce02h0XPnxAewskXyNzMmADef_RQ@mail.gmail.com>
Subject: Re: [PATCH v2 1/1] posix_fadvise.2: NOREUSE now supported.
To:     Jakub Wilk <jwilk@jwilk.net>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        Andrew Morton <akpm@linux-foundation.org>,
        Yu Zhao <yuzhao@google.com>, linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-17.6 required=5.0 tests=BAYES_00,DKIMWL_WL_MED,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        ENV_AND_HDR_SPF_MATCH,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        USER_IN_DEF_DKIM_WL,USER_IN_DEF_SPF_WL autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Mon, Mar 13, 2023 at 9:41=E2=80=AFAM Jakub Wilk <jwilk@jwilk.net> wrote:
>
> * T.J. Alumbaugh <talumbau@google.com>, 2023-03-13 13:46:
> >POSIX_FADVISE_NOREUSE is now supported in Linux[1].
>
> s/FADVISE/FADV/?

Yes, you are right. Thanks for the correction. The git commit is
correct, but I made this error in the cover letter email.

-T.J.

>
> --
> Jakub Wilk
