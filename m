Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5143B3D4FF8
	for <lists+linux-man@lfdr.de>; Sun, 25 Jul 2021 22:43:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230343AbhGYUDP (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 25 Jul 2021 16:03:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44208 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229518AbhGYUDP (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 25 Jul 2021 16:03:15 -0400
Received: from mail-oo1-xc30.google.com (mail-oo1-xc30.google.com [IPv6:2607:f8b0:4864:20::c30])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5A8FBC061757
        for <linux-man@vger.kernel.org>; Sun, 25 Jul 2021 13:43:44 -0700 (PDT)
Received: by mail-oo1-xc30.google.com with SMTP id b25-20020a4ac2990000b0290263aab95660so599530ooq.13
        for <linux-man@vger.kernel.org>; Sun, 25 Jul 2021 13:43:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=edcQce7tWJupwT6NaMAgq0cbfxjpVMLmmhjucptlUIA=;
        b=FqHz+JGE1+OECcXX/5RPTz8SNIFYiiaO3qFhUIK3NIMtX03UyCW/sBtjEn0oZI5Flh
         6745LixiXJap6Ic6GLIJvCLXbxTadrVan/6RV/agWoNCNv+xBOYbgp3ZQEcc0NcV0LAv
         D4v6hN30CVUPqq8fj1wUE0EgIwU1iiThmOaihzvpWfnCiuwFmlIlSgwcNuBAfrwcgmwi
         VWT6WIrcV/WDj4XWpZTJUHwTt5TLL6YP0dKcS85oWmDKxxSLjK9QVnadrccXLDb/e3/w
         qnnweaiNRt4klsfzjkmy3wVur297VGl2xrDP3B8EdFACd+LFjzFevP9rLBaMaJrwC/iJ
         3JEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=edcQce7tWJupwT6NaMAgq0cbfxjpVMLmmhjucptlUIA=;
        b=N9BeYFrVgvLKSIvcQBF7khC+9Y5x15pMHUyJ2zIu3kcgTHk1xsTyDWhj3sPURDSm3c
         Drv+c4EpdMbfZpsWnaKEFqbWGiKp/tpoQO43h2kDIn8W6951CkPnrF0SlnsNu7DwmOx6
         6A7wREtrJouaMnxKEME7+ElPSugbFR60L2t2UQwBev8MKWDIBzoCdo8i1KtyQ1nF7yTX
         ZJj7a+fcB8p7pPL5XQL3BZHhrKm0YEDVOQFTbil6p6NEfxGmM3U7fhQPAHXSOCaH3Yqy
         da8G7UMoyqERT4tnSXiQ+qLW18lEC30bvH9ScwTOoMaExg2rLnnpGaj5aM1nsjiJ8P0h
         Mq7Q==
X-Gm-Message-State: AOAM53147HP8IbClJgTo2VCM3EdJ4EsnwtVhm4OOF8r9zERoR0MZv1vd
        QlSqx0mRf1kN1mXRl0qBkNKmFirpcHcq0lA+0+Y=
X-Google-Smtp-Source: ABdhPJwSZ0elwwyvJDJuaUe73ZKOOecPVIaTAkWErASK1RcSEDAcZXeTNg4kxKD7q1/ZdjKZvLxZ/b+VG8cJGy+/R40=
X-Received: by 2002:a4a:9783:: with SMTP id w3mr8474915ooi.80.1627245823818;
 Sun, 25 Jul 2021 13:43:43 -0700 (PDT)
MIME-Version: 1.0
References: <20210725170622.GA16361@Debian-50-lenny-64-minimal>
In-Reply-To: <20210725170622.GA16361@Debian-50-lenny-64-minimal>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Sun, 25 Jul 2021 22:43:32 +0200
Message-ID: <CAKgNAkjsxAs+OvKJCwJ=OmGcH0MWP7JY9fEY-CzjjLeXAyLyjQ@mail.gmail.com>
Subject: Re: Errors in man pages, here: console_codes.4
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Helge,

> Man page: console_codes.4
> Issue: Missing full stop?
>
> "Change log file to I<name> (normally disabled by a compile-time option)"
>
> "Cursor to lower left corner of screen (if enabled\n"
> "by B<xterm>(1)'s B<hpLowerleftBugCompat> resource)"

Yes. Full stop added.

Thanks,

Michael
