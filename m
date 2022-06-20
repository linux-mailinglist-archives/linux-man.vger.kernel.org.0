Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 82D37551379
	for <lists+linux-man@lfdr.de>; Mon, 20 Jun 2022 10:57:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240374AbiFTIzg (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 20 Jun 2022 04:55:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39560 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240364AbiFTIze (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 20 Jun 2022 04:55:34 -0400
Received: from mail-lj1-x229.google.com (mail-lj1-x229.google.com [IPv6:2a00:1450:4864:20::229])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 519D862CD
        for <linux-man@vger.kernel.org>; Mon, 20 Jun 2022 01:55:31 -0700 (PDT)
Received: by mail-lj1-x229.google.com with SMTP id w9so2091100lji.4
        for <linux-man@vger.kernel.org>; Mon, 20 Jun 2022 01:55:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=7eFxBEbpaEjqgaD2edi5JIOUp3ird/8MeXpcOMJt5Q4=;
        b=ImGDSdgFkgxp+bnes+4QIMXgqnkWpJ2B5ecfhNs8+Xp+z1jXjOYlSfEHZ3JnGkWREW
         w5luItdZfSP5GY6TaAVaeV6j5AOfb5WjxKqlavF2OF4edFF5c23ZAY6vKmFH/UI4Bu8g
         f93WEFx9Sd7ngfpsR+uoVWQQ5Q5JaLXyP1AGm//v5gLoEhjZ3NBfhNYXvUBTOtcXRo+Z
         iYqKqGUXV27RHEFnrJRCbOhCTDMETzU/c19CWOoEsomHRMzrqTvIg5J1qilBpUAAmKyz
         FlHsVARwnU3zk1DTS7bvbvedDgIrk1k/5lwB1x8LL5RM1N8o9WuMrVA52JG1HZE9EmXy
         Owpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=7eFxBEbpaEjqgaD2edi5JIOUp3ird/8MeXpcOMJt5Q4=;
        b=JMvfcf38OJzpk0JxSh8TRMVhVftwLl7bv5tcAGurgvlTtWbJ+RIuolXM5q26d8Y9by
         +0HcveE6nBLuFWeywS0nIrSf/wqGoL4wZ8yH8MIwqU5+yGPus1JLejPhi7qVSauKJgZ2
         /sB5EfCbxn24D8xdFXTorS7dXHFQqVoZiO21vfSmKB8b73L6ernzQYt719F+ri8MVr0B
         3Uoj+GbEEByZulZZvb21vztWJOBsysBqg150NSq5vNh0lVH9agEGyqV7BblCZuGxHo8M
         GH81mhY3aOE52vsgfQdyA7TVzR2IgcRERtfhjI4tDtDM6GYAWLvVRT+sAm9+P7DfEkUw
         E3nA==
X-Gm-Message-State: AJIora9N84vNPeiETlhRXyST9pBb0aldn4S6W3Zx6j6i92XnpHzkABgo
        wDlSXGMwi6IYDjSND1ZcnpPqRHm5q2iwDRrzz5/KmRFM6Xs=
X-Google-Smtp-Source: AGRyM1taL+boW92ml3IjtoKwNp3ay3T9txngcy1SVx1H0zcWZk1RHUyKDffZwamcuKhXm3pFmbcFsPC0HU97u+4ErWA=
X-Received: by 2002:a2e:3318:0:b0:25a:6e47:561 with SMTP id
 d24-20020a2e3318000000b0025a6e470561mr2317101ljc.425.1655715329427; Mon, 20
 Jun 2022 01:55:29 -0700 (PDT)
MIME-Version: 1.0
References: <f4b9cfdd-7b5b-2b31-2c84-064fc2c3206b@gmail.com> <20220619233934.25egwny37dzt7q3i@tarta.nabijaczleweli.xyz>
In-Reply-To: <20220619233934.25egwny37dzt7q3i@tarta.nabijaczleweli.xyz>
From:   Stefan Puiu <stefan.puiu@gmail.com>
Date:   Mon, 20 Jun 2022 11:55:18 +0300
Message-ID: <CACKs7VDJx1QEkgmb2vJzhAbNwbH9xjd_-rhD+eBSbtBk9-PzAA@mail.gmail.com>
Subject: Re: [PATCH v2] environ.7: align PWD with the standard
To:     =?UTF-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>,
        lnx-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi,

On Mon, Jun 20, 2022 at 2:40 AM =D0=BD=D0=B0=D0=B1 <nabijaczleweli@nabijacz=
leweli.xyz> wrote:
>
> Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xy=
z>
> ---
>  man7/environ.7 | 8 ++++++--
>  1 file changed, 6 insertions(+), 2 deletions(-)
>
> diff --git a/man7/environ.7 b/man7/environ.7
> index 019c5a25a..24446c709 100644
> --- a/man7/environ.7
> +++ b/man7/environ.7
> @@ -158,8 +158,12 @@ used by
>  to find manual pages, and so on.
>  .TP
>  .B PWD
> -The current working directory.
> -Set by some shells.
> +Absolute path to the current working directory;
> +required to be partially canonical (no
> +.I .\&
> +or
> +.I ..\&
> +components).

If any shell decides to ignore that part of the spec, is there
anything preventing them? I would make it clear in the text that this
is a spec requirement, not a practical guarantee (e.g. "required by
<spec> to be ..."). Also, you removed the part saying "Set by some
shells", if you've tried some shells in use today and determined that
they all set PWD, it might be useful to specify that in the change
description, I think.

Thanks,
Stefan.

>  .TP
>  .B SHELL
>  The absolute pathname of the user's login shell.
> --
> 2.30.2
