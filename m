Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0CD333D4FF2
	for <lists+linux-man@lfdr.de>; Sun, 25 Jul 2021 22:40:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230075AbhGYUAR (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 25 Jul 2021 16:00:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43548 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229518AbhGYUAQ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 25 Jul 2021 16:00:16 -0400
Received: from mail-ot1-x32c.google.com (mail-ot1-x32c.google.com [IPv6:2607:f8b0:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E8AE3C061757
        for <linux-man@vger.kernel.org>; Sun, 25 Jul 2021 13:40:45 -0700 (PDT)
Received: by mail-ot1-x32c.google.com with SMTP id 68-20020a9d0f4a0000b02904b1f1d7c5f4so6989292ott.9
        for <linux-man@vger.kernel.org>; Sun, 25 Jul 2021 13:40:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding;
        bh=/VvjwKgm6mrhNLL65fFX+7p6u02sCPH3gqkfHr+yhbk=;
        b=TviJ4lEE8/fApSAcJNrpD66qiALMZrSmrABKVcOg4+iOEHrfPVwKSQSTeTkzKNuWv5
         JWVTXjm0m65arF0pbhoKp7jNpxgfzpecZqFSogWQeR+IOTZFfZxbFr4YafX4n64BvqUB
         iqxocrlFY5xeyNIU08Z/sNQEv3rNsRuz4tLse+Y/72UTaJhTClguY6tnhlv8jQTaOIG4
         1aZrIaJaIgJWVajCAASA096UzntM5ec5mGOHNgQT/sdNUg/Di0yKebResq03TnKJz8uK
         IZHls79BeaVJshEWF3ZJzmFscQfBor6IderXqFq2V7kKUTxISsD1yHImSIa5qogVqEHt
         y7rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc:content-transfer-encoding;
        bh=/VvjwKgm6mrhNLL65fFX+7p6u02sCPH3gqkfHr+yhbk=;
        b=CL0QJBV0TsM5A5oz0/eL68uJnnAmh/3gmJbDcJ/CeNKj7ORH/dJA6itoJpSn5AprWg
         FNrcWIinusppFslzoIHayhERZIbl4vHTynlp7Zj/IIUcxSCxi1mpwBoDgfLdGxDNNiQD
         Pn5gFOFs8HaCkUkBa+tWvWW6sGLR/aZSuFT/2NdrVWaLC26D5HUQDzmff6KIAa1kfp0o
         FVSByXn3RDPWENQ4y03EsqWgBuCpGN0UABvNquo08BkyO2ypHxkF0NuVD9gEUfVM+2Qe
         Yxifis3DrgO2Ji2fZrI40nhk/7aJPZb5YrLGYXNl1cDEVdtcO8bjUpCN26jTgk60EcYa
         N9Uw==
X-Gm-Message-State: AOAM532trj5vUPBBOZ1Lvrf3tYGTnLiMzxv9Rf3dDXcRI+qjehgEoa9r
        djHRqCv4CrYqeQBkgBgMUEoE3Eb/3iG0KqLHGPo=
X-Google-Smtp-Source: ABdhPJwrX3x91b1dKM4lg4SIdTBVaXDO4YOcbyh0+ubs15uta7rMfwnj2JrXgwCKVtdYgjTXmyOM1WWwMg7DakJO6I8=
X-Received: by 2002:a9d:2782:: with SMTP id c2mr9696520otb.323.1627245645399;
 Sun, 25 Jul 2021 13:40:45 -0700 (PDT)
MIME-Version: 1.0
References: <20210725171010.GA16927@Debian-50-lenny-64-minimal>
In-Reply-To: <20210725171010.GA16927@Debian-50-lenny-64-minimal>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Sun, 25 Jul 2021 22:40:34 +0200
Message-ID: <CAKgNAkj9L+LMh6U9_ob52Bam4cF+-cXYj5tQm1nA-vwpvpv6Lg@mail.gmail.com>
Subject: Re: Errors in man pages, here: unicode.7
To:     Helge Kreutzmann <debian@helgefjell.de>
Cc:     linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Helge,

> Man page: unicode.7
> Issue: tells, how many =E2=86=92 tells how many

Fixed as you suggest.

Thanks,

Michael
