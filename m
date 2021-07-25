Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C22BD3D5076
	for <lists+linux-man@lfdr.de>; Mon, 26 Jul 2021 00:49:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229543AbhGYWJT (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 25 Jul 2021 18:09:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43520 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229531AbhGYWJS (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 25 Jul 2021 18:09:18 -0400
Received: from mail-oi1-x22e.google.com (mail-oi1-x22e.google.com [IPv6:2607:f8b0:4864:20::22e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BBEB6C061757
        for <linux-man@vger.kernel.org>; Sun, 25 Jul 2021 15:49:47 -0700 (PDT)
Received: by mail-oi1-x22e.google.com with SMTP id l126so8917620oib.2
        for <linux-man@vger.kernel.org>; Sun, 25 Jul 2021 15:49:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=Mo9wAcugu3vcngqAzkBqSD/tXL/WjFmUkDMT12pt6xw=;
        b=NNJLji3ZlG46Ib/LozBBlmeDPb6B0J/BUF9Ae/9V7wYysGqF367+pPZaEtCZZU5Tlu
         Yy3TAvEfzGH3tVHDn3HeoAJfjSud7CNzVqqxzvBEAeKyedzXiuBDc/c2tHAAQWUfOunZ
         drjQ/Aoi/3xCEg+sE+IeTjxYmeFKhywVqoSXSv5KdxIrFHLxVkHT2oF6BnboYwpKqdkd
         CLfdDcCv4MgPbz6Xh77uME1NnkJcKjOYNotDzR6H6y3P+SZvS/g84bVZ5XgkBeVIjPRn
         FmNihtnIpEINw3WOfAJsWzaghAijjbCIcsrVc41VAlAVxdfAq5T/kyxel09kuguq8uaA
         gQVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=Mo9wAcugu3vcngqAzkBqSD/tXL/WjFmUkDMT12pt6xw=;
        b=EaGf6At+/u42Qfuoxu7tD2azFMWYcAf4V1gBWMN+yu3p3a8RPEbCgIzARmF/Bal0Pm
         3UhHxpslfHhbm+wbXb3TsCOCRRxtGBqe9Fvvv0Nep5no7dIN1o46kl6qM2QAB0O/sB31
         H6OYK259QA3GLyEYCo1bcuXlE0ijKUwa2j/QpRyCCjsfesY187/Bmmj00o6dX3oYoIJr
         NyoUozjQ/S9h/AyBiXwtcDznbcEl25u2VO0G20a/6egDlNC3E5CEZSDrGDn/ORoLdgqy
         iq0EuZkXbcCpnOjDpbkalYEZlyB/tPT4UWPLSVAGMMfY/KbybhCkgaw020NA4qBDT9+3
         phhQ==
X-Gm-Message-State: AOAM533YhU2a3WNTTfLD3osuSkQEhhdnd/4D5PHnyPrVNdNwWmrGZ6g7
        NfTup0IW6KiZilhzBsJHcco21tY1CCduO2VApLw=
X-Google-Smtp-Source: ABdhPJwJhvXzXo7APCQ92bTA8P0eSAGsj76KTsanm+gvt7Ou4zzf8T2yQ4bQPrlDnPYHIqVwAatRgOt+3CiW2XaPkh4=
X-Received: by 2002:aca:1206:: with SMTP id 6mr9205038ois.148.1627253386897;
 Sun, 25 Jul 2021 15:49:46 -0700 (PDT)
MIME-Version: 1.0
References: <20210725170833.GA16668@Debian-50-lenny-64-minimal>
In-Reply-To: <20210725170833.GA16668@Debian-50-lenny-64-minimal>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Mon, 26 Jul 2021 00:49:35 +0200
Message-ID: <CAKgNAkis8D-ygTXzyFze6+V2Kf2z6Qo6Zt4rkUEruKeU1fxrTg@mail.gmail.com>
Subject: Re: Errors in man pages, here: proc.5
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Helge,

> Man page: proc.5
> Issue: Is it "OOM kiling" or "OOM-killing" (with dash)? Both is used.
>
> "The value of I<oom_score_adj> is added to the badness score before it is "
> "used to determine which task to kill.  Acceptable values range from -1000 "
> "(OOM_SCORE_ADJ_MIN) to +1000 (OOM_SCORE_ADJ_MAX).  This allows user space to "
> "control the preference for OOM-killing, ranging from always preferring a "
> "certain task or completely disabling it from OOM killing.  The lowest "
> "possible value, -1000, is equivalent to disabling OOM-killing entirely for "
> "that task, since it will always report a badness score of 0."

Thanks. I added a '-'.

Cheers,

Michael
